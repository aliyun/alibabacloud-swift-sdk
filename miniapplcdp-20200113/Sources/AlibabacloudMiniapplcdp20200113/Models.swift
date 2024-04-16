import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DataItemsModelDataValue : Tea.TeaModel {
    public var id: String?

    public var modelId: String?

    public var modelName: String?

    public var modelStatus: String?

    public var modelType: String?

    public var subType: String?

    public var moduleId: String?

    public var content: String?

    public var appId: String?

    public var linked: Bool?

    public var linkModuleId: String?

    public var linkModelId: String?

    public var schemaVersion: String?

    public var description_: String?

    public var props: String?

    public var visibility: String?

    public var modelDigest: String?

    public override init() {
        super.init()
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
            map["Id"] = self.id!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.modelStatus != nil {
            map["ModelStatus"] = self.modelStatus!
        }
        if self.modelType != nil {
            map["ModelType"] = self.modelType!
        }
        if self.subType != nil {
            map["SubType"] = self.subType!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.linked != nil {
            map["Linked"] = self.linked!
        }
        if self.linkModuleId != nil {
            map["LinkModuleId"] = self.linkModuleId!
        }
        if self.linkModelId != nil {
            map["LinkModelId"] = self.linkModelId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.props != nil {
            map["Props"] = self.props!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        if self.modelDigest != nil {
            map["ModelDigest"] = self.modelDigest!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
            self.modelName = dict["ModelName"] as! String
        }
        if dict.keys.contains("ModelStatus") && dict["ModelStatus"] != nil {
            self.modelStatus = dict["ModelStatus"] as! String
        }
        if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
            self.modelType = dict["ModelType"] as! String
        }
        if dict.keys.contains("SubType") && dict["SubType"] != nil {
            self.subType = dict["SubType"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Linked") && dict["Linked"] != nil {
            self.linked = dict["Linked"] as! Bool
        }
        if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
            self.linkModuleId = dict["LinkModuleId"] as! String
        }
        if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
            self.linkModelId = dict["LinkModelId"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Props") && dict["Props"] != nil {
            self.props = dict["Props"] as! String
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
        if dict.keys.contains("ModelDigest") && dict["ModelDigest"] != nil {
            self.modelDigest = dict["ModelDigest"] as! String
        }
    }
}

public class DataItemsResourceDataValue : Tea.TeaModel {
    public var resourceId: String?

    public var resourceName: String?

    public var resourceType: String?

    public var description_: String?

    public var schemaVersion: String?

    public var moduleId: String?

    public var content: [String: Any]?

    public var appId: String?

    public var visibility: String?

    public override init() {
        super.init()
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
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! [String: Any]
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
    }
}

public class BatchCreateModelRequest : Tea.TeaModel {
    public var appId: String?

    public var modelDataJson: String?

    public var moduleId: String?

    public var schemaVersion: String?

    public var source: String?

    public var subType: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.modelDataJson != nil {
            map["ModelDataJson"] = self.modelDataJson!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.subType != nil {
            map["SubType"] = self.subType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ModelDataJson") && dict["ModelDataJson"] != nil {
            self.modelDataJson = dict["ModelDataJson"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SubType") && dict["SubType"] != nil {
            self.subType = dict["SubType"] as! String
        }
    }
}

public class BatchCreateModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appId: String?

            public var attributes: [[String: String]]?

            public var content: [String: String]?

            public var createTime: String?

            public var description_: String?

            public var id: String?

            public var linkModelId: String?

            public var linkModuleId: String?

            public var linked: Bool?

            public var modelDigest: String?

            public var modelId: String?

            public var modelName: String?

            public var modelStatus: String?

            public var modelType: String?

            public var modifiedTime: String?

            public var moduleId: String?

            public var props: [String: String]?

            public var revision: Int32?

            public var schemaVersion: String?

            public var subType: String?

            public var visibility: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.attributes != nil {
                    map["Attributes"] = self.attributes!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.linkModelId != nil {
                    map["LinkModelId"] = self.linkModelId!
                }
                if self.linkModuleId != nil {
                    map["LinkModuleId"] = self.linkModuleId!
                }
                if self.linked != nil {
                    map["Linked"] = self.linked!
                }
                if self.modelDigest != nil {
                    map["ModelDigest"] = self.modelDigest!
                }
                if self.modelId != nil {
                    map["ModelId"] = self.modelId!
                }
                if self.modelName != nil {
                    map["ModelName"] = self.modelName!
                }
                if self.modelStatus != nil {
                    map["ModelStatus"] = self.modelStatus!
                }
                if self.modelType != nil {
                    map["ModelType"] = self.modelType!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.props != nil {
                    map["Props"] = self.props!
                }
                if self.revision != nil {
                    map["Revision"] = self.revision!
                }
                if self.schemaVersion != nil {
                    map["SchemaVersion"] = self.schemaVersion!
                }
                if self.subType != nil {
                    map["SubType"] = self.subType!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                    self.attributes = dict["Attributes"] as! [[String: String]]
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! [String: String]
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
                    self.linkModelId = dict["LinkModelId"] as! String
                }
                if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
                    self.linkModuleId = dict["LinkModuleId"] as! String
                }
                if dict.keys.contains("Linked") && dict["Linked"] != nil {
                    self.linked = dict["Linked"] as! Bool
                }
                if dict.keys.contains("ModelDigest") && dict["ModelDigest"] != nil {
                    self.modelDigest = dict["ModelDigest"] as! String
                }
                if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                    self.modelId = dict["ModelId"] as! String
                }
                if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                    self.modelName = dict["ModelName"] as! String
                }
                if dict.keys.contains("ModelStatus") && dict["ModelStatus"] != nil {
                    self.modelStatus = dict["ModelStatus"] as! String
                }
                if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                    self.modelType = dict["ModelType"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("Props") && dict["Props"] != nil {
                    self.props = dict["Props"] as! [String: String]
                }
                if dict.keys.contains("Revision") && dict["Revision"] != nil {
                    self.revision = dict["Revision"] as! Int32
                }
                if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                    self.schemaVersion = dict["SchemaVersion"] as! String
                }
                if dict.keys.contains("SubType") && dict["SubType"] != nil {
                    self.subType = dict["SubType"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var items: [BatchCreateModelResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [BatchCreateModelResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = BatchCreateModelResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: BatchCreateModelResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = BatchCreateModelResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchCreateModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchCreateModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BatchCreateModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchDeleteModelRequest : Tea.TeaModel {
    public var appId: String?

    public var modelIdList: String?

    public var moduleId: String?

    public var schemaVersion: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.modelIdList != nil {
            map["ModelIdList"] = self.modelIdList!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ModelIdList") && dict["ModelIdList"] != nil {
            self.modelIdList = dict["ModelIdList"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class BatchDeleteModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appId: String?

            public var attributes: [[String: String]]?

            public var content: [String: String]?

            public var createTime: String?

            public var description_: String?

            public var id: String?

            public var linkModelId: String?

            public var linkModuleId: String?

            public var linked: Bool?

            public var modelId: String?

            public var modelName: String?

            public var modelStatus: String?

            public var modelType: String?

            public var modifiedTime: String?

            public var moduleId: String?

            public var props: [String: String]?

            public var revision: Int32?

            public var schemaVersion: String?

            public var subType: String?

            public var visibility: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.attributes != nil {
                    map["Attributes"] = self.attributes!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.linkModelId != nil {
                    map["LinkModelId"] = self.linkModelId!
                }
                if self.linkModuleId != nil {
                    map["LinkModuleId"] = self.linkModuleId!
                }
                if self.linked != nil {
                    map["Linked"] = self.linked!
                }
                if self.modelId != nil {
                    map["ModelId"] = self.modelId!
                }
                if self.modelName != nil {
                    map["ModelName"] = self.modelName!
                }
                if self.modelStatus != nil {
                    map["ModelStatus"] = self.modelStatus!
                }
                if self.modelType != nil {
                    map["ModelType"] = self.modelType!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.props != nil {
                    map["Props"] = self.props!
                }
                if self.revision != nil {
                    map["Revision"] = self.revision!
                }
                if self.schemaVersion != nil {
                    map["SchemaVersion"] = self.schemaVersion!
                }
                if self.subType != nil {
                    map["SubType"] = self.subType!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                    self.attributes = dict["Attributes"] as! [[String: String]]
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! [String: String]
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
                    self.linkModelId = dict["LinkModelId"] as! String
                }
                if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
                    self.linkModuleId = dict["LinkModuleId"] as! String
                }
                if dict.keys.contains("Linked") && dict["Linked"] != nil {
                    self.linked = dict["Linked"] as! Bool
                }
                if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                    self.modelId = dict["ModelId"] as! String
                }
                if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                    self.modelName = dict["ModelName"] as! String
                }
                if dict.keys.contains("ModelStatus") && dict["ModelStatus"] != nil {
                    self.modelStatus = dict["ModelStatus"] as! String
                }
                if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                    self.modelType = dict["ModelType"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("Props") && dict["Props"] != nil {
                    self.props = dict["Props"] as! [String: String]
                }
                if dict.keys.contains("Revision") && dict["Revision"] != nil {
                    self.revision = dict["Revision"] as! Int32
                }
                if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                    self.schemaVersion = dict["SchemaVersion"] as! String
                }
                if dict.keys.contains("SubType") && dict["SubType"] != nil {
                    self.subType = dict["SubType"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var items: [BatchDeleteModelResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [BatchDeleteModelResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = BatchDeleteModelResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: BatchDeleteModelResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = BatchDeleteModelResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchDeleteModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BatchDeleteModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchDeleteResourcesRequest : Tea.TeaModel {
    public var appId: String?

    public var moduleId: String?

    public var resourceIdList: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.resourceIdList != nil {
            map["ResourceIdList"] = self.resourceIdList!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("ResourceIdList") && dict["ResourceIdList"] != nil {
            self.resourceIdList = dict["ResourceIdList"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class BatchDeleteResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appId: String?

            public var content: [String: String]?

            public var createTime: String?

            public var description_: String?

            public var modifiedTime: String?

            public var moduleId: String?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceType: String?

            public var revision: Int32?

            public var schemaVersion: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.revision != nil {
                    map["Revision"] = self.revision!
                }
                if self.schemaVersion != nil {
                    map["SchemaVersion"] = self.schemaVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! [String: String]
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Revision") && dict["Revision"] != nil {
                    self.revision = dict["Revision"] as! Int32
                }
                if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                    self.schemaVersion = dict["SchemaVersion"] as! String
                }
            }
        }
        public var items: [BatchDeleteResourcesResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [BatchDeleteResourcesResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = BatchDeleteResourcesResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: BatchDeleteResourcesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = BatchDeleteResourcesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchDeleteResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BatchDeleteResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchRestoreModelRequest : Tea.TeaModel {
    public var appId: String?

    public var modelIdList: String?

    public var moduleId: String?

    public var schemaVersion: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.modelIdList != nil {
            map["ModelIdList"] = self.modelIdList!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ModelIdList") && dict["ModelIdList"] != nil {
            self.modelIdList = dict["ModelIdList"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class BatchRestoreModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appId: String?

            public var attributes: [[String: String]]?

            public var content: [String: String]?

            public var createTime: String?

            public var description_: String?

            public var id: String?

            public var linkModelId: String?

            public var linkModuleId: String?

            public var linked: Bool?

            public var modelId: String?

            public var modelName: String?

            public var modelStatus: String?

            public var modelType: String?

            public var modifiedTime: String?

            public var moduleId: String?

            public var props: [String: String]?

            public var revision: Int32?

            public var schemaVersion: String?

            public var subType: String?

            public var visibility: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.attributes != nil {
                    map["Attributes"] = self.attributes!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.linkModelId != nil {
                    map["LinkModelId"] = self.linkModelId!
                }
                if self.linkModuleId != nil {
                    map["LinkModuleId"] = self.linkModuleId!
                }
                if self.linked != nil {
                    map["Linked"] = self.linked!
                }
                if self.modelId != nil {
                    map["ModelId"] = self.modelId!
                }
                if self.modelName != nil {
                    map["ModelName"] = self.modelName!
                }
                if self.modelStatus != nil {
                    map["ModelStatus"] = self.modelStatus!
                }
                if self.modelType != nil {
                    map["ModelType"] = self.modelType!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.props != nil {
                    map["Props"] = self.props!
                }
                if self.revision != nil {
                    map["Revision"] = self.revision!
                }
                if self.schemaVersion != nil {
                    map["SchemaVersion"] = self.schemaVersion!
                }
                if self.subType != nil {
                    map["SubType"] = self.subType!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                    self.attributes = dict["Attributes"] as! [[String: String]]
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! [String: String]
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
                    self.linkModelId = dict["LinkModelId"] as! String
                }
                if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
                    self.linkModuleId = dict["LinkModuleId"] as! String
                }
                if dict.keys.contains("Linked") && dict["Linked"] != nil {
                    self.linked = dict["Linked"] as! Bool
                }
                if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                    self.modelId = dict["ModelId"] as! String
                }
                if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                    self.modelName = dict["ModelName"] as! String
                }
                if dict.keys.contains("ModelStatus") && dict["ModelStatus"] != nil {
                    self.modelStatus = dict["ModelStatus"] as! String
                }
                if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                    self.modelType = dict["ModelType"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("Props") && dict["Props"] != nil {
                    self.props = dict["Props"] as! [String: String]
                }
                if dict.keys.contains("Revision") && dict["Revision"] != nil {
                    self.revision = dict["Revision"] as! Int32
                }
                if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                    self.schemaVersion = dict["SchemaVersion"] as! String
                }
                if dict.keys.contains("SubType") && dict["SubType"] != nil {
                    self.subType = dict["SubType"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var items: [BatchRestoreModelResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [BatchRestoreModelResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = BatchRestoreModelResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: BatchRestoreModelResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = BatchRestoreModelResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchRestoreModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchRestoreModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BatchRestoreModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckDomainRequest : Tea.TeaModel {
    public var appId: String?

    public var domain: String?

    public var domainType: String?

    public var envId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.domainType != nil {
            map["DomainType"] = self.domainType!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("DomainType") && dict["DomainType"] != nil {
            self.domainType = dict["DomainType"] as! String
        }
        if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class CheckDomainResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var valid: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.valid != nil {
                map["Valid"] = self.valid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Valid") && dict["Valid"] != nil {
                self.valid = dict["Valid"] as! Bool
            }
        }
    }
    public var data: CheckDomainResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CheckDomainResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CloneAppRequest : Tea.TeaModel {
    public var appId: String?

    public var appName: String?

    public var description_: String?

    public var icon: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.icon != nil {
            map["Icon"] = self.icon!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Icon") && dict["Icon"] != nil {
            self.icon = dict["Icon"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class CloneAppResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var appName: String?

        public var appStatus: String?

        public var appType: String?

        public var createTime: String?

        public var description_: String?

        public var icon: String?

        public var isTemplate: Bool?

        public var lastEditTime: String?

        public var mainModuleId: String?

        public var modifiedTime: String?

        public var schemaVersion: String?

        public var source: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appStatus != nil {
                map["AppStatus"] = self.appStatus!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.icon != nil {
                map["Icon"] = self.icon!
            }
            if self.isTemplate != nil {
                map["IsTemplate"] = self.isTemplate!
            }
            if self.lastEditTime != nil {
                map["LastEditTime"] = self.lastEditTime!
            }
            if self.mainModuleId != nil {
                map["MainModuleId"] = self.mainModuleId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") && dict["AppName"] != nil {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppStatus") && dict["AppStatus"] != nil {
                self.appStatus = dict["AppStatus"] as! String
            }
            if dict.keys.contains("AppType") && dict["AppType"] != nil {
                self.appType = dict["AppType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Icon") && dict["Icon"] != nil {
                self.icon = dict["Icon"] as! String
            }
            if dict.keys.contains("IsTemplate") && dict["IsTemplate"] != nil {
                self.isTemplate = dict["IsTemplate"] as! Bool
            }
            if dict.keys.contains("LastEditTime") && dict["LastEditTime"] != nil {
                self.lastEditTime = dict["LastEditTime"] as! String
            }
            if dict.keys.contains("MainModuleId") && dict["MainModuleId"] != nil {
                self.mainModuleId = dict["MainModuleId"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
        }
    }
    public var data: CloneAppResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CloneAppResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CloneAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloneAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CloneAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CloneModelFromCommitRequest : Tea.TeaModel {
    public var modelId: String?

    public var source: String?

    public var sourceCommitId: String?

    public var sourceModuleId: String?

    public var subType: String?

    public var targetModuleId: String?

    public var targetName: String?

    public var targetSubType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceCommitId != nil {
            map["SourceCommitId"] = self.sourceCommitId!
        }
        if self.sourceModuleId != nil {
            map["SourceModuleId"] = self.sourceModuleId!
        }
        if self.subType != nil {
            map["SubType"] = self.subType!
        }
        if self.targetModuleId != nil {
            map["TargetModuleId"] = self.targetModuleId!
        }
        if self.targetName != nil {
            map["TargetName"] = self.targetName!
        }
        if self.targetSubType != nil {
            map["TargetSubType"] = self.targetSubType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceCommitId") && dict["SourceCommitId"] != nil {
            self.sourceCommitId = dict["SourceCommitId"] as! String
        }
        if dict.keys.contains("SourceModuleId") && dict["SourceModuleId"] != nil {
            self.sourceModuleId = dict["SourceModuleId"] as! String
        }
        if dict.keys.contains("SubType") && dict["SubType"] != nil {
            self.subType = dict["SubType"] as! String
        }
        if dict.keys.contains("TargetModuleId") && dict["TargetModuleId"] != nil {
            self.targetModuleId = dict["TargetModuleId"] as! String
        }
        if dict.keys.contains("TargetName") && dict["TargetName"] != nil {
            self.targetName = dict["TargetName"] as! String
        }
        if dict.keys.contains("TargetSubType") && dict["TargetSubType"] != nil {
            self.targetSubType = dict["TargetSubType"] as! String
        }
    }
}

public class CloneModelFromCommitResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var attributes: [[String: String]]?

        public var content: [String: String]?

        public var createTime: String?

        public var description_: String?

        public var id: String?

        public var linkModelId: String?

        public var linkModuleId: String?

        public var linked: Bool?

        public var modelId: String?

        public var modelName: String?

        public var modelStatus: String?

        public var modelType: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var props: [String: String]?

        public var revision: Int32?

        public var schemaVersion: String?

        public var subType: String?

        public var visibility: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.linkModelId != nil {
                map["LinkModelId"] = self.linkModelId!
            }
            if self.linkModuleId != nil {
                map["LinkModuleId"] = self.linkModuleId!
            }
            if self.linked != nil {
                map["Linked"] = self.linked!
            }
            if self.modelId != nil {
                map["ModelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            if self.modelStatus != nil {
                map["ModelStatus"] = self.modelStatus!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.props != nil {
                map["Props"] = self.props!
            }
            if self.revision != nil {
                map["Revision"] = self.revision!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            if self.visibility != nil {
                map["Visibility"] = self.visibility!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                self.attributes = dict["Attributes"] as! [[String: String]]
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! [String: String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
                self.linkModelId = dict["LinkModelId"] as! String
            }
            if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
                self.linkModuleId = dict["LinkModuleId"] as! String
            }
            if dict.keys.contains("Linked") && dict["Linked"] != nil {
                self.linked = dict["Linked"] as! Bool
            }
            if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                self.modelId = dict["ModelId"] as! String
            }
            if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                self.modelName = dict["ModelName"] as! String
            }
            if dict.keys.contains("ModelStatus") && dict["ModelStatus"] != nil {
                self.modelStatus = dict["ModelStatus"] as! String
            }
            if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                self.modelType = dict["ModelType"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("Props") && dict["Props"] != nil {
                self.props = dict["Props"] as! [String: String]
            }
            if dict.keys.contains("Revision") && dict["Revision"] != nil {
                self.revision = dict["Revision"] as! Int32
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
            if dict.keys.contains("SubType") && dict["SubType"] != nil {
                self.subType = dict["SubType"] as! String
            }
            if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                self.visibility = dict["Visibility"] as! String
            }
        }
    }
    public var data: CloneModelFromCommitResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CloneModelFromCommitResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CloneModelFromCommitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloneModelFromCommitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CloneModelFromCommitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CloneModelInModuleRequest : Tea.TeaModel {
    public var modelId: String?

    public var moduleId: String?

    public var source: String?

    public var targetName: String?

    public var targetSubType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.targetName != nil {
            map["TargetName"] = self.targetName!
        }
        if self.targetSubType != nil {
            map["TargetSubType"] = self.targetSubType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("TargetName") && dict["TargetName"] != nil {
            self.targetName = dict["TargetName"] as! String
        }
        if dict.keys.contains("TargetSubType") && dict["TargetSubType"] != nil {
            self.targetSubType = dict["TargetSubType"] as! String
        }
    }
}

public class CloneModelInModuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var attributes: [[String: String]]?

        public var content: [String: String]?

        public var createTime: String?

        public var description_: String?

        public var id: String?

        public var linkModelId: String?

        public var linkModuleId: String?

        public var linked: Bool?

        public var modelId: String?

        public var modelName: String?

        public var modelStatus: String?

        public var modelType: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var props: [String: String]?

        public var revision: Int32?

        public var schemaVersion: String?

        public var subType: String?

        public var visibility: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.linkModelId != nil {
                map["LinkModelId"] = self.linkModelId!
            }
            if self.linkModuleId != nil {
                map["LinkModuleId"] = self.linkModuleId!
            }
            if self.linked != nil {
                map["Linked"] = self.linked!
            }
            if self.modelId != nil {
                map["ModelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            if self.modelStatus != nil {
                map["ModelStatus"] = self.modelStatus!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.props != nil {
                map["Props"] = self.props!
            }
            if self.revision != nil {
                map["Revision"] = self.revision!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            if self.visibility != nil {
                map["Visibility"] = self.visibility!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                self.attributes = dict["Attributes"] as! [[String: String]]
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! [String: String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
                self.linkModelId = dict["LinkModelId"] as! String
            }
            if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
                self.linkModuleId = dict["LinkModuleId"] as! String
            }
            if dict.keys.contains("Linked") && dict["Linked"] != nil {
                self.linked = dict["Linked"] as! Bool
            }
            if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                self.modelId = dict["ModelId"] as! String
            }
            if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                self.modelName = dict["ModelName"] as! String
            }
            if dict.keys.contains("ModelStatus") && dict["ModelStatus"] != nil {
                self.modelStatus = dict["ModelStatus"] as! String
            }
            if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                self.modelType = dict["ModelType"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("Props") && dict["Props"] != nil {
                self.props = dict["Props"] as! [String: String]
            }
            if dict.keys.contains("Revision") && dict["Revision"] != nil {
                self.revision = dict["Revision"] as! Int32
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
            if dict.keys.contains("SubType") && dict["SubType"] != nil {
                self.subType = dict["SubType"] as! String
            }
            if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                self.visibility = dict["Visibility"] as! String
            }
        }
    }
    public var data: CloneModelInModuleResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CloneModelInModuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CloneModelInModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloneModelInModuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CloneModelInModuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppRequest : Tea.TeaModel {
    public var appName: String?

    public var appType: String?

    public var asynchronous: Bool?

    public var categoryId: String?

    public var clientToken: String?

    public var description_: String?

    public var icon: String?

    public var platformVersion: String?

    public var schemaVersion: String?

    public var source: String?

    public var sourceCommitId: String?

    public var templateId: String?

    public var templated: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.asynchronous != nil {
            map["Asynchronous"] = self.asynchronous!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.icon != nil {
            map["Icon"] = self.icon!
        }
        if self.platformVersion != nil {
            map["PlatformVersion"] = self.platformVersion!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceCommitId != nil {
            map["SourceCommitId"] = self.sourceCommitId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templated != nil {
            map["Templated"] = self.templated!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppType") && dict["AppType"] != nil {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("Asynchronous") && dict["Asynchronous"] != nil {
            self.asynchronous = dict["Asynchronous"] as! Bool
        }
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Icon") && dict["Icon"] != nil {
            self.icon = dict["Icon"] as! String
        }
        if dict.keys.contains("PlatformVersion") && dict["PlatformVersion"] != nil {
            self.platformVersion = dict["PlatformVersion"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceCommitId") && dict["SourceCommitId"] != nil {
            self.sourceCommitId = dict["SourceCommitId"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("Templated") && dict["Templated"] != nil {
            self.templated = dict["Templated"] as! Bool
        }
    }
}

public class CreateAppResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Categories : Tea.TeaModel {
            public var categoryId: String?

            public var categoryName: String?

            public var parentCategoryId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.categoryId != nil {
                    map["CategoryId"] = self.categoryId!
                }
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.parentCategoryId != nil {
                    map["ParentCategoryId"] = self.parentCategoryId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                    self.categoryId = dict["CategoryId"] as! String
                }
                if dict.keys.contains("CategoryName") && dict["CategoryName"] != nil {
                    self.categoryName = dict["CategoryName"] as! String
                }
                if dict.keys.contains("ParentCategoryId") && dict["ParentCategoryId"] != nil {
                    self.parentCategoryId = dict["ParentCategoryId"] as! String
                }
            }
        }
        public var appId: String?

        public var appName: String?

        public var appStatus: String?

        public var appType: String?

        public var categories: [CreateAppResponseBody.Data.Categories]?

        public var createTime: String?

        public var description_: String?

        public var icon: String?

        public var isTemplate: Bool?

        public var lastEditTime: String?

        public var mainModuleId: String?

        public var modifiedTime: String?

        public var platformVersion: String?

        public var schemaVersion: String?

        public var source: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appStatus != nil {
                map["AppStatus"] = self.appStatus!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.categories != nil {
                var tmp : [Any] = []
                for k in self.categories! {
                    tmp.append(k.toMap())
                }
                map["Categories"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.icon != nil {
                map["Icon"] = self.icon!
            }
            if self.isTemplate != nil {
                map["IsTemplate"] = self.isTemplate!
            }
            if self.lastEditTime != nil {
                map["LastEditTime"] = self.lastEditTime!
            }
            if self.mainModuleId != nil {
                map["MainModuleId"] = self.mainModuleId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.platformVersion != nil {
                map["PlatformVersion"] = self.platformVersion!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") && dict["AppName"] != nil {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppStatus") && dict["AppStatus"] != nil {
                self.appStatus = dict["AppStatus"] as! String
            }
            if dict.keys.contains("AppType") && dict["AppType"] != nil {
                self.appType = dict["AppType"] as! String
            }
            if dict.keys.contains("Categories") && dict["Categories"] != nil {
                var tmp : [CreateAppResponseBody.Data.Categories] = []
                for v in dict["Categories"] as! [Any] {
                    var model = CreateAppResponseBody.Data.Categories()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.categories = tmp
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Icon") && dict["Icon"] != nil {
                self.icon = dict["Icon"] as! String
            }
            if dict.keys.contains("IsTemplate") && dict["IsTemplate"] != nil {
                self.isTemplate = dict["IsTemplate"] as! Bool
            }
            if dict.keys.contains("LastEditTime") && dict["LastEditTime"] != nil {
                self.lastEditTime = dict["LastEditTime"] as! String
            }
            if dict.keys.contains("MainModuleId") && dict["MainModuleId"] != nil {
                self.mainModuleId = dict["MainModuleId"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("PlatformVersion") && dict["PlatformVersion"] != nil {
                self.platformVersion = dict["PlatformVersion"] as! String
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
        }
    }
    public var data: CreateAppResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateAppResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCommitRequest : Tea.TeaModel {
    public var appId: String?

    public var clientToken: String?

    public var commitLog: String?

    public var commitType: String?

    public var mainModuleCommitId: String?

    public var moduleId: String?

    public var rollbackToCommitId: String?

    public var rollbackType: String?

    public var schemaVersion: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commitLog != nil {
            map["CommitLog"] = self.commitLog!
        }
        if self.commitType != nil {
            map["CommitType"] = self.commitType!
        }
        if self.mainModuleCommitId != nil {
            map["MainModuleCommitId"] = self.mainModuleCommitId!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.rollbackToCommitId != nil {
            map["RollbackToCommitId"] = self.rollbackToCommitId!
        }
        if self.rollbackType != nil {
            map["RollbackType"] = self.rollbackType!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CommitLog") && dict["CommitLog"] != nil {
            self.commitLog = dict["CommitLog"] as! String
        }
        if dict.keys.contains("CommitType") && dict["CommitType"] != nil {
            self.commitType = dict["CommitType"] as! String
        }
        if dict.keys.contains("MainModuleCommitId") && dict["MainModuleCommitId"] != nil {
            self.mainModuleCommitId = dict["MainModuleCommitId"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("RollbackToCommitId") && dict["RollbackToCommitId"] != nil {
            self.rollbackToCommitId = dict["RollbackToCommitId"] as! String
        }
        if dict.keys.contains("RollbackType") && dict["RollbackType"] != nil {
            self.rollbackType = dict["RollbackType"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class CreateCommitResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var commitId: String?

        public var commitLog: String?

        public var commitType: String?

        public var createTime: String?

        public var mainModuleCommitId: String?

        public var mainModuleId: String?

        public var modelDataPath: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var resourceDataPath: String?

        public var resourceDigest: [String: String]?

        public var rollbackToCommitId: String?

        public var rollbackType: String?

        public var schemaVersion: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.commitId != nil {
                map["CommitId"] = self.commitId!
            }
            if self.commitLog != nil {
                map["CommitLog"] = self.commitLog!
            }
            if self.commitType != nil {
                map["CommitType"] = self.commitType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.mainModuleCommitId != nil {
                map["MainModuleCommitId"] = self.mainModuleCommitId!
            }
            if self.mainModuleId != nil {
                map["MainModuleId"] = self.mainModuleId!
            }
            if self.modelDataPath != nil {
                map["ModelDataPath"] = self.modelDataPath!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.resourceDataPath != nil {
                map["ResourceDataPath"] = self.resourceDataPath!
            }
            if self.resourceDigest != nil {
                map["ResourceDigest"] = self.resourceDigest!
            }
            if self.rollbackToCommitId != nil {
                map["RollbackToCommitId"] = self.rollbackToCommitId!
            }
            if self.rollbackType != nil {
                map["RollbackType"] = self.rollbackType!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
                self.commitId = dict["CommitId"] as! String
            }
            if dict.keys.contains("CommitLog") && dict["CommitLog"] != nil {
                self.commitLog = dict["CommitLog"] as! String
            }
            if dict.keys.contains("CommitType") && dict["CommitType"] != nil {
                self.commitType = dict["CommitType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("MainModuleCommitId") && dict["MainModuleCommitId"] != nil {
                self.mainModuleCommitId = dict["MainModuleCommitId"] as! String
            }
            if dict.keys.contains("MainModuleId") && dict["MainModuleId"] != nil {
                self.mainModuleId = dict["MainModuleId"] as! String
            }
            if dict.keys.contains("ModelDataPath") && dict["ModelDataPath"] != nil {
                self.modelDataPath = dict["ModelDataPath"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("ResourceDataPath") && dict["ResourceDataPath"] != nil {
                self.resourceDataPath = dict["ResourceDataPath"] as! String
            }
            if dict.keys.contains("ResourceDigest") && dict["ResourceDigest"] != nil {
                self.resourceDigest = dict["ResourceDigest"] as! [String: String]
            }
            if dict.keys.contains("RollbackToCommitId") && dict["RollbackToCommitId"] != nil {
                self.rollbackToCommitId = dict["RollbackToCommitId"] as! String
            }
            if dict.keys.contains("RollbackType") && dict["RollbackType"] != nil {
                self.rollbackType = dict["RollbackType"] as! String
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
        }
    }
    public var data: CreateCommitResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateCommitResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCommitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCommitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateCommitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDomainRequest : Tea.TeaModel {
    public var appId: String?

    public var clientToken: String?

    public var domain: String?

    public var domainType: String?

    public var envId: String?

    public var path: String?

    public var privateKey: String?

    public var publicKey: String?

    public var source: String?

    public var withCertificate: Bool?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.domainType != nil {
            map["DomainType"] = self.domainType!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.publicKey != nil {
            map["PublicKey"] = self.publicKey!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.withCertificate != nil {
            map["WithCertificate"] = self.withCertificate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("DomainType") && dict["DomainType"] != nil {
            self.domainType = dict["DomainType"] as! String
        }
        if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("Path") && dict["Path"] != nil {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("PublicKey") && dict["PublicKey"] != nil {
            self.publicKey = dict["PublicKey"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("WithCertificate") && dict["WithCertificate"] != nil {
            self.withCertificate = dict["WithCertificate"] as! Bool
        }
    }
}

public class CreateDomainResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var applied: Bool?

        public var checked: Bool?

        public var cname: String?

        public var deleted: Bool?

        public var domain: String?

        public var domainType: String?

        public var envId: String?

        public var path: String?

        public var withCertificate: Bool?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.applied != nil {
                map["Applied"] = self.applied!
            }
            if self.checked != nil {
                map["Checked"] = self.checked!
            }
            if self.cname != nil {
                map["Cname"] = self.cname!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.domainType != nil {
                map["DomainType"] = self.domainType!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.withCertificate != nil {
                map["WithCertificate"] = self.withCertificate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Applied") && dict["Applied"] != nil {
                self.applied = dict["Applied"] as! Bool
            }
            if dict.keys.contains("Checked") && dict["Checked"] != nil {
                self.checked = dict["Checked"] as! Bool
            }
            if dict.keys.contains("Cname") && dict["Cname"] != nil {
                self.cname = dict["Cname"] as! String
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("DomainType") && dict["DomainType"] != nil {
                self.domainType = dict["DomainType"] as! String
            }
            if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("Path") && dict["Path"] != nil {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("WithCertificate") && dict["WithCertificate"] != nil {
                self.withCertificate = dict["WithCertificate"] as! Bool
            }
        }
    }
    public var data: CreateDomainResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateDomainResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLinkEntityAndAssociationRequest : Tea.TeaModel {
    public var clientToken: String?

    public var modelData: String?

    public var source: String?

    public override init() {
        super.init()
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
        if self.modelData != nil {
            map["ModelData"] = self.modelData!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ModelData") && dict["ModelData"] != nil {
            self.modelData = dict["ModelData"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class CreateLinkEntityAndAssociationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appId: String?

            public var attributes: [[String: String]]?

            public var content: [String: String]?

            public var createTime: String?

            public var description_: String?

            public var id: String?

            public var linkModelId: String?

            public var linkModuleId: String?

            public var linked: Bool?

            public var modelId: String?

            public var modelName: String?

            public var modelStatus: String?

            public var modelType: String?

            public var modifiedTime: String?

            public var moduleId: String?

            public var props: [String: String]?

            public var revision: Int32?

            public var schemaVersion: String?

            public var subType: String?

            public var visibility: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.attributes != nil {
                    map["Attributes"] = self.attributes!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.linkModelId != nil {
                    map["LinkModelId"] = self.linkModelId!
                }
                if self.linkModuleId != nil {
                    map["LinkModuleId"] = self.linkModuleId!
                }
                if self.linked != nil {
                    map["Linked"] = self.linked!
                }
                if self.modelId != nil {
                    map["ModelId"] = self.modelId!
                }
                if self.modelName != nil {
                    map["ModelName"] = self.modelName!
                }
                if self.modelStatus != nil {
                    map["ModelStatus"] = self.modelStatus!
                }
                if self.modelType != nil {
                    map["ModelType"] = self.modelType!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.props != nil {
                    map["Props"] = self.props!
                }
                if self.revision != nil {
                    map["Revision"] = self.revision!
                }
                if self.schemaVersion != nil {
                    map["SchemaVersion"] = self.schemaVersion!
                }
                if self.subType != nil {
                    map["SubType"] = self.subType!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                    self.attributes = dict["Attributes"] as! [[String: String]]
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! [String: String]
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
                    self.linkModelId = dict["LinkModelId"] as! String
                }
                if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
                    self.linkModuleId = dict["LinkModuleId"] as! String
                }
                if dict.keys.contains("Linked") && dict["Linked"] != nil {
                    self.linked = dict["Linked"] as! Bool
                }
                if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                    self.modelId = dict["ModelId"] as! String
                }
                if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                    self.modelName = dict["ModelName"] as! String
                }
                if dict.keys.contains("ModelStatus") && dict["ModelStatus"] != nil {
                    self.modelStatus = dict["ModelStatus"] as! String
                }
                if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                    self.modelType = dict["ModelType"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("Props") && dict["Props"] != nil {
                    self.props = dict["Props"] as! [String: String]
                }
                if dict.keys.contains("Revision") && dict["Revision"] != nil {
                    self.revision = dict["Revision"] as! Int32
                }
                if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                    self.schemaVersion = dict["SchemaVersion"] as! String
                }
                if dict.keys.contains("SubType") && dict["SubType"] != nil {
                    self.subType = dict["SubType"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var items: [CreateLinkEntityAndAssociationResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [CreateLinkEntityAndAssociationResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = CreateLinkEntityAndAssociationResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: CreateLinkEntityAndAssociationResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateLinkEntityAndAssociationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateLinkEntityAndAssociationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLinkEntityAndAssociationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateLinkEntityAndAssociationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateModelRequest : Tea.TeaModel {
    public var appId: String?

    public var clientToken: String?

    public var content: String?

    public var description_: String?

    public var encodeType: String?

    public var linkModelId: String?

    public var linkModuleId: String?

    public var linked: Bool?

    public var modelId: String?

    public var modelName: String?

    public var modelType: String?

    public var moduleId: String?

    public var schemaVersion: String?

    public var source: String?

    public var subType: String?

    public var visibility: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.encodeType != nil {
            map["EncodeType"] = self.encodeType!
        }
        if self.linkModelId != nil {
            map["LinkModelId"] = self.linkModelId!
        }
        if self.linkModuleId != nil {
            map["LinkModuleId"] = self.linkModuleId!
        }
        if self.linked != nil {
            map["Linked"] = self.linked!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.modelType != nil {
            map["ModelType"] = self.modelType!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.subType != nil {
            map["SubType"] = self.subType!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EncodeType") && dict["EncodeType"] != nil {
            self.encodeType = dict["EncodeType"] as! String
        }
        if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
            self.linkModelId = dict["LinkModelId"] as! String
        }
        if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
            self.linkModuleId = dict["LinkModuleId"] as! String
        }
        if dict.keys.contains("Linked") && dict["Linked"] != nil {
            self.linked = dict["Linked"] as! Bool
        }
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
            self.modelName = dict["ModelName"] as! String
        }
        if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
            self.modelType = dict["ModelType"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SubType") && dict["SubType"] != nil {
            self.subType = dict["SubType"] as! String
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
    }
}

public class CreateModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var attributes: [[String: String]]?

        public var content: [String: String]?

        public var createTime: String?

        public var description_: String?

        public var id: String?

        public var linkModelId: String?

        public var linkModuleId: String?

        public var linked: Bool?

        public var modelDigest: String?

        public var modelId: String?

        public var modelName: String?

        public var modelStatus: String?

        public var modelType: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var props: [String: String]?

        public var revision: Int32?

        public var schemaVersion: String?

        public var subType: String?

        public var visibility: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.linkModelId != nil {
                map["LinkModelId"] = self.linkModelId!
            }
            if self.linkModuleId != nil {
                map["LinkModuleId"] = self.linkModuleId!
            }
            if self.linked != nil {
                map["Linked"] = self.linked!
            }
            if self.modelDigest != nil {
                map["ModelDigest"] = self.modelDigest!
            }
            if self.modelId != nil {
                map["ModelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            if self.modelStatus != nil {
                map["ModelStatus"] = self.modelStatus!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.props != nil {
                map["Props"] = self.props!
            }
            if self.revision != nil {
                map["Revision"] = self.revision!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            if self.visibility != nil {
                map["Visibility"] = self.visibility!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                self.attributes = dict["Attributes"] as! [[String: String]]
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! [String: String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
                self.linkModelId = dict["LinkModelId"] as! String
            }
            if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
                self.linkModuleId = dict["LinkModuleId"] as! String
            }
            if dict.keys.contains("Linked") && dict["Linked"] != nil {
                self.linked = dict["Linked"] as! Bool
            }
            if dict.keys.contains("ModelDigest") && dict["ModelDigest"] != nil {
                self.modelDigest = dict["ModelDigest"] as! String
            }
            if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                self.modelId = dict["ModelId"] as! String
            }
            if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                self.modelName = dict["ModelName"] as! String
            }
            if dict.keys.contains("ModelStatus") && dict["ModelStatus"] != nil {
                self.modelStatus = dict["ModelStatus"] as! String
            }
            if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                self.modelType = dict["ModelType"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("Props") && dict["Props"] != nil {
                self.props = dict["Props"] as! [String: String]
            }
            if dict.keys.contains("Revision") && dict["Revision"] != nil {
                self.revision = dict["Revision"] as! Int32
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
            if dict.keys.contains("SubType") && dict["SubType"] != nil {
                self.subType = dict["SubType"] as! String
            }
            if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                self.visibility = dict["Visibility"] as! String
            }
        }
    }
    public var data: CreateModelResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateModelResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateModuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var icon: String?

    public var minimumPlatformVersion: String?

    public var moduleName: String?

    public var moduleType: String?

    public var platform: String?

    public var source: String?

    public var sourceModuleId: String?

    public var targetAppSource: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.icon != nil {
            map["Icon"] = self.icon!
        }
        if self.minimumPlatformVersion != nil {
            map["MinimumPlatformVersion"] = self.minimumPlatformVersion!
        }
        if self.moduleName != nil {
            map["ModuleName"] = self.moduleName!
        }
        if self.moduleType != nil {
            map["ModuleType"] = self.moduleType!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.sourceModuleId != nil {
            map["SourceModuleId"] = self.sourceModuleId!
        }
        if self.targetAppSource != nil {
            map["TargetAppSource"] = self.targetAppSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Icon") && dict["Icon"] != nil {
            self.icon = dict["Icon"] as! String
        }
        if dict.keys.contains("MinimumPlatformVersion") && dict["MinimumPlatformVersion"] != nil {
            self.minimumPlatformVersion = dict["MinimumPlatformVersion"] as! String
        }
        if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
            self.moduleName = dict["ModuleName"] as! String
        }
        if dict.keys.contains("ModuleType") && dict["ModuleType"] != nil {
            self.moduleType = dict["ModuleType"] as! String
        }
        if dict.keys.contains("Platform") && dict["Platform"] != nil {
            self.platform = dict["Platform"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SourceModuleId") && dict["SourceModuleId"] != nil {
            self.sourceModuleId = dict["SourceModuleId"] as! String
        }
        if dict.keys.contains("TargetAppSource") && dict["TargetAppSource"] != nil {
            self.targetAppSource = dict["TargetAppSource"] as! String
        }
    }
}

public class CreateModuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var icon: String?

        public var latestPublishedCommit: String?

        public var latestPublishedVersion: String?

        public var minimumPlatformVersion: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var moduleName: String?

        public var moduleType: String?

        public var ownerAppId: String?

        public var ownerUserId: String?

        public var platform: String?

        public var platformVersion: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.icon != nil {
                map["Icon"] = self.icon!
            }
            if self.latestPublishedCommit != nil {
                map["LatestPublishedCommit"] = self.latestPublishedCommit!
            }
            if self.latestPublishedVersion != nil {
                map["LatestPublishedVersion"] = self.latestPublishedVersion!
            }
            if self.minimumPlatformVersion != nil {
                map["MinimumPlatformVersion"] = self.minimumPlatformVersion!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.moduleName != nil {
                map["ModuleName"] = self.moduleName!
            }
            if self.moduleType != nil {
                map["ModuleType"] = self.moduleType!
            }
            if self.ownerAppId != nil {
                map["OwnerAppId"] = self.ownerAppId!
            }
            if self.ownerUserId != nil {
                map["OwnerUserId"] = self.ownerUserId!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.platformVersion != nil {
                map["PlatformVersion"] = self.platformVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Icon") && dict["Icon"] != nil {
                self.icon = dict["Icon"] as! String
            }
            if dict.keys.contains("LatestPublishedCommit") && dict["LatestPublishedCommit"] != nil {
                self.latestPublishedCommit = dict["LatestPublishedCommit"] as! String
            }
            if dict.keys.contains("LatestPublishedVersion") && dict["LatestPublishedVersion"] != nil {
                self.latestPublishedVersion = dict["LatestPublishedVersion"] as! String
            }
            if dict.keys.contains("MinimumPlatformVersion") && dict["MinimumPlatformVersion"] != nil {
                self.minimumPlatformVersion = dict["MinimumPlatformVersion"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
                self.moduleName = dict["ModuleName"] as! String
            }
            if dict.keys.contains("ModuleType") && dict["ModuleType"] != nil {
                self.moduleType = dict["ModuleType"] as! String
            }
            if dict.keys.contains("OwnerAppId") && dict["OwnerAppId"] != nil {
                self.ownerAppId = dict["OwnerAppId"] as! String
            }
            if dict.keys.contains("OwnerUserId") && dict["OwnerUserId"] != nil {
                self.ownerUserId = dict["OwnerUserId"] as! String
            }
            if dict.keys.contains("Platform") && dict["Platform"] != nil {
                self.platform = dict["Platform"] as! String
            }
            if dict.keys.contains("PlatformVersion") && dict["PlatformVersion"] != nil {
                self.platformVersion = dict["PlatformVersion"] as! String
            }
        }
    }
    public var data: CreateModuleResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateModuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateModuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateModulePublishRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var moduleId: String?

    public var publishVersion: String?

    public var source: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.publishVersion != nil {
            map["PublishVersion"] = self.publishVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("PublishVersion") && dict["PublishVersion"] != nil {
            self.publishVersion = dict["PublishVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class CreateModulePublishResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var commitId: String?

        public var createTime: String?

        public var description_: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var publishId: String?

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
            if self.commitId != nil {
                map["CommitId"] = self.commitId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.publishId != nil {
                map["PublishId"] = self.publishId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
                self.commitId = dict["CommitId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("PublishId") && dict["PublishId"] != nil {
                self.publishId = dict["PublishId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var data: CreateModulePublishResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateModulePublishResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateModulePublishResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModulePublishResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateModulePublishResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePublishRequest : Tea.TeaModel {
    public var appId: String?

    public var clientToken: String?

    public var commitId: String?

    public var description_: String?

    public var envType: String?

    public var publishType: String?

    public var source: String?

    public var versionNumber: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commitId != nil {
            map["CommitId"] = self.commitId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.envType != nil {
            map["EnvType"] = self.envType!
        }
        if self.publishType != nil {
            map["PublishType"] = self.publishType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.versionNumber != nil {
            map["VersionNumber"] = self.versionNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
            self.commitId = dict["CommitId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EnvType") && dict["EnvType"] != nil {
            self.envType = dict["EnvType"] as! String
        }
        if dict.keys.contains("PublishType") && dict["PublishType"] != nil {
            self.publishType = dict["PublishType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("VersionNumber") && dict["VersionNumber"] != nil {
            self.versionNumber = dict["VersionNumber"] as! String
        }
    }
}

public class CreatePublishResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var commitId: String?

        public var completionTime: String?

        public var createTime: String?

        public var description_: String?

        public var envId: String?

        public var modifiedTime: String?

        public var publishId: String?

        public var publishStatus: String?

        public var publishType: String?

        public var reason: String?

        public var startTime: String?

        public var subTasks: [[String: String]]?

        public var versionNumber: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.commitId != nil {
                map["CommitId"] = self.commitId!
            }
            if self.completionTime != nil {
                map["CompletionTime"] = self.completionTime!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.publishId != nil {
                map["PublishId"] = self.publishId!
            }
            if self.publishStatus != nil {
                map["PublishStatus"] = self.publishStatus!
            }
            if self.publishType != nil {
                map["PublishType"] = self.publishType!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.subTasks != nil {
                map["SubTasks"] = self.subTasks!
            }
            if self.versionNumber != nil {
                map["VersionNumber"] = self.versionNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
                self.commitId = dict["CommitId"] as! String
            }
            if dict.keys.contains("CompletionTime") && dict["CompletionTime"] != nil {
                self.completionTime = dict["CompletionTime"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("PublishId") && dict["PublishId"] != nil {
                self.publishId = dict["PublishId"] as! String
            }
            if dict.keys.contains("PublishStatus") && dict["PublishStatus"] != nil {
                self.publishStatus = dict["PublishStatus"] as! String
            }
            if dict.keys.contains("PublishType") && dict["PublishType"] != nil {
                self.publishType = dict["PublishType"] as! String
            }
            if dict.keys.contains("Reason") && dict["Reason"] != nil {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("SubTasks") && dict["SubTasks"] != nil {
                self.subTasks = dict["SubTasks"] as! [[String: String]]
            }
            if dict.keys.contains("VersionNumber") && dict["VersionNumber"] != nil {
                self.versionNumber = dict["VersionNumber"] as! String
            }
        }
    }
    public var data: CreatePublishResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreatePublishResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePublishResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePublishResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreatePublishResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateResourceRequest : Tea.TeaModel {
    public var appId: String?

    public var clientToken: String?

    public var content: String?

    public var description_: String?

    public var moduleId: String?

    public var resourceId: String?

    public var resourceName: String?

    public var resourceType: String?

    public var schemaVersion: String?

    public var source: String?

    public var visibility: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.visibility != nil {
            map["Visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
            self.visibility = dict["Visibility"] as! String
        }
    }
}

public class CreateResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var content: [String: String]?

        public var createTime: String?

        public var description_: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var resourceDigest: String?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceType: String?

        public var revision: Int32?

        public var schemaVersion: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.resourceDigest != nil {
                map["ResourceDigest"] = self.resourceDigest!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.revision != nil {
                map["Revision"] = self.revision!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! [String: String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("ResourceDigest") && dict["ResourceDigest"] != nil {
                self.resourceDigest = dict["ResourceDigest"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Revision") && dict["Revision"] != nil {
                self.revision = dict["Revision"] as! Int32
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
        }
    }
    public var data: CreateResourceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateResourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppRequest : Tea.TeaModel {
    public var appId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class DeleteAppResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var appName: String?

        public var appStatus: String?

        public var appType: String?

        public var createTime: String?

        public var description_: String?

        public var icon: String?

        public var isTemplate: Bool?

        public var lastEditTime: String?

        public var mainModuleId: String?

        public var modifiedTime: String?

        public var schemaVersion: String?

        public var source: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appStatus != nil {
                map["AppStatus"] = self.appStatus!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.icon != nil {
                map["Icon"] = self.icon!
            }
            if self.isTemplate != nil {
                map["IsTemplate"] = self.isTemplate!
            }
            if self.lastEditTime != nil {
                map["LastEditTime"] = self.lastEditTime!
            }
            if self.mainModuleId != nil {
                map["MainModuleId"] = self.mainModuleId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") && dict["AppName"] != nil {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppStatus") && dict["AppStatus"] != nil {
                self.appStatus = dict["AppStatus"] as! String
            }
            if dict.keys.contains("AppType") && dict["AppType"] != nil {
                self.appType = dict["AppType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Icon") && dict["Icon"] != nil {
                self.icon = dict["Icon"] as! String
            }
            if dict.keys.contains("IsTemplate") && dict["IsTemplate"] != nil {
                self.isTemplate = dict["IsTemplate"] as! Bool
            }
            if dict.keys.contains("LastEditTime") && dict["LastEditTime"] != nil {
                self.lastEditTime = dict["LastEditTime"] as! String
            }
            if dict.keys.contains("MainModuleId") && dict["MainModuleId"] != nil {
                self.mainModuleId = dict["MainModuleId"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
        }
    }
    public var data: DeleteAppResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DeleteAppResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCommitRequest : Tea.TeaModel {
    public var appId: String?

    public var commitId: String?

    public var moduleId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.commitId != nil {
            map["CommitId"] = self.commitId!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
            self.commitId = dict["CommitId"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class DeleteCommitResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var commitId: String?

        public var commitLog: String?

        public var commitType: String?

        public var createTime: String?

        public var mainModuleCommitId: String?

        public var mainModuleId: String?

        public var modelDataPath: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var resourceDataPath: String?

        public var resourceDigest: [String: String]?

        public var rollbackToCommitId: String?

        public var rollbackType: String?

        public var schemaVersion: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.commitId != nil {
                map["CommitId"] = self.commitId!
            }
            if self.commitLog != nil {
                map["CommitLog"] = self.commitLog!
            }
            if self.commitType != nil {
                map["CommitType"] = self.commitType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.mainModuleCommitId != nil {
                map["MainModuleCommitId"] = self.mainModuleCommitId!
            }
            if self.mainModuleId != nil {
                map["MainModuleId"] = self.mainModuleId!
            }
            if self.modelDataPath != nil {
                map["ModelDataPath"] = self.modelDataPath!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.resourceDataPath != nil {
                map["ResourceDataPath"] = self.resourceDataPath!
            }
            if self.resourceDigest != nil {
                map["ResourceDigest"] = self.resourceDigest!
            }
            if self.rollbackToCommitId != nil {
                map["RollbackToCommitId"] = self.rollbackToCommitId!
            }
            if self.rollbackType != nil {
                map["RollbackType"] = self.rollbackType!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
                self.commitId = dict["CommitId"] as! String
            }
            if dict.keys.contains("CommitLog") && dict["CommitLog"] != nil {
                self.commitLog = dict["CommitLog"] as! String
            }
            if dict.keys.contains("CommitType") && dict["CommitType"] != nil {
                self.commitType = dict["CommitType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("MainModuleCommitId") && dict["MainModuleCommitId"] != nil {
                self.mainModuleCommitId = dict["MainModuleCommitId"] as! String
            }
            if dict.keys.contains("MainModuleId") && dict["MainModuleId"] != nil {
                self.mainModuleId = dict["MainModuleId"] as! String
            }
            if dict.keys.contains("ModelDataPath") && dict["ModelDataPath"] != nil {
                self.modelDataPath = dict["ModelDataPath"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("ResourceDataPath") && dict["ResourceDataPath"] != nil {
                self.resourceDataPath = dict["ResourceDataPath"] as! String
            }
            if dict.keys.contains("ResourceDigest") && dict["ResourceDigest"] != nil {
                self.resourceDigest = dict["ResourceDigest"] as! [String: String]
            }
            if dict.keys.contains("RollbackToCommitId") && dict["RollbackToCommitId"] != nil {
                self.rollbackToCommitId = dict["RollbackToCommitId"] as! String
            }
            if dict.keys.contains("RollbackType") && dict["RollbackType"] != nil {
                self.rollbackType = dict["RollbackType"] as! String
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
        }
    }
    public var data: DeleteCommitResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DeleteCommitResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteCommitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCommitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteCommitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDomainRequest : Tea.TeaModel {
    public var appId: String?

    public var domain: String?

    public var envId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class DeleteDomainResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var applied: Bool?

        public var deleted: Bool?

        public var domain: String?

        public var domainType: String?

        public var envId: String?

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
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.applied != nil {
                map["Applied"] = self.applied!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.domainType != nil {
                map["DomainType"] = self.domainType!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Applied") && dict["Applied"] != nil {
                self.applied = dict["Applied"] as! Bool
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("DomainType") && dict["DomainType"] != nil {
                self.domainType = dict["DomainType"] as! String
            }
            if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("Path") && dict["Path"] != nil {
                self.path = dict["Path"] as! String
            }
        }
    }
    public var data: DeleteDomainResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DeleteDomainResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteModelRequest : Tea.TeaModel {
    public var appId: String?

    public var modelId: String?

    public var moduleId: String?

    public var schemaVersion: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class DeleteModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var attributes: [[String: String]]?

        public var content: [String: String]?

        public var createTime: String?

        public var description_: String?

        public var id: String?

        public var linkModelId: String?

        public var linkModuleId: String?

        public var linked: Bool?

        public var modelId: String?

        public var modelName: String?

        public var modelStatus: String?

        public var modelType: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var props: [String: String]?

        public var revision: Int32?

        public var schemaVersion: String?

        public var subType: String?

        public var visibility: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.linkModelId != nil {
                map["LinkModelId"] = self.linkModelId!
            }
            if self.linkModuleId != nil {
                map["LinkModuleId"] = self.linkModuleId!
            }
            if self.linked != nil {
                map["Linked"] = self.linked!
            }
            if self.modelId != nil {
                map["ModelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            if self.modelStatus != nil {
                map["ModelStatus"] = self.modelStatus!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.props != nil {
                map["Props"] = self.props!
            }
            if self.revision != nil {
                map["Revision"] = self.revision!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            if self.visibility != nil {
                map["Visibility"] = self.visibility!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                self.attributes = dict["Attributes"] as! [[String: String]]
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! [String: String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
                self.linkModelId = dict["LinkModelId"] as! String
            }
            if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
                self.linkModuleId = dict["LinkModuleId"] as! String
            }
            if dict.keys.contains("Linked") && dict["Linked"] != nil {
                self.linked = dict["Linked"] as! Bool
            }
            if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                self.modelId = dict["ModelId"] as! String
            }
            if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                self.modelName = dict["ModelName"] as! String
            }
            if dict.keys.contains("ModelStatus") && dict["ModelStatus"] != nil {
                self.modelStatus = dict["ModelStatus"] as! String
            }
            if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                self.modelType = dict["ModelType"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("Props") && dict["Props"] != nil {
                self.props = dict["Props"] as! [String: String]
            }
            if dict.keys.contains("Revision") && dict["Revision"] != nil {
                self.revision = dict["Revision"] as! Int32
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
            if dict.keys.contains("SubType") && dict["SubType"] != nil {
                self.subType = dict["SubType"] as! String
            }
            if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                self.visibility = dict["Visibility"] as! String
            }
        }
    }
    public var data: DeleteModelResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DeleteModelResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteModuleRequest : Tea.TeaModel {
    public var moduleId: String?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class DeleteModuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var icon: String?

        public var latestPublishedCommit: String?

        public var latestPublishedVersion: String?

        public var minimumPlatformVersion: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var moduleName: String?

        public var ownerAppId: String?

        public var ownerUserId: String?

        public var platform: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.icon != nil {
                map["Icon"] = self.icon!
            }
            if self.latestPublishedCommit != nil {
                map["LatestPublishedCommit"] = self.latestPublishedCommit!
            }
            if self.latestPublishedVersion != nil {
                map["LatestPublishedVersion"] = self.latestPublishedVersion!
            }
            if self.minimumPlatformVersion != nil {
                map["MinimumPlatformVersion"] = self.minimumPlatformVersion!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.moduleName != nil {
                map["ModuleName"] = self.moduleName!
            }
            if self.ownerAppId != nil {
                map["OwnerAppId"] = self.ownerAppId!
            }
            if self.ownerUserId != nil {
                map["OwnerUserId"] = self.ownerUserId!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Icon") && dict["Icon"] != nil {
                self.icon = dict["Icon"] as! String
            }
            if dict.keys.contains("LatestPublishedCommit") && dict["LatestPublishedCommit"] != nil {
                self.latestPublishedCommit = dict["LatestPublishedCommit"] as! String
            }
            if dict.keys.contains("LatestPublishedVersion") && dict["LatestPublishedVersion"] != nil {
                self.latestPublishedVersion = dict["LatestPublishedVersion"] as! String
            }
            if dict.keys.contains("MinimumPlatformVersion") && dict["MinimumPlatformVersion"] != nil {
                self.minimumPlatformVersion = dict["MinimumPlatformVersion"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
                self.moduleName = dict["ModuleName"] as! String
            }
            if dict.keys.contains("OwnerAppId") && dict["OwnerAppId"] != nil {
                self.ownerAppId = dict["OwnerAppId"] as! String
            }
            if dict.keys.contains("OwnerUserId") && dict["OwnerUserId"] != nil {
                self.ownerUserId = dict["OwnerUserId"] as! String
            }
            if dict.keys.contains("Platform") && dict["Platform"] != nil {
                self.platform = dict["Platform"] as! String
            }
        }
    }
    public var data: DeleteModuleResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DeleteModuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteModuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteResourceRequest : Tea.TeaModel {
    public var appId: String?

    public var moduleId: String?

    public var resourceId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class DeleteResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var content: [String: String]?

        public var createTime: String?

        public var description_: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceType: String?

        public var revision: Int32?

        public var schemaVersion: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.revision != nil {
                map["Revision"] = self.revision!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! [String: String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Revision") && dict["Revision"] != nil {
                self.revision = dict["Revision"] as! Int32
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
        }
    }
    public var data: DeleteResourceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DeleteResourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateAppUserPasswordRequest : Tea.TeaModel {
    public var appId: String?

    public var envId: String?

    public var source: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class GenerateAppUserPasswordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var password: String?

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
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Password") && dict["Password"] != nil {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var data: GenerateAppUserPasswordResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GenerateAppUserPasswordResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GenerateAppUserPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateAppUserPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GenerateAppUserPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateAuthTokenRequest : Tea.TeaModel {
    public var appId: String?

    public var moduleId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class GenerateAuthTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var jwtToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jwtToken != nil {
                map["JwtToken"] = self.jwtToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
                self.jwtToken = dict["JwtToken"] as! String
            }
        }
    }
    public var data: GenerateAuthTokenResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GenerateAuthTokenResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GenerateAuthTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateAuthTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GenerateAuthTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateUploadTokenRequest : Tea.TeaModel {
    public var appId: String?

    public var materialId: String?

    public var moduleId: String?

    public var source: String?

    public var uploadTokenType: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.materialId != nil {
            map["MaterialId"] = self.materialId!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.uploadTokenType != nil {
            map["UploadTokenType"] = self.uploadTokenType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("MaterialId") && dict["MaterialId"] != nil {
            self.materialId = dict["MaterialId"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("UploadTokenType") && dict["UploadTokenType"] != nil {
            self.uploadTokenType = dict["UploadTokenType"] as! String
        }
    }
}

public class GenerateUploadTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var key: String?

        public var ossAccessKeyId: String?

        public var policy: String?

        public var serverURL: String?

        public var signature: String?

        public var xAmzAlgorithm: String?

        public var xAmzCredential: String?

        public var xAmzDate: String?

        public var xAmzSignature: String?

        public override init() {
            super.init()
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
                map["Key"] = self.key!
            }
            if self.ossAccessKeyId != nil {
                map["OssAccessKeyId"] = self.ossAccessKeyId!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.serverURL != nil {
                map["ServerURL"] = self.serverURL!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            if self.xAmzAlgorithm != nil {
                map["X-Amz-Algorithm"] = self.xAmzAlgorithm!
            }
            if self.xAmzCredential != nil {
                map["X-Amz-Credential"] = self.xAmzCredential!
            }
            if self.xAmzDate != nil {
                map["X-Amz-Date"] = self.xAmzDate!
            }
            if self.xAmzSignature != nil {
                map["X-Amz-Signature"] = self.xAmzSignature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("OssAccessKeyId") && dict["OssAccessKeyId"] != nil {
                self.ossAccessKeyId = dict["OssAccessKeyId"] as! String
            }
            if dict.keys.contains("Policy") && dict["Policy"] != nil {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("ServerURL") && dict["ServerURL"] != nil {
                self.serverURL = dict["ServerURL"] as! String
            }
            if dict.keys.contains("Signature") && dict["Signature"] != nil {
                self.signature = dict["Signature"] as! String
            }
            if dict.keys.contains("X-Amz-Algorithm") && dict["X-Amz-Algorithm"] != nil {
                self.xAmzAlgorithm = dict["X-Amz-Algorithm"] as! String
            }
            if dict.keys.contains("X-Amz-Credential") && dict["X-Amz-Credential"] != nil {
                self.xAmzCredential = dict["X-Amz-Credential"] as! String
            }
            if dict.keys.contains("X-Amz-Date") && dict["X-Amz-Date"] != nil {
                self.xAmzDate = dict["X-Amz-Date"] as! String
            }
            if dict.keys.contains("X-Amz-Signature") && dict["X-Amz-Signature"] != nil {
                self.xAmzSignature = dict["X-Amz-Signature"] as! String
            }
        }
    }
    public var data: GenerateUploadTokenResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GenerateUploadTokenResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GenerateUploadTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateUploadTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GenerateUploadTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppRequest : Tea.TeaModel {
    public var appId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class GetAppResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Categories : Tea.TeaModel {
            public var categoryId: String?

            public var categoryName: String?

            public var parentCategoryId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.categoryId != nil {
                    map["CategoryId"] = self.categoryId!
                }
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.parentCategoryId != nil {
                    map["ParentCategoryId"] = self.parentCategoryId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                    self.categoryId = dict["CategoryId"] as! String
                }
                if dict.keys.contains("CategoryName") && dict["CategoryName"] != nil {
                    self.categoryName = dict["CategoryName"] as! String
                }
                if dict.keys.contains("ParentCategoryId") && dict["ParentCategoryId"] != nil {
                    self.parentCategoryId = dict["ParentCategoryId"] as! String
                }
            }
        }
        public var appId: String?

        public var appName: String?

        public var appStatus: String?

        public var appType: String?

        public var categories: [GetAppResponseBody.Data.Categories]?

        public var createTime: String?

        public var description_: String?

        public var icon: String?

        public var isTemplate: Bool?

        public var lastEditTime: String?

        public var mainModuleId: String?

        public var modifiedTime: String?

        public var platformVersion: String?

        public var schemaVersion: String?

        public var source: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appStatus != nil {
                map["AppStatus"] = self.appStatus!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.categories != nil {
                var tmp : [Any] = []
                for k in self.categories! {
                    tmp.append(k.toMap())
                }
                map["Categories"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.icon != nil {
                map["Icon"] = self.icon!
            }
            if self.isTemplate != nil {
                map["IsTemplate"] = self.isTemplate!
            }
            if self.lastEditTime != nil {
                map["LastEditTime"] = self.lastEditTime!
            }
            if self.mainModuleId != nil {
                map["MainModuleId"] = self.mainModuleId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.platformVersion != nil {
                map["PlatformVersion"] = self.platformVersion!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") && dict["AppName"] != nil {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppStatus") && dict["AppStatus"] != nil {
                self.appStatus = dict["AppStatus"] as! String
            }
            if dict.keys.contains("AppType") && dict["AppType"] != nil {
                self.appType = dict["AppType"] as! String
            }
            if dict.keys.contains("Categories") && dict["Categories"] != nil {
                var tmp : [GetAppResponseBody.Data.Categories] = []
                for v in dict["Categories"] as! [Any] {
                    var model = GetAppResponseBody.Data.Categories()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.categories = tmp
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Icon") && dict["Icon"] != nil {
                self.icon = dict["Icon"] as! String
            }
            if dict.keys.contains("IsTemplate") && dict["IsTemplate"] != nil {
                self.isTemplate = dict["IsTemplate"] as! Bool
            }
            if dict.keys.contains("LastEditTime") && dict["LastEditTime"] != nil {
                self.lastEditTime = dict["LastEditTime"] as! String
            }
            if dict.keys.contains("MainModuleId") && dict["MainModuleId"] != nil {
                self.mainModuleId = dict["MainModuleId"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("PlatformVersion") && dict["PlatformVersion"] != nil {
                self.platformVersion = dict["PlatformVersion"] as! String
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
        }
    }
    public var data: GetAppResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetAppResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppModelRequest : Tea.TeaModel {
    public var appId: String?

    public var schemaVersion: String?

    public var source: String?

    public var subType: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.subType != nil {
            map["SubType"] = self.subType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SubType") && dict["SubType"] != nil {
            self.subType = dict["SubType"] as! String
        }
    }
}

public class GetAppModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var attributes: [[String: String]]?

        public var content: [String: String]?

        public var createTime: String?

        public var description_: String?

        public var id: String?

        public var linkModelId: String?

        public var linkModuleId: String?

        public var linked: Bool?

        public var modelDigest: String?

        public var modelId: String?

        public var modelName: String?

        public var modelStatus: String?

        public var modelType: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var props: [String: String]?

        public var revision: Int32?

        public var schemaVersion: String?

        public var subType: String?

        public var visibility: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.linkModelId != nil {
                map["LinkModelId"] = self.linkModelId!
            }
            if self.linkModuleId != nil {
                map["LinkModuleId"] = self.linkModuleId!
            }
            if self.linked != nil {
                map["Linked"] = self.linked!
            }
            if self.modelDigest != nil {
                map["ModelDigest"] = self.modelDigest!
            }
            if self.modelId != nil {
                map["ModelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            if self.modelStatus != nil {
                map["ModelStatus"] = self.modelStatus!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.props != nil {
                map["Props"] = self.props!
            }
            if self.revision != nil {
                map["Revision"] = self.revision!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            if self.visibility != nil {
                map["Visibility"] = self.visibility!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                self.attributes = dict["Attributes"] as! [[String: String]]
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! [String: String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
                self.linkModelId = dict["LinkModelId"] as! String
            }
            if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
                self.linkModuleId = dict["LinkModuleId"] as! String
            }
            if dict.keys.contains("Linked") && dict["Linked"] != nil {
                self.linked = dict["Linked"] as! Bool
            }
            if dict.keys.contains("ModelDigest") && dict["ModelDigest"] != nil {
                self.modelDigest = dict["ModelDigest"] as! String
            }
            if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                self.modelId = dict["ModelId"] as! String
            }
            if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                self.modelName = dict["ModelName"] as! String
            }
            if dict.keys.contains("ModelStatus") && dict["ModelStatus"] != nil {
                self.modelStatus = dict["ModelStatus"] as! String
            }
            if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                self.modelType = dict["ModelType"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("Props") && dict["Props"] != nil {
                self.props = dict["Props"] as! [String: String]
            }
            if dict.keys.contains("Revision") && dict["Revision"] != nil {
                self.revision = dict["Revision"] as! Int32
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
            if dict.keys.contains("SubType") && dict["SubType"] != nil {
                self.subType = dict["SubType"] as! String
            }
            if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                self.visibility = dict["Visibility"] as! String
            }
        }
    }
    public var data: GetAppModelResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetAppModelResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAppModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetAppModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppSecretRequest : Tea.TeaModel {
    public var appId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class GetAppSecretResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var appSecret: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.appSecret != nil {
                map["AppSecret"] = self.appSecret!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppSecret") && dict["AppSecret"] != nil {
                self.appSecret = dict["AppSecret"] as! String
            }
        }
    }
    public var data: GetAppSecretResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetAppSecretResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAppSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppSecretResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetAppSecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetArtifactRequest : Tea.TeaModel {
    public var appId: String?

    public var artifactId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ArtifactId") && dict["ArtifactId"] != nil {
            self.artifactId = dict["ArtifactId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class GetArtifactResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var artifactId: String?

        public var artifactType: String?

        public var available: Bool?

        public var createTime: String?

        public var modifiedTime: String?

        public var url: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.artifactId != nil {
                map["ArtifactId"] = self.artifactId!
            }
            if self.artifactType != nil {
                map["ArtifactType"] = self.artifactType!
            }
            if self.available != nil {
                map["Available"] = self.available!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("ArtifactId") && dict["ArtifactId"] != nil {
                self.artifactId = dict["ArtifactId"] as! String
            }
            if dict.keys.contains("ArtifactType") && dict["ArtifactType"] != nil {
                self.artifactType = dict["ArtifactType"] as! String
            }
            if dict.keys.contains("Available") && dict["Available"] != nil {
                self.available = dict["Available"] as! Bool
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var data: GetArtifactResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetArtifactResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetArtifactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetArtifactResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetArtifactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCommitRequest : Tea.TeaModel {
    public var appId: String?

    public var commitId: String?

    public var moduleId: String?

    public var schemaVersion: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.commitId != nil {
            map["CommitId"] = self.commitId!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
            self.commitId = dict["CommitId"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class GetCommitResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var commitDigest: String?

        public var commitId: String?

        public var commitLog: String?

        public var commitType: String?

        public var createTime: String?

        public var mainModuleCommitId: String?

        public var mainModuleId: String?

        public var modelDataPath: String?

        public var modelDigest: [String: String]?

        public var modelPack: [Any]?

        public var modifiedTime: String?

        public var moduleId: String?

        public var resourceDataPath: String?

        public var resourceDigest: [String: String]?

        public var resourcePack: [[String: String]]?

        public var rollbackToCommitId: String?

        public var rollbackType: String?

        public var schemaVersion: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.commitDigest != nil {
                map["CommitDigest"] = self.commitDigest!
            }
            if self.commitId != nil {
                map["CommitId"] = self.commitId!
            }
            if self.commitLog != nil {
                map["CommitLog"] = self.commitLog!
            }
            if self.commitType != nil {
                map["CommitType"] = self.commitType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.mainModuleCommitId != nil {
                map["MainModuleCommitId"] = self.mainModuleCommitId!
            }
            if self.mainModuleId != nil {
                map["MainModuleId"] = self.mainModuleId!
            }
            if self.modelDataPath != nil {
                map["ModelDataPath"] = self.modelDataPath!
            }
            if self.modelDigest != nil {
                map["ModelDigest"] = self.modelDigest!
            }
            if self.modelPack != nil {
                map["ModelPack"] = self.modelPack!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.resourceDataPath != nil {
                map["ResourceDataPath"] = self.resourceDataPath!
            }
            if self.resourceDigest != nil {
                map["ResourceDigest"] = self.resourceDigest!
            }
            if self.resourcePack != nil {
                map["ResourcePack"] = self.resourcePack!
            }
            if self.rollbackToCommitId != nil {
                map["RollbackToCommitId"] = self.rollbackToCommitId!
            }
            if self.rollbackType != nil {
                map["RollbackType"] = self.rollbackType!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CommitDigest") && dict["CommitDigest"] != nil {
                self.commitDigest = dict["CommitDigest"] as! String
            }
            if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
                self.commitId = dict["CommitId"] as! String
            }
            if dict.keys.contains("CommitLog") && dict["CommitLog"] != nil {
                self.commitLog = dict["CommitLog"] as! String
            }
            if dict.keys.contains("CommitType") && dict["CommitType"] != nil {
                self.commitType = dict["CommitType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("MainModuleCommitId") && dict["MainModuleCommitId"] != nil {
                self.mainModuleCommitId = dict["MainModuleCommitId"] as! String
            }
            if dict.keys.contains("MainModuleId") && dict["MainModuleId"] != nil {
                self.mainModuleId = dict["MainModuleId"] as! String
            }
            if dict.keys.contains("ModelDataPath") && dict["ModelDataPath"] != nil {
                self.modelDataPath = dict["ModelDataPath"] as! String
            }
            if dict.keys.contains("ModelDigest") && dict["ModelDigest"] != nil {
                self.modelDigest = dict["ModelDigest"] as! [String: String]
            }
            if dict.keys.contains("ModelPack") && dict["ModelPack"] != nil {
                self.modelPack = dict["ModelPack"] as! [Any]
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("ResourceDataPath") && dict["ResourceDataPath"] != nil {
                self.resourceDataPath = dict["ResourceDataPath"] as! String
            }
            if dict.keys.contains("ResourceDigest") && dict["ResourceDigest"] != nil {
                self.resourceDigest = dict["ResourceDigest"] as! [String: String]
            }
            if dict.keys.contains("ResourcePack") && dict["ResourcePack"] != nil {
                self.resourcePack = dict["ResourcePack"] as! [[String: String]]
            }
            if dict.keys.contains("RollbackToCommitId") && dict["RollbackToCommitId"] != nil {
                self.rollbackToCommitId = dict["RollbackToCommitId"] as! String
            }
            if dict.keys.contains("RollbackType") && dict["RollbackType"] != nil {
                self.rollbackType = dict["RollbackType"] as! String
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
        }
    }
    public var data: GetCommitResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetCommitResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetCommitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCommitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetCommitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDefaultAppUserRequest : Tea.TeaModel {
    public var appId: String?

    public var envId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class GetDefaultAppUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var hasPassword: Bool?

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
            if self.hasPassword != nil {
                map["HasPassword"] = self.hasPassword!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HasPassword") && dict["HasPassword"] != nil {
                self.hasPassword = dict["HasPassword"] as! Bool
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var data: GetDefaultAppUserResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetDefaultAppUserResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDefaultAppUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDefaultAppUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDefaultAppUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDomainCnameRequest : Tea.TeaModel {
    public var appId: String?

    public var domain: String?

    public var domainType: String?

    public var envId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.domainType != nil {
            map["DomainType"] = self.domainType!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("DomainType") && dict["DomainType"] != nil {
            self.domainType = dict["DomainType"] as! String
        }
        if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class GetDomainCnameResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cname: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cname != nil {
                map["Cname"] = self.cname!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cname") && dict["Cname"] != nil {
                self.cname = dict["Cname"] as! String
            }
        }
    }
    public var data: GetDomainCnameResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetDomainCnameResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDomainCnameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDomainCnameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDomainCnameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDomainOverviewRequest : Tea.TeaModel {
    public var appId: String?

    public var domain: String?

    public var envId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class GetDomainOverviewResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var applied: Bool?

        public var certificate: [String: String]?

        public var cname: String?

        public var deleted: Bool?

        public var domain: String?

        public var domainType: String?

        public var envId: String?

        public var path: String?

        public var withCertificate: Bool?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.applied != nil {
                map["Applied"] = self.applied!
            }
            if self.certificate != nil {
                map["Certificate"] = self.certificate!
            }
            if self.cname != nil {
                map["Cname"] = self.cname!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.domainType != nil {
                map["DomainType"] = self.domainType!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.withCertificate != nil {
                map["WithCertificate"] = self.withCertificate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Applied") && dict["Applied"] != nil {
                self.applied = dict["Applied"] as! Bool
            }
            if dict.keys.contains("Certificate") && dict["Certificate"] != nil {
                self.certificate = dict["Certificate"] as! [String: String]
            }
            if dict.keys.contains("Cname") && dict["Cname"] != nil {
                self.cname = dict["Cname"] as! String
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("DomainType") && dict["DomainType"] != nil {
                self.domainType = dict["DomainType"] as! String
            }
            if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("Path") && dict["Path"] != nil {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("WithCertificate") && dict["WithCertificate"] != nil {
                self.withCertificate = dict["WithCertificate"] as! Bool
            }
        }
    }
    public var data: GetDomainOverviewResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetDomainOverviewResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDomainOverviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDomainOverviewResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDomainOverviewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEnvironmentRequest : Tea.TeaModel {
    public var appId: String?

    public var envId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class GetEnvironmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountOpsEndpoint: String?

        public var appId: String?

        public var createTime: String?

        public var currentPublishId: String?

        public var endpoint: String?

        public var envId: String?

        public var envType: String?

        public var modifiedTime: String?

        public var publishingId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountOpsEndpoint != nil {
                map["AccountOpsEndpoint"] = self.accountOpsEndpoint!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.currentPublishId != nil {
                map["CurrentPublishId"] = self.currentPublishId!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.envType != nil {
                map["EnvType"] = self.envType!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.publishingId != nil {
                map["PublishingId"] = self.publishingId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountOpsEndpoint") && dict["AccountOpsEndpoint"] != nil {
                self.accountOpsEndpoint = dict["AccountOpsEndpoint"] as! String
            }
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CurrentPublishId") && dict["CurrentPublishId"] != nil {
                self.currentPublishId = dict["CurrentPublishId"] as! String
            }
            if dict.keys.contains("Endpoint") && dict["Endpoint"] != nil {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("EnvType") && dict["EnvType"] != nil {
                self.envType = dict["EnvType"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("PublishingId") && dict["PublishingId"] != nil {
                self.publishingId = dict["PublishingId"] as! String
            }
        }
    }
    public var data: GetEnvironmentResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetEnvironmentResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEnvironmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetEnvironmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHistoryStatsRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: String?

    public var source: String?

    public var startDate: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class GetHistoryStatsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var historyPv: [String: String]?

        public var historyUv: [String: String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.historyPv != nil {
                map["HistoryPv"] = self.historyPv!
            }
            if self.historyUv != nil {
                map["HistoryUv"] = self.historyUv!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HistoryPv") && dict["HistoryPv"] != nil {
                self.historyPv = dict["HistoryPv"] as! [String: String]
            }
            if dict.keys.contains("HistoryUv") && dict["HistoryUv"] != nil {
                self.historyUv = dict["HistoryUv"] as! [String: String]
            }
        }
    }
    public var data: GetHistoryStatsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetHistoryStatsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetHistoryStatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHistoryStatsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetHistoryStatsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLatestCommitRequest : Tea.TeaModel {
    public var appId: String?

    public var moduleId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class GetLatestCommitResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var commitId: String?

        public var commitLog: String?

        public var commitType: String?

        public var createTime: String?

        public var mainModuleCommitId: String?

        public var mainModuleId: String?

        public var modelDataPath: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var resourceDataPath: String?

        public var resourceDigest: [String: String]?

        public var rollbackToCommitId: String?

        public var rollbackType: String?

        public var schemaVersion: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.commitId != nil {
                map["CommitId"] = self.commitId!
            }
            if self.commitLog != nil {
                map["CommitLog"] = self.commitLog!
            }
            if self.commitType != nil {
                map["CommitType"] = self.commitType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.mainModuleCommitId != nil {
                map["MainModuleCommitId"] = self.mainModuleCommitId!
            }
            if self.mainModuleId != nil {
                map["MainModuleId"] = self.mainModuleId!
            }
            if self.modelDataPath != nil {
                map["ModelDataPath"] = self.modelDataPath!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.resourceDataPath != nil {
                map["ResourceDataPath"] = self.resourceDataPath!
            }
            if self.resourceDigest != nil {
                map["ResourceDigest"] = self.resourceDigest!
            }
            if self.rollbackToCommitId != nil {
                map["RollbackToCommitId"] = self.rollbackToCommitId!
            }
            if self.rollbackType != nil {
                map["RollbackType"] = self.rollbackType!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
                self.commitId = dict["CommitId"] as! String
            }
            if dict.keys.contains("CommitLog") && dict["CommitLog"] != nil {
                self.commitLog = dict["CommitLog"] as! String
            }
            if dict.keys.contains("CommitType") && dict["CommitType"] != nil {
                self.commitType = dict["CommitType"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("MainModuleCommitId") && dict["MainModuleCommitId"] != nil {
                self.mainModuleCommitId = dict["MainModuleCommitId"] as! String
            }
            if dict.keys.contains("MainModuleId") && dict["MainModuleId"] != nil {
                self.mainModuleId = dict["MainModuleId"] as! String
            }
            if dict.keys.contains("ModelDataPath") && dict["ModelDataPath"] != nil {
                self.modelDataPath = dict["ModelDataPath"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("ResourceDataPath") && dict["ResourceDataPath"] != nil {
                self.resourceDataPath = dict["ResourceDataPath"] as! String
            }
            if dict.keys.contains("ResourceDigest") && dict["ResourceDigest"] != nil {
                self.resourceDigest = dict["ResourceDigest"] as! [String: String]
            }
            if dict.keys.contains("RollbackToCommitId") && dict["RollbackToCommitId"] != nil {
                self.rollbackToCommitId = dict["RollbackToCommitId"] as! String
            }
            if dict.keys.contains("RollbackType") && dict["RollbackType"] != nil {
                self.rollbackType = dict["RollbackType"] as! String
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
        }
    }
    public var data: GetLatestCommitResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetLatestCommitResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetLatestCommitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLatestCommitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetLatestCommitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetModelRequest : Tea.TeaModel {
    public var appId: String?

    public var modelId: String?

    public var moduleId: String?

    public var schemaVersion: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class GetModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var attributes: [[String: String]]?

        public var content: [String: String]?

        public var createTime: String?

        public var description_: String?

        public var id: String?

        public var linkModelId: String?

        public var linkModuleId: String?

        public var linked: Bool?

        public var modelId: String?

        public var modelName: String?

        public var modelStatus: String?

        public var modelType: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var props: [String: String]?

        public var revision: Int32?

        public var schemaVersion: String?

        public var subType: String?

        public var visibility: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.linkModelId != nil {
                map["LinkModelId"] = self.linkModelId!
            }
            if self.linkModuleId != nil {
                map["LinkModuleId"] = self.linkModuleId!
            }
            if self.linked != nil {
                map["Linked"] = self.linked!
            }
            if self.modelId != nil {
                map["ModelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            if self.modelStatus != nil {
                map["ModelStatus"] = self.modelStatus!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.props != nil {
                map["Props"] = self.props!
            }
            if self.revision != nil {
                map["Revision"] = self.revision!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            if self.visibility != nil {
                map["Visibility"] = self.visibility!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                self.attributes = dict["Attributes"] as! [[String: String]]
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! [String: String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
                self.linkModelId = dict["LinkModelId"] as! String
            }
            if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
                self.linkModuleId = dict["LinkModuleId"] as! String
            }
            if dict.keys.contains("Linked") && dict["Linked"] != nil {
                self.linked = dict["Linked"] as! Bool
            }
            if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                self.modelId = dict["ModelId"] as! String
            }
            if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                self.modelName = dict["ModelName"] as! String
            }
            if dict.keys.contains("ModelStatus") && dict["ModelStatus"] != nil {
                self.modelStatus = dict["ModelStatus"] as! String
            }
            if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                self.modelType = dict["ModelType"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("Props") && dict["Props"] != nil {
                self.props = dict["Props"] as! [String: String]
            }
            if dict.keys.contains("Revision") && dict["Revision"] != nil {
                self.revision = dict["Revision"] as! Int32
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
            if dict.keys.contains("SubType") && dict["SubType"] != nil {
                self.subType = dict["SubType"] as! String
            }
            if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                self.visibility = dict["Visibility"] as! String
            }
        }
    }
    public var data: GetModelResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetModelResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetModuleRequest : Tea.TeaModel {
    public var moduleId: String?

    public var moduleType: String?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.moduleType != nil {
            map["ModuleType"] = self.moduleType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("ModuleType") && dict["ModuleType"] != nil {
            self.moduleType = dict["ModuleType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class GetModuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var icon: String?

        public var latestPublishedCommit: String?

        public var latestPublishedVersion: String?

        public var minimumPlatformVersion: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var moduleName: String?

        public var ownerAppId: String?

        public var ownerUserId: String?

        public var platform: String?

        public var platformVersion: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.icon != nil {
                map["Icon"] = self.icon!
            }
            if self.latestPublishedCommit != nil {
                map["LatestPublishedCommit"] = self.latestPublishedCommit!
            }
            if self.latestPublishedVersion != nil {
                map["LatestPublishedVersion"] = self.latestPublishedVersion!
            }
            if self.minimumPlatformVersion != nil {
                map["MinimumPlatformVersion"] = self.minimumPlatformVersion!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.moduleName != nil {
                map["ModuleName"] = self.moduleName!
            }
            if self.ownerAppId != nil {
                map["OwnerAppId"] = self.ownerAppId!
            }
            if self.ownerUserId != nil {
                map["OwnerUserId"] = self.ownerUserId!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.platformVersion != nil {
                map["PlatformVersion"] = self.platformVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Icon") && dict["Icon"] != nil {
                self.icon = dict["Icon"] as! String
            }
            if dict.keys.contains("LatestPublishedCommit") && dict["LatestPublishedCommit"] != nil {
                self.latestPublishedCommit = dict["LatestPublishedCommit"] as! String
            }
            if dict.keys.contains("LatestPublishedVersion") && dict["LatestPublishedVersion"] != nil {
                self.latestPublishedVersion = dict["LatestPublishedVersion"] as! String
            }
            if dict.keys.contains("MinimumPlatformVersion") && dict["MinimumPlatformVersion"] != nil {
                self.minimumPlatformVersion = dict["MinimumPlatformVersion"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
                self.moduleName = dict["ModuleName"] as! String
            }
            if dict.keys.contains("OwnerAppId") && dict["OwnerAppId"] != nil {
                self.ownerAppId = dict["OwnerAppId"] as! String
            }
            if dict.keys.contains("OwnerUserId") && dict["OwnerUserId"] != nil {
                self.ownerUserId = dict["OwnerUserId"] as! String
            }
            if dict.keys.contains("Platform") && dict["Platform"] != nil {
                self.platform = dict["Platform"] as! String
            }
            if dict.keys.contains("PlatformVersion") && dict["PlatformVersion"] != nil {
                self.platformVersion = dict["PlatformVersion"] as! String
            }
        }
    }
    public var data: GetModuleResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetModuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetModuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPublishRequest : Tea.TeaModel {
    public var appId: String?

    public var publishId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.publishId != nil {
            map["PublishId"] = self.publishId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("PublishId") && dict["PublishId"] != nil {
            self.publishId = dict["PublishId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class GetPublishResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var commitId: String?

        public var completionTime: String?

        public var createTime: String?

        public var description_: String?

        public var envId: String?

        public var modifiedTime: String?

        public var publishId: String?

        public var publishStatus: String?

        public var publishType: String?

        public var reason: String?

        public var startTime: String?

        public var subTasks: [[String: String]]?

        public var versionNumber: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.commitId != nil {
                map["CommitId"] = self.commitId!
            }
            if self.completionTime != nil {
                map["CompletionTime"] = self.completionTime!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.publishId != nil {
                map["PublishId"] = self.publishId!
            }
            if self.publishStatus != nil {
                map["PublishStatus"] = self.publishStatus!
            }
            if self.publishType != nil {
                map["PublishType"] = self.publishType!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.subTasks != nil {
                map["SubTasks"] = self.subTasks!
            }
            if self.versionNumber != nil {
                map["VersionNumber"] = self.versionNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
                self.commitId = dict["CommitId"] as! String
            }
            if dict.keys.contains("CompletionTime") && dict["CompletionTime"] != nil {
                self.completionTime = dict["CompletionTime"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
                self.envId = dict["EnvId"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("PublishId") && dict["PublishId"] != nil {
                self.publishId = dict["PublishId"] as! String
            }
            if dict.keys.contains("PublishStatus") && dict["PublishStatus"] != nil {
                self.publishStatus = dict["PublishStatus"] as! String
            }
            if dict.keys.contains("PublishType") && dict["PublishType"] != nil {
                self.publishType = dict["PublishType"] as! String
            }
            if dict.keys.contains("Reason") && dict["Reason"] != nil {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("SubTasks") && dict["SubTasks"] != nil {
                self.subTasks = dict["SubTasks"] as! [[String: String]]
            }
            if dict.keys.contains("VersionNumber") && dict["VersionNumber"] != nil {
                self.versionNumber = dict["VersionNumber"] as! String
            }
        }
    }
    public var data: GetPublishResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetPublishResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPublishResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPublishResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPublishResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRealtimeStatsRequest : Tea.TeaModel {
    public var appId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class GetRealtimeStatsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var todayPvCount: [String: String]?

        public var todayUvCount: [String: String]?

        public var totalPvCount: [String: String]?

        public var totalUvCount: [String: String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.todayPvCount != nil {
                map["TodayPvCount"] = self.todayPvCount!
            }
            if self.todayUvCount != nil {
                map["TodayUvCount"] = self.todayUvCount!
            }
            if self.totalPvCount != nil {
                map["TotalPvCount"] = self.totalPvCount!
            }
            if self.totalUvCount != nil {
                map["TotalUvCount"] = self.totalUvCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TodayPvCount") && dict["TodayPvCount"] != nil {
                self.todayPvCount = dict["TodayPvCount"] as! [String: String]
            }
            if dict.keys.contains("TodayUvCount") && dict["TodayUvCount"] != nil {
                self.todayUvCount = dict["TodayUvCount"] as! [String: String]
            }
            if dict.keys.contains("TotalPvCount") && dict["TotalPvCount"] != nil {
                self.totalPvCount = dict["TotalPvCount"] as! [String: String]
            }
            if dict.keys.contains("TotalUvCount") && dict["TotalUvCount"] != nil {
                self.totalUvCount = dict["TotalUvCount"] as! [String: String]
            }
        }
    }
    public var data: GetRealtimeStatsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetRealtimeStatsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetRealtimeStatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRealtimeStatsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetRealtimeStatsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceRequest : Tea.TeaModel {
    public var appId: String?

    public var imageProcessParameter: String?

    public var moduleId: String?

    public var resourceId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.imageProcessParameter != nil {
            map["ImageProcessParameter"] = self.imageProcessParameter!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ImageProcessParameter") && dict["ImageProcessParameter"] != nil {
            self.imageProcessParameter = dict["ImageProcessParameter"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class GetResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var content: [String: String]?

        public var createTime: String?

        public var description_: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var resourceDigest: String?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceType: String?

        public var revision: Int32?

        public var schemaVersion: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.resourceDigest != nil {
                map["ResourceDigest"] = self.resourceDigest!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.revision != nil {
                map["Revision"] = self.revision!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! [String: String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("ResourceDigest") && dict["ResourceDigest"] != nil {
                self.resourceDigest = dict["ResourceDigest"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Revision") && dict["Revision"] != nil {
                self.revision = dict["Revision"] as! Int32
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
        }
    }
    public var data: GetResourceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetResourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserRequest : Tea.TeaModel {
    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var modifiedTime: String?

        public var platformVersion: String?

        public var userSecret: String?

        public var userStatus: String?

        public var userType: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.platformVersion != nil {
                map["PlatformVersion"] = self.platformVersion!
            }
            if self.userSecret != nil {
                map["UserSecret"] = self.userSecret!
            }
            if self.userStatus != nil {
                map["UserStatus"] = self.userStatus!
            }
            if self.userType != nil {
                map["UserType"] = self.userType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("PlatformVersion") && dict["PlatformVersion"] != nil {
                self.platformVersion = dict["PlatformVersion"] as! String
            }
            if dict.keys.contains("UserSecret") && dict["UserSecret"] != nil {
                self.userSecret = dict["UserSecret"] as! String
            }
            if dict.keys.contains("UserStatus") && dict["UserStatus"] != nil {
                self.userStatus = dict["UserStatus"] as! String
            }
            if dict.keys.contains("UserType") && dict["UserType"] != nil {
                self.userType = dict["UserType"] as! String
            }
        }
    }
    public var data: GetUserResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetUserResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

public class ListAppModulesRequest : Tea.TeaModel {
    public var appId: String?

    public var recursive: Bool?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.recursive != nil {
            map["Recursive"] = self.recursive!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Recursive") && dict["Recursive"] != nil {
            self.recursive = dict["Recursive"] as! Bool
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class ListAppModulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var commitId: String?

            public var description_: String?

            public var directDependency: Bool?

            public var icon: String?

            public var minimumPlatformVersion: String?

            public var moduleId: String?

            public var moduleName: String?

            public var ownerUserId: String?

            public var platform: String?

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
                if self.commitId != nil {
                    map["CommitId"] = self.commitId!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.directDependency != nil {
                    map["DirectDependency"] = self.directDependency!
                }
                if self.icon != nil {
                    map["Icon"] = self.icon!
                }
                if self.minimumPlatformVersion != nil {
                    map["MinimumPlatformVersion"] = self.minimumPlatformVersion!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.moduleName != nil {
                    map["ModuleName"] = self.moduleName!
                }
                if self.ownerUserId != nil {
                    map["OwnerUserId"] = self.ownerUserId!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
                    self.commitId = dict["CommitId"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DirectDependency") && dict["DirectDependency"] != nil {
                    self.directDependency = dict["DirectDependency"] as! Bool
                }
                if dict.keys.contains("Icon") && dict["Icon"] != nil {
                    self.icon = dict["Icon"] as! String
                }
                if dict.keys.contains("MinimumPlatformVersion") && dict["MinimumPlatformVersion"] != nil {
                    self.minimumPlatformVersion = dict["MinimumPlatformVersion"] as! String
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
                    self.moduleName = dict["ModuleName"] as! String
                }
                if dict.keys.contains("OwnerUserId") && dict["OwnerUserId"] != nil {
                    self.ownerUserId = dict["OwnerUserId"] as! String
                }
                if dict.keys.contains("Platform") && dict["Platform"] != nil {
                    self.platform = dict["Platform"] as! String
                }
                if dict.keys.contains("Version") && dict["Version"] != nil {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public var items: [ListAppModulesResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListAppModulesResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListAppModulesResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: ListAppModulesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListAppModulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAppModulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppModulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAppModulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppTemplatesRequest : Tea.TeaModel {
    public var appType: String?

    public var source: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppType") && dict["AppType"] != nil {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class ListAppTemplatesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appName: String?

            public var appType: String?

            public var categoryName: String?

            public var createTime: String?

            public var description_: String?

            public var icon: String?

            public var lastEditTime: String?

            public var mainModuleId: String?

            public var modifiedTime: String?

            public var schemaVersion: String?

            public var source: String?

            public var templateId: String?

            public var templateType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.appType != nil {
                    map["AppType"] = self.appType!
                }
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.icon != nil {
                    map["Icon"] = self.icon!
                }
                if self.lastEditTime != nil {
                    map["LastEditTime"] = self.lastEditTime!
                }
                if self.mainModuleId != nil {
                    map["MainModuleId"] = self.mainModuleId!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.schemaVersion != nil {
                    map["SchemaVersion"] = self.schemaVersion!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.templateType != nil {
                    map["TemplateType"] = self.templateType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppName") && dict["AppName"] != nil {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("AppType") && dict["AppType"] != nil {
                    self.appType = dict["AppType"] as! String
                }
                if dict.keys.contains("CategoryName") && dict["CategoryName"] != nil {
                    self.categoryName = dict["CategoryName"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Icon") && dict["Icon"] != nil {
                    self.icon = dict["Icon"] as! String
                }
                if dict.keys.contains("LastEditTime") && dict["LastEditTime"] != nil {
                    self.lastEditTime = dict["LastEditTime"] as! String
                }
                if dict.keys.contains("MainModuleId") && dict["MainModuleId"] != nil {
                    self.mainModuleId = dict["MainModuleId"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                    self.schemaVersion = dict["SchemaVersion"] as! String
                }
                if dict.keys.contains("Source") && dict["Source"] != nil {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                    self.templateId = dict["TemplateId"] as! String
                }
                if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
                    self.templateType = dict["TemplateType"] as! String
                }
            }
        }
        public var items: [ListAppTemplatesResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListAppTemplatesResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListAppTemplatesResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: ListAppTemplatesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListAppTemplatesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAppTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAppTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppsRequest : Tea.TeaModel {
    public var appId: String?

    public var appName: String?

    public var appStatus: String?

    public var appType: String?

    public var customParentId: String?

    public var description_: String?

    public var mainModuleId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var source: String?

    public var template: Bool?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appStatus != nil {
            map["AppStatus"] = self.appStatus!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.customParentId != nil {
            map["CustomParentId"] = self.customParentId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.mainModuleId != nil {
            map["MainModuleId"] = self.mainModuleId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppStatus") && dict["AppStatus"] != nil {
            self.appStatus = dict["AppStatus"] as! String
        }
        if dict.keys.contains("AppType") && dict["AppType"] != nil {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("CustomParentId") && dict["CustomParentId"] != nil {
            self.customParentId = dict["CustomParentId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MainModuleId") && dict["MainModuleId"] != nil {
            self.mainModuleId = dict["MainModuleId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Template") && dict["Template"] != nil {
            self.template = dict["Template"] as! Bool
        }
    }
}

public class ListAppsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Categories : Tea.TeaModel {
                public var categoryId: String?

                public var categoryName: String?

                public var parentCategoryId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categoryId != nil {
                        map["CategoryId"] = self.categoryId!
                    }
                    if self.categoryName != nil {
                        map["CategoryName"] = self.categoryName!
                    }
                    if self.parentCategoryId != nil {
                        map["ParentCategoryId"] = self.parentCategoryId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                        self.categoryId = dict["CategoryId"] as! String
                    }
                    if dict.keys.contains("CategoryName") && dict["CategoryName"] != nil {
                        self.categoryName = dict["CategoryName"] as! String
                    }
                    if dict.keys.contains("ParentCategoryId") && dict["ParentCategoryId"] != nil {
                        self.parentCategoryId = dict["ParentCategoryId"] as! String
                    }
                }
            }
            public var appId: String?

            public var appName: String?

            public var appStatus: String?

            public var appType: String?

            public var categories: [ListAppsResponseBody.Data.Items.Categories]?

            public var createTime: String?

            public var description_: String?

            public var icon: String?

            public var isTemplate: Bool?

            public var lastEditTime: String?

            public var mainModuleId: String?

            public var modifiedTime: String?

            public var platformVersion: String?

            public var schemaVersion: String?

            public var source: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.appStatus != nil {
                    map["AppStatus"] = self.appStatus!
                }
                if self.appType != nil {
                    map["AppType"] = self.appType!
                }
                if self.categories != nil {
                    var tmp : [Any] = []
                    for k in self.categories! {
                        tmp.append(k.toMap())
                    }
                    map["Categories"] = tmp
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.icon != nil {
                    map["Icon"] = self.icon!
                }
                if self.isTemplate != nil {
                    map["IsTemplate"] = self.isTemplate!
                }
                if self.lastEditTime != nil {
                    map["LastEditTime"] = self.lastEditTime!
                }
                if self.mainModuleId != nil {
                    map["MainModuleId"] = self.mainModuleId!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.platformVersion != nil {
                    map["PlatformVersion"] = self.platformVersion!
                }
                if self.schemaVersion != nil {
                    map["SchemaVersion"] = self.schemaVersion!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") && dict["AppName"] != nil {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("AppStatus") && dict["AppStatus"] != nil {
                    self.appStatus = dict["AppStatus"] as! String
                }
                if dict.keys.contains("AppType") && dict["AppType"] != nil {
                    self.appType = dict["AppType"] as! String
                }
                if dict.keys.contains("Categories") && dict["Categories"] != nil {
                    var tmp : [ListAppsResponseBody.Data.Items.Categories] = []
                    for v in dict["Categories"] as! [Any] {
                        var model = ListAppsResponseBody.Data.Items.Categories()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.categories = tmp
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Icon") && dict["Icon"] != nil {
                    self.icon = dict["Icon"] as! String
                }
                if dict.keys.contains("IsTemplate") && dict["IsTemplate"] != nil {
                    self.isTemplate = dict["IsTemplate"] as! Bool
                }
                if dict.keys.contains("LastEditTime") && dict["LastEditTime"] != nil {
                    self.lastEditTime = dict["LastEditTime"] as! String
                }
                if dict.keys.contains("MainModuleId") && dict["MainModuleId"] != nil {
                    self.mainModuleId = dict["MainModuleId"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("PlatformVersion") && dict["PlatformVersion"] != nil {
                    self.platformVersion = dict["PlatformVersion"] as! String
                }
                if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                    self.schemaVersion = dict["SchemaVersion"] as! String
                }
                if dict.keys.contains("Source") && dict["Source"] != nil {
                    self.source = dict["Source"] as! String
                }
            }
        }
        public var items: [ListAppsResponseBody.Data.Items]?

        public var pageNumber: Int32?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListAppsResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListAppsResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: ListAppsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListAppsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListArtifactsRequest : Tea.TeaModel {
    public var appId: String?

    public var publishId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.publishId != nil {
            map["PublishId"] = self.publishId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("PublishId") && dict["PublishId"] != nil {
            self.publishId = dict["PublishId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class ListArtifactsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appId: String?

            public var artifactId: String?

            public var artifactType: String?

            public var available: Bool?

            public var createTime: String?

            public var modifiedTime: String?

            public var url: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.artifactId != nil {
                    map["ArtifactId"] = self.artifactId!
                }
                if self.artifactType != nil {
                    map["ArtifactType"] = self.artifactType!
                }
                if self.available != nil {
                    map["Available"] = self.available!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("ArtifactId") && dict["ArtifactId"] != nil {
                    self.artifactId = dict["ArtifactId"] as! String
                }
                if dict.keys.contains("ArtifactType") && dict["ArtifactType"] != nil {
                    self.artifactType = dict["ArtifactType"] as! String
                }
                if dict.keys.contains("Available") && dict["Available"] != nil {
                    self.available = dict["Available"] as! Bool
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("Url") && dict["Url"] != nil {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var items: [ListArtifactsResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListArtifactsResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListArtifactsResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: ListArtifactsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListArtifactsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListArtifactsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListArtifactsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListArtifactsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCommitsRequest : Tea.TeaModel {
    public var appId: String?

    public var commitLog: String?

    public var customParentId: String?

    public var moduleId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.commitLog != nil {
            map["CommitLog"] = self.commitLog!
        }
        if self.customParentId != nil {
            map["CustomParentId"] = self.customParentId!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CommitLog") && dict["CommitLog"] != nil {
            self.commitLog = dict["CommitLog"] as! String
        }
        if dict.keys.contains("CustomParentId") && dict["CustomParentId"] != nil {
            self.customParentId = dict["CustomParentId"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class ListCommitsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appId: String?

            public var commitDigest: String?

            public var commitId: String?

            public var commitLog: String?

            public var commitType: String?

            public var createTime: String?

            public var mainModuleCommitId: String?

            public var mainModuleId: String?

            public var modelDataPath: String?

            public var modelDigest: [String: String]?

            public var modifiedTime: String?

            public var moduleId: String?

            public var resourceDataPath: String?

            public var resourceDigest: [String: String]?

            public var rollbackToCommitId: String?

            public var rollbackType: String?

            public var schemaVersion: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.commitDigest != nil {
                    map["CommitDigest"] = self.commitDigest!
                }
                if self.commitId != nil {
                    map["CommitId"] = self.commitId!
                }
                if self.commitLog != nil {
                    map["CommitLog"] = self.commitLog!
                }
                if self.commitType != nil {
                    map["CommitType"] = self.commitType!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.mainModuleCommitId != nil {
                    map["MainModuleCommitId"] = self.mainModuleCommitId!
                }
                if self.mainModuleId != nil {
                    map["MainModuleId"] = self.mainModuleId!
                }
                if self.modelDataPath != nil {
                    map["ModelDataPath"] = self.modelDataPath!
                }
                if self.modelDigest != nil {
                    map["ModelDigest"] = self.modelDigest!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.resourceDataPath != nil {
                    map["ResourceDataPath"] = self.resourceDataPath!
                }
                if self.resourceDigest != nil {
                    map["ResourceDigest"] = self.resourceDigest!
                }
                if self.rollbackToCommitId != nil {
                    map["RollbackToCommitId"] = self.rollbackToCommitId!
                }
                if self.rollbackType != nil {
                    map["RollbackType"] = self.rollbackType!
                }
                if self.schemaVersion != nil {
                    map["SchemaVersion"] = self.schemaVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("CommitDigest") && dict["CommitDigest"] != nil {
                    self.commitDigest = dict["CommitDigest"] as! String
                }
                if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
                    self.commitId = dict["CommitId"] as! String
                }
                if dict.keys.contains("CommitLog") && dict["CommitLog"] != nil {
                    self.commitLog = dict["CommitLog"] as! String
                }
                if dict.keys.contains("CommitType") && dict["CommitType"] != nil {
                    self.commitType = dict["CommitType"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("MainModuleCommitId") && dict["MainModuleCommitId"] != nil {
                    self.mainModuleCommitId = dict["MainModuleCommitId"] as! String
                }
                if dict.keys.contains("MainModuleId") && dict["MainModuleId"] != nil {
                    self.mainModuleId = dict["MainModuleId"] as! String
                }
                if dict.keys.contains("ModelDataPath") && dict["ModelDataPath"] != nil {
                    self.modelDataPath = dict["ModelDataPath"] as! String
                }
                if dict.keys.contains("ModelDigest") && dict["ModelDigest"] != nil {
                    self.modelDigest = dict["ModelDigest"] as! [String: String]
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("ResourceDataPath") && dict["ResourceDataPath"] != nil {
                    self.resourceDataPath = dict["ResourceDataPath"] as! String
                }
                if dict.keys.contains("ResourceDigest") && dict["ResourceDigest"] != nil {
                    self.resourceDigest = dict["ResourceDigest"] as! [String: String]
                }
                if dict.keys.contains("RollbackToCommitId") && dict["RollbackToCommitId"] != nil {
                    self.rollbackToCommitId = dict["RollbackToCommitId"] as! String
                }
                if dict.keys.contains("RollbackType") && dict["RollbackType"] != nil {
                    self.rollbackType = dict["RollbackType"] as! String
                }
                if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                    self.schemaVersion = dict["SchemaVersion"] as! String
                }
            }
        }
        public var items: [ListCommitsResponseBody.Data.Items]?

        public var pageNumber: Int32?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListCommitsResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListCommitsResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: ListCommitsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListCommitsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListCommitsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCommitsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListCommitsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDomainsRequest : Tea.TeaModel {
    public var appId: String?

    public var envId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class ListDomainsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appId: String?

            public var applied: Bool?

            public var checked: Bool?

            public var cname: String?

            public var deleted: Bool?

            public var domain: String?

            public var domainType: String?

            public var envId: String?

            public var path: String?

            public var withCertificate: Bool?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.applied != nil {
                    map["Applied"] = self.applied!
                }
                if self.checked != nil {
                    map["Checked"] = self.checked!
                }
                if self.cname != nil {
                    map["Cname"] = self.cname!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.domainType != nil {
                    map["DomainType"] = self.domainType!
                }
                if self.envId != nil {
                    map["EnvId"] = self.envId!
                }
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.withCertificate != nil {
                    map["WithCertificate"] = self.withCertificate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("Applied") && dict["Applied"] != nil {
                    self.applied = dict["Applied"] as! Bool
                }
                if dict.keys.contains("Checked") && dict["Checked"] != nil {
                    self.checked = dict["Checked"] as! Bool
                }
                if dict.keys.contains("Cname") && dict["Cname"] != nil {
                    self.cname = dict["Cname"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("Domain") && dict["Domain"] != nil {
                    self.domain = dict["Domain"] as! String
                }
                if dict.keys.contains("DomainType") && dict["DomainType"] != nil {
                    self.domainType = dict["DomainType"] as! String
                }
                if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
                    self.envId = dict["EnvId"] as! String
                }
                if dict.keys.contains("Path") && dict["Path"] != nil {
                    self.path = dict["Path"] as! String
                }
                if dict.keys.contains("WithCertificate") && dict["WithCertificate"] != nil {
                    self.withCertificate = dict["WithCertificate"] as! Bool
                }
            }
        }
        public var items: [ListDomainsResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListDomainsResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListDomainsResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: ListDomainsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListDomainsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDomainsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEnvironmentOverviewsRequest : Tea.TeaModel {
    public var appId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class ListEnvironmentOverviewsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appId: String?

            public var config: [String: String]?

            public var createTime: String?

            public var currentPublish: [String: String]?

            public var endpoint: String?

            public var envId: String?

            public var envStatus: String?

            public var envType: String?

            public var latestAppAccessTime: String?

            public var modifiedTime: String?

            public var opsRecord: [String: String]?

            public var publishing: [String: String]?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.config != nil {
                    map["Config"] = self.config!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.currentPublish != nil {
                    map["CurrentPublish"] = self.currentPublish!
                }
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.envId != nil {
                    map["EnvId"] = self.envId!
                }
                if self.envStatus != nil {
                    map["EnvStatus"] = self.envStatus!
                }
                if self.envType != nil {
                    map["EnvType"] = self.envType!
                }
                if self.latestAppAccessTime != nil {
                    map["LatestAppAccessTime"] = self.latestAppAccessTime!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.opsRecord != nil {
                    map["OpsRecord"] = self.opsRecord!
                }
                if self.publishing != nil {
                    map["Publishing"] = self.publishing!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("Config") && dict["Config"] != nil {
                    self.config = dict["Config"] as! [String: String]
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CurrentPublish") && dict["CurrentPublish"] != nil {
                    self.currentPublish = dict["CurrentPublish"] as! [String: String]
                }
                if dict.keys.contains("Endpoint") && dict["Endpoint"] != nil {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
                    self.envId = dict["EnvId"] as! String
                }
                if dict.keys.contains("EnvStatus") && dict["EnvStatus"] != nil {
                    self.envStatus = dict["EnvStatus"] as! String
                }
                if dict.keys.contains("EnvType") && dict["EnvType"] != nil {
                    self.envType = dict["EnvType"] as! String
                }
                if dict.keys.contains("LatestAppAccessTime") && dict["LatestAppAccessTime"] != nil {
                    self.latestAppAccessTime = dict["LatestAppAccessTime"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OpsRecord") && dict["OpsRecord"] != nil {
                    self.opsRecord = dict["OpsRecord"] as! [String: String]
                }
                if dict.keys.contains("Publishing") && dict["Publishing"] != nil {
                    self.publishing = dict["Publishing"] as! [String: String]
                }
            }
        }
        public var items: [ListEnvironmentOverviewsResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListEnvironmentOverviewsResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListEnvironmentOverviewsResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: ListEnvironmentOverviewsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListEnvironmentOverviewsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListEnvironmentOverviewsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEnvironmentOverviewsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListEnvironmentOverviewsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEnvironmentsRequest : Tea.TeaModel {
    public var appId: String?

    public var envType: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.envType != nil {
            map["EnvType"] = self.envType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EnvType") && dict["EnvType"] != nil {
            self.envType = dict["EnvType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class ListEnvironmentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var accountOpsEndpoint: String?

            public var appId: String?

            public var createTime: String?

            public var currentPublishId: String?

            public var endpoint: String?

            public var envId: String?

            public var envType: String?

            public var modifiedTime: String?

            public var publishingId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountOpsEndpoint != nil {
                    map["AccountOpsEndpoint"] = self.accountOpsEndpoint!
                }
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.currentPublishId != nil {
                    map["CurrentPublishId"] = self.currentPublishId!
                }
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.envId != nil {
                    map["EnvId"] = self.envId!
                }
                if self.envType != nil {
                    map["EnvType"] = self.envType!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.publishingId != nil {
                    map["PublishingId"] = self.publishingId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountOpsEndpoint") && dict["AccountOpsEndpoint"] != nil {
                    self.accountOpsEndpoint = dict["AccountOpsEndpoint"] as! String
                }
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CurrentPublishId") && dict["CurrentPublishId"] != nil {
                    self.currentPublishId = dict["CurrentPublishId"] as! String
                }
                if dict.keys.contains("Endpoint") && dict["Endpoint"] != nil {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
                    self.envId = dict["EnvId"] as! String
                }
                if dict.keys.contains("EnvType") && dict["EnvType"] != nil {
                    self.envType = dict["EnvType"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("PublishingId") && dict["PublishingId"] != nil {
                    self.publishingId = dict["PublishingId"] as! String
                }
            }
        }
        public var items: [ListEnvironmentsResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListEnvironmentsResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListEnvironmentsResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: ListEnvironmentsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListEnvironmentsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListEnvironmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEnvironmentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListEnvironmentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListModelsRequest : Tea.TeaModel {
    public var appId: String?

    public var modelId: String?

    public var modelName: String?

    public var modelType: String?

    public var moduleId: String?

    public var schemaVersion: String?

    public var source: String?

    public var subType: String?

    public var withContent: Bool?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.modelType != nil {
            map["ModelType"] = self.modelType!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.subType != nil {
            map["SubType"] = self.subType!
        }
        if self.withContent != nil {
            map["WithContent"] = self.withContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
            self.modelName = dict["ModelName"] as! String
        }
        if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
            self.modelType = dict["ModelType"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SubType") && dict["SubType"] != nil {
            self.subType = dict["SubType"] as! String
        }
        if dict.keys.contains("WithContent") && dict["WithContent"] != nil {
            self.withContent = dict["WithContent"] as! Bool
        }
    }
}

public class ListModelsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appId: String?

            public var attributes: [[String: String]]?

            public var content: [String: String]?

            public var createTime: String?

            public var description_: String?

            public var id: String?

            public var linkModelId: String?

            public var linkModuleId: String?

            public var linked: Bool?

            public var modelDigest: String?

            public var modelId: String?

            public var modelName: String?

            public var modelStatus: String?

            public var modelType: String?

            public var modifiedTime: String?

            public var moduleId: String?

            public var props: [String: String]?

            public var revision: Int32?

            public var schemaVersion: String?

            public var subType: String?

            public var visibility: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.attributes != nil {
                    map["Attributes"] = self.attributes!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.linkModelId != nil {
                    map["LinkModelId"] = self.linkModelId!
                }
                if self.linkModuleId != nil {
                    map["LinkModuleId"] = self.linkModuleId!
                }
                if self.linked != nil {
                    map["Linked"] = self.linked!
                }
                if self.modelDigest != nil {
                    map["ModelDigest"] = self.modelDigest!
                }
                if self.modelId != nil {
                    map["ModelId"] = self.modelId!
                }
                if self.modelName != nil {
                    map["ModelName"] = self.modelName!
                }
                if self.modelStatus != nil {
                    map["ModelStatus"] = self.modelStatus!
                }
                if self.modelType != nil {
                    map["ModelType"] = self.modelType!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.props != nil {
                    map["Props"] = self.props!
                }
                if self.revision != nil {
                    map["Revision"] = self.revision!
                }
                if self.schemaVersion != nil {
                    map["SchemaVersion"] = self.schemaVersion!
                }
                if self.subType != nil {
                    map["SubType"] = self.subType!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                    self.attributes = dict["Attributes"] as! [[String: String]]
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! [String: String]
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
                    self.linkModelId = dict["LinkModelId"] as! String
                }
                if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
                    self.linkModuleId = dict["LinkModuleId"] as! String
                }
                if dict.keys.contains("Linked") && dict["Linked"] != nil {
                    self.linked = dict["Linked"] as! Bool
                }
                if dict.keys.contains("ModelDigest") && dict["ModelDigest"] != nil {
                    self.modelDigest = dict["ModelDigest"] as! String
                }
                if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                    self.modelId = dict["ModelId"] as! String
                }
                if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                    self.modelName = dict["ModelName"] as! String
                }
                if dict.keys.contains("ModelStatus") && dict["ModelStatus"] != nil {
                    self.modelStatus = dict["ModelStatus"] as! String
                }
                if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                    self.modelType = dict["ModelType"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("Props") && dict["Props"] != nil {
                    self.props = dict["Props"] as! [String: String]
                }
                if dict.keys.contains("Revision") && dict["Revision"] != nil {
                    self.revision = dict["Revision"] as! Int32
                }
                if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                    self.schemaVersion = dict["SchemaVersion"] as! String
                }
                if dict.keys.contains("SubType") && dict["SubType"] != nil {
                    self.subType = dict["SubType"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var items: [ListModelsResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListModelsResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListModelsResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: ListModelsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListModelsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListModelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListModelsByPageRequest : Tea.TeaModel {
    public var appId: String?

    public var modelName: String?

    public var modelType: String?

    public var moduleId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var schemaVersion: String?

    public var source: String?

    public var subType: String?

    public var withContent: Bool?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.modelType != nil {
            map["ModelType"] = self.modelType!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.subType != nil {
            map["SubType"] = self.subType!
        }
        if self.withContent != nil {
            map["WithContent"] = self.withContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
            self.modelName = dict["ModelName"] as! String
        }
        if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
            self.modelType = dict["ModelType"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SubType") && dict["SubType"] != nil {
            self.subType = dict["SubType"] as! String
        }
        if dict.keys.contains("WithContent") && dict["WithContent"] != nil {
            self.withContent = dict["WithContent"] as! Bool
        }
    }
}

public class ListModelsByPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appId: String?

            public var attributes: [[String: String]]?

            public var content: [String: String]?

            public var createTime: String?

            public var description_: String?

            public var id: String?

            public var linkModelId: String?

            public var linkModuleId: String?

            public var linked: Bool?

            public var modelId: String?

            public var modelName: String?

            public var modelStatus: String?

            public var modelType: String?

            public var modifiedTime: String?

            public var moduleId: String?

            public var props: [String: String]?

            public var revision: Int32?

            public var schemaVersion: String?

            public var subType: String?

            public var visibility: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.attributes != nil {
                    map["Attributes"] = self.attributes!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.linkModelId != nil {
                    map["LinkModelId"] = self.linkModelId!
                }
                if self.linkModuleId != nil {
                    map["LinkModuleId"] = self.linkModuleId!
                }
                if self.linked != nil {
                    map["Linked"] = self.linked!
                }
                if self.modelId != nil {
                    map["ModelId"] = self.modelId!
                }
                if self.modelName != nil {
                    map["ModelName"] = self.modelName!
                }
                if self.modelStatus != nil {
                    map["ModelStatus"] = self.modelStatus!
                }
                if self.modelType != nil {
                    map["ModelType"] = self.modelType!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.props != nil {
                    map["Props"] = self.props!
                }
                if self.revision != nil {
                    map["Revision"] = self.revision!
                }
                if self.schemaVersion != nil {
                    map["SchemaVersion"] = self.schemaVersion!
                }
                if self.subType != nil {
                    map["SubType"] = self.subType!
                }
                if self.visibility != nil {
                    map["Visibility"] = self.visibility!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                    self.attributes = dict["Attributes"] as! [[String: String]]
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! [String: String]
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
                    self.linkModelId = dict["LinkModelId"] as! String
                }
                if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
                    self.linkModuleId = dict["LinkModuleId"] as! String
                }
                if dict.keys.contains("Linked") && dict["Linked"] != nil {
                    self.linked = dict["Linked"] as! Bool
                }
                if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                    self.modelId = dict["ModelId"] as! String
                }
                if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                    self.modelName = dict["ModelName"] as! String
                }
                if dict.keys.contains("ModelStatus") && dict["ModelStatus"] != nil {
                    self.modelStatus = dict["ModelStatus"] as! String
                }
                if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                    self.modelType = dict["ModelType"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("Props") && dict["Props"] != nil {
                    self.props = dict["Props"] as! [String: String]
                }
                if dict.keys.contains("Revision") && dict["Revision"] != nil {
                    self.revision = dict["Revision"] as! Int32
                }
                if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                    self.schemaVersion = dict["SchemaVersion"] as! String
                }
                if dict.keys.contains("SubType") && dict["SubType"] != nil {
                    self.subType = dict["SubType"] as! String
                }
                if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                    self.visibility = dict["Visibility"] as! String
                }
            }
        }
        public var items: [ListModelsByPageResponseBody.Data.Items]?

        public var pageNumber: Int32?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListModelsByPageResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListModelsByPageResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: ListModelsByPageResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListModelsByPageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListModelsByPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelsByPageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListModelsByPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListModuleDependenciesRequest : Tea.TeaModel {
    public var moduleId: String?

    public var recursive: Bool?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.recursive != nil {
            map["Recursive"] = self.recursive!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("Recursive") && dict["Recursive"] != nil {
            self.recursive = dict["Recursive"] as! Bool
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class ListModuleDependenciesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var commitId: String?

            public var description_: String?

            public var directDependency: Bool?

            public var icon: String?

            public var minimumPlatformVersion: String?

            public var moduleId: String?

            public var moduleName: String?

            public var origin: String?

            public var ownerUserId: String?

            public var platform: String?

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
                if self.commitId != nil {
                    map["CommitId"] = self.commitId!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.directDependency != nil {
                    map["DirectDependency"] = self.directDependency!
                }
                if self.icon != nil {
                    map["Icon"] = self.icon!
                }
                if self.minimumPlatformVersion != nil {
                    map["MinimumPlatformVersion"] = self.minimumPlatformVersion!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.moduleName != nil {
                    map["ModuleName"] = self.moduleName!
                }
                if self.origin != nil {
                    map["Origin"] = self.origin!
                }
                if self.ownerUserId != nil {
                    map["OwnerUserId"] = self.ownerUserId!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
                    self.commitId = dict["CommitId"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DirectDependency") && dict["DirectDependency"] != nil {
                    self.directDependency = dict["DirectDependency"] as! Bool
                }
                if dict.keys.contains("Icon") && dict["Icon"] != nil {
                    self.icon = dict["Icon"] as! String
                }
                if dict.keys.contains("MinimumPlatformVersion") && dict["MinimumPlatformVersion"] != nil {
                    self.minimumPlatformVersion = dict["MinimumPlatformVersion"] as! String
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
                    self.moduleName = dict["ModuleName"] as! String
                }
                if dict.keys.contains("Origin") && dict["Origin"] != nil {
                    self.origin = dict["Origin"] as! String
                }
                if dict.keys.contains("OwnerUserId") && dict["OwnerUserId"] != nil {
                    self.ownerUserId = dict["OwnerUserId"] as! String
                }
                if dict.keys.contains("Platform") && dict["Platform"] != nil {
                    self.platform = dict["Platform"] as! String
                }
                if dict.keys.contains("Version") && dict["Version"] != nil {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public var items: [ListModuleDependenciesResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListModuleDependenciesResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListModuleDependenciesResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: ListModuleDependenciesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListModuleDependenciesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListModuleDependenciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModuleDependenciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListModuleDependenciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListModuleModelsRequest : Tea.TeaModel {
    public var moduleList: String?

    public var source: String?

    public var subTypes: String?

    public var withContent: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.moduleList != nil {
            map["ModuleList"] = self.moduleList!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.subTypes != nil {
            map["SubTypes"] = self.subTypes!
        }
        if self.withContent != nil {
            map["WithContent"] = self.withContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModuleList") && dict["ModuleList"] != nil {
            self.moduleList = dict["ModuleList"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SubTypes") && dict["SubTypes"] != nil {
            self.subTypes = dict["SubTypes"] as! String
        }
        if dict.keys.contains("WithContent") && dict["WithContent"] != nil {
            self.withContent = dict["WithContent"] as! Bool
        }
    }
}

public class ListModuleModelsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var commitId: String?

            public var modelData: [String: [DataItemsModelDataValue]]?

            public var modelDataPath: [String: String]?

            public var modelDigest: [String: String]?

            public var moduleId: String?

            public var resourceData: [String: String]?

            public var resourceDataPath: [String: String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commitId != nil {
                    map["CommitId"] = self.commitId!
                }
                if self.modelData != nil {
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.modelData! {
                        var l1 : [Any] = []
                        for k1 in v {
                            l1.append(k1.toMap())
                        }
                        tmp[k] = l1
                    }
                    map["ModelData"] = tmp
                }
                if self.modelDataPath != nil {
                    map["ModelDataPath"] = self.modelDataPath!
                }
                if self.modelDigest != nil {
                    map["ModelDigest"] = self.modelDigest!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.resourceData != nil {
                    map["ResourceData"] = self.resourceData!
                }
                if self.resourceDataPath != nil {
                    map["ResourceDataPath"] = self.resourceDataPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
                    self.commitId = dict["CommitId"] as! String
                }
                if dict.keys.contains("ModelData") && dict["ModelData"] != nil {
                    var tmp : [String: [DataItemsModelDataValue]] = [:]
                    for (k, v) in dict["ModelData"] as! [String: Any] {
                        var l1 : [DataItemsModelDataValue] = []
                        for v1 in v as! [Any] {
                            var model = DataItemsModelDataValue()
                            if v1 != nil {
                                model.fromMap(v1 as! [String: Any])
                            }
                            l1.append(model)
                        }
                        tmp[k] = l1
                    }
                    self.modelData = tmp
                }
                if dict.keys.contains("ModelDataPath") && dict["ModelDataPath"] != nil {
                    self.modelDataPath = dict["ModelDataPath"] as! [String: String]
                }
                if dict.keys.contains("ModelDigest") && dict["ModelDigest"] != nil {
                    self.modelDigest = dict["ModelDigest"] as! [String: String]
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("ResourceData") && dict["ResourceData"] != nil {
                    self.resourceData = dict["ResourceData"] as! [String: String]
                }
                if dict.keys.contains("ResourceDataPath") && dict["ResourceDataPath"] != nil {
                    self.resourceDataPath = dict["ResourceDataPath"] as! [String: String]
                }
            }
        }
        public var items: [ListModuleModelsResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListModuleModelsResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListModuleModelsResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: ListModuleModelsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListModuleModelsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListModuleModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModuleModelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListModuleModelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListModulePublishVersionsRequest : Tea.TeaModel {
    public var customParentId: String?

    public var moduleId: String?

    public var moduleVersion: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customParentId != nil {
            map["CustomParentId"] = self.customParentId!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.moduleVersion != nil {
            map["ModuleVersion"] = self.moduleVersion!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomParentId") && dict["CustomParentId"] != nil {
            self.customParentId = dict["CustomParentId"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("ModuleVersion") && dict["ModuleVersion"] != nil {
            self.moduleVersion = dict["ModuleVersion"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class ListModulePublishVersionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var commitId: String?

            public var createTime: String?

            public var description_: String?

            public var modifiedTime: String?

            public var moduleId: String?

            public var platformVersion: String?

            public var publishId: String?

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
                if self.commitId != nil {
                    map["CommitId"] = self.commitId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.platformVersion != nil {
                    map["PlatformVersion"] = self.platformVersion!
                }
                if self.publishId != nil {
                    map["PublishId"] = self.publishId!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
                    self.commitId = dict["CommitId"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("PlatformVersion") && dict["PlatformVersion"] != nil {
                    self.platformVersion = dict["PlatformVersion"] as! String
                }
                if dict.keys.contains("PublishId") && dict["PublishId"] != nil {
                    self.publishId = dict["PublishId"] as! String
                }
                if dict.keys.contains("Version") && dict["Version"] != nil {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public var items: [ListModulePublishVersionsResponseBody.Data.Items]?

        public var pageNumber: Int32?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListModulePublishVersionsResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListModulePublishVersionsResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: ListModulePublishVersionsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListModulePublishVersionsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListModulePublishVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModulePublishVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListModulePublishVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListModuleResourcesRequest : Tea.TeaModel {
    public var moduleList: String?

    public var source: String?

    public var types: String?

    public var withContent: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.moduleList != nil {
            map["ModuleList"] = self.moduleList!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.types != nil {
            map["Types"] = self.types!
        }
        if self.withContent != nil {
            map["WithContent"] = self.withContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModuleList") && dict["ModuleList"] != nil {
            self.moduleList = dict["ModuleList"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Types") && dict["Types"] != nil {
            self.types = dict["Types"] as! String
        }
        if dict.keys.contains("WithContent") && dict["WithContent"] != nil {
            self.withContent = dict["WithContent"] as! Bool
        }
    }
}

public class ListModuleResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var commitId: String?

            public var modelData: [String: String]?

            public var modelDataPath: [String: String]?

            public var moduleId: String?

            public var resourceData: [String: [DataItemsResourceDataValue]]?

            public var resourceDataPath: [String: String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commitId != nil {
                    map["CommitId"] = self.commitId!
                }
                if self.modelData != nil {
                    map["ModelData"] = self.modelData!
                }
                if self.modelDataPath != nil {
                    map["ModelDataPath"] = self.modelDataPath!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.resourceData != nil {
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.resourceData! {
                        var l1 : [Any] = []
                        for k1 in v {
                            l1.append(k1.toMap())
                        }
                        tmp[k] = l1
                    }
                    map["ResourceData"] = tmp
                }
                if self.resourceDataPath != nil {
                    map["ResourceDataPath"] = self.resourceDataPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
                    self.commitId = dict["CommitId"] as! String
                }
                if dict.keys.contains("ModelData") && dict["ModelData"] != nil {
                    self.modelData = dict["ModelData"] as! [String: String]
                }
                if dict.keys.contains("ModelDataPath") && dict["ModelDataPath"] != nil {
                    self.modelDataPath = dict["ModelDataPath"] as! [String: String]
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("ResourceData") && dict["ResourceData"] != nil {
                    var tmp : [String: [DataItemsResourceDataValue]] = [:]
                    for (k, v) in dict["ResourceData"] as! [String: Any] {
                        var l1 : [DataItemsResourceDataValue] = []
                        for v1 in v as! [Any] {
                            var model = DataItemsResourceDataValue()
                            if v1 != nil {
                                model.fromMap(v1 as! [String: Any])
                            }
                            l1.append(model)
                        }
                        tmp[k] = l1
                    }
                    self.resourceData = tmp
                }
                if dict.keys.contains("ResourceDataPath") && dict["ResourceDataPath"] != nil {
                    self.resourceDataPath = dict["ResourceDataPath"] as! [String: String]
                }
            }
        }
        public var items: [ListModuleResourcesResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListModuleResourcesResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListModuleResourcesResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: ListModuleResourcesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListModuleResourcesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListModuleResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModuleResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListModuleResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListModulesRequest : Tea.TeaModel {
    public var description_: String?

    public var hasOwnerApp: Bool?

    public var moduleId: String?

    public var moduleName: String?

    public var platform: String?

    public var source: String?

    public override init() {
        super.init()
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
        if self.hasOwnerApp != nil {
            map["HasOwnerApp"] = self.hasOwnerApp!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.moduleName != nil {
            map["ModuleName"] = self.moduleName!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("HasOwnerApp") && dict["HasOwnerApp"] != nil {
            self.hasOwnerApp = dict["HasOwnerApp"] as! Bool
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
            self.moduleName = dict["ModuleName"] as! String
        }
        if dict.keys.contains("Platform") && dict["Platform"] != nil {
            self.platform = dict["Platform"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class ListModulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var createTime: String?

            public var description_: String?

            public var icon: String?

            public var latestPublishedCommit: String?

            public var latestPublishedVersion: String?

            public var minimumPlatformVersion: String?

            public var modifiedTime: String?

            public var moduleId: String?

            public var moduleName: String?

            public var ownerAppId: String?

            public var ownerUserId: String?

            public var platform: String?

            public var platformVersion: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.icon != nil {
                    map["Icon"] = self.icon!
                }
                if self.latestPublishedCommit != nil {
                    map["LatestPublishedCommit"] = self.latestPublishedCommit!
                }
                if self.latestPublishedVersion != nil {
                    map["LatestPublishedVersion"] = self.latestPublishedVersion!
                }
                if self.minimumPlatformVersion != nil {
                    map["MinimumPlatformVersion"] = self.minimumPlatformVersion!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.moduleName != nil {
                    map["ModuleName"] = self.moduleName!
                }
                if self.ownerAppId != nil {
                    map["OwnerAppId"] = self.ownerAppId!
                }
                if self.ownerUserId != nil {
                    map["OwnerUserId"] = self.ownerUserId!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.platformVersion != nil {
                    map["PlatformVersion"] = self.platformVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Icon") && dict["Icon"] != nil {
                    self.icon = dict["Icon"] as! String
                }
                if dict.keys.contains("LatestPublishedCommit") && dict["LatestPublishedCommit"] != nil {
                    self.latestPublishedCommit = dict["LatestPublishedCommit"] as! String
                }
                if dict.keys.contains("LatestPublishedVersion") && dict["LatestPublishedVersion"] != nil {
                    self.latestPublishedVersion = dict["LatestPublishedVersion"] as! String
                }
                if dict.keys.contains("MinimumPlatformVersion") && dict["MinimumPlatformVersion"] != nil {
                    self.minimumPlatformVersion = dict["MinimumPlatformVersion"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
                    self.moduleName = dict["ModuleName"] as! String
                }
                if dict.keys.contains("OwnerAppId") && dict["OwnerAppId"] != nil {
                    self.ownerAppId = dict["OwnerAppId"] as! String
                }
                if dict.keys.contains("OwnerUserId") && dict["OwnerUserId"] != nil {
                    self.ownerUserId = dict["OwnerUserId"] as! String
                }
                if dict.keys.contains("Platform") && dict["Platform"] != nil {
                    self.platform = dict["Platform"] as! String
                }
                if dict.keys.contains("PlatformVersion") && dict["PlatformVersion"] != nil {
                    self.platformVersion = dict["PlatformVersion"] as! String
                }
            }
        }
        public var items: [ListModulesResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListModulesResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListModulesResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: ListModulesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListModulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListModulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListModulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListModulesByPageRequest : Tea.TeaModel {
    public var customParentId: String?

    public var description_: String?

    public var hasOwnerApp: Bool?

    public var moduleId: String?

    public var moduleName: String?

    public var moduleType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var platform: String?

    public var source: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customParentId != nil {
            map["CustomParentId"] = self.customParentId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.hasOwnerApp != nil {
            map["HasOwnerApp"] = self.hasOwnerApp!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.moduleName != nil {
            map["ModuleName"] = self.moduleName!
        }
        if self.moduleType != nil {
            map["ModuleType"] = self.moduleType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomParentId") && dict["CustomParentId"] != nil {
            self.customParentId = dict["CustomParentId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("HasOwnerApp") && dict["HasOwnerApp"] != nil {
            self.hasOwnerApp = dict["HasOwnerApp"] as! Bool
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
            self.moduleName = dict["ModuleName"] as! String
        }
        if dict.keys.contains("ModuleType") && dict["ModuleType"] != nil {
            self.moduleType = dict["ModuleType"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Platform") && dict["Platform"] != nil {
            self.platform = dict["Platform"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class ListModulesByPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var createTime: String?

            public var description_: String?

            public var icon: String?

            public var latestPublishedCommit: String?

            public var latestPublishedVersion: String?

            public var minimumPlatformVersion: String?

            public var modifiedTime: String?

            public var moduleId: String?

            public var moduleName: String?

            public var moduleType: String?

            public var ownerAppId: String?

            public var ownerUserId: String?

            public var platform: String?

            public var platformVersion: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.icon != nil {
                    map["Icon"] = self.icon!
                }
                if self.latestPublishedCommit != nil {
                    map["LatestPublishedCommit"] = self.latestPublishedCommit!
                }
                if self.latestPublishedVersion != nil {
                    map["LatestPublishedVersion"] = self.latestPublishedVersion!
                }
                if self.minimumPlatformVersion != nil {
                    map["MinimumPlatformVersion"] = self.minimumPlatformVersion!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.moduleName != nil {
                    map["ModuleName"] = self.moduleName!
                }
                if self.moduleType != nil {
                    map["ModuleType"] = self.moduleType!
                }
                if self.ownerAppId != nil {
                    map["OwnerAppId"] = self.ownerAppId!
                }
                if self.ownerUserId != nil {
                    map["OwnerUserId"] = self.ownerUserId!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.platformVersion != nil {
                    map["PlatformVersion"] = self.platformVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Icon") && dict["Icon"] != nil {
                    self.icon = dict["Icon"] as! String
                }
                if dict.keys.contains("LatestPublishedCommit") && dict["LatestPublishedCommit"] != nil {
                    self.latestPublishedCommit = dict["LatestPublishedCommit"] as! String
                }
                if dict.keys.contains("LatestPublishedVersion") && dict["LatestPublishedVersion"] != nil {
                    self.latestPublishedVersion = dict["LatestPublishedVersion"] as! String
                }
                if dict.keys.contains("MinimumPlatformVersion") && dict["MinimumPlatformVersion"] != nil {
                    self.minimumPlatformVersion = dict["MinimumPlatformVersion"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
                    self.moduleName = dict["ModuleName"] as! String
                }
                if dict.keys.contains("ModuleType") && dict["ModuleType"] != nil {
                    self.moduleType = dict["ModuleType"] as! String
                }
                if dict.keys.contains("OwnerAppId") && dict["OwnerAppId"] != nil {
                    self.ownerAppId = dict["OwnerAppId"] as! String
                }
                if dict.keys.contains("OwnerUserId") && dict["OwnerUserId"] != nil {
                    self.ownerUserId = dict["OwnerUserId"] as! String
                }
                if dict.keys.contains("Platform") && dict["Platform"] != nil {
                    self.platform = dict["Platform"] as! String
                }
                if dict.keys.contains("PlatformVersion") && dict["PlatformVersion"] != nil {
                    self.platformVersion = dict["PlatformVersion"] as! String
                }
            }
        }
        public var items: [ListModulesByPageResponseBody.Data.Items]?

        public var pageNumber: Int32?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListModulesByPageResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListModulesByPageResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: ListModulesByPageResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListModulesByPageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListModulesByPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModulesByPageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListModulesByPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPublishVersionsRequest : Tea.TeaModel {
    public var appId: String?

    public var envId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class ListPublishVersionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appId: String?

            public var commitId: String?

            public var completionTime: String?

            public var createTime: String?

            public var description_: String?

            public var envId: String?

            public var modifiedTime: String?

            public var publishId: String?

            public var publishStatus: String?

            public var publishType: String?

            public var reason: String?

            public var startTime: String?

            public var subTasks: [[String: String]]?

            public var versionNumber: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.commitId != nil {
                    map["CommitId"] = self.commitId!
                }
                if self.completionTime != nil {
                    map["CompletionTime"] = self.completionTime!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.envId != nil {
                    map["EnvId"] = self.envId!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.publishId != nil {
                    map["PublishId"] = self.publishId!
                }
                if self.publishStatus != nil {
                    map["PublishStatus"] = self.publishStatus!
                }
                if self.publishType != nil {
                    map["PublishType"] = self.publishType!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.subTasks != nil {
                    map["SubTasks"] = self.subTasks!
                }
                if self.versionNumber != nil {
                    map["VersionNumber"] = self.versionNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
                    self.commitId = dict["CommitId"] as! String
                }
                if dict.keys.contains("CompletionTime") && dict["CompletionTime"] != nil {
                    self.completionTime = dict["CompletionTime"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
                    self.envId = dict["EnvId"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("PublishId") && dict["PublishId"] != nil {
                    self.publishId = dict["PublishId"] as! String
                }
                if dict.keys.contains("PublishStatus") && dict["PublishStatus"] != nil {
                    self.publishStatus = dict["PublishStatus"] as! String
                }
                if dict.keys.contains("PublishType") && dict["PublishType"] != nil {
                    self.publishType = dict["PublishType"] as! String
                }
                if dict.keys.contains("Reason") && dict["Reason"] != nil {
                    self.reason = dict["Reason"] as! String
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("SubTasks") && dict["SubTasks"] != nil {
                    self.subTasks = dict["SubTasks"] as! [[String: String]]
                }
                if dict.keys.contains("VersionNumber") && dict["VersionNumber"] != nil {
                    self.versionNumber = dict["VersionNumber"] as! String
                }
            }
        }
        public var items: [ListPublishVersionsResponseBody.Data.Items]?

        public var pageNumber: Int32?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListPublishVersionsResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListPublishVersionsResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: ListPublishVersionsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListPublishVersionsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPublishVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPublishVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPublishVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPublishedModulesRequest : Tea.TeaModel {
    public var description_: String?

    public var excludeAppId: String?

    public var excludeModuleId: String?

    public var hasOwnerApp: Bool?

    public var moduleId: String?

    public var moduleName: String?

    public var moduleType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var platform: String?

    public var source: String?

    public override init() {
        super.init()
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
        if self.excludeAppId != nil {
            map["ExcludeAppId"] = self.excludeAppId!
        }
        if self.excludeModuleId != nil {
            map["ExcludeModuleId"] = self.excludeModuleId!
        }
        if self.hasOwnerApp != nil {
            map["HasOwnerApp"] = self.hasOwnerApp!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.moduleName != nil {
            map["ModuleName"] = self.moduleName!
        }
        if self.moduleType != nil {
            map["ModuleType"] = self.moduleType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExcludeAppId") && dict["ExcludeAppId"] != nil {
            self.excludeAppId = dict["ExcludeAppId"] as! String
        }
        if dict.keys.contains("ExcludeModuleId") && dict["ExcludeModuleId"] != nil {
            self.excludeModuleId = dict["ExcludeModuleId"] as! String
        }
        if dict.keys.contains("HasOwnerApp") && dict["HasOwnerApp"] != nil {
            self.hasOwnerApp = dict["HasOwnerApp"] as! Bool
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
            self.moduleName = dict["ModuleName"] as! String
        }
        if dict.keys.contains("ModuleType") && dict["ModuleType"] != nil {
            self.moduleType = dict["ModuleType"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Platform") && dict["Platform"] != nil {
            self.platform = dict["Platform"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class ListPublishedModulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var createTime: String?

            public var description_: String?

            public var icon: String?

            public var latestPublishedCommit: String?

            public var latestPublishedVersion: String?

            public var minimumPlatformVersion: String?

            public var modifiedTime: String?

            public var moduleId: String?

            public var moduleName: String?

            public var moduleType: String?

            public var ownerAppId: String?

            public var ownerUserId: String?

            public var platform: String?

            public var platformVersion: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.icon != nil {
                    map["Icon"] = self.icon!
                }
                if self.latestPublishedCommit != nil {
                    map["LatestPublishedCommit"] = self.latestPublishedCommit!
                }
                if self.latestPublishedVersion != nil {
                    map["LatestPublishedVersion"] = self.latestPublishedVersion!
                }
                if self.minimumPlatformVersion != nil {
                    map["MinimumPlatformVersion"] = self.minimumPlatformVersion!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.moduleName != nil {
                    map["ModuleName"] = self.moduleName!
                }
                if self.moduleType != nil {
                    map["ModuleType"] = self.moduleType!
                }
                if self.ownerAppId != nil {
                    map["OwnerAppId"] = self.ownerAppId!
                }
                if self.ownerUserId != nil {
                    map["OwnerUserId"] = self.ownerUserId!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.platformVersion != nil {
                    map["PlatformVersion"] = self.platformVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Icon") && dict["Icon"] != nil {
                    self.icon = dict["Icon"] as! String
                }
                if dict.keys.contains("LatestPublishedCommit") && dict["LatestPublishedCommit"] != nil {
                    self.latestPublishedCommit = dict["LatestPublishedCommit"] as! String
                }
                if dict.keys.contains("LatestPublishedVersion") && dict["LatestPublishedVersion"] != nil {
                    self.latestPublishedVersion = dict["LatestPublishedVersion"] as! String
                }
                if dict.keys.contains("MinimumPlatformVersion") && dict["MinimumPlatformVersion"] != nil {
                    self.minimumPlatformVersion = dict["MinimumPlatformVersion"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
                    self.moduleName = dict["ModuleName"] as! String
                }
                if dict.keys.contains("ModuleType") && dict["ModuleType"] != nil {
                    self.moduleType = dict["ModuleType"] as! String
                }
                if dict.keys.contains("OwnerAppId") && dict["OwnerAppId"] != nil {
                    self.ownerAppId = dict["OwnerAppId"] as! String
                }
                if dict.keys.contains("OwnerUserId") && dict["OwnerUserId"] != nil {
                    self.ownerUserId = dict["OwnerUserId"] as! String
                }
                if dict.keys.contains("Platform") && dict["Platform"] != nil {
                    self.platform = dict["Platform"] as! String
                }
                if dict.keys.contains("PlatformVersion") && dict["PlatformVersion"] != nil {
                    self.platformVersion = dict["PlatformVersion"] as! String
                }
            }
        }
        public var items: [ListPublishedModulesResponseBody.Data.Items]?

        public var pageNumber: Int32?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListPublishedModulesResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListPublishedModulesResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: ListPublishedModulesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListPublishedModulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPublishedModulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPublishedModulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPublishedModulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPublishesRequest : Tea.TeaModel {
    public var appId: String?

    public var envId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var publishStatus: String?

    public var publishType: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.publishStatus != nil {
            map["PublishStatus"] = self.publishStatus!
        }
        if self.publishType != nil {
            map["PublishType"] = self.publishType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PublishStatus") && dict["PublishStatus"] != nil {
            self.publishStatus = dict["PublishStatus"] as! String
        }
        if dict.keys.contains("PublishType") && dict["PublishType"] != nil {
            self.publishType = dict["PublishType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class ListPublishesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appId: String?

            public var commitId: String?

            public var completionTime: String?

            public var createTime: String?

            public var description_: String?

            public var envId: String?

            public var modifiedTime: String?

            public var publishId: String?

            public var publishStatus: String?

            public var publishType: String?

            public var reason: String?

            public var startTime: String?

            public var versionNumber: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.commitId != nil {
                    map["CommitId"] = self.commitId!
                }
                if self.completionTime != nil {
                    map["CompletionTime"] = self.completionTime!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.envId != nil {
                    map["EnvId"] = self.envId!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.publishId != nil {
                    map["PublishId"] = self.publishId!
                }
                if self.publishStatus != nil {
                    map["PublishStatus"] = self.publishStatus!
                }
                if self.publishType != nil {
                    map["PublishType"] = self.publishType!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.versionNumber != nil {
                    map["VersionNumber"] = self.versionNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
                    self.commitId = dict["CommitId"] as! String
                }
                if dict.keys.contains("CompletionTime") && dict["CompletionTime"] != nil {
                    self.completionTime = dict["CompletionTime"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
                    self.envId = dict["EnvId"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("PublishId") && dict["PublishId"] != nil {
                    self.publishId = dict["PublishId"] as! String
                }
                if dict.keys.contains("PublishStatus") && dict["PublishStatus"] != nil {
                    self.publishStatus = dict["PublishStatus"] as! String
                }
                if dict.keys.contains("PublishType") && dict["PublishType"] != nil {
                    self.publishType = dict["PublishType"] as! String
                }
                if dict.keys.contains("Reason") && dict["Reason"] != nil {
                    self.reason = dict["Reason"] as! String
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("VersionNumber") && dict["VersionNumber"] != nil {
                    self.versionNumber = dict["VersionNumber"] as! String
                }
            }
        }
        public var items: [ListPublishesResponseBody.Data.Items]?

        public var pageNumber: Int32?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListPublishesResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListPublishesResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: ListPublishesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListPublishesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPublishesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPublishesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPublishesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourcesRequest : Tea.TeaModel {
    public var appId: String?

    public var description_: String?

    public var imageProcessParameter: String?

    public var moduleId: String?

    public var resourceId: String?

    public var resourceName: String?

    public var resourceType: String?

    public var source: String?

    public var withContent: Bool?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.imageProcessParameter != nil {
            map["ImageProcessParameter"] = self.imageProcessParameter!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.withContent != nil {
            map["WithContent"] = self.withContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ImageProcessParameter") && dict["ImageProcessParameter"] != nil {
            self.imageProcessParameter = dict["ImageProcessParameter"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("WithContent") && dict["WithContent"] != nil {
            self.withContent = dict["WithContent"] as! Bool
        }
    }
}

public class ListResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appId: String?

            public var content: Any?

            public var createTime: String?

            public var description_: String?

            public var modifiedTime: String?

            public var moduleId: String?

            public var resourceDigest: String?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceType: String?

            public var revision: Int32?

            public var schemaVersion: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.resourceDigest != nil {
                    map["ResourceDigest"] = self.resourceDigest!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.revision != nil {
                    map["Revision"] = self.revision!
                }
                if self.schemaVersion != nil {
                    map["SchemaVersion"] = self.schemaVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! Any
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("ResourceDigest") && dict["ResourceDigest"] != nil {
                    self.resourceDigest = dict["ResourceDigest"] as! String
                }
                if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Revision") && dict["Revision"] != nil {
                    self.revision = dict["Revision"] as! Int32
                }
                if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                    self.schemaVersion = dict["SchemaVersion"] as! String
                }
            }
        }
        public var items: [ListResourcesResponseBody.Data.Items]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListResourcesResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListResourcesResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var data: ListResourcesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListResourcesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourcesByPageRequest : Tea.TeaModel {
    public var appId: String?

    public var description_: String?

    public var imageProcessParameter: String?

    public var moduleId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceId: String?

    public var resourceName: String?

    public var resourceType: String?

    public var source: String?

    public var withContent: Bool?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.imageProcessParameter != nil {
            map["ImageProcessParameter"] = self.imageProcessParameter!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.withContent != nil {
            map["WithContent"] = self.withContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ImageProcessParameter") && dict["ImageProcessParameter"] != nil {
            self.imageProcessParameter = dict["ImageProcessParameter"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("WithContent") && dict["WithContent"] != nil {
            self.withContent = dict["WithContent"] as! Bool
        }
    }
}

public class ListResourcesByPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appId: String?

            public var content: [String: String]?

            public var createTime: String?

            public var description_: String?

            public var modifiedTime: String?

            public var moduleId: String?

            public var resourceDigest: String?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceType: String?

            public var revision: Int32?

            public var schemaVersion: String?

            public override init() {
                super.init()
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
                    map["AppId"] = self.appId!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.resourceDigest != nil {
                    map["ResourceDigest"] = self.resourceDigest!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.revision != nil {
                    map["Revision"] = self.revision!
                }
                if self.schemaVersion != nil {
                    map["SchemaVersion"] = self.schemaVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! [String: String]
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! String
                }
                if dict.keys.contains("ResourceDigest") && dict["ResourceDigest"] != nil {
                    self.resourceDigest = dict["ResourceDigest"] as! String
                }
                if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("Revision") && dict["Revision"] != nil {
                    self.revision = dict["Revision"] as! Int32
                }
                if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                    self.schemaVersion = dict["SchemaVersion"] as! String
                }
            }
        }
        public var items: [ListResourcesByPageResponseBody.Data.Items]?

        public var pageNumber: Int32?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListResourcesByPageResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListResourcesByPageResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: ListResourcesByPageResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListResourcesByPageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListResourcesByPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourcesByPageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListResourcesByPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetAppUserPasswordRequest : Tea.TeaModel {
    public var appId: String?

    public var envId: String?

    public var source: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class ResetAppUserPasswordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var password: String?

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
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Password") && dict["Password"] != nil {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var data: ResetAppUserPasswordResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ResetAppUserPasswordResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ResetAppUserPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetAppUserPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ResetAppUserPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RestoreModelRequest : Tea.TeaModel {
    public var appId: String?

    public var modelId: String?

    public var moduleId: String?

    public var schemaVersion: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class RestoreModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var attributes: [[String: String]]?

        public var content: [String: String]?

        public var createTime: String?

        public var description_: String?

        public var id: String?

        public var linkModelId: String?

        public var linkModuleId: String?

        public var linked: Bool?

        public var modelId: String?

        public var modelName: String?

        public var modelStatus: String?

        public var modelType: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var props: [String: String]?

        public var revision: Int32?

        public var schemaVersion: String?

        public var subType: String?

        public var visibility: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.linkModelId != nil {
                map["LinkModelId"] = self.linkModelId!
            }
            if self.linkModuleId != nil {
                map["LinkModuleId"] = self.linkModuleId!
            }
            if self.linked != nil {
                map["Linked"] = self.linked!
            }
            if self.modelId != nil {
                map["ModelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            if self.modelStatus != nil {
                map["ModelStatus"] = self.modelStatus!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.props != nil {
                map["Props"] = self.props!
            }
            if self.revision != nil {
                map["Revision"] = self.revision!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            if self.visibility != nil {
                map["Visibility"] = self.visibility!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                self.attributes = dict["Attributes"] as! [[String: String]]
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! [String: String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
                self.linkModelId = dict["LinkModelId"] as! String
            }
            if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
                self.linkModuleId = dict["LinkModuleId"] as! String
            }
            if dict.keys.contains("Linked") && dict["Linked"] != nil {
                self.linked = dict["Linked"] as! Bool
            }
            if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                self.modelId = dict["ModelId"] as! String
            }
            if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                self.modelName = dict["ModelName"] as! String
            }
            if dict.keys.contains("ModelStatus") && dict["ModelStatus"] != nil {
                self.modelStatus = dict["ModelStatus"] as! String
            }
            if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                self.modelType = dict["ModelType"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("Props") && dict["Props"] != nil {
                self.props = dict["Props"] as! [String: String]
            }
            if dict.keys.contains("Revision") && dict["Revision"] != nil {
                self.revision = dict["Revision"] as! Int32
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
            if dict.keys.contains("SubType") && dict["SubType"] != nil {
                self.subType = dict["SubType"] as! String
            }
            if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                self.visibility = dict["Visibility"] as! String
            }
        }
    }
    public var data: RestoreModelResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = RestoreModelResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RestoreModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestoreModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RestoreModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunLogicModelRequest : Tea.TeaModel {
    public var appId: String?

    public var commitId: String?

    public var content: String?

    public var encodeType: String?

    public var moduleId: String?

    public var parameters: String?

    public var schemaVersion: String?

    public var source: String?

    public var subType: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.commitId != nil {
            map["CommitId"] = self.commitId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.encodeType != nil {
            map["EncodeType"] = self.encodeType!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.subType != nil {
            map["SubType"] = self.subType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CommitId") && dict["CommitId"] != nil {
            self.commitId = dict["CommitId"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("EncodeType") && dict["EncodeType"] != nil {
            self.encodeType = dict["EncodeType"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SubType") && dict["SubType"] != nil {
            self.subType = dict["SubType"] as! String
        }
    }
}

public class RunLogicModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var body: String?

        public var headers: [String: String]?

        public var status: Int32?

        public override init() {
            super.init()
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
                map["Body"] = self.body!
            }
            if self.headers != nil {
                map["Headers"] = self.headers!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Body") && dict["Body"] != nil {
                self.body = dict["Body"] as! String
            }
            if dict.keys.contains("Headers") && dict["Headers"] != nil {
                self.headers = dict["Headers"] as! [String: String]
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var data: RunLogicModelResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = RunLogicModelResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RunLogicModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunLogicModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RunLogicModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetEnvironmentDefaultDomainRequest : Tea.TeaModel {
    public var appId: String?

    public var domain: String?

    public var domainType: String?

    public var envId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.domainType != nil {
            map["DomainType"] = self.domainType!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("DomainType") && dict["DomainType"] != nil {
            self.domainType = dict["DomainType"] as! String
        }
        if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class SetEnvironmentDefaultDomainResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var configChanged: Bool?

        public var defaultMasterDomain: String?

        public var defaultStaticDomain: String?

        public var masterDomain: String?

        public var masterDomainApplied: Bool?

        public var staticDomain: String?

        public var staticDomainApplied: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configChanged != nil {
                map["ConfigChanged"] = self.configChanged!
            }
            if self.defaultMasterDomain != nil {
                map["DefaultMasterDomain"] = self.defaultMasterDomain!
            }
            if self.defaultStaticDomain != nil {
                map["DefaultStaticDomain"] = self.defaultStaticDomain!
            }
            if self.masterDomain != nil {
                map["MasterDomain"] = self.masterDomain!
            }
            if self.masterDomainApplied != nil {
                map["MasterDomainApplied"] = self.masterDomainApplied!
            }
            if self.staticDomain != nil {
                map["StaticDomain"] = self.staticDomain!
            }
            if self.staticDomainApplied != nil {
                map["StaticDomainApplied"] = self.staticDomainApplied!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigChanged") && dict["ConfigChanged"] != nil {
                self.configChanged = dict["ConfigChanged"] as! Bool
            }
            if dict.keys.contains("DefaultMasterDomain") && dict["DefaultMasterDomain"] != nil {
                self.defaultMasterDomain = dict["DefaultMasterDomain"] as! String
            }
            if dict.keys.contains("DefaultStaticDomain") && dict["DefaultStaticDomain"] != nil {
                self.defaultStaticDomain = dict["DefaultStaticDomain"] as! String
            }
            if dict.keys.contains("MasterDomain") && dict["MasterDomain"] != nil {
                self.masterDomain = dict["MasterDomain"] as! String
            }
            if dict.keys.contains("MasterDomainApplied") && dict["MasterDomainApplied"] != nil {
                self.masterDomainApplied = dict["MasterDomainApplied"] as! Bool
            }
            if dict.keys.contains("StaticDomain") && dict["StaticDomain"] != nil {
                self.staticDomain = dict["StaticDomain"] as! String
            }
            if dict.keys.contains("StaticDomainApplied") && dict["StaticDomainApplied"] != nil {
                self.staticDomainApplied = dict["StaticDomainApplied"] as! Bool
            }
        }
    }
    public var data: SetEnvironmentDefaultDomainResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SetEnvironmentDefaultDomainResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetEnvironmentDefaultDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetEnvironmentDefaultDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetEnvironmentDefaultDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartAppServerRequest : Tea.TeaModel {
    public var appId: String?

    public var envId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class StartAppServerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var appServerStatus: String?

        public var envId: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.appServerStatus != nil {
                map["AppServerStatus"] = self.appServerStatus!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppServerStatus") && dict["AppServerStatus"] != nil {
                self.appServerStatus = dict["AppServerStatus"] as! String
            }
            if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
                self.envId = dict["EnvId"] as! String
            }
        }
    }
    public var data: StartAppServerResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = StartAppServerResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartAppServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartAppServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartAppServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopAppServerRequest : Tea.TeaModel {
    public var appId: String?

    public var envId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class StopAppServerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var appServerStatus: String?

        public var envId: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.appServerStatus != nil {
                map["AppServerStatus"] = self.appServerStatus!
            }
            if self.envId != nil {
                map["EnvId"] = self.envId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppServerStatus") && dict["AppServerStatus"] != nil {
                self.appServerStatus = dict["AppServerStatus"] as! String
            }
            if dict.keys.contains("EnvId") && dict["EnvId"] != nil {
                self.envId = dict["EnvId"] as! String
            }
        }
    }
    public var data: StopAppServerResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = StopAppServerResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopAppServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopAppServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopAppServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppRequest : Tea.TeaModel {
    public var appId: String?

    public var appName: String?

    public var description_: String?

    public var icon: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.icon != nil {
            map["Icon"] = self.icon!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Icon") && dict["Icon"] != nil {
            self.icon = dict["Icon"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class UpdateAppResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Categories : Tea.TeaModel {
            public var categoryId: String?

            public var categoryName: String?

            public var parentCategoryId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.categoryId != nil {
                    map["CategoryId"] = self.categoryId!
                }
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.parentCategoryId != nil {
                    map["ParentCategoryId"] = self.parentCategoryId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                    self.categoryId = dict["CategoryId"] as! String
                }
                if dict.keys.contains("CategoryName") && dict["CategoryName"] != nil {
                    self.categoryName = dict["CategoryName"] as! String
                }
                if dict.keys.contains("ParentCategoryId") && dict["ParentCategoryId"] != nil {
                    self.parentCategoryId = dict["ParentCategoryId"] as! String
                }
            }
        }
        public var appId: String?

        public var appName: String?

        public var appStatus: String?

        public var appType: String?

        public var categories: [UpdateAppResponseBody.Data.Categories]?

        public var createTime: String?

        public var description_: String?

        public var icon: String?

        public var isTemplate: Bool?

        public var lastEditTime: String?

        public var mainModuleId: String?

        public var modifiedTime: String?

        public var schemaVersion: String?

        public var source: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appStatus != nil {
                map["AppStatus"] = self.appStatus!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.categories != nil {
                var tmp : [Any] = []
                for k in self.categories! {
                    tmp.append(k.toMap())
                }
                map["Categories"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.icon != nil {
                map["Icon"] = self.icon!
            }
            if self.isTemplate != nil {
                map["IsTemplate"] = self.isTemplate!
            }
            if self.lastEditTime != nil {
                map["LastEditTime"] = self.lastEditTime!
            }
            if self.mainModuleId != nil {
                map["MainModuleId"] = self.mainModuleId!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") && dict["AppName"] != nil {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppStatus") && dict["AppStatus"] != nil {
                self.appStatus = dict["AppStatus"] as! String
            }
            if dict.keys.contains("AppType") && dict["AppType"] != nil {
                self.appType = dict["AppType"] as! String
            }
            if dict.keys.contains("Categories") && dict["Categories"] != nil {
                var tmp : [UpdateAppResponseBody.Data.Categories] = []
                for v in dict["Categories"] as! [Any] {
                    var model = UpdateAppResponseBody.Data.Categories()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.categories = tmp
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Icon") && dict["Icon"] != nil {
                self.icon = dict["Icon"] as! String
            }
            if dict.keys.contains("IsTemplate") && dict["IsTemplate"] != nil {
                self.isTemplate = dict["IsTemplate"] as! Bool
            }
            if dict.keys.contains("LastEditTime") && dict["LastEditTime"] != nil {
                self.lastEditTime = dict["LastEditTime"] as! String
            }
            if dict.keys.contains("MainModuleId") && dict["MainModuleId"] != nil {
                self.mainModuleId = dict["MainModuleId"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
        }
    }
    public var data: UpdateAppResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UpdateAppResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppModelRequest : Tea.TeaModel {
    public var appId: String?

    public var content: String?

    public var encodeType: String?

    public var schemaVersion: String?

    public var source: String?

    public var subType: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.encodeType != nil {
            map["EncodeType"] = self.encodeType!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.subType != nil {
            map["SubType"] = self.subType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("EncodeType") && dict["EncodeType"] != nil {
            self.encodeType = dict["EncodeType"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SubType") && dict["SubType"] != nil {
            self.subType = dict["SubType"] as! String
        }
    }
}

public class UpdateAppModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var attributes: [[String: String]]?

        public var content: [String: String]?

        public var createTime: String?

        public var description_: String?

        public var id: String?

        public var linkModelId: String?

        public var linkModuleId: String?

        public var linked: Bool?

        public var modelDigest: String?

        public var modelId: String?

        public var modelName: String?

        public var modelStatus: String?

        public var modelType: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var props: [String: String]?

        public var revision: Int32?

        public var schemaVersion: String?

        public var subType: String?

        public var visibility: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.linkModelId != nil {
                map["LinkModelId"] = self.linkModelId!
            }
            if self.linkModuleId != nil {
                map["LinkModuleId"] = self.linkModuleId!
            }
            if self.linked != nil {
                map["Linked"] = self.linked!
            }
            if self.modelDigest != nil {
                map["ModelDigest"] = self.modelDigest!
            }
            if self.modelId != nil {
                map["ModelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            if self.modelStatus != nil {
                map["ModelStatus"] = self.modelStatus!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.props != nil {
                map["Props"] = self.props!
            }
            if self.revision != nil {
                map["Revision"] = self.revision!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            if self.visibility != nil {
                map["Visibility"] = self.visibility!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                self.attributes = dict["Attributes"] as! [[String: String]]
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! [String: String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
                self.linkModelId = dict["LinkModelId"] as! String
            }
            if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
                self.linkModuleId = dict["LinkModuleId"] as! String
            }
            if dict.keys.contains("Linked") && dict["Linked"] != nil {
                self.linked = dict["Linked"] as! Bool
            }
            if dict.keys.contains("ModelDigest") && dict["ModelDigest"] != nil {
                self.modelDigest = dict["ModelDigest"] as! String
            }
            if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                self.modelId = dict["ModelId"] as! String
            }
            if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                self.modelName = dict["ModelName"] as! String
            }
            if dict.keys.contains("ModelStatus") && dict["ModelStatus"] != nil {
                self.modelStatus = dict["ModelStatus"] as! String
            }
            if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                self.modelType = dict["ModelType"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("Props") && dict["Props"] != nil {
                self.props = dict["Props"] as! [String: String]
            }
            if dict.keys.contains("Revision") && dict["Revision"] != nil {
                self.revision = dict["Revision"] as! Int32
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
            if dict.keys.contains("SubType") && dict["SubType"] != nil {
                self.subType = dict["SubType"] as! String
            }
            if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                self.visibility = dict["Visibility"] as! String
            }
        }
    }
    public var data: UpdateAppModelResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UpdateAppModelResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAppModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateAppModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateModelRequest : Tea.TeaModel {
    public var appId: String?

    public var content: String?

    public var description_: String?

    public var encodeType: String?

    public var modelId: String?

    public var modelName: String?

    public var moduleId: String?

    public var schemaVersion: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.encodeType != nil {
            map["EncodeType"] = self.encodeType!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.schemaVersion != nil {
            map["SchemaVersion"] = self.schemaVersion!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EncodeType") && dict["EncodeType"] != nil {
            self.encodeType = dict["EncodeType"] as! String
        }
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
            self.modelName = dict["ModelName"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
            self.schemaVersion = dict["SchemaVersion"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class UpdateModelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var attributes: [[String: String]]?

        public var content: [String: String]?

        public var createTime: String?

        public var description_: String?

        public var id: String?

        public var linkModelId: String?

        public var linkModuleId: String?

        public var linked: Bool?

        public var modelDigest: String?

        public var modelId: String?

        public var modelName: String?

        public var modelStatus: String?

        public var modelType: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var props: [String: String]?

        public var revision: Int32?

        public var schemaVersion: String?

        public var subType: String?

        public var visibility: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.linkModelId != nil {
                map["LinkModelId"] = self.linkModelId!
            }
            if self.linkModuleId != nil {
                map["LinkModuleId"] = self.linkModuleId!
            }
            if self.linked != nil {
                map["Linked"] = self.linked!
            }
            if self.modelDigest != nil {
                map["ModelDigest"] = self.modelDigest!
            }
            if self.modelId != nil {
                map["ModelId"] = self.modelId!
            }
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            if self.modelStatus != nil {
                map["ModelStatus"] = self.modelStatus!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.props != nil {
                map["Props"] = self.props!
            }
            if self.revision != nil {
                map["Revision"] = self.revision!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            if self.visibility != nil {
                map["Visibility"] = self.visibility!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                self.attributes = dict["Attributes"] as! [[String: String]]
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! [String: String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("LinkModelId") && dict["LinkModelId"] != nil {
                self.linkModelId = dict["LinkModelId"] as! String
            }
            if dict.keys.contains("LinkModuleId") && dict["LinkModuleId"] != nil {
                self.linkModuleId = dict["LinkModuleId"] as! String
            }
            if dict.keys.contains("Linked") && dict["Linked"] != nil {
                self.linked = dict["Linked"] as! Bool
            }
            if dict.keys.contains("ModelDigest") && dict["ModelDigest"] != nil {
                self.modelDigest = dict["ModelDigest"] as! String
            }
            if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
                self.modelId = dict["ModelId"] as! String
            }
            if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                self.modelName = dict["ModelName"] as! String
            }
            if dict.keys.contains("ModelStatus") && dict["ModelStatus"] != nil {
                self.modelStatus = dict["ModelStatus"] as! String
            }
            if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                self.modelType = dict["ModelType"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("Props") && dict["Props"] != nil {
                self.props = dict["Props"] as! [String: String]
            }
            if dict.keys.contains("Revision") && dict["Revision"] != nil {
                self.revision = dict["Revision"] as! Int32
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
            if dict.keys.contains("SubType") && dict["SubType"] != nil {
                self.subType = dict["SubType"] as! String
            }
            if dict.keys.contains("Visibility") && dict["Visibility"] != nil {
                self.visibility = dict["Visibility"] as! String
            }
        }
    }
    public var data: UpdateModelResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UpdateModelResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateModuleRequest : Tea.TeaModel {
    public var description_: String?

    public var moduleId: String?

    public var moduleName: String?

    public var source: String?

    public override init() {
        super.init()
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
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.moduleName != nil {
            map["ModuleName"] = self.moduleName!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
            self.moduleName = dict["ModuleName"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class UpdateModuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var icon: String?

        public var latestPublishedCommit: String?

        public var latestPublishedVersion: String?

        public var minimumPlatformVersion: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var moduleName: String?

        public var ownerAppId: String?

        public var ownerUserId: String?

        public var platform: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.icon != nil {
                map["Icon"] = self.icon!
            }
            if self.latestPublishedCommit != nil {
                map["LatestPublishedCommit"] = self.latestPublishedCommit!
            }
            if self.latestPublishedVersion != nil {
                map["LatestPublishedVersion"] = self.latestPublishedVersion!
            }
            if self.minimumPlatformVersion != nil {
                map["MinimumPlatformVersion"] = self.minimumPlatformVersion!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.moduleName != nil {
                map["ModuleName"] = self.moduleName!
            }
            if self.ownerAppId != nil {
                map["OwnerAppId"] = self.ownerAppId!
            }
            if self.ownerUserId != nil {
                map["OwnerUserId"] = self.ownerUserId!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Icon") && dict["Icon"] != nil {
                self.icon = dict["Icon"] as! String
            }
            if dict.keys.contains("LatestPublishedCommit") && dict["LatestPublishedCommit"] != nil {
                self.latestPublishedCommit = dict["LatestPublishedCommit"] as! String
            }
            if dict.keys.contains("LatestPublishedVersion") && dict["LatestPublishedVersion"] != nil {
                self.latestPublishedVersion = dict["LatestPublishedVersion"] as! String
            }
            if dict.keys.contains("MinimumPlatformVersion") && dict["MinimumPlatformVersion"] != nil {
                self.minimumPlatformVersion = dict["MinimumPlatformVersion"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
                self.moduleName = dict["ModuleName"] as! String
            }
            if dict.keys.contains("OwnerAppId") && dict["OwnerAppId"] != nil {
                self.ownerAppId = dict["OwnerAppId"] as! String
            }
            if dict.keys.contains("OwnerUserId") && dict["OwnerUserId"] != nil {
                self.ownerUserId = dict["OwnerUserId"] as! String
            }
            if dict.keys.contains("Platform") && dict["Platform"] != nil {
                self.platform = dict["Platform"] as! String
            }
        }
    }
    public var data: UpdateModuleResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UpdateModuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateModuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateModuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateResourceRequest : Tea.TeaModel {
    public var appId: String?

    public var content: String?

    public var description_: String?

    public var moduleId: String?

    public var resourceId: String?

    public var resourceName: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class UpdateResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var content: [String: String]?

        public var createTime: String?

        public var description_: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var resourceDigest: String?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceType: String?

        public var revision: Int32?

        public var schemaVersion: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.resourceDigest != nil {
                map["ResourceDigest"] = self.resourceDigest!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.revision != nil {
                map["Revision"] = self.revision!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! [String: String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("ResourceDigest") && dict["ResourceDigest"] != nil {
                self.resourceDigest = dict["ResourceDigest"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Revision") && dict["Revision"] != nil {
                self.revision = dict["Revision"] as! Int32
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
        }
    }
    public var data: UpdateResourceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UpdateResourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateResourceContentRequest : Tea.TeaModel {
    public var appId: String?

    public var content: String?

    public var moduleId: String?

    public var resourceId: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class UpdateResourceContentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var content: [String: String]?

        public var createTime: String?

        public var description_: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceType: String?

        public var revision: Int32?

        public var schemaVersion: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.revision != nil {
                map["Revision"] = self.revision!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! [String: String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Revision") && dict["Revision"] != nil {
                self.revision = dict["Revision"] as! Int32
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
        }
    }
    public var data: UpdateResourceContentResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UpdateResourceContentResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateResourceContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateResourceContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateResourceInfoRequest : Tea.TeaModel {
    public var appId: String?

    public var description_: String?

    public var moduleId: String?

    public var resourceId: String?

    public var resourceName: String?

    public var source: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class UpdateResourceInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var content: [String: String]?

        public var createTime: String?

        public var description_: String?

        public var modifiedTime: String?

        public var moduleId: String?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceType: String?

        public var revision: Int32?

        public var schemaVersion: String?

        public override init() {
            super.init()
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
                map["AppId"] = self.appId!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.moduleId != nil {
                map["ModuleId"] = self.moduleId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.revision != nil {
                map["Revision"] = self.revision!
            }
            if self.schemaVersion != nil {
                map["SchemaVersion"] = self.schemaVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! [String: String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                self.moduleId = dict["ModuleId"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Revision") && dict["Revision"] != nil {
                self.revision = dict["Revision"] as! Int32
            }
            if dict.keys.contains("SchemaVersion") && dict["SchemaVersion"] != nil {
                self.schemaVersion = dict["SchemaVersion"] as! String
            }
        }
    }
    public var data: UpdateResourceInfoResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UpdateResourceInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateResourceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateResourceInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
