import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class FieldInputConfig : Tea.TeaModel {
    public var arrayed: Bool?

    public var defaultValue: String?

    public var fieldCheckRegex: String?

    public var fieldClass: String?

    public var fieldConfigs: [FieldInputConfig]?

    public var fieldDescription: String?

    public var fieldExample: String?

    public var fieldName: String?

    public var fieldPath: String?

    public var fieldType: String?

    public var required_: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arrayed != nil {
            map["Arrayed"] = self.arrayed!
        }
        if self.defaultValue != nil {
            map["DefaultValue"] = self.defaultValue!
        }
        if self.fieldCheckRegex != nil {
            map["FieldCheckRegex"] = self.fieldCheckRegex!
        }
        if self.fieldClass != nil {
            map["FieldClass"] = self.fieldClass!
        }
        if self.fieldConfigs != nil {
            var tmp : [Any] = []
            for k in self.fieldConfigs! {
                tmp.append(k.toMap())
            }
            map["FieldConfigs"] = tmp
        }
        if self.fieldDescription != nil {
            map["FieldDescription"] = self.fieldDescription!
        }
        if self.fieldExample != nil {
            map["FieldExample"] = self.fieldExample!
        }
        if self.fieldName != nil {
            map["FieldName"] = self.fieldName!
        }
        if self.fieldPath != nil {
            map["FieldPath"] = self.fieldPath!
        }
        if self.fieldType != nil {
            map["FieldType"] = self.fieldType!
        }
        if self.required_ != nil {
            map["Required"] = self.required_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Arrayed"] as? Bool {
            self.arrayed = value
        }
        if let value = dict["DefaultValue"] as? String {
            self.defaultValue = value
        }
        if let value = dict["FieldCheckRegex"] as? String {
            self.fieldCheckRegex = value
        }
        if let value = dict["FieldClass"] as? String {
            self.fieldClass = value
        }
        if let value = dict["FieldConfigs"] as? [Any?] {
            var tmp : [FieldInputConfig] = []
            for v in value {
                if v != nil {
                    var model = FieldInputConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fieldConfigs = tmp
        }
        if let value = dict["FieldDescription"] as? String {
            self.fieldDescription = value
        }
        if let value = dict["FieldExample"] as? String {
            self.fieldExample = value
        }
        if let value = dict["FieldName"] as? String {
            self.fieldName = value
        }
        if let value = dict["FieldPath"] as? String {
            self.fieldPath = value
        }
        if let value = dict["FieldType"] as? String {
            self.fieldType = value
        }
        if let value = dict["Required"] as? Bool {
            self.required_ = value
        }
    }
}

public class FieldOutputConfig : Tea.TeaModel {
    public var defaultValue: String?

    public var fieldDescription: String?

    public var fieldExample: String?

    public var fieldName: String?

    public var fieldType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultValue != nil {
            map["DefaultValue"] = self.defaultValue!
        }
        if self.fieldDescription != nil {
            map["FieldDescription"] = self.fieldDescription!
        }
        if self.fieldExample != nil {
            map["FieldExample"] = self.fieldExample!
        }
        if self.fieldName != nil {
            map["FieldName"] = self.fieldName!
        }
        if self.fieldType != nil {
            map["FieldType"] = self.fieldType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultValue"] as? String {
            self.defaultValue = value
        }
        if let value = dict["FieldDescription"] as? String {
            self.fieldDescription = value
        }
        if let value = dict["FieldExample"] as? String {
            self.fieldExample = value
        }
        if let value = dict["FieldName"] as? String {
            self.fieldName = value
        }
        if let value = dict["FieldType"] as? String {
            self.fieldType = value
        }
    }
}

public class CreateComponentAssetRequest : Tea.TeaModel {
    public class ComponentAssetValues : Tea.TeaModel {
        public var fieldName: String?

        public var fieldValue: String?

        public override init() {
            super.init()
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
                map["FieldName"] = self.fieldName!
            }
            if self.fieldValue != nil {
                map["FieldValue"] = self.fieldValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FieldName"] as? String {
                self.fieldName = value
            }
            if let value = dict["FieldValue"] as? String {
                self.fieldValue = value
            }
        }
    }
    public var componentAssetName: String?

    public var componentAssetValues: [CreateComponentAssetRequest.ComponentAssetValues]?

    public var componentName: String?

    public var lang: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentAssetName != nil {
            map["ComponentAssetName"] = self.componentAssetName!
        }
        if self.componentAssetValues != nil {
            var tmp : [Any] = []
            for k in self.componentAssetValues! {
                tmp.append(k.toMap())
            }
            map["ComponentAssetValues"] = tmp
        }
        if self.componentName != nil {
            map["ComponentName"] = self.componentName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComponentAssetName"] as? String {
            self.componentAssetName = value
        }
        if let value = dict["ComponentAssetValues"] as? [Any?] {
            var tmp : [CreateComponentAssetRequest.ComponentAssetValues] = []
            for v in value {
                if v != nil {
                    var model = CreateComponentAssetRequest.ComponentAssetValues()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.componentAssetValues = tmp
        }
        if let value = dict["ComponentName"] as? String {
            self.componentName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class CreateComponentAssetResponseBody : Tea.TeaModel {
    public var componentAssetUuid: String?

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
        if self.componentAssetUuid != nil {
            map["ComponentAssetUuid"] = self.componentAssetUuid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComponentAssetUuid"] as? String {
            self.componentAssetUuid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateComponentAssetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateComponentAssetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateComponentAssetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePlaybookRequest : Tea.TeaModel {
    public var lang: String?

    public var playbookDescription: String?

    public var playbookInputConfigs: [FieldInputConfig]?

    public var playbookName: String?

    public var playbookOutputConfigs: [FieldOutputConfig]?

    public var playbookParamType: String?

    public var playbookTaskFlow: String?

    public var roleFor: Int64?

    public var srcPlaybookUuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.playbookDescription != nil {
            map["PlaybookDescription"] = self.playbookDescription!
        }
        if self.playbookInputConfigs != nil {
            var tmp : [Any] = []
            for k in self.playbookInputConfigs! {
                tmp.append(k.toMap())
            }
            map["PlaybookInputConfigs"] = tmp
        }
        if self.playbookName != nil {
            map["PlaybookName"] = self.playbookName!
        }
        if self.playbookOutputConfigs != nil {
            var tmp : [Any] = []
            for k in self.playbookOutputConfigs! {
                tmp.append(k.toMap())
            }
            map["PlaybookOutputConfigs"] = tmp
        }
        if self.playbookParamType != nil {
            map["PlaybookParamType"] = self.playbookParamType!
        }
        if self.playbookTaskFlow != nil {
            map["PlaybookTaskFlow"] = self.playbookTaskFlow!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.srcPlaybookUuid != nil {
            map["SrcPlaybookUuid"] = self.srcPlaybookUuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PlaybookDescription"] as? String {
            self.playbookDescription = value
        }
        if let value = dict["PlaybookInputConfigs"] as? [Any?] {
            var tmp : [FieldInputConfig] = []
            for v in value {
                if v != nil {
                    var model = FieldInputConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.playbookInputConfigs = tmp
        }
        if let value = dict["PlaybookName"] as? String {
            self.playbookName = value
        }
        if let value = dict["PlaybookOutputConfigs"] as? [Any?] {
            var tmp : [FieldOutputConfig] = []
            for v in value {
                if v != nil {
                    var model = FieldOutputConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.playbookOutputConfigs = tmp
        }
        if let value = dict["PlaybookParamType"] as? String {
            self.playbookParamType = value
        }
        if let value = dict["PlaybookTaskFlow"] as? String {
            self.playbookTaskFlow = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["SrcPlaybookUuid"] as? String {
            self.srcPlaybookUuid = value
        }
    }
}

public class CreatePlaybookResponseBody : Tea.TeaModel {
    public var playbookUuid: String?

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
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePlaybookResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePlaybookResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteComponentAssetRequest : Tea.TeaModel {
    public var componentAssetUuid: String?

    public var lang: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentAssetUuid != nil {
            map["ComponentAssetUuid"] = self.componentAssetUuid!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComponentAssetUuid"] as? String {
            self.componentAssetUuid = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class DeleteComponentAssetResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteComponentAssetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteComponentAssetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteComponentAssetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePlaybookRequest : Tea.TeaModel {
    public var lang: String?

    public var playbookUuid: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class DeletePlaybookResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeletePlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePlaybookResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeletePlaybookResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPlaybookRequest : Tea.TeaModel {
    public var lang: String?

    public var playbookUuid: String?

    public var playbookVersion: String?

    public var playbookVersionType: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.playbookVersion != nil {
            map["PlaybookVersion"] = self.playbookVersion!
        }
        if self.playbookVersionType != nil {
            map["PlaybookVersionType"] = self.playbookVersionType!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["PlaybookVersion"] as? String {
            self.playbookVersion = value
        }
        if let value = dict["PlaybookVersionType"] as? String {
            self.playbookVersionType = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class GetPlaybookResponseBody : Tea.TeaModel {
    public class Playbook : Tea.TeaModel {
        public var createTime: Int64?

        public var playbookDescription: String?

        public var playbookExtension: String?

        public var playbookInputConfigs: [FieldInputConfig]?

        public var playbookName: String?

        public var playbookOutputConfigs: [FieldOutputConfig]?

        public var playbookParamType: String?

        public var playbookParamsExample: String?

        public var playbookStatus: Int32?

        public var playbookTaskFlow: String?

        public var playbookTaskFlowUuid: String?

        public var playbookType: String?

        public var playbookUuid: String?

        public var playbookVersion: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.playbookDescription != nil {
                map["PlaybookDescription"] = self.playbookDescription!
            }
            if self.playbookExtension != nil {
                map["PlaybookExtension"] = self.playbookExtension!
            }
            if self.playbookInputConfigs != nil {
                var tmp : [Any] = []
                for k in self.playbookInputConfigs! {
                    tmp.append(k.toMap())
                }
                map["PlaybookInputConfigs"] = tmp
            }
            if self.playbookName != nil {
                map["PlaybookName"] = self.playbookName!
            }
            if self.playbookOutputConfigs != nil {
                var tmp : [Any] = []
                for k in self.playbookOutputConfigs! {
                    tmp.append(k.toMap())
                }
                map["PlaybookOutputConfigs"] = tmp
            }
            if self.playbookParamType != nil {
                map["PlaybookParamType"] = self.playbookParamType!
            }
            if self.playbookParamsExample != nil {
                map["PlaybookParamsExample"] = self.playbookParamsExample!
            }
            if self.playbookStatus != nil {
                map["PlaybookStatus"] = self.playbookStatus!
            }
            if self.playbookTaskFlow != nil {
                map["PlaybookTaskFlow"] = self.playbookTaskFlow!
            }
            if self.playbookTaskFlowUuid != nil {
                map["PlaybookTaskFlowUuid"] = self.playbookTaskFlowUuid!
            }
            if self.playbookType != nil {
                map["PlaybookType"] = self.playbookType!
            }
            if self.playbookUuid != nil {
                map["PlaybookUuid"] = self.playbookUuid!
            }
            if self.playbookVersion != nil {
                map["PlaybookVersion"] = self.playbookVersion!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["PlaybookDescription"] as? String {
                self.playbookDescription = value
            }
            if let value = dict["PlaybookExtension"] as? String {
                self.playbookExtension = value
            }
            if let value = dict["PlaybookInputConfigs"] as? [Any?] {
                var tmp : [FieldInputConfig] = []
                for v in value {
                    if v != nil {
                        var model = FieldInputConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.playbookInputConfigs = tmp
            }
            if let value = dict["PlaybookName"] as? String {
                self.playbookName = value
            }
            if let value = dict["PlaybookOutputConfigs"] as? [Any?] {
                var tmp : [FieldOutputConfig] = []
                for v in value {
                    if v != nil {
                        var model = FieldOutputConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.playbookOutputConfigs = tmp
            }
            if let value = dict["PlaybookParamType"] as? String {
                self.playbookParamType = value
            }
            if let value = dict["PlaybookParamsExample"] as? String {
                self.playbookParamsExample = value
            }
            if let value = dict["PlaybookStatus"] as? Int32 {
                self.playbookStatus = value
            }
            if let value = dict["PlaybookTaskFlow"] as? String {
                self.playbookTaskFlow = value
            }
            if let value = dict["PlaybookTaskFlowUuid"] as? String {
                self.playbookTaskFlowUuid = value
            }
            if let value = dict["PlaybookType"] as? String {
                self.playbookType = value
            }
            if let value = dict["PlaybookUuid"] as? String {
                self.playbookUuid = value
            }
            if let value = dict["PlaybookVersion"] as? String {
                self.playbookVersion = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var playbook: GetPlaybookResponseBody.Playbook?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.playbook?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.playbook != nil {
            map["Playbook"] = self.playbook?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Playbook"] as? [String: Any?] {
            var model = GetPlaybookResponseBody.Playbook()
            model.fromMap(value)
            self.playbook = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPlaybookResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPlaybookResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListComponentAssetsRequest : Tea.TeaModel {
    public var componentAssetUuid: String?

    public var componentName: String?

    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentAssetUuid != nil {
            map["ComponentAssetUuid"] = self.componentAssetUuid!
        }
        if self.componentName != nil {
            map["ComponentName"] = self.componentName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComponentAssetUuid"] as? String {
            self.componentAssetUuid = value
        }
        if let value = dict["ComponentName"] as? String {
            self.componentName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListComponentAssetsResponseBody : Tea.TeaModel {
    public class ComponentAssets : Tea.TeaModel {
        public class ComponentAssetValues : Tea.TeaModel {
            public var fieldName: String?

            public var fieldValue: String?

            public override init() {
                super.init()
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
                    map["FieldName"] = self.fieldName!
                }
                if self.fieldValue != nil {
                    map["FieldValue"] = self.fieldValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FieldName"] as? String {
                    self.fieldName = value
                }
                if let value = dict["FieldValue"] as? String {
                    self.fieldValue = value
                }
            }
        }
        public var componentAssetName: String?

        public var componentAssetUuid: String?

        public var componentAssetValues: [ListComponentAssetsResponseBody.ComponentAssets.ComponentAssetValues]?

        public var componentName: String?

        public var createTime: Int64?

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
            if self.componentAssetName != nil {
                map["ComponentAssetName"] = self.componentAssetName!
            }
            if self.componentAssetUuid != nil {
                map["ComponentAssetUuid"] = self.componentAssetUuid!
            }
            if self.componentAssetValues != nil {
                var tmp : [Any] = []
                for k in self.componentAssetValues! {
                    tmp.append(k.toMap())
                }
                map["ComponentAssetValues"] = tmp
            }
            if self.componentName != nil {
                map["ComponentName"] = self.componentName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ComponentAssetName"] as? String {
                self.componentAssetName = value
            }
            if let value = dict["ComponentAssetUuid"] as? String {
                self.componentAssetUuid = value
            }
            if let value = dict["ComponentAssetValues"] as? [Any?] {
                var tmp : [ListComponentAssetsResponseBody.ComponentAssets.ComponentAssetValues] = []
                for v in value {
                    if v != nil {
                        var model = ListComponentAssetsResponseBody.ComponentAssets.ComponentAssetValues()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.componentAssetValues = tmp
            }
            if let value = dict["ComponentName"] as? String {
                self.componentName = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var componentAssets: [ListComponentAssetsResponseBody.ComponentAssets]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.componentAssets != nil {
            var tmp : [Any] = []
            for k in self.componentAssets! {
                tmp.append(k.toMap())
            }
            map["ComponentAssets"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComponentAssets"] as? [Any?] {
            var tmp : [ListComponentAssetsResponseBody.ComponentAssets] = []
            for v in value {
                if v != nil {
                    var model = ListComponentAssetsResponseBody.ComponentAssets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.componentAssets = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListComponentAssetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListComponentAssetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListComponentAssetsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListComponentsRequest : Tea.TeaModel {
    public var componentName: String?

    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentName != nil {
            map["ComponentName"] = self.componentName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComponentName"] as? String {
            self.componentName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListComponentsResponseBody : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public class ComponentActions : Tea.TeaModel {
            public class InputConfigs : Tea.TeaModel {
                public var defaultValue: String?

                public var fieldDescription: String?

                public var fieldDisplayConfig: String?

                public var fieldName: String?

                public var fieldType: String?

                public var required_: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.defaultValue != nil {
                        map["DefaultValue"] = self.defaultValue!
                    }
                    if self.fieldDescription != nil {
                        map["FieldDescription"] = self.fieldDescription!
                    }
                    if self.fieldDisplayConfig != nil {
                        map["FieldDisplayConfig"] = self.fieldDisplayConfig!
                    }
                    if self.fieldName != nil {
                        map["FieldName"] = self.fieldName!
                    }
                    if self.fieldType != nil {
                        map["FieldType"] = self.fieldType!
                    }
                    if self.required_ != nil {
                        map["Required"] = self.required_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DefaultValue"] as? String {
                        self.defaultValue = value
                    }
                    if let value = dict["FieldDescription"] as? String {
                        self.fieldDescription = value
                    }
                    if let value = dict["FieldDisplayConfig"] as? String {
                        self.fieldDisplayConfig = value
                    }
                    if let value = dict["FieldName"] as? String {
                        self.fieldName = value
                    }
                    if let value = dict["FieldType"] as? String {
                        self.fieldType = value
                    }
                    if let value = dict["Required"] as? Bool {
                        self.required_ = value
                    }
                }
            }
            public class OutputConfigs : Tea.TeaModel {
                public var fieldName: String?

                public var fieldType: String?

                public override init() {
                    super.init()
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
                        map["FieldName"] = self.fieldName!
                    }
                    if self.fieldType != nil {
                        map["FieldType"] = self.fieldType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FieldName"] as? String {
                        self.fieldName = value
                    }
                    if let value = dict["FieldType"] as? String {
                        self.fieldType = value
                    }
                }
            }
            public var componentActionDescription: String?

            public var componentActionName: String?

            public var inputConfigs: [ListComponentsResponseBody.Components.ComponentActions.InputConfigs]?

            public var outputConfigs: [ListComponentsResponseBody.Components.ComponentActions.OutputConfigs]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.componentActionDescription != nil {
                    map["ComponentActionDescription"] = self.componentActionDescription!
                }
                if self.componentActionName != nil {
                    map["ComponentActionName"] = self.componentActionName!
                }
                if self.inputConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.inputConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["InputConfigs"] = tmp
                }
                if self.outputConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.outputConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["OutputConfigs"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComponentActionDescription"] as? String {
                    self.componentActionDescription = value
                }
                if let value = dict["ComponentActionName"] as? String {
                    self.componentActionName = value
                }
                if let value = dict["InputConfigs"] as? [Any?] {
                    var tmp : [ListComponentsResponseBody.Components.ComponentActions.InputConfigs] = []
                    for v in value {
                        if v != nil {
                            var model = ListComponentsResponseBody.Components.ComponentActions.InputConfigs()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.inputConfigs = tmp
                }
                if let value = dict["OutputConfigs"] as? [Any?] {
                    var tmp : [ListComponentsResponseBody.Components.ComponentActions.OutputConfigs] = []
                    for v in value {
                        if v != nil {
                            var model = ListComponentsResponseBody.Components.ComponentActions.OutputConfigs()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.outputConfigs = tmp
                }
            }
        }
        public class ComponentAssetConfigs : Tea.TeaModel {
            public var defaultValue: String?

            public var encrypted: Bool?

            public var fieldDescription: String?

            public var fieldName: String?

            public var fieldType: String?

            public var required_: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.encrypted != nil {
                    map["Encrypted"] = self.encrypted!
                }
                if self.fieldDescription != nil {
                    map["FieldDescription"] = self.fieldDescription!
                }
                if self.fieldName != nil {
                    map["FieldName"] = self.fieldName!
                }
                if self.fieldType != nil {
                    map["FieldType"] = self.fieldType!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DefaultValue"] as? String {
                    self.defaultValue = value
                }
                if let value = dict["Encrypted"] as? Bool {
                    self.encrypted = value
                }
                if let value = dict["FieldDescription"] as? String {
                    self.fieldDescription = value
                }
                if let value = dict["FieldName"] as? String {
                    self.fieldName = value
                }
                if let value = dict["FieldType"] as? String {
                    self.fieldType = value
                }
                if let value = dict["Required"] as? Bool {
                    self.required_ = value
                }
            }
        }
        public var componentActions: [ListComponentsResponseBody.Components.ComponentActions]?

        public var componentAlias: String?

        public var componentAssetConfigs: [ListComponentsResponseBody.Components.ComponentAssetConfigs]?

        public var componentDescription: String?

        public var componentExtension: String?

        public var componentLogo: String?

        public var componentName: String?

        public var createTime: Int64?

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
            if self.componentActions != nil {
                var tmp : [Any] = []
                for k in self.componentActions! {
                    tmp.append(k.toMap())
                }
                map["ComponentActions"] = tmp
            }
            if self.componentAlias != nil {
                map["ComponentAlias"] = self.componentAlias!
            }
            if self.componentAssetConfigs != nil {
                var tmp : [Any] = []
                for k in self.componentAssetConfigs! {
                    tmp.append(k.toMap())
                }
                map["ComponentAssetConfigs"] = tmp
            }
            if self.componentDescription != nil {
                map["ComponentDescription"] = self.componentDescription!
            }
            if self.componentExtension != nil {
                map["ComponentExtension"] = self.componentExtension!
            }
            if self.componentLogo != nil {
                map["ComponentLogo"] = self.componentLogo!
            }
            if self.componentName != nil {
                map["ComponentName"] = self.componentName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ComponentActions"] as? [Any?] {
                var tmp : [ListComponentsResponseBody.Components.ComponentActions] = []
                for v in value {
                    if v != nil {
                        var model = ListComponentsResponseBody.Components.ComponentActions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.componentActions = tmp
            }
            if let value = dict["ComponentAlias"] as? String {
                self.componentAlias = value
            }
            if let value = dict["ComponentAssetConfigs"] as? [Any?] {
                var tmp : [ListComponentsResponseBody.Components.ComponentAssetConfigs] = []
                for v in value {
                    if v != nil {
                        var model = ListComponentsResponseBody.Components.ComponentAssetConfigs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.componentAssetConfigs = tmp
            }
            if let value = dict["ComponentDescription"] as? String {
                self.componentDescription = value
            }
            if let value = dict["ComponentExtension"] as? String {
                self.componentExtension = value
            }
            if let value = dict["ComponentLogo"] as? String {
                self.componentLogo = value
            }
            if let value = dict["ComponentName"] as? String {
                self.componentName = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var components: [ListComponentsResponseBody.Components]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["Components"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Components"] as? [Any?] {
            var tmp : [ListComponentsResponseBody.Components] = []
            for v in value {
                if v != nil {
                    var model = ListComponentsResponseBody.Components()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.components = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListComponentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListComponentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListComponentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPlaybooksRequest : Tea.TeaModel {
    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var order: String?

    public var orderField: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var playbookExecutionEndTime: Int64?

    public var playbookExecutionStartTime: Int64?

    public var playbookName: String?

    public var playbookParamTypes: [String]?

    public var playbookStatus: Int32?

    public var playbookType: String?

    public var playbookUuids: [String]?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.playbookExecutionEndTime != nil {
            map["PlaybookExecutionEndTime"] = self.playbookExecutionEndTime!
        }
        if self.playbookExecutionStartTime != nil {
            map["PlaybookExecutionStartTime"] = self.playbookExecutionStartTime!
        }
        if self.playbookName != nil {
            map["PlaybookName"] = self.playbookName!
        }
        if self.playbookParamTypes != nil {
            map["PlaybookParamTypes"] = self.playbookParamTypes!
        }
        if self.playbookStatus != nil {
            map["PlaybookStatus"] = self.playbookStatus!
        }
        if self.playbookType != nil {
            map["PlaybookType"] = self.playbookType!
        }
        if self.playbookUuids != nil {
            map["PlaybookUuids"] = self.playbookUuids!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PlaybookExecutionEndTime"] as? Int64 {
            self.playbookExecutionEndTime = value
        }
        if let value = dict["PlaybookExecutionStartTime"] as? Int64 {
            self.playbookExecutionStartTime = value
        }
        if let value = dict["PlaybookName"] as? String {
            self.playbookName = value
        }
        if let value = dict["PlaybookParamTypes"] as? [String] {
            self.playbookParamTypes = value
        }
        if let value = dict["PlaybookStatus"] as? Int32 {
            self.playbookStatus = value
        }
        if let value = dict["PlaybookType"] as? String {
            self.playbookType = value
        }
        if let value = dict["PlaybookUuids"] as? [String] {
            self.playbookUuids = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListPlaybooksShrinkRequest : Tea.TeaModel {
    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var order: String?

    public var orderField: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var playbookExecutionEndTime: Int64?

    public var playbookExecutionStartTime: Int64?

    public var playbookName: String?

    public var playbookParamTypesShrink: String?

    public var playbookStatus: Int32?

    public var playbookType: String?

    public var playbookUuidsShrink: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.playbookExecutionEndTime != nil {
            map["PlaybookExecutionEndTime"] = self.playbookExecutionEndTime!
        }
        if self.playbookExecutionStartTime != nil {
            map["PlaybookExecutionStartTime"] = self.playbookExecutionStartTime!
        }
        if self.playbookName != nil {
            map["PlaybookName"] = self.playbookName!
        }
        if self.playbookParamTypesShrink != nil {
            map["PlaybookParamTypes"] = self.playbookParamTypesShrink!
        }
        if self.playbookStatus != nil {
            map["PlaybookStatus"] = self.playbookStatus!
        }
        if self.playbookType != nil {
            map["PlaybookType"] = self.playbookType!
        }
        if self.playbookUuidsShrink != nil {
            map["PlaybookUuids"] = self.playbookUuidsShrink!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PlaybookExecutionEndTime"] as? Int64 {
            self.playbookExecutionEndTime = value
        }
        if let value = dict["PlaybookExecutionStartTime"] as? Int64 {
            self.playbookExecutionStartTime = value
        }
        if let value = dict["PlaybookName"] as? String {
            self.playbookName = value
        }
        if let value = dict["PlaybookParamTypes"] as? String {
            self.playbookParamTypesShrink = value
        }
        if let value = dict["PlaybookStatus"] as? Int32 {
            self.playbookStatus = value
        }
        if let value = dict["PlaybookType"] as? String {
            self.playbookType = value
        }
        if let value = dict["PlaybookUuids"] as? String {
            self.playbookUuidsShrink = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListPlaybooksResponseBody : Tea.TeaModel {
    public class Playbooks : Tea.TeaModel {
        public var createTime: Int64?

        public var playbookDescription: String?

        public var playbookExtension: String?

        public var playbookInputConfigs: [FieldInputConfig]?

        public var playbookName: String?

        public var playbookOutputConfigs: [FieldOutputConfig]?

        public var playbookParamType: String?

        public var playbookStatus: Int32?

        public var playbookType: String?

        public var playbookUuid: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.playbookDescription != nil {
                map["PlaybookDescription"] = self.playbookDescription!
            }
            if self.playbookExtension != nil {
                map["PlaybookExtension"] = self.playbookExtension!
            }
            if self.playbookInputConfigs != nil {
                var tmp : [Any] = []
                for k in self.playbookInputConfigs! {
                    tmp.append(k.toMap())
                }
                map["PlaybookInputConfigs"] = tmp
            }
            if self.playbookName != nil {
                map["PlaybookName"] = self.playbookName!
            }
            if self.playbookOutputConfigs != nil {
                var tmp : [Any] = []
                for k in self.playbookOutputConfigs! {
                    tmp.append(k.toMap())
                }
                map["PlaybookOutputConfigs"] = tmp
            }
            if self.playbookParamType != nil {
                map["PlaybookParamType"] = self.playbookParamType!
            }
            if self.playbookStatus != nil {
                map["PlaybookStatus"] = self.playbookStatus!
            }
            if self.playbookType != nil {
                map["PlaybookType"] = self.playbookType!
            }
            if self.playbookUuid != nil {
                map["PlaybookUuid"] = self.playbookUuid!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["PlaybookDescription"] as? String {
                self.playbookDescription = value
            }
            if let value = dict["PlaybookExtension"] as? String {
                self.playbookExtension = value
            }
            if let value = dict["PlaybookInputConfigs"] as? [Any?] {
                var tmp : [FieldInputConfig] = []
                for v in value {
                    if v != nil {
                        var model = FieldInputConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.playbookInputConfigs = tmp
            }
            if let value = dict["PlaybookName"] as? String {
                self.playbookName = value
            }
            if let value = dict["PlaybookOutputConfigs"] as? [Any?] {
                var tmp : [FieldOutputConfig] = []
                for v in value {
                    if v != nil {
                        var model = FieldOutputConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.playbookOutputConfigs = tmp
            }
            if let value = dict["PlaybookParamType"] as? String {
                self.playbookParamType = value
            }
            if let value = dict["PlaybookStatus"] as? Int32 {
                self.playbookStatus = value
            }
            if let value = dict["PlaybookType"] as? String {
                self.playbookType = value
            }
            if let value = dict["PlaybookUuid"] as? String {
                self.playbookUuid = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var playbooks: [ListPlaybooksResponseBody.Playbooks]?

    public var requestId: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.playbooks != nil {
            var tmp : [Any] = []
            for k in self.playbooks! {
                tmp.append(k.toMap())
            }
            map["Playbooks"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Playbooks"] as? [Any?] {
            var tmp : [ListPlaybooksResponseBody.Playbooks] = []
            for v in value {
                if v != nil {
                    var model = ListPlaybooksResponseBody.Playbooks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.playbooks = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListPlaybooksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPlaybooksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPlaybooksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateComponentAssetRequest : Tea.TeaModel {
    public class ComponentAssetValues : Tea.TeaModel {
        public var fieldName: String?

        public var fieldValue: String?

        public override init() {
            super.init()
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
                map["FieldName"] = self.fieldName!
            }
            if self.fieldValue != nil {
                map["FieldValue"] = self.fieldValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FieldName"] as? String {
                self.fieldName = value
            }
            if let value = dict["FieldValue"] as? String {
                self.fieldValue = value
            }
        }
    }
    public var componentAssetName: String?

    public var componentAssetUuid: String?

    public var componentAssetValues: [UpdateComponentAssetRequest.ComponentAssetValues]?

    public var lang: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentAssetName != nil {
            map["ComponentAssetName"] = self.componentAssetName!
        }
        if self.componentAssetUuid != nil {
            map["ComponentAssetUuid"] = self.componentAssetUuid!
        }
        if self.componentAssetValues != nil {
            var tmp : [Any] = []
            for k in self.componentAssetValues! {
                tmp.append(k.toMap())
            }
            map["ComponentAssetValues"] = tmp
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComponentAssetName"] as? String {
            self.componentAssetName = value
        }
        if let value = dict["ComponentAssetUuid"] as? String {
            self.componentAssetUuid = value
        }
        if let value = dict["ComponentAssetValues"] as? [Any?] {
            var tmp : [UpdateComponentAssetRequest.ComponentAssetValues] = []
            for v in value {
                if v != nil {
                    var model = UpdateComponentAssetRequest.ComponentAssetValues()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.componentAssetValues = tmp
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class UpdateComponentAssetResponseBody : Tea.TeaModel {
    public var componentAssetUuid: String?

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
        if self.componentAssetUuid != nil {
            map["ComponentAssetUuid"] = self.componentAssetUuid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComponentAssetUuid"] as? String {
            self.componentAssetUuid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateComponentAssetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateComponentAssetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateComponentAssetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePlaybookRequest : Tea.TeaModel {
    public var lang: String?

    public var playbookDescription: String?

    public var playbookInputConfigs: [FieldInputConfig]?

    public var playbookName: String?

    public var playbookOutputConfigs: [FieldOutputConfig]?

    public var playbookParamType: String?

    public var playbookTaskFlow: String?

    public var playbookUuid: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.playbookDescription != nil {
            map["PlaybookDescription"] = self.playbookDescription!
        }
        if self.playbookInputConfigs != nil {
            var tmp : [Any] = []
            for k in self.playbookInputConfigs! {
                tmp.append(k.toMap())
            }
            map["PlaybookInputConfigs"] = tmp
        }
        if self.playbookName != nil {
            map["PlaybookName"] = self.playbookName!
        }
        if self.playbookOutputConfigs != nil {
            var tmp : [Any] = []
            for k in self.playbookOutputConfigs! {
                tmp.append(k.toMap())
            }
            map["PlaybookOutputConfigs"] = tmp
        }
        if self.playbookParamType != nil {
            map["PlaybookParamType"] = self.playbookParamType!
        }
        if self.playbookTaskFlow != nil {
            map["PlaybookTaskFlow"] = self.playbookTaskFlow!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PlaybookDescription"] as? String {
            self.playbookDescription = value
        }
        if let value = dict["PlaybookInputConfigs"] as? [Any?] {
            var tmp : [FieldInputConfig] = []
            for v in value {
                if v != nil {
                    var model = FieldInputConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.playbookInputConfigs = tmp
        }
        if let value = dict["PlaybookName"] as? String {
            self.playbookName = value
        }
        if let value = dict["PlaybookOutputConfigs"] as? [Any?] {
            var tmp : [FieldOutputConfig] = []
            for v in value {
                if v != nil {
                    var model = FieldOutputConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.playbookOutputConfigs = tmp
        }
        if let value = dict["PlaybookParamType"] as? String {
            self.playbookParamType = value
        }
        if let value = dict["PlaybookTaskFlow"] as? String {
            self.playbookTaskFlow = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class UpdatePlaybookShrinkRequest : Tea.TeaModel {
    public var lang: String?

    public var playbookDescription: String?

    public var playbookInputConfigsShrink: String?

    public var playbookName: String?

    public var playbookOutputConfigsShrink: String?

    public var playbookParamType: String?

    public var playbookTaskFlow: String?

    public var playbookUuid: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.playbookDescription != nil {
            map["PlaybookDescription"] = self.playbookDescription!
        }
        if self.playbookInputConfigsShrink != nil {
            map["PlaybookInputConfigs"] = self.playbookInputConfigsShrink!
        }
        if self.playbookName != nil {
            map["PlaybookName"] = self.playbookName!
        }
        if self.playbookOutputConfigsShrink != nil {
            map["PlaybookOutputConfigs"] = self.playbookOutputConfigsShrink!
        }
        if self.playbookParamType != nil {
            map["PlaybookParamType"] = self.playbookParamType!
        }
        if self.playbookTaskFlow != nil {
            map["PlaybookTaskFlow"] = self.playbookTaskFlow!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PlaybookDescription"] as? String {
            self.playbookDescription = value
        }
        if let value = dict["PlaybookInputConfigs"] as? String {
            self.playbookInputConfigsShrink = value
        }
        if let value = dict["PlaybookName"] as? String {
            self.playbookName = value
        }
        if let value = dict["PlaybookOutputConfigs"] as? String {
            self.playbookOutputConfigsShrink = value
        }
        if let value = dict["PlaybookParamType"] as? String {
            self.playbookParamType = value
        }
        if let value = dict["PlaybookTaskFlow"] as? String {
            self.playbookTaskFlow = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class UpdatePlaybookResponseBody : Tea.TeaModel {
    public var playbookUuid: String?

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
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdatePlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePlaybookResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePlaybookResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
