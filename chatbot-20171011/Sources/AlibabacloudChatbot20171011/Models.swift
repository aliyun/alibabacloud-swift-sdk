import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Children : Tea.TeaModel {
    public var areaCode: String?

    public var categoryId: Int64?

    public var childrens: [Children]?

    public var name: String?

    public var parentCategoryId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.areaCode != nil {
            map["AreaCode"] = self.areaCode!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.childrens != nil {
            var tmp : [Any] = []
            for k in self.childrens! {
                tmp.append(k.toMap())
            }
            map["Childrens"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parentCategoryId != nil {
            map["ParentCategoryId"] = self.parentCategoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AreaCode") && dict["AreaCode"] != nil {
            self.areaCode = dict["AreaCode"] as! String
        }
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("Childrens") && dict["Childrens"] != nil {
            var tmp : [Children] = []
            for v in dict["Childrens"] as! [Any] {
                var model = Children()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.childrens = tmp
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParentCategoryId") && dict["ParentCategoryId"] != nil {
            self.parentCategoryId = dict["ParentCategoryId"] as! Int64
        }
    }
}

public class IntentCreateDTO : Tea.TeaModel {
    public var intentId: Int64?

    public var name: String?

    public var ruleCheck: [RuleMtopDTO]?

    public var slot: [SlotrecordMtopDTO]?

    public var userSay: [UsersayMtopDTO]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ruleCheck != nil {
            var tmp : [Any] = []
            for k in self.ruleCheck! {
                tmp.append(k.toMap())
            }
            map["RuleCheck"] = tmp
        }
        if self.slot != nil {
            var tmp : [Any] = []
            for k in self.slot! {
                tmp.append(k.toMap())
            }
            map["Slot"] = tmp
        }
        if self.userSay != nil {
            var tmp : [Any] = []
            for k in self.userSay! {
                tmp.append(k.toMap())
            }
            map["UserSay"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RuleCheck") && dict["RuleCheck"] != nil {
            var tmp : [RuleMtopDTO] = []
            for v in dict["RuleCheck"] as! [Any] {
                var model = RuleMtopDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleCheck = tmp
        }
        if dict.keys.contains("Slot") && dict["Slot"] != nil {
            var tmp : [SlotrecordMtopDTO] = []
            for v in dict["Slot"] as! [Any] {
                var model = SlotrecordMtopDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.slot = tmp
        }
        if dict.keys.contains("UserSay") && dict["UserSay"] != nil {
            var tmp : [UsersayMtopDTO] = []
            for v in dict["UserSay"] as! [Any] {
                var model = UsersayMtopDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userSay = tmp
        }
    }
}

public class PaasButtonDTO : Tea.TeaModel {
    public var name: String?

    public var text: String?

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
            map["Name"] = self.name!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Text") && dict["Text"] != nil {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class PaasButtonListDTO : Tea.TeaModel {
    public var button: [PaasButtonDTO]?

    public var intro: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.button != nil {
            var tmp : [Any] = []
            for k in self.button! {
                tmp.append(k.toMap())
            }
            map["Button"] = tmp
        }
        if self.intro != nil {
            map["Intro"] = self.intro!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Button") && dict["Button"] != nil {
            var tmp : [PaasButtonDTO] = []
            for v in dict["Button"] as! [Any] {
                var model = PaasButtonDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.button = tmp
        }
        if dict.keys.contains("Intro") && dict["Intro"] != nil {
            self.intro = dict["Intro"] as! String
        }
    }
}

public class PaasConditionEntryDTO : Tea.TeaModel {
    public var id: String?

    public var name: String?

    public var term: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.term != nil {
            map["Term"] = self.term!
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
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Term") && dict["Term"] != nil {
            self.term = dict["Term"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class PaasConditionSetDTO : Tea.TeaModel {
    public var conditionEntries: [PaasConditionEntryDTO]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conditionEntries != nil {
            var tmp : [Any] = []
            for k in self.conditionEntries! {
                tmp.append(k.toMap())
            }
            map["ConditionEntries"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConditionEntries") && dict["ConditionEntries"] != nil {
            var tmp : [PaasConditionEntryDTO] = []
            for v in dict["ConditionEntries"] as! [Any] {
                var model = PaasConditionEntryDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.conditionEntries = tmp
        }
    }
}

public class PaasEdgeDTO : Tea.TeaModel {
    public var id: String?

    public var label: String?

    public var source: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Target") && dict["Target"] != nil {
            self.target = dict["Target"] as! String
        }
    }
}

public class PaasEntryDTO : Tea.TeaModel {
    public var pluginFieldDataEntry: PaasEntryPluginFieldDataDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pluginFieldDataEntry?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pluginFieldDataEntry != nil {
            map["PluginFieldDataEntry"] = self.pluginFieldDataEntry?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PluginFieldDataEntry") && dict["PluginFieldDataEntry"] != nil {
            var model = PaasEntryPluginFieldDataDTO()
            model.fromMap(dict["PluginFieldDataEntry"] as! [String: Any])
            self.pluginFieldDataEntry = model
        }
    }
}

public class PaasEntryPluginFieldDataDTO : Tea.TeaModel {
    public var contentEntry: [PaasConditionSetDTO]?

    public var lifeSpan: Int64?

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
        if self.contentEntry != nil {
            var tmp : [Any] = []
            for k in self.contentEntry! {
                tmp.append(k.toMap())
            }
            map["ContentEntry"] = tmp
        }
        if self.lifeSpan != nil {
            map["LifeSpan"] = self.lifeSpan!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContentEntry") && dict["ContentEntry"] != nil {
            var tmp : [PaasConditionSetDTO] = []
            for v in dict["ContentEntry"] as! [Any] {
                var model = PaasConditionSetDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.contentEntry = tmp
        }
        if dict.keys.contains("LifeSpan") && dict["LifeSpan"] != nil {
            self.lifeSpan = dict["LifeSpan"] as! Int64
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class PaasFunctionDTO : Tea.TeaModel {
    public var pluginFieldDataFunction: PaasFunctionPluginFieldDataDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pluginFieldDataFunction?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pluginFieldDataFunction != nil {
            map["PluginFieldDataFunction"] = self.pluginFieldDataFunction?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PluginFieldDataFunction") && dict["PluginFieldDataFunction"] != nil {
            var model = PaasFunctionPluginFieldDataDTO()
            model.fromMap(dict["PluginFieldDataFunction"] as! [String: Any])
            self.pluginFieldDataFunction = model
        }
    }
}

public class PaasFunctionPluginFieldDataDTO : Tea.TeaModel {
    public var aliyunFunction: String?

    public var aliyunService: String?

    public var code: String?

    public var description_: String?

    public var endPoint: String?

    public var function: String?

    public var name: String?

    public var params: [String: Any]?

    public var switch_: [PaasSwitchCaseDTO]?

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
        if self.aliyunFunction != nil {
            map["AliyunFunction"] = self.aliyunFunction!
        }
        if self.aliyunService != nil {
            map["AliyunService"] = self.aliyunService!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endPoint != nil {
            map["EndPoint"] = self.endPoint!
        }
        if self.function != nil {
            map["Function"] = self.function!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.switch_ != nil {
            var tmp : [Any] = []
            for k in self.switch_! {
                tmp.append(k.toMap())
            }
            map["Switch"] = tmp
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliyunFunction") && dict["AliyunFunction"] != nil {
            self.aliyunFunction = dict["AliyunFunction"] as! String
        }
        if dict.keys.contains("AliyunService") && dict["AliyunService"] != nil {
            self.aliyunService = dict["AliyunService"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndPoint") && dict["EndPoint"] != nil {
            self.endPoint = dict["EndPoint"] as! String
        }
        if dict.keys.contains("Function") && dict["Function"] != nil {
            self.function = dict["Function"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Params") && dict["Params"] != nil {
            self.params = dict["Params"] as! [String: Any]
        }
        if dict.keys.contains("Switch") && dict["Switch"] != nil {
            var tmp : [PaasSwitchCaseDTO] = []
            for v in dict["Switch"] as! [Any] {
                var model = PaasSwitchCaseDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.switch_ = tmp
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class PaasFunctionPluginParams : Tea.TeaModel {
    public var body: String?

    public var header: [String: String]?

    public var method: String?

    public var query: [String: String]?

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
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.header != nil {
            map["Header"] = self.header!
        }
        if self.method != nil {
            map["Method"] = self.method!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Body") && dict["Body"] != nil {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("Header") && dict["Header"] != nil {
            self.header = dict["Header"] as! [String: String]
        }
        if dict.keys.contains("Method") && dict["Method"] != nil {
            self.method = dict["Method"] as! String
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! [String: String]
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class PaasNodeDTO : Tea.TeaModel {
    public var code: String?

    public var id: String?

    public var label: String?

    public var pluginData: PaasPluginDataDTO?

    public var xx: Double?

    public var yy: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pluginData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.pluginData != nil {
            map["PluginData"] = self.pluginData?.toMap()
        }
        if self.xx != nil {
            map["Xx"] = self.xx!
        }
        if self.yy != nil {
            map["Yy"] = self.yy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("PluginData") && dict["PluginData"] != nil {
            var model = PaasPluginDataDTO()
            model.fromMap(dict["PluginData"] as! [String: Any])
            self.pluginData = model
        }
        if dict.keys.contains("Xx") && dict["Xx"] != nil {
            self.xx = dict["Xx"] as! Double
        }
        if dict.keys.contains("Yy") && dict["Yy"] != nil {
            self.yy = dict["Yy"] as! Double
        }
    }
}

public class PaasPluginDataDTO : Tea.TeaModel {
    public var entry: PaasEntryDTO?

    public var function: PaasFunctionDTO?

    public var response: PaasResponseDTO?

    public var slot: PaasSlotDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.entry?.validate()
        try self.function?.validate()
        try self.response?.validate()
        try self.slot?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entry != nil {
            map["Entry"] = self.entry?.toMap()
        }
        if self.function != nil {
            map["Function"] = self.function?.toMap()
        }
        if self.response != nil {
            map["Response"] = self.response?.toMap()
        }
        if self.slot != nil {
            map["Slot"] = self.slot?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Entry") && dict["Entry"] != nil {
            var model = PaasEntryDTO()
            model.fromMap(dict["Entry"] as! [String: Any])
            self.entry = model
        }
        if dict.keys.contains("Function") && dict["Function"] != nil {
            var model = PaasFunctionDTO()
            model.fromMap(dict["Function"] as! [String: Any])
            self.function = model
        }
        if dict.keys.contains("Response") && dict["Response"] != nil {
            var model = PaasResponseDTO()
            model.fromMap(dict["Response"] as! [String: Any])
            self.response = model
        }
        if dict.keys.contains("Slot") && dict["Slot"] != nil {
            var model = PaasSlotDTO()
            model.fromMap(dict["Slot"] as! [String: Any])
            self.slot = model
        }
    }
}

public class PaasProcessData : Tea.TeaModel {
    public var edges: [PaasEdgeDTO]?

    public var nodes: [PaasNodeDTO]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.edges != nil {
            var tmp : [Any] = []
            for k in self.edges! {
                tmp.append(k.toMap())
            }
            map["Edges"] = tmp
        }
        if self.nodes != nil {
            var tmp : [Any] = []
            for k in self.nodes! {
                tmp.append(k.toMap())
            }
            map["Nodes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Edges") && dict["Edges"] != nil {
            var tmp : [PaasEdgeDTO] = []
            for v in dict["Edges"] as! [Any] {
                var model = PaasEdgeDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.edges = tmp
        }
        if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
            var tmp : [PaasNodeDTO] = []
            for v in dict["Nodes"] as! [Any] {
                var model = PaasNodeDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodes = tmp
        }
    }
}

public class PaasResponseDTO : Tea.TeaModel {
    public var pluginFieldDataResponse: PaasResponsePluginFieldDataDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pluginFieldDataResponse?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pluginFieldDataResponse != nil {
            map["PluginFieldDataResponse"] = self.pluginFieldDataResponse?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PluginFieldDataResponse") && dict["PluginFieldDataResponse"] != nil {
            var model = PaasResponsePluginFieldDataDTO()
            model.fromMap(dict["PluginFieldDataResponse"] as! [String: Any])
            self.pluginFieldDataResponse = model
        }
    }
}

public class PaasResponseNodeContentDTO : Tea.TeaModel {
    public var buttonList: PaasButtonListDTO?

    public var image: String?

    public var text: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.buttonList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buttonList != nil {
            map["ButtonList"] = self.buttonList?.toMap()
        }
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ButtonList") && dict["ButtonList"] != nil {
            var model = PaasButtonListDTO()
            model.fromMap(dict["ButtonList"] as! [String: Any])
            self.buttonList = model
        }
        if dict.keys.contains("Image") && dict["Image"] != nil {
            self.image = dict["Image"] as! String
        }
        if dict.keys.contains("Text") && dict["Text"] != nil {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class PaasResponsePluginFieldDataDTO : Tea.TeaModel {
    public var contentResponse: PaasResponseNodeContentDTO?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.contentResponse?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentResponse != nil {
            map["ContentResponse"] = self.contentResponse?.toMap()
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContentResponse") && dict["ContentResponse"] != nil {
            var model = PaasResponseNodeContentDTO()
            model.fromMap(dict["ContentResponse"] as! [String: Any])
            self.contentResponse = model
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class PaasSlotConfigDTO : Tea.TeaModel {
    public var isArray: Bool?

    public var isNecessary: Bool?

    public var lifeSpan: Int32?

    public var name: String?

    public var question: [String]?

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
        if self.isArray != nil {
            map["IsArray"] = self.isArray!
        }
        if self.isNecessary != nil {
            map["IsNecessary"] = self.isNecessary!
        }
        if self.lifeSpan != nil {
            map["LifeSpan"] = self.lifeSpan!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.question != nil {
            map["Question"] = self.question!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsArray") && dict["IsArray"] != nil {
            self.isArray = dict["IsArray"] as! Bool
        }
        if dict.keys.contains("IsNecessary") && dict["IsNecessary"] != nil {
            self.isNecessary = dict["IsNecessary"] as! Bool
        }
        if dict.keys.contains("LifeSpan") && dict["LifeSpan"] != nil {
            self.lifeSpan = dict["LifeSpan"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Question") && dict["Question"] != nil {
            self.question = dict["Question"] as! [String]
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class PaasSlotDTO : Tea.TeaModel {
    public var pluginFieldDataSlot: PaasSlotPluginFieldDataDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pluginFieldDataSlot?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pluginFieldDataSlot != nil {
            map["PluginFieldDataSlot"] = self.pluginFieldDataSlot?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PluginFieldDataSlot") && dict["PluginFieldDataSlot"] != nil {
            var model = PaasSlotPluginFieldDataDTO()
            model.fromMap(dict["PluginFieldDataSlot"] as! [String: Any])
            self.pluginFieldDataSlot = model
        }
    }
}

public class PaasSlotPluginFieldDataDTO : Tea.TeaModel {
    public var contentSlot: [PaasSlotConfigDTO]?

    public var intentId: String?

    public var intentName: String?

    public var isSysIntent: Bool?

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
        if self.contentSlot != nil {
            var tmp : [Any] = []
            for k in self.contentSlot! {
                tmp.append(k.toMap())
            }
            map["ContentSlot"] = tmp
        }
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        if self.intentName != nil {
            map["IntentName"] = self.intentName!
        }
        if self.isSysIntent != nil {
            map["IsSysIntent"] = self.isSysIntent!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContentSlot") && dict["ContentSlot"] != nil {
            var tmp : [PaasSlotConfigDTO] = []
            for v in dict["ContentSlot"] as! [Any] {
                var model = PaasSlotConfigDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.contentSlot = tmp
        }
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! String
        }
        if dict.keys.contains("IntentName") && dict["IntentName"] != nil {
            self.intentName = dict["IntentName"] as! String
        }
        if dict.keys.contains("IsSysIntent") && dict["IsSysIntent"] != nil {
            self.isSysIntent = dict["IsSysIntent"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class PaasSwitchCaseDTO : Tea.TeaModel {
    public var id: String?

    public var label: String?

    public var type: String?

    public var value: String?

    public var variableName: String?

    public override init() {
        super.init()
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
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        if self.variableName != nil {
            map["VariableName"] = self.variableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
        if dict.keys.contains("VariableName") && dict["VariableName"] != nil {
            self.variableName = dict["VariableName"] as! String
        }
    }
}

public class RuleMtopDTO : Tea.TeaModel {
    public var error: [String]?

    public var strict: Bool?

    public var text: String?

    public var warning: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.strict != nil {
            map["Strict"] = self.strict!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.warning != nil {
            map["Warning"] = self.warning!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Error") && dict["Error"] != nil {
            self.error = dict["Error"] as! [String]
        }
        if dict.keys.contains("Strict") && dict["Strict"] != nil {
            self.strict = dict["Strict"] as! Bool
        }
        if dict.keys.contains("Text") && dict["Text"] != nil {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("Warning") && dict["Warning"] != nil {
            self.warning = dict["Warning"] as! [String]
        }
    }
}

public class SectionMtopDTO : Tea.TeaModel {
    public var slotId: String?

    public var text: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.slotId != nil {
            map["SlotId"] = self.slotId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SlotId") && dict["SlotId"] != nil {
            self.slotId = dict["SlotId"] as! String
        }
        if dict.keys.contains("Text") && dict["Text"] != nil {
            self.text = dict["Text"] as! String
        }
    }
}

public class SlotrecordMtopDTO : Tea.TeaModel {
    public var id: String?

    public var isArray: Bool?

    public var isNecessary: Bool?

    public var lifeSpan: Int32?

    public var name: String?

    public var question: [String]?

    public var tags: [TagMtopDTO]?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.isArray != nil {
            map["IsArray"] = self.isArray!
        }
        if self.isNecessary != nil {
            map["IsNecessary"] = self.isNecessary!
        }
        if self.lifeSpan != nil {
            map["LifeSpan"] = self.lifeSpan!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.question != nil {
            map["Question"] = self.question!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("IsArray") && dict["IsArray"] != nil {
            self.isArray = dict["IsArray"] as! Bool
        }
        if dict.keys.contains("IsNecessary") && dict["IsNecessary"] != nil {
            self.isNecessary = dict["IsNecessary"] as! Bool
        }
        if dict.keys.contains("LifeSpan") && dict["LifeSpan"] != nil {
            self.lifeSpan = dict["LifeSpan"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Question") && dict["Question"] != nil {
            self.question = dict["Question"] as! [String]
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var tmp : [TagMtopDTO] = []
            for v in dict["Tags"] as! [Any] {
                var model = TagMtopDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class TagMtopDTO : Tea.TeaModel {
    public var userSayId: String?

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
        if self.userSayId != nil {
            map["UserSayId"] = self.userSayId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserSayId") && dict["UserSayId"] != nil {
            self.userSayId = dict["UserSayId"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class UpdateDialogFlowModuleDefinition : Tea.TeaModel {
    public var edges: [PaasEdgeDTO]?

    public var nodes: [PaasNodeDTO]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.edges != nil {
            var tmp : [Any] = []
            for k in self.edges! {
                tmp.append(k.toMap())
            }
            map["Edges"] = tmp
        }
        if self.nodes != nil {
            var tmp : [Any] = []
            for k in self.nodes! {
                tmp.append(k.toMap())
            }
            map["Nodes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Edges") && dict["Edges"] != nil {
            var tmp : [PaasEdgeDTO] = []
            for v in dict["Edges"] as! [Any] {
                var model = PaasEdgeDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.edges = tmp
        }
        if dict.keys.contains("Nodes") && dict["Nodes"] != nil {
            var tmp : [PaasNodeDTO] = []
            for v in dict["Nodes"] as! [Any] {
                var model = PaasNodeDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodes = tmp
        }
    }
}

public class UsersayMtopDTO : Tea.TeaModel {
    public var data: [SectionMtopDTO]?

    public var id: String?

    public var strict: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.strict != nil {
            map["Strict"] = self.strict!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [SectionMtopDTO] = []
            for v in dict["Data"] as! [Any] {
                var model = SectionMtopDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Strict") && dict["Strict"] != nil {
            self.strict = dict["Strict"] as! Bool
        }
    }
}

public class ActivatePerspectiveRequest : Tea.TeaModel {
    public var agentKey: String?

    public var perspectiveId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.perspectiveId != nil {
            map["PerspectiveId"] = self.perspectiveId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PerspectiveId") && dict["PerspectiveId"] != nil {
            self.perspectiveId = dict["PerspectiveId"] as! String
        }
    }
}

public class ActivatePerspectiveResponseBody : Tea.TeaModel {
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

public class ActivatePerspectiveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActivatePerspectiveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ActivatePerspectiveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddSynonymRequest : Tea.TeaModel {
    public var agentKey: String?

    public var coreWordName: String?

    public var synonym: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.coreWordName != nil {
            map["CoreWordName"] = self.coreWordName!
        }
        if self.synonym != nil {
            map["Synonym"] = self.synonym!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CoreWordName") && dict["CoreWordName"] != nil {
            self.coreWordName = dict["CoreWordName"] as! String
        }
        if dict.keys.contains("Synonym") && dict["Synonym"] != nil {
            self.synonym = dict["Synonym"] as! String
        }
    }
}

public class AddSynonymResponseBody : Tea.TeaModel {
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

public class AddSynonymResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddSynonymResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddSynonymResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AppendEntityMemberRequest : Tea.TeaModel {
    public class Member : Tea.TeaModel {
        public var memberName: String?

        public var synonyms: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.memberName != nil {
                map["MemberName"] = self.memberName!
            }
            if self.synonyms != nil {
                map["Synonyms"] = self.synonyms!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberName") && dict["MemberName"] != nil {
                self.memberName = dict["MemberName"] as! String
            }
            if dict.keys.contains("Synonyms") && dict["Synonyms"] != nil {
                self.synonyms = dict["Synonyms"] as! [String]
            }
        }
    }
    public var agentKey: String?

    public var applyType: String?

    public var entityId: Int64?

    public var member: AppendEntityMemberRequest.Member?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.member?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.applyType != nil {
            map["ApplyType"] = self.applyType!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.member != nil {
            map["Member"] = self.member?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ApplyType") && dict["ApplyType"] != nil {
            self.applyType = dict["ApplyType"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("Member") && dict["Member"] != nil {
            var model = AppendEntityMemberRequest.Member()
            model.fromMap(dict["Member"] as! [String: Any])
            self.member = model
        }
    }
}

public class AppendEntityMemberShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var applyType: String?

    public var entityId: Int64?

    public var memberShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.applyType != nil {
            map["ApplyType"] = self.applyType!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.memberShrink != nil {
            map["Member"] = self.memberShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("ApplyType") && dict["ApplyType"] != nil {
            self.applyType = dict["ApplyType"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("Member") && dict["Member"] != nil {
            self.memberShrink = dict["Member"] as! String
        }
    }
}

public class AppendEntityMemberResponseBody : Tea.TeaModel {
    public var entityId: Int64?

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
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AppendEntityMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AppendEntityMemberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AppendEntityMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var perspective: [String]?

    public var recommendNum: Int32?

    public var sessionId: String?

    public var utterance: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.perspective != nil {
            map["Perspective"] = self.perspective!
        }
        if self.recommendNum != nil {
            map["RecommendNum"] = self.recommendNum!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.utterance != nil {
            map["Utterance"] = self.utterance!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Perspective") && dict["Perspective"] != nil {
            self.perspective = dict["Perspective"] as! [String]
        }
        if dict.keys.contains("RecommendNum") && dict["RecommendNum"] != nil {
            self.recommendNum = dict["RecommendNum"] as! Int32
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Utterance") && dict["Utterance"] != nil {
            self.utterance = dict["Utterance"] as! String
        }
    }
}

public class AssociateResponseBody : Tea.TeaModel {
    public class Associate : Tea.TeaModel {
        public var title: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var associate: [AssociateResponseBody.Associate]?

    public var messageId: String?

    public var requestId: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.associate != nil {
            var tmp : [Any] = []
            for k in self.associate! {
                tmp.append(k.toMap())
            }
            map["Associate"] = tmp
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Associate") && dict["Associate"] != nil {
            var tmp : [AssociateResponseBody.Associate] = []
            for v in dict["Associate"] as! [Any] {
                var model = AssociateResponseBody.Associate()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.associate = tmp
        }
        if dict.keys.contains("MessageId") && dict["MessageId"] != nil {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class AssociateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AssociateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChatRequest : Tea.TeaModel {
    public var agentKey: String?

    public var instanceId: String?

    public var intentName: String?

    public var knowledgeId: String?

    public var perspective: [String]?

    public var senderId: String?

    public var senderNick: String?

    public var sessionId: String?

    public var tag: String?

    public var utterance: String?

    public var vendorParam: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentName != nil {
            map["IntentName"] = self.intentName!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.perspective != nil {
            map["Perspective"] = self.perspective!
        }
        if self.senderId != nil {
            map["SenderId"] = self.senderId!
        }
        if self.senderNick != nil {
            map["SenderNick"] = self.senderNick!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        if self.utterance != nil {
            map["Utterance"] = self.utterance!
        }
        if self.vendorParam != nil {
            map["VendorParam"] = self.vendorParam!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentName") && dict["IntentName"] != nil {
            self.intentName = dict["IntentName"] as! String
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! String
        }
        if dict.keys.contains("Perspective") && dict["Perspective"] != nil {
            self.perspective = dict["Perspective"] as! [String]
        }
        if dict.keys.contains("SenderId") && dict["SenderId"] != nil {
            self.senderId = dict["SenderId"] as! String
        }
        if dict.keys.contains("SenderNick") && dict["SenderNick"] != nil {
            self.senderNick = dict["SenderNick"] as! String
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
        }
        if dict.keys.contains("Utterance") && dict["Utterance"] != nil {
            self.utterance = dict["Utterance"] as! String
        }
        if dict.keys.contains("VendorParam") && dict["VendorParam"] != nil {
            self.vendorParam = dict["VendorParam"] as! String
        }
    }
}

public class ChatResponseBody : Tea.TeaModel {
    public class Messages : Tea.TeaModel {
        public class Knowledge : Tea.TeaModel {
            public class RelatedKnowledges : Tea.TeaModel {
                public var knowledgeId: String?

                public var title: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.knowledgeId != nil {
                        map["KnowledgeId"] = self.knowledgeId!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
                        self.knowledgeId = dict["KnowledgeId"] as! String
                    }
                    if dict.keys.contains("Title") && dict["Title"] != nil {
                        self.title = dict["Title"] as! String
                    }
                }
            }
            public var answerSource: String?

            public var category: String?

            public var content: String?

            public var contentType: String?

            public var hitStatement: String?

            public var id: String?

            public var relatedKnowledges: [ChatResponseBody.Messages.Knowledge.RelatedKnowledges]?

            public var score: Double?

            public var summary: String?

            public var title: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerSource != nil {
                    map["AnswerSource"] = self.answerSource!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.contentType != nil {
                    map["ContentType"] = self.contentType!
                }
                if self.hitStatement != nil {
                    map["HitStatement"] = self.hitStatement!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.relatedKnowledges != nil {
                    var tmp : [Any] = []
                    for k in self.relatedKnowledges! {
                        tmp.append(k.toMap())
                    }
                    map["RelatedKnowledges"] = tmp
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.summary != nil {
                    map["Summary"] = self.summary!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AnswerSource") && dict["AnswerSource"] != nil {
                    self.answerSource = dict["AnswerSource"] as! String
                }
                if dict.keys.contains("Category") && dict["Category"] != nil {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("ContentType") && dict["ContentType"] != nil {
                    self.contentType = dict["ContentType"] as! String
                }
                if dict.keys.contains("HitStatement") && dict["HitStatement"] != nil {
                    self.hitStatement = dict["HitStatement"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("RelatedKnowledges") && dict["RelatedKnowledges"] != nil {
                    var tmp : [ChatResponseBody.Messages.Knowledge.RelatedKnowledges] = []
                    for v in dict["RelatedKnowledges"] as! [Any] {
                        var model = ChatResponseBody.Messages.Knowledge.RelatedKnowledges()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.relatedKnowledges = tmp
                }
                if dict.keys.contains("Score") && dict["Score"] != nil {
                    self.score = dict["Score"] as! Double
                }
                if dict.keys.contains("Summary") && dict["Summary"] != nil {
                    self.summary = dict["Summary"] as! String
                }
                if dict.keys.contains("Title") && dict["Title"] != nil {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public class Recommends : Tea.TeaModel {
            public var answerSource: String?

            public var knowledgeId: String?

            public var score: Double?

            public var title: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerSource != nil {
                    map["AnswerSource"] = self.answerSource!
                }
                if self.knowledgeId != nil {
                    map["KnowledgeId"] = self.knowledgeId!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AnswerSource") && dict["AnswerSource"] != nil {
                    self.answerSource = dict["AnswerSource"] as! String
                }
                if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
                    self.knowledgeId = dict["KnowledgeId"] as! String
                }
                if dict.keys.contains("Score") && dict["Score"] != nil {
                    self.score = dict["Score"] as! Double
                }
                if dict.keys.contains("Title") && dict["Title"] != nil {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public class Text : Tea.TeaModel {
            public class Slots : Tea.TeaModel {
                public var isHit: Bool?

                public var name: String?

                public var origin: String?

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
                    if self.isHit != nil {
                        map["IsHit"] = self.isHit!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.origin != nil {
                        map["Origin"] = self.origin!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IsHit") && dict["IsHit"] != nil {
                        self.isHit = dict["IsHit"] as! Bool
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Origin") && dict["Origin"] != nil {
                        self.origin = dict["Origin"] as! String
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var answerSource: String?

            public var articleTitle: String?

            public var commands: [String: Any]?

            public var content: String?

            public var contentType: String?

            public var dialogName: String?

            public var ext: [String: Any]?

            public var externalFlags: [String: Any]?

            public var hitStatement: String?

            public var intentName: String?

            public var metaData: String?

            public var nodeId: String?

            public var nodeName: String?

            public var score: Double?

            public var slots: [ChatResponseBody.Messages.Text.Slots]?

            public var userDefinedChatTitle: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answerSource != nil {
                    map["AnswerSource"] = self.answerSource!
                }
                if self.articleTitle != nil {
                    map["ArticleTitle"] = self.articleTitle!
                }
                if self.commands != nil {
                    map["Commands"] = self.commands!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.contentType != nil {
                    map["ContentType"] = self.contentType!
                }
                if self.dialogName != nil {
                    map["DialogName"] = self.dialogName!
                }
                if self.ext != nil {
                    map["Ext"] = self.ext!
                }
                if self.externalFlags != nil {
                    map["ExternalFlags"] = self.externalFlags!
                }
                if self.hitStatement != nil {
                    map["HitStatement"] = self.hitStatement!
                }
                if self.intentName != nil {
                    map["IntentName"] = self.intentName!
                }
                if self.metaData != nil {
                    map["MetaData"] = self.metaData!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.nodeName != nil {
                    map["NodeName"] = self.nodeName!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.slots != nil {
                    var tmp : [Any] = []
                    for k in self.slots! {
                        tmp.append(k.toMap())
                    }
                    map["Slots"] = tmp
                }
                if self.userDefinedChatTitle != nil {
                    map["UserDefinedChatTitle"] = self.userDefinedChatTitle!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AnswerSource") && dict["AnswerSource"] != nil {
                    self.answerSource = dict["AnswerSource"] as! String
                }
                if dict.keys.contains("ArticleTitle") && dict["ArticleTitle"] != nil {
                    self.articleTitle = dict["ArticleTitle"] as! String
                }
                if dict.keys.contains("Commands") && dict["Commands"] != nil {
                    self.commands = dict["Commands"] as! [String: Any]
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("ContentType") && dict["ContentType"] != nil {
                    self.contentType = dict["ContentType"] as! String
                }
                if dict.keys.contains("DialogName") && dict["DialogName"] != nil {
                    self.dialogName = dict["DialogName"] as! String
                }
                if dict.keys.contains("Ext") && dict["Ext"] != nil {
                    self.ext = dict["Ext"] as! [String: Any]
                }
                if dict.keys.contains("ExternalFlags") && dict["ExternalFlags"] != nil {
                    self.externalFlags = dict["ExternalFlags"] as! [String: Any]
                }
                if dict.keys.contains("HitStatement") && dict["HitStatement"] != nil {
                    self.hitStatement = dict["HitStatement"] as! String
                }
                if dict.keys.contains("IntentName") && dict["IntentName"] != nil {
                    self.intentName = dict["IntentName"] as! String
                }
                if dict.keys.contains("MetaData") && dict["MetaData"] != nil {
                    self.metaData = dict["MetaData"] as! String
                }
                if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
                    self.nodeId = dict["NodeId"] as! String
                }
                if dict.keys.contains("NodeName") && dict["NodeName"] != nil {
                    self.nodeName = dict["NodeName"] as! String
                }
                if dict.keys.contains("Score") && dict["Score"] != nil {
                    self.score = dict["Score"] as! Double
                }
                if dict.keys.contains("Slots") && dict["Slots"] != nil {
                    var tmp : [ChatResponseBody.Messages.Text.Slots] = []
                    for v in dict["Slots"] as! [Any] {
                        var model = ChatResponseBody.Messages.Text.Slots()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.slots = tmp
                }
                if dict.keys.contains("UserDefinedChatTitle") && dict["UserDefinedChatTitle"] != nil {
                    self.userDefinedChatTitle = dict["UserDefinedChatTitle"] as! String
                }
            }
        }
        public class VoiceStrategy : Tea.TeaModel {
            public var asrMaxEndSilence: String?

            public var collectNumber: Bool?

            public var hangUp: Bool?

            public var interruptible: Bool?

            public var maxDigits: Int64?

            public var replyTimeout: Int64?

            public var terminator: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.asrMaxEndSilence != nil {
                    map["AsrMaxEndSilence"] = self.asrMaxEndSilence!
                }
                if self.collectNumber != nil {
                    map["CollectNumber"] = self.collectNumber!
                }
                if self.hangUp != nil {
                    map["HangUp"] = self.hangUp!
                }
                if self.interruptible != nil {
                    map["Interruptible"] = self.interruptible!
                }
                if self.maxDigits != nil {
                    map["MaxDigits"] = self.maxDigits!
                }
                if self.replyTimeout != nil {
                    map["ReplyTimeout"] = self.replyTimeout!
                }
                if self.terminator != nil {
                    map["Terminator"] = self.terminator!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AsrMaxEndSilence") && dict["AsrMaxEndSilence"] != nil {
                    self.asrMaxEndSilence = dict["AsrMaxEndSilence"] as! String
                }
                if dict.keys.contains("CollectNumber") && dict["CollectNumber"] != nil {
                    self.collectNumber = dict["CollectNumber"] as! Bool
                }
                if dict.keys.contains("HangUp") && dict["HangUp"] != nil {
                    self.hangUp = dict["HangUp"] as! Bool
                }
                if dict.keys.contains("Interruptible") && dict["Interruptible"] != nil {
                    self.interruptible = dict["Interruptible"] as! Bool
                }
                if dict.keys.contains("MaxDigits") && dict["MaxDigits"] != nil {
                    self.maxDigits = dict["MaxDigits"] as! Int64
                }
                if dict.keys.contains("ReplyTimeout") && dict["ReplyTimeout"] != nil {
                    self.replyTimeout = dict["ReplyTimeout"] as! Int64
                }
                if dict.keys.contains("Terminator") && dict["Terminator"] != nil {
                    self.terminator = dict["Terminator"] as! String
                }
            }
        }
        public var answerSource: String?

        public var answerType: String?

        public var knowledge: ChatResponseBody.Messages.Knowledge?

        public var recommends: [ChatResponseBody.Messages.Recommends]?

        public var text: ChatResponseBody.Messages.Text?

        public var title: String?

        public var type: String?

        public var voiceStrategy: ChatResponseBody.Messages.VoiceStrategy?

        public var voiceTitle: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.knowledge?.validate()
            try self.text?.validate()
            try self.voiceStrategy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answerSource != nil {
                map["AnswerSource"] = self.answerSource!
            }
            if self.answerType != nil {
                map["AnswerType"] = self.answerType!
            }
            if self.knowledge != nil {
                map["Knowledge"] = self.knowledge?.toMap()
            }
            if self.recommends != nil {
                var tmp : [Any] = []
                for k in self.recommends! {
                    tmp.append(k.toMap())
                }
                map["Recommends"] = tmp
            }
            if self.text != nil {
                map["Text"] = self.text?.toMap()
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.voiceStrategy != nil {
                map["VoiceStrategy"] = self.voiceStrategy?.toMap()
            }
            if self.voiceTitle != nil {
                map["VoiceTitle"] = self.voiceTitle!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AnswerSource") && dict["AnswerSource"] != nil {
                self.answerSource = dict["AnswerSource"] as! String
            }
            if dict.keys.contains("AnswerType") && dict["AnswerType"] != nil {
                self.answerType = dict["AnswerType"] as! String
            }
            if dict.keys.contains("Knowledge") && dict["Knowledge"] != nil {
                var model = ChatResponseBody.Messages.Knowledge()
                model.fromMap(dict["Knowledge"] as! [String: Any])
                self.knowledge = model
            }
            if dict.keys.contains("Recommends") && dict["Recommends"] != nil {
                var tmp : [ChatResponseBody.Messages.Recommends] = []
                for v in dict["Recommends"] as! [Any] {
                    var model = ChatResponseBody.Messages.Recommends()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.recommends = tmp
            }
            if dict.keys.contains("Text") && dict["Text"] != nil {
                var model = ChatResponseBody.Messages.Text()
                model.fromMap(dict["Text"] as! [String: Any])
                self.text = model
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("VoiceStrategy") && dict["VoiceStrategy"] != nil {
                var model = ChatResponseBody.Messages.VoiceStrategy()
                model.fromMap(dict["VoiceStrategy"] as! [String: Any])
                self.voiceStrategy = model
            }
            if dict.keys.contains("VoiceTitle") && dict["VoiceTitle"] != nil {
                self.voiceTitle = dict["VoiceTitle"] as! String
            }
        }
    }
    public var messageId: String?

    public var messages: [ChatResponseBody.Messages]?

    public var requestId: String?

    public var sessionId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.messages != nil {
            var tmp : [Any] = []
            for k in self.messages! {
                tmp.append(k.toMap())
            }
            map["Messages"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MessageId") && dict["MessageId"] != nil {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("Messages") && dict["Messages"] != nil {
            var tmp : [ChatResponseBody.Messages] = []
            for v in dict["Messages"] as! [Any] {
                var model = ChatResponseBody.Messages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.messages = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            self.tag = dict["Tag"] as! String
        }
    }
}

public class ChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBotRequest : Tea.TeaModel {
    public var agentKey: String?

    public var avatar: String?

    public var introduction: String?

    public var languageCode: String?

    public var name: String?

    public var robotType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.avatar != nil {
            map["Avatar"] = self.avatar!
        }
        if self.introduction != nil {
            map["Introduction"] = self.introduction!
        }
        if self.languageCode != nil {
            map["LanguageCode"] = self.languageCode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.robotType != nil {
            map["RobotType"] = self.robotType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Avatar") && dict["Avatar"] != nil {
            self.avatar = dict["Avatar"] as! String
        }
        if dict.keys.contains("Introduction") && dict["Introduction"] != nil {
            self.introduction = dict["Introduction"] as! String
        }
        if dict.keys.contains("LanguageCode") && dict["LanguageCode"] != nil {
            self.languageCode = dict["LanguageCode"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RobotType") && dict["RobotType"] != nil {
            self.robotType = dict["RobotType"] as! String
        }
    }
}

public class CreateBotResponseBody : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateBotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBotResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateBotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCategoryRequest : Tea.TeaModel {
    public var agentKey: String?

    public var name: String?

    public var parentCategoryId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parentCategoryId != nil {
            map["ParentCategoryId"] = self.parentCategoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParentCategoryId") && dict["ParentCategoryId"] != nil {
            self.parentCategoryId = dict["ParentCategoryId"] as! Int64
        }
    }
}

public class CreateCategoryResponseBody : Tea.TeaModel {
    public var categoryId: Int64?

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
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
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
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCategoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCoreWordRequest : Tea.TeaModel {
    public var agentKey: String?

    public var coreWordName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.coreWordName != nil {
            map["CoreWordName"] = self.coreWordName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CoreWordName") && dict["CoreWordName"] != nil {
            self.coreWordName = dict["CoreWordName"] as! String
        }
    }
}

public class CreateCoreWordResponseBody : Tea.TeaModel {
    public var coreWordCode: String?

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
        if self.coreWordCode != nil {
            map["CoreWordCode"] = self.coreWordCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CoreWordCode") && dict["CoreWordCode"] != nil {
            self.coreWordCode = dict["CoreWordCode"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCoreWordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCoreWordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateCoreWordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDialogRequest : Tea.TeaModel {
    public var agentKey: String?

    public var description_: String?

    public var dialogName: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dialogName != nil {
            map["DialogName"] = self.dialogName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DialogName") && dict["DialogName"] != nil {
            self.dialogName = dict["DialogName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class CreateDialogResponseBody : Tea.TeaModel {
    public var dialogId: Int64?

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
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDialogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDialogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDialogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateEntityRequest : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var memberName: String?

        public var synonyms: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.memberName != nil {
                map["MemberName"] = self.memberName!
            }
            if self.synonyms != nil {
                map["Synonyms"] = self.synonyms!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberName") && dict["MemberName"] != nil {
                self.memberName = dict["MemberName"] as! String
            }
            if dict.keys.contains("Synonyms") && dict["Synonyms"] != nil {
                self.synonyms = dict["Synonyms"] as! [String]
            }
        }
    }
    public var agentKey: String?

    public var dialogId: Int64?

    public var entityName: String?

    public var entityType: String?

    public var members: [CreateEntityRequest.Members]?

    public var regex: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        if self.entityName != nil {
            map["EntityName"] = self.entityName!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["Members"] = tmp
        }
        if self.regex != nil {
            map["Regex"] = self.regex!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
        if dict.keys.contains("EntityName") && dict["EntityName"] != nil {
            self.entityName = dict["EntityName"] as! String
        }
        if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [CreateEntityRequest.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = CreateEntityRequest.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.members = tmp
        }
        if dict.keys.contains("Regex") && dict["Regex"] != nil {
            self.regex = dict["Regex"] as! String
        }
    }
}

public class CreateEntityShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dialogId: Int64?

    public var entityName: String?

    public var entityType: String?

    public var membersShrink: String?

    public var regex: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        if self.entityName != nil {
            map["EntityName"] = self.entityName!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.membersShrink != nil {
            map["Members"] = self.membersShrink!
        }
        if self.regex != nil {
            map["Regex"] = self.regex!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
        if dict.keys.contains("EntityName") && dict["EntityName"] != nil {
            self.entityName = dict["EntityName"] as! String
        }
        if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Members") && dict["Members"] != nil {
            self.membersShrink = dict["Members"] as! String
        }
        if dict.keys.contains("Regex") && dict["Regex"] != nil {
            self.regex = dict["Regex"] as! String
        }
    }
}

public class CreateEntityResponseBody : Tea.TeaModel {
    public var entityId: Int64?

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
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEntityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateIntentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dialogId: Int64?

    public var intentDefinition: IntentCreateDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.intentDefinition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        if self.intentDefinition != nil {
            map["IntentDefinition"] = self.intentDefinition?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
        if dict.keys.contains("IntentDefinition") && dict["IntentDefinition"] != nil {
            var model = IntentCreateDTO()
            model.fromMap(dict["IntentDefinition"] as! [String: Any])
            self.intentDefinition = model
        }
    }
}

public class CreateIntentShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dialogId: Int64?

    public var intentDefinitionShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        if self.intentDefinitionShrink != nil {
            map["IntentDefinition"] = self.intentDefinitionShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
        if dict.keys.contains("IntentDefinition") && dict["IntentDefinition"] != nil {
            self.intentDefinitionShrink = dict["IntentDefinition"] as! String
        }
    }
}

public class CreateIntentResponseBody : Tea.TeaModel {
    public var intentId: Int64?

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
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateIntentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIntentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateIntentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateKnowledgeRequest : Tea.TeaModel {
    public class Knowledge : Tea.TeaModel {
        public class Outlines : Tea.TeaModel {
            public var knowledgeId: Int64?

            public var outlineId: Int64?

            public var title: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.knowledgeId != nil {
                    map["KnowledgeId"] = self.knowledgeId!
                }
                if self.outlineId != nil {
                    map["OutlineId"] = self.outlineId!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
                    self.knowledgeId = dict["KnowledgeId"] as! Int64
                }
                if dict.keys.contains("OutlineId") && dict["OutlineId"] != nil {
                    self.outlineId = dict["OutlineId"] as! Int64
                }
                if dict.keys.contains("Title") && dict["Title"] != nil {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public class SimQuestions : Tea.TeaModel {
            public var title: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Title") && dict["Title"] != nil {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public class Solutions : Tea.TeaModel {
            public var content: String?

            public var perspectiveIds: [String]?

            public var plainText: String?

            public override init() {
                super.init()
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
                if self.perspectiveIds != nil {
                    map["PerspectiveIds"] = self.perspectiveIds!
                }
                if self.plainText != nil {
                    map["PlainText"] = self.plainText!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("PerspectiveIds") && dict["PerspectiveIds"] != nil {
                    self.perspectiveIds = dict["PerspectiveIds"] as! [String]
                }
                if dict.keys.contains("PlainText") && dict["PlainText"] != nil {
                    self.plainText = dict["PlainText"] as! String
                }
            }
        }
        public var categoryId: Int64?

        public var endDate: String?

        public var knowledgeTitle: String?

        public var knowledgeType: Int32?

        public var outlines: [CreateKnowledgeRequest.Knowledge.Outlines]?

        public var simQuestions: [CreateKnowledgeRequest.Knowledge.SimQuestions]?

        public var solutions: [CreateKnowledgeRequest.Knowledge.Solutions]?

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
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.knowledgeTitle != nil {
                map["KnowledgeTitle"] = self.knowledgeTitle!
            }
            if self.knowledgeType != nil {
                map["KnowledgeType"] = self.knowledgeType!
            }
            if self.outlines != nil {
                var tmp : [Any] = []
                for k in self.outlines! {
                    tmp.append(k.toMap())
                }
                map["Outlines"] = tmp
            }
            if self.simQuestions != nil {
                var tmp : [Any] = []
                for k in self.simQuestions! {
                    tmp.append(k.toMap())
                }
                map["SimQuestions"] = tmp
            }
            if self.solutions != nil {
                var tmp : [Any] = []
                for k in self.solutions! {
                    tmp.append(k.toMap())
                }
                map["Solutions"] = tmp
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("KnowledgeTitle") && dict["KnowledgeTitle"] != nil {
                self.knowledgeTitle = dict["KnowledgeTitle"] as! String
            }
            if dict.keys.contains("KnowledgeType") && dict["KnowledgeType"] != nil {
                self.knowledgeType = dict["KnowledgeType"] as! Int32
            }
            if dict.keys.contains("Outlines") && dict["Outlines"] != nil {
                var tmp : [CreateKnowledgeRequest.Knowledge.Outlines] = []
                for v in dict["Outlines"] as! [Any] {
                    var model = CreateKnowledgeRequest.Knowledge.Outlines()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.outlines = tmp
            }
            if dict.keys.contains("SimQuestions") && dict["SimQuestions"] != nil {
                var tmp : [CreateKnowledgeRequest.Knowledge.SimQuestions] = []
                for v in dict["SimQuestions"] as! [Any] {
                    var model = CreateKnowledgeRequest.Knowledge.SimQuestions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.simQuestions = tmp
            }
            if dict.keys.contains("Solutions") && dict["Solutions"] != nil {
                var tmp : [CreateKnowledgeRequest.Knowledge.Solutions] = []
                for v in dict["Solutions"] as! [Any] {
                    var model = CreateKnowledgeRequest.Knowledge.Solutions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.solutions = tmp
            }
            if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
                self.startDate = dict["StartDate"] as! String
            }
        }
    }
    public var agentKey: String?

    public var knowledge: CreateKnowledgeRequest.Knowledge?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.knowledge?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledge != nil {
            map["Knowledge"] = self.knowledge?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Knowledge") && dict["Knowledge"] != nil {
            var model = CreateKnowledgeRequest.Knowledge()
            model.fromMap(dict["Knowledge"] as! [String: Any])
            self.knowledge = model
        }
    }
}

public class CreateKnowledgeShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var knowledgeShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledgeShrink != nil {
            map["Knowledge"] = self.knowledgeShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Knowledge") && dict["Knowledge"] != nil {
            self.knowledgeShrink = dict["Knowledge"] as! String
        }
    }
}

public class CreateKnowledgeResponseBody : Tea.TeaModel {
    public var knowledgeId: Int64?

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
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateKnowledgeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKnowledgeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateKnowledgeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePerspectiveRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class CreatePerspectiveResponseBody : Tea.TeaModel {
    public var perspectiveId: String?

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
        if self.perspectiveId != nil {
            map["PerspectiveId"] = self.perspectiveId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PerspectiveId") && dict["PerspectiveId"] != nil {
            self.perspectiveId = dict["PerspectiveId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePerspectiveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePerspectiveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePerspectiveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBotRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DeleteBotResponseBody : Tea.TeaModel {
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

public class DeleteBotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBotResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteBotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCategoryRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! Int64
        }
    }
}

public class DeleteCategoryResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCategoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCoreWordRequest : Tea.TeaModel {
    public var agentKey: String?

    public var coreWordName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.coreWordName != nil {
            map["CoreWordName"] = self.coreWordName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CoreWordName") && dict["CoreWordName"] != nil {
            self.coreWordName = dict["CoreWordName"] as! String
        }
    }
}

public class DeleteCoreWordResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteCoreWordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCoreWordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteCoreWordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDialogRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dialogId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
    }
}

public class DeleteDialogResponseBody : Tea.TeaModel {
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

public class DeleteDialogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDialogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDialogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEntityRequest : Tea.TeaModel {
    public var agentKey: String?

    public var entityId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
    }
}

public class DeleteEntityResponseBody : Tea.TeaModel {
    public var entityId: Int64?

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
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEntityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIntentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var intentId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
    }
}

public class DeleteIntentResponseBody : Tea.TeaModel {
    public var intentId: Int64?

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
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteIntentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIntentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteIntentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteKnowledgeRequest : Tea.TeaModel {
    public var agentKey: String?

    public var knowledgeId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
    }
}

public class DeleteKnowledgeResponseBody : Tea.TeaModel {
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

public class DeleteKnowledgeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteKnowledgeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteKnowledgeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePerspectiveRequest : Tea.TeaModel {
    public var agentKey: String?

    public var perspectiveId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.perspectiveId != nil {
            map["PerspectiveId"] = self.perspectiveId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PerspectiveId") && dict["PerspectiveId"] != nil {
            self.perspectiveId = dict["PerspectiveId"] as! String
        }
    }
}

public class DeletePerspectiveResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
    }
}

public class DeletePerspectiveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePerspectiveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeletePerspectiveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBotRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeBotResponseBody : Tea.TeaModel {
    public class Categories : Tea.TeaModel {
        public var categoryId: Int64?

        public var name: String?

        public var parentCategoryId: Int64?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parentCategoryId != nil {
                map["ParentCategoryId"] = self.parentCategoryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentCategoryId") && dict["ParentCategoryId"] != nil {
                self.parentCategoryId = dict["ParentCategoryId"] as! Int64
            }
        }
    }
    public var avatar: String?

    public var categories: [DescribeBotResponseBody.Categories]?

    public var createTime: String?

    public var instanceId: String?

    public var introduction: String?

    public var languageCode: String?

    public var logo: String?

    public var name: String?

    public var requestId: String?

    public var timeZone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.avatar != nil {
            map["Avatar"] = self.avatar!
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.introduction != nil {
            map["Introduction"] = self.introduction!
        }
        if self.languageCode != nil {
            map["LanguageCode"] = self.languageCode!
        }
        if self.logo != nil {
            map["Logo"] = self.logo!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Avatar") && dict["Avatar"] != nil {
            self.avatar = dict["Avatar"] as! String
        }
        if dict.keys.contains("Categories") && dict["Categories"] != nil {
            var tmp : [DescribeBotResponseBody.Categories] = []
            for v in dict["Categories"] as! [Any] {
                var model = DescribeBotResponseBody.Categories()
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Introduction") && dict["Introduction"] != nil {
            self.introduction = dict["Introduction"] as! String
        }
        if dict.keys.contains("LanguageCode") && dict["LanguageCode"] != nil {
            self.languageCode = dict["LanguageCode"] as! String
        }
        if dict.keys.contains("Logo") && dict["Logo"] != nil {
            self.logo = dict["Logo"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TimeZone") && dict["TimeZone"] != nil {
            self.timeZone = dict["TimeZone"] as! String
        }
    }
}

public class DescribeBotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBotResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCategoryRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! Int64
        }
    }
}

public class DescribeCategoryResponseBody : Tea.TeaModel {
    public var categoryId: Int64?

    public var name: String?

    public var parentCategoryId: Int64?

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
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parentCategoryId != nil {
            map["ParentCategoryId"] = self.parentCategoryId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParentCategoryId") && dict["ParentCategoryId"] != nil {
            self.parentCategoryId = dict["ParentCategoryId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCategoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCoreWordRequest : Tea.TeaModel {
    public var agentKey: String?

    public var coreWordName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.coreWordName != nil {
            map["CoreWordName"] = self.coreWordName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CoreWordName") && dict["CoreWordName"] != nil {
            self.coreWordName = dict["CoreWordName"] as! String
        }
    }
}

public class DescribeCoreWordResponseBody : Tea.TeaModel {
    public var coreWordCode: String?

    public var coreWordName: String?

    public var createTime: String?

    public var modifyTime: String?

    public var requestId: String?

    public var synonyms: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coreWordCode != nil {
            map["CoreWordCode"] = self.coreWordCode!
        }
        if self.coreWordName != nil {
            map["CoreWordName"] = self.coreWordName!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.synonyms != nil {
            map["Synonyms"] = self.synonyms!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CoreWordCode") && dict["CoreWordCode"] != nil {
            self.coreWordCode = dict["CoreWordCode"] as! String
        }
        if dict.keys.contains("CoreWordName") && dict["CoreWordName"] != nil {
            self.coreWordName = dict["CoreWordName"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Synonyms") && dict["Synonyms"] != nil {
            self.synonyms = dict["Synonyms"] as! [String]
        }
    }
}

public class DescribeCoreWordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCoreWordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeCoreWordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDialogRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dialogId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
    }
}

public class DescribeDialogResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var createUserId: String?

    public var createUserName: String?

    public var description_: String?

    public var dialogId: Int64?

    public var dialogName: String?

    public var isOnline: Bool?

    public var isSampleDialog: Bool?

    public var modifyTime: String?

    public var modifyUserId: String?

    public var modifyUserName: String?

    public var requestId: String?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        if self.dialogName != nil {
            map["DialogName"] = self.dialogName!
        }
        if self.isOnline != nil {
            map["IsOnline"] = self.isOnline!
        }
        if self.isSampleDialog != nil {
            map["IsSampleDialog"] = self.isSampleDialog!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.modifyUserId != nil {
            map["ModifyUserId"] = self.modifyUserId!
        }
        if self.modifyUserName != nil {
            map["ModifyUserName"] = self.modifyUserName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateUserId") && dict["CreateUserId"] != nil {
            self.createUserId = dict["CreateUserId"] as! String
        }
        if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
        if dict.keys.contains("DialogName") && dict["DialogName"] != nil {
            self.dialogName = dict["DialogName"] as! String
        }
        if dict.keys.contains("IsOnline") && dict["IsOnline"] != nil {
            self.isOnline = dict["IsOnline"] as! Bool
        }
        if dict.keys.contains("IsSampleDialog") && dict["IsSampleDialog"] != nil {
            self.isSampleDialog = dict["IsSampleDialog"] as! Bool
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("ModifyUserId") && dict["ModifyUserId"] != nil {
            self.modifyUserId = dict["ModifyUserId"] as! String
        }
        if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class DescribeDialogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDialogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDialogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDialogFlowRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dialogId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
    }
}

public class DescribeDialogFlowResponseBody : Tea.TeaModel {
    public var accountId: String?

    public var createTime: String?

    public var createUserId: String?

    public var createUserName: String?

    public var dialogId: Int64?

    public var dialogName: String?

    public var globalVars: [String: Any]?

    public var instanceId: String?

    public var modifyTime: String?

    public var modifyUserId: String?

    public var modifyUserName: String?

    public var moduleDefinition: PaasProcessData?

    public var moduleId: Int64?

    public var moduleName: String?

    public var requestId: String?

    public var status: Int32?

    public var tags: String?

    public var templates: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.moduleDefinition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        if self.dialogName != nil {
            map["DialogName"] = self.dialogName!
        }
        if self.globalVars != nil {
            map["GlobalVars"] = self.globalVars!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.modifyUserId != nil {
            map["ModifyUserId"] = self.modifyUserId!
        }
        if self.modifyUserName != nil {
            map["ModifyUserName"] = self.modifyUserName!
        }
        if self.moduleDefinition != nil {
            map["ModuleDefinition"] = self.moduleDefinition?.toMap()
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.moduleName != nil {
            map["ModuleName"] = self.moduleName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templates != nil {
            map["Templates"] = self.templates!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateUserId") && dict["CreateUserId"] != nil {
            self.createUserId = dict["CreateUserId"] as! String
        }
        if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
        if dict.keys.contains("DialogName") && dict["DialogName"] != nil {
            self.dialogName = dict["DialogName"] as! String
        }
        if dict.keys.contains("GlobalVars") && dict["GlobalVars"] != nil {
            self.globalVars = dict["GlobalVars"] as! [String: Any]
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("ModifyUserId") && dict["ModifyUserId"] != nil {
            self.modifyUserId = dict["ModifyUserId"] as! String
        }
        if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("ModuleDefinition") && dict["ModuleDefinition"] != nil {
            var model = PaasProcessData()
            model.fromMap(dict["ModuleDefinition"] as! [String: Any])
            self.moduleDefinition = model
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! Int64
        }
        if dict.keys.contains("ModuleName") && dict["ModuleName"] != nil {
            self.moduleName = dict["ModuleName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! String
        }
        if dict.keys.contains("Templates") && dict["Templates"] != nil {
            self.templates = dict["Templates"] as! String
        }
    }
}

public class DescribeDialogFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDialogFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDialogFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEntitiesRequest : Tea.TeaModel {
    public var agentKey: String?

    public var entityId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
    }
}

public class DescribeEntitiesResponseBody : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var memberName: String?

        public var synonyms: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.memberName != nil {
                map["MemberName"] = self.memberName!
            }
            if self.synonyms != nil {
                map["Synonyms"] = self.synonyms!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberName") && dict["MemberName"] != nil {
                self.memberName = dict["MemberName"] as! String
            }
            if dict.keys.contains("Synonyms") && dict["Synonyms"] != nil {
                self.synonyms = dict["Synonyms"] as! [String]
            }
        }
    }
    public var createTime: String?

    public var createUserId: String?

    public var createUserName: String?

    public var entityId: Int64?

    public var entityName: String?

    public var entityType: String?

    public var members: [DescribeEntitiesResponseBody.Members]?

    public var modifyTime: String?

    public var modifyUserId: String?

    public var modifyUserName: String?

    public var regex: String?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.entityName != nil {
            map["EntityName"] = self.entityName!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["Members"] = tmp
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.modifyUserId != nil {
            map["ModifyUserId"] = self.modifyUserId!
        }
        if self.modifyUserName != nil {
            map["ModifyUserName"] = self.modifyUserName!
        }
        if self.regex != nil {
            map["Regex"] = self.regex!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateUserId") && dict["CreateUserId"] != nil {
            self.createUserId = dict["CreateUserId"] as! String
        }
        if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityName") && dict["EntityName"] != nil {
            self.entityName = dict["EntityName"] as! String
        }
        if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [DescribeEntitiesResponseBody.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = DescribeEntitiesResponseBody.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.members = tmp
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("ModifyUserId") && dict["ModifyUserId"] != nil {
            self.modifyUserId = dict["ModifyUserId"] as! String
        }
        if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("Regex") && dict["Regex"] != nil {
            self.regex = dict["Regex"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeEntitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEntitiesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeEntitiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeIntentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var intentId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
    }
}

public class DescribeIntentResponseBody : Tea.TeaModel {
    public class RuleCheck : Tea.TeaModel {
        public var error: [String]?

        public var strict: Bool?

        public var text: String?

        public var warning: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.strict != nil {
                map["Strict"] = self.strict!
            }
            if self.text != nil {
                map["Text"] = self.text!
            }
            if self.warning != nil {
                map["Warning"] = self.warning!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Error") && dict["Error"] != nil {
                self.error = dict["Error"] as! [String]
            }
            if dict.keys.contains("Strict") && dict["Strict"] != nil {
                self.strict = dict["Strict"] as! Bool
            }
            if dict.keys.contains("Text") && dict["Text"] != nil {
                self.text = dict["Text"] as! String
            }
            if dict.keys.contains("Warning") && dict["Warning"] != nil {
                self.warning = dict["Warning"] as! [String]
            }
        }
    }
    public class Slot : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var userSayId: String?

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
                if self.userSayId != nil {
                    map["UserSayId"] = self.userSayId!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("UserSayId") && dict["UserSayId"] != nil {
                    self.userSayId = dict["UserSayId"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var isArray: Bool?

        public var isNecessary: Bool?

        public var lifeSpan: Int32?

        public var name: String?

        public var question: [String]?

        public var slotId: String?

        public var tags: [DescribeIntentResponseBody.Slot.Tags]?

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
            if self.isArray != nil {
                map["IsArray"] = self.isArray!
            }
            if self.isNecessary != nil {
                map["IsNecessary"] = self.isNecessary!
            }
            if self.lifeSpan != nil {
                map["LifeSpan"] = self.lifeSpan!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.question != nil {
                map["Question"] = self.question!
            }
            if self.slotId != nil {
                map["SlotId"] = self.slotId!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsArray") && dict["IsArray"] != nil {
                self.isArray = dict["IsArray"] as! Bool
            }
            if dict.keys.contains("IsNecessary") && dict["IsNecessary"] != nil {
                self.isNecessary = dict["IsNecessary"] as! Bool
            }
            if dict.keys.contains("LifeSpan") && dict["LifeSpan"] != nil {
                self.lifeSpan = dict["LifeSpan"] as! Int32
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Question") && dict["Question"] != nil {
                self.question = dict["Question"] as! [String]
            }
            if dict.keys.contains("SlotId") && dict["SlotId"] != nil {
                self.slotId = dict["SlotId"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [DescribeIntentResponseBody.Slot.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = DescribeIntentResponseBody.Slot.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class UserSay : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var slotId: String?

            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.slotId != nil {
                    map["SlotId"] = self.slotId!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SlotId") && dict["SlotId"] != nil {
                    self.slotId = dict["SlotId"] as! String
                }
                if dict.keys.contains("Text") && dict["Text"] != nil {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public var data: [DescribeIntentResponseBody.UserSay.Data]?

        public var strict: Bool?

        public var userSayId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
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
            if self.strict != nil {
                map["Strict"] = self.strict!
            }
            if self.userSayId != nil {
                map["UserSayId"] = self.userSayId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") && dict["Data"] != nil {
                var tmp : [DescribeIntentResponseBody.UserSay.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = DescribeIntentResponseBody.UserSay.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("Strict") && dict["Strict"] != nil {
                self.strict = dict["Strict"] as! Bool
            }
            if dict.keys.contains("UserSayId") && dict["UserSayId"] != nil {
                self.userSayId = dict["UserSayId"] as! String
            }
        }
    }
    public var createTime: String?

    public var createUserId: String?

    public var createUserName: String?

    public var dialogId: Int64?

    public var intentId: Int64?

    public var modifyTime: String?

    public var modifyUserId: String?

    public var modifyUserName: String?

    public var name: String?

    public var requestId: String?

    public var ruleCheck: [DescribeIntentResponseBody.RuleCheck]?

    public var slot: [DescribeIntentResponseBody.Slot]?

    public var type: String?

    public var userSay: [DescribeIntentResponseBody.UserSay]?

    public override init() {
        super.init()
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
        if self.createUserId != nil {
            map["CreateUserId"] = self.createUserId!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.modifyUserId != nil {
            map["ModifyUserId"] = self.modifyUserId!
        }
        if self.modifyUserName != nil {
            map["ModifyUserName"] = self.modifyUserName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleCheck != nil {
            var tmp : [Any] = []
            for k in self.ruleCheck! {
                tmp.append(k.toMap())
            }
            map["RuleCheck"] = tmp
        }
        if self.slot != nil {
            var tmp : [Any] = []
            for k in self.slot! {
                tmp.append(k.toMap())
            }
            map["Slot"] = tmp
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userSay != nil {
            var tmp : [Any] = []
            for k in self.userSay! {
                tmp.append(k.toMap())
            }
            map["UserSay"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateUserId") && dict["CreateUserId"] != nil {
            self.createUserId = dict["CreateUserId"] as! String
        }
        if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("ModifyUserId") && dict["ModifyUserId"] != nil {
            self.modifyUserId = dict["ModifyUserId"] as! String
        }
        if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleCheck") && dict["RuleCheck"] != nil {
            var tmp : [DescribeIntentResponseBody.RuleCheck] = []
            for v in dict["RuleCheck"] as! [Any] {
                var model = DescribeIntentResponseBody.RuleCheck()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleCheck = tmp
        }
        if dict.keys.contains("Slot") && dict["Slot"] != nil {
            var tmp : [DescribeIntentResponseBody.Slot] = []
            for v in dict["Slot"] as! [Any] {
                var model = DescribeIntentResponseBody.Slot()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.slot = tmp
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UserSay") && dict["UserSay"] != nil {
            var tmp : [DescribeIntentResponseBody.UserSay] = []
            for v in dict["UserSay"] as! [Any] {
                var model = DescribeIntentResponseBody.UserSay()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userSay = tmp
        }
    }
}

public class DescribeIntentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIntentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeIntentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeKnowledgeRequest : Tea.TeaModel {
    public var agentKey: String?

    public var knowledgeId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
    }
}

public class DescribeKnowledgeResponseBody : Tea.TeaModel {
    public class Outlines : Tea.TeaModel {
        public var knowledgeId: Int64?

        public var outlineId: Int64?

        public var title: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.knowledgeId != nil {
                map["KnowledgeId"] = self.knowledgeId!
            }
            if self.outlineId != nil {
                map["OutlineId"] = self.outlineId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
                self.knowledgeId = dict["KnowledgeId"] as! Int64
            }
            if dict.keys.contains("OutlineId") && dict["OutlineId"] != nil {
                self.outlineId = dict["OutlineId"] as! Int64
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
        }
    }
    public class SimQuestions : Tea.TeaModel {
        public var createTime: String?

        public var modifyTime: String?

        public var simQuestionId: Int64?

        public var title: String?

        public override init() {
            super.init()
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
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.simQuestionId != nil {
                map["SimQuestionId"] = self.simQuestionId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("SimQuestionId") && dict["SimQuestionId"] != nil {
                self.simQuestionId = dict["SimQuestionId"] as! Int64
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
        }
    }
    public class Solutions : Tea.TeaModel {
        public var content: String?

        public var createTime: String?

        public var modifyTime: String?

        public var perspectiveIds: [String]?

        public var plainText: String?

        public var solutionId: Int64?

        public var summary: String?

        public override init() {
            super.init()
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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.perspectiveIds != nil {
                map["PerspectiveIds"] = self.perspectiveIds!
            }
            if self.plainText != nil {
                map["PlainText"] = self.plainText!
            }
            if self.solutionId != nil {
                map["SolutionId"] = self.solutionId!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("PerspectiveIds") && dict["PerspectiveIds"] != nil {
                self.perspectiveIds = dict["PerspectiveIds"] as! [String]
            }
            if dict.keys.contains("PlainText") && dict["PlainText"] != nil {
                self.plainText = dict["PlainText"] as! String
            }
            if dict.keys.contains("SolutionId") && dict["SolutionId"] != nil {
                self.solutionId = dict["SolutionId"] as! Int64
            }
            if dict.keys.contains("Summary") && dict["Summary"] != nil {
                self.summary = dict["Summary"] as! String
            }
        }
    }
    public var categoryId: Int64?

    public var coreWords: [String]?

    public var createTime: String?

    public var createUserName: String?

    public var endDate: String?

    public var keyWords: [String]?

    public var knowledgeId: Int64?

    public var knowledgeStatus: Int32?

    public var knowledgeTitle: String?

    public var knowledgeType: Int32?

    public var modifyTime: String?

    public var modifyUserName: String?

    public var outlines: [DescribeKnowledgeResponseBody.Outlines]?

    public var requestId: String?

    public var simQuestions: [DescribeKnowledgeResponseBody.SimQuestions]?

    public var solutions: [DescribeKnowledgeResponseBody.Solutions]?

    public var startDate: String?

    public var version: Int32?

    public override init() {
        super.init()
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
        if self.coreWords != nil {
            map["CoreWords"] = self.coreWords!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.keyWords != nil {
            map["KeyWords"] = self.keyWords!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.knowledgeStatus != nil {
            map["KnowledgeStatus"] = self.knowledgeStatus!
        }
        if self.knowledgeTitle != nil {
            map["KnowledgeTitle"] = self.knowledgeTitle!
        }
        if self.knowledgeType != nil {
            map["KnowledgeType"] = self.knowledgeType!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.modifyUserName != nil {
            map["ModifyUserName"] = self.modifyUserName!
        }
        if self.outlines != nil {
            var tmp : [Any] = []
            for k in self.outlines! {
                tmp.append(k.toMap())
            }
            map["Outlines"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.simQuestions != nil {
            var tmp : [Any] = []
            for k in self.simQuestions! {
                tmp.append(k.toMap())
            }
            map["SimQuestions"] = tmp
        }
        if self.solutions != nil {
            var tmp : [Any] = []
            for k in self.solutions! {
                tmp.append(k.toMap())
            }
            map["Solutions"] = tmp
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("CoreWords") && dict["CoreWords"] != nil {
            self.coreWords = dict["CoreWords"] as! [String]
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("KeyWords") && dict["KeyWords"] != nil {
            self.keyWords = dict["KeyWords"] as! [String]
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("KnowledgeStatus") && dict["KnowledgeStatus"] != nil {
            self.knowledgeStatus = dict["KnowledgeStatus"] as! Int32
        }
        if dict.keys.contains("KnowledgeTitle") && dict["KnowledgeTitle"] != nil {
            self.knowledgeTitle = dict["KnowledgeTitle"] as! String
        }
        if dict.keys.contains("KnowledgeType") && dict["KnowledgeType"] != nil {
            self.knowledgeType = dict["KnowledgeType"] as! Int32
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("Outlines") && dict["Outlines"] != nil {
            var tmp : [DescribeKnowledgeResponseBody.Outlines] = []
            for v in dict["Outlines"] as! [Any] {
                var model = DescribeKnowledgeResponseBody.Outlines()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.outlines = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SimQuestions") && dict["SimQuestions"] != nil {
            var tmp : [DescribeKnowledgeResponseBody.SimQuestions] = []
            for v in dict["SimQuestions"] as! [Any] {
                var model = DescribeKnowledgeResponseBody.SimQuestions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.simQuestions = tmp
        }
        if dict.keys.contains("Solutions") && dict["Solutions"] != nil {
            var tmp : [DescribeKnowledgeResponseBody.Solutions] = []
            for v in dict["Solutions"] as! [Any] {
                var model = DescribeKnowledgeResponseBody.Solutions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.solutions = tmp
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Version") && dict["Version"] != nil {
            self.version = dict["Version"] as! Int32
        }
    }
}

public class DescribeKnowledgeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeKnowledgeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeKnowledgeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePerspectiveRequest : Tea.TeaModel {
    public var agentKey: String?

    public var perspectiveId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.perspectiveId != nil {
            map["PerspectiveId"] = self.perspectiveId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PerspectiveId") && dict["PerspectiveId"] != nil {
            self.perspectiveId = dict["PerspectiveId"] as! String
        }
    }
}

public class DescribePerspectiveResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var createUserName: String?

    public var modifyTime: String?

    public var modifyUserName: String?

    public var name: String?

    public var perspectiveCode: String?

    public var perspectiveId: String?

    public var requestId: String?

    public var selfDefine: Bool?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createUserName != nil {
            map["CreateUserName"] = self.createUserName!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.modifyUserName != nil {
            map["ModifyUserName"] = self.modifyUserName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.perspectiveCode != nil {
            map["PerspectiveCode"] = self.perspectiveCode!
        }
        if self.perspectiveId != nil {
            map["PerspectiveId"] = self.perspectiveId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.selfDefine != nil {
            map["SelfDefine"] = self.selfDefine!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
            self.createUserName = dict["CreateUserName"] as! String
        }
        if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
            self.modifyUserName = dict["ModifyUserName"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PerspectiveCode") && dict["PerspectiveCode"] != nil {
            self.perspectiveCode = dict["PerspectiveCode"] as! String
        }
        if dict.keys.contains("PerspectiveId") && dict["PerspectiveId"] != nil {
            self.perspectiveId = dict["PerspectiveId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SelfDefine") && dict["SelfDefine"] != nil {
            self.selfDefine = dict["SelfDefine"] as! Bool
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class DescribePerspectiveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePerspectiveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePerspectiveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableDialogFlowRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dialogId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
    }
}

public class DisableDialogFlowResponseBody : Tea.TeaModel {
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

public class DisableDialogFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableDialogFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableDialogFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableKnowledgeRequest : Tea.TeaModel {
    public var agentKey: String?

    public var knowledgeId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
    }
}

public class DisableKnowledgeResponseBody : Tea.TeaModel {
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

public class DisableKnowledgeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableKnowledgeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableKnowledgeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FeedbackRequest : Tea.TeaModel {
    public var agentKey: String?

    public var feedback: String?

    public var instanceId: String?

    public var messageId: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.feedback != nil {
            map["Feedback"] = self.feedback!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Feedback") && dict["Feedback"] != nil {
            self.feedback = dict["Feedback"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MessageId") && dict["MessageId"] != nil {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class FeedbackResponseBody : Tea.TeaModel {
    public var feedback: String?

    public var httpStatus: Int64?

    public var messageId: String?

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
        if self.feedback != nil {
            map["Feedback"] = self.feedback!
        }
        if self.httpStatus != nil {
            map["HttpStatus"] = self.httpStatus!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
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
        if dict.keys.contains("Feedback") && dict["Feedback"] != nil {
            self.feedback = dict["Feedback"] as! String
        }
        if dict.keys.contains("HttpStatus") && dict["HttpStatus"] != nil {
            self.httpStatus = dict["HttpStatus"] as! Int64
        }
        if dict.keys.contains("MessageId") && dict["MessageId"] != nil {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class FeedbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FeedbackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = FeedbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAsyncResultRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetAsyncResultResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
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

public class GetAsyncResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAsyncResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAsyncResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBotChatDataRequest : Tea.TeaModel {
    public var agentKey: String?

    public var endTime: String?

    public var robotInstanceId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.robotInstanceId != nil {
            map["RobotInstanceId"] = self.robotInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RobotInstanceId") && dict["RobotInstanceId"] != nil {
            self.robotInstanceId = dict["RobotInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class GetBotChatDataResponseBody : Tea.TeaModel {
    public var costTime: String?

    public var datas: [[String: Any]]?

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
        if self.costTime != nil {
            map["CostTime"] = self.costTime!
        }
        if self.datas != nil {
            map["Datas"] = self.datas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
            self.costTime = dict["CostTime"] as! String
        }
        if dict.keys.contains("Datas") && dict["Datas"] != nil {
            self.datas = dict["Datas"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetBotChatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBotChatDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBotChatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBotDsStatDataRequest : Tea.TeaModel {
    public var agentKey: String?

    public var endTime: String?

    public var robotInstanceId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.robotInstanceId != nil {
            map["RobotInstanceId"] = self.robotInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RobotInstanceId") && dict["RobotInstanceId"] != nil {
            self.robotInstanceId = dict["RobotInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class GetBotDsStatDataResponseBody : Tea.TeaModel {
    public var costTime: String?

    public var datas: [[String: Any]]?

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
        if self.costTime != nil {
            map["CostTime"] = self.costTime!
        }
        if self.datas != nil {
            map["Datas"] = self.datas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
            self.costTime = dict["CostTime"] as! String
        }
        if dict.keys.contains("Datas") && dict["Datas"] != nil {
            self.datas = dict["Datas"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetBotDsStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBotDsStatDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBotDsStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBotKnowledgeStatDataRequest : Tea.TeaModel {
    public var agentKey: String?

    public var endTime: String?

    public var robotInstanceId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.robotInstanceId != nil {
            map["RobotInstanceId"] = self.robotInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RobotInstanceId") && dict["RobotInstanceId"] != nil {
            self.robotInstanceId = dict["RobotInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class GetBotKnowledgeStatDataResponseBody : Tea.TeaModel {
    public var costTime: String?

    public var datas: [[String: Any]]?

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
        if self.costTime != nil {
            map["CostTime"] = self.costTime!
        }
        if self.datas != nil {
            map["Datas"] = self.datas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
            self.costTime = dict["CostTime"] as! String
        }
        if dict.keys.contains("Datas") && dict["Datas"] != nil {
            self.datas = dict["Datas"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetBotKnowledgeStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBotKnowledgeStatDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBotKnowledgeStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBotSessionDataRequest : Tea.TeaModel {
    public var agentKey: String?

    public var endTime: String?

    public var robotInstanceId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.robotInstanceId != nil {
            map["RobotInstanceId"] = self.robotInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RobotInstanceId") && dict["RobotInstanceId"] != nil {
            self.robotInstanceId = dict["RobotInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class GetBotSessionDataResponseBody : Tea.TeaModel {
    public var costTime: String?

    public var datas: [[String: Any]]?

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
        if self.costTime != nil {
            map["CostTime"] = self.costTime!
        }
        if self.datas != nil {
            map["Datas"] = self.datas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
            self.costTime = dict["CostTime"] as! String
        }
        if dict.keys.contains("Datas") && dict["Datas"] != nil {
            self.datas = dict["Datas"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetBotSessionDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBotSessionDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBotSessionDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConversationListRequest : Tea.TeaModel {
    public var agentKey: String?

    public var endDate: String?

    public var instanceId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var senderId: String?

    public var sessionId: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.senderId != nil {
            map["SenderId"] = self.senderId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SenderId") && dict["SenderId"] != nil {
            self.senderId = dict["SenderId"] as! String
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class GetConversationListResponseBody : Tea.TeaModel {
    public var messages: [[String: String]]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalCounts: Int64?

    public override init() {
        super.init()
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
            map["Messages"] = self.messages!
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
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Messages") && dict["Messages"] != nil {
            self.messages = dict["Messages"] as! [[String: String]]
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCounts") && dict["TotalCounts"] != nil {
            self.totalCounts = dict["TotalCounts"] as! Int64
        }
    }
}

public class GetConversationListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConversationListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetConversationListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBotChatHistorysRequest : Tea.TeaModel {
    public var agentKey: String?

    public var endTime: String?

    public var limit: Int32?

    public var robotInstanceId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.robotInstanceId != nil {
            map["RobotInstanceId"] = self.robotInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("RobotInstanceId") && dict["RobotInstanceId"] != nil {
            self.robotInstanceId = dict["RobotInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class ListBotChatHistorysResponseBody : Tea.TeaModel {
    public var costTime: String?

    public var datas: [[String: Any]]?

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
        if self.costTime != nil {
            map["CostTime"] = self.costTime!
        }
        if self.datas != nil {
            map["Datas"] = self.datas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
            self.costTime = dict["CostTime"] as! String
        }
        if dict.keys.contains("Datas") && dict["Datas"] != nil {
            self.datas = dict["Datas"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListBotChatHistorysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBotChatHistorysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListBotChatHistorysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBotColdDsDatasRequest : Tea.TeaModel {
    public var agentKey: String?

    public var endTime: String?

    public var limit: Int32?

    public var robotInstanceId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.robotInstanceId != nil {
            map["RobotInstanceId"] = self.robotInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("RobotInstanceId") && dict["RobotInstanceId"] != nil {
            self.robotInstanceId = dict["RobotInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class ListBotColdDsDatasResponseBody : Tea.TeaModel {
    public var costTime: String?

    public var datas: [[String: Any]]?

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
        if self.costTime != nil {
            map["CostTime"] = self.costTime!
        }
        if self.datas != nil {
            map["Datas"] = self.datas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
            self.costTime = dict["CostTime"] as! String
        }
        if dict.keys.contains("Datas") && dict["Datas"] != nil {
            self.datas = dict["Datas"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListBotColdDsDatasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBotColdDsDatasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListBotColdDsDatasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBotColdKnowledgesRequest : Tea.TeaModel {
    public var agentKey: String?

    public var endTime: String?

    public var limit: Int32?

    public var robotInstanceId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.robotInstanceId != nil {
            map["RobotInstanceId"] = self.robotInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("RobotInstanceId") && dict["RobotInstanceId"] != nil {
            self.robotInstanceId = dict["RobotInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class ListBotColdKnowledgesResponseBody : Tea.TeaModel {
    public var costTime: String?

    public var datas: [[String: Any]]?

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
        if self.costTime != nil {
            map["CostTime"] = self.costTime!
        }
        if self.datas != nil {
            map["Datas"] = self.datas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
            self.costTime = dict["CostTime"] as! String
        }
        if dict.keys.contains("Datas") && dict["Datas"] != nil {
            self.datas = dict["Datas"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListBotColdKnowledgesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBotColdKnowledgesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListBotColdKnowledgesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBotDsDetailsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var endTime: String?

    public var limit: Int32?

    public var robotInstanceId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.robotInstanceId != nil {
            map["RobotInstanceId"] = self.robotInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("RobotInstanceId") && dict["RobotInstanceId"] != nil {
            self.robotInstanceId = dict["RobotInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class ListBotDsDetailsResponseBody : Tea.TeaModel {
    public var costTime: String?

    public var datas: [[String: Any]]?

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
        if self.costTime != nil {
            map["CostTime"] = self.costTime!
        }
        if self.datas != nil {
            map["Datas"] = self.datas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
            self.costTime = dict["CostTime"] as! String
        }
        if dict.keys.contains("Datas") && dict["Datas"] != nil {
            self.datas = dict["Datas"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListBotDsDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBotDsDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListBotDsDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBotHotDsDatasRequest : Tea.TeaModel {
    public var agentKey: String?

    public var endTime: String?

    public var limit: Int32?

    public var robotInstanceId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.robotInstanceId != nil {
            map["RobotInstanceId"] = self.robotInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("RobotInstanceId") && dict["RobotInstanceId"] != nil {
            self.robotInstanceId = dict["RobotInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class ListBotHotDsDatasResponseBody : Tea.TeaModel {
    public var costTime: String?

    public var datas: [[String: Any]]?

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
        if self.costTime != nil {
            map["CostTime"] = self.costTime!
        }
        if self.datas != nil {
            map["Datas"] = self.datas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
            self.costTime = dict["CostTime"] as! String
        }
        if dict.keys.contains("Datas") && dict["Datas"] != nil {
            self.datas = dict["Datas"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListBotHotDsDatasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBotHotDsDatasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListBotHotDsDatasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBotHotKnowledgesRequest : Tea.TeaModel {
    public var agentKey: String?

    public var endTime: String?

    public var limit: Int32?

    public var robotInstanceId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.robotInstanceId != nil {
            map["RobotInstanceId"] = self.robotInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("RobotInstanceId") && dict["RobotInstanceId"] != nil {
            self.robotInstanceId = dict["RobotInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class ListBotHotKnowledgesResponseBody : Tea.TeaModel {
    public var costTime: String?

    public var datas: [[String: Any]]?

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
        if self.costTime != nil {
            map["CostTime"] = self.costTime!
        }
        if self.datas != nil {
            map["Datas"] = self.datas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
            self.costTime = dict["CostTime"] as! String
        }
        if dict.keys.contains("Datas") && dict["Datas"] != nil {
            self.datas = dict["Datas"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListBotHotKnowledgesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBotHotKnowledgesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListBotHotKnowledgesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBotKnowledgeDetailsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var endTime: String?

    public var limit: String?

    public var robotInstanceId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.robotInstanceId != nil {
            map["RobotInstanceId"] = self.robotInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! String
        }
        if dict.keys.contains("RobotInstanceId") && dict["RobotInstanceId"] != nil {
            self.robotInstanceId = dict["RobotInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class ListBotKnowledgeDetailsResponseBody : Tea.TeaModel {
    public var costTime: String?

    public var datas: [[String: Any]]?

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
        if self.costTime != nil {
            map["CostTime"] = self.costTime!
        }
        if self.datas != nil {
            map["Datas"] = self.datas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
            self.costTime = dict["CostTime"] as! String
        }
        if dict.keys.contains("Datas") && dict["Datas"] != nil {
            self.datas = dict["Datas"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListBotKnowledgeDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBotKnowledgeDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListBotKnowledgeDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBotReceptionDetailDatasRequest : Tea.TeaModel {
    public var agentKey: String?

    public var endTime: String?

    public var robotInstanceId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.robotInstanceId != nil {
            map["RobotInstanceId"] = self.robotInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RobotInstanceId") && dict["RobotInstanceId"] != nil {
            self.robotInstanceId = dict["RobotInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class ListBotReceptionDetailDatasResponseBody : Tea.TeaModel {
    public var costTime: String?

    public var datas: [[String: Any]]?

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
        if self.costTime != nil {
            map["CostTime"] = self.costTime!
        }
        if self.datas != nil {
            map["Datas"] = self.datas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTime") && dict["CostTime"] != nil {
            self.costTime = dict["CostTime"] as! String
        }
        if dict.keys.contains("Datas") && dict["Datas"] != nil {
            self.datas = dict["Datas"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListBotReceptionDetailDatasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBotReceptionDetailDatasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListBotReceptionDetailDatasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListConversationLogsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class ListConversationLogsResponseBody : Tea.TeaModel {
    public var chatLogs: [[String: Any]]?

    public var requestId: String?

    public var rounds: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chatLogs != nil {
            map["ChatLogs"] = self.chatLogs!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rounds != nil {
            map["Rounds"] = self.rounds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChatLogs") && dict["ChatLogs"] != nil {
            self.chatLogs = dict["ChatLogs"] as! [[String: Any]]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rounds") && dict["Rounds"] != nil {
            self.rounds = dict["Rounds"] as! Int64
        }
    }
}

public class ListConversationLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConversationLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListConversationLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MoveKnowledgeCategoryRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryId: Int64?

    public var knowledgeId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
    }
}

public class MoveKnowledgeCategoryResponseBody : Tea.TeaModel {
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

public class MoveKnowledgeCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveKnowledgeCategoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = MoveKnowledgeCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishDialogFlowRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dialogId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
    }
}

public class PublishDialogFlowResponseBody : Tea.TeaModel {
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

public class PublishDialogFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishDialogFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PublishDialogFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishKnowledgeRequest : Tea.TeaModel {
    public var agentKey: String?

    public var async: Bool?

    public var knowledgeId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.async != nil {
            map["Async"] = self.async!
        }
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Async") && dict["Async"] != nil {
            self.async = dict["Async"] as! Bool
        }
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
    }
}

public class PublishKnowledgeResponseBody : Tea.TeaModel {
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

public class PublishKnowledgeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishKnowledgeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PublishKnowledgeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryBotsRequest : Tea.TeaModel {
    public var agentKey: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class QueryBotsResponseBody : Tea.TeaModel {
    public class Bots : Tea.TeaModel {
        public var avatar: String?

        public var createTime: String?

        public var instanceId: String?

        public var introduction: String?

        public var languageCode: String?

        public var name: String?

        public var timeZone: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avatar != nil {
                map["Avatar"] = self.avatar!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.introduction != nil {
                map["Introduction"] = self.introduction!
            }
            if self.languageCode != nil {
                map["LanguageCode"] = self.languageCode!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.timeZone != nil {
                map["TimeZone"] = self.timeZone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Avatar") && dict["Avatar"] != nil {
                self.avatar = dict["Avatar"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Introduction") && dict["Introduction"] != nil {
                self.introduction = dict["Introduction"] as! String
            }
            if dict.keys.contains("LanguageCode") && dict["LanguageCode"] != nil {
                self.languageCode = dict["LanguageCode"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("TimeZone") && dict["TimeZone"] != nil {
                self.timeZone = dict["TimeZone"] as! String
            }
        }
    }
    public var bots: [QueryBotsResponseBody.Bots]?

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
        if self.bots != nil {
            var tmp : [Any] = []
            for k in self.bots! {
                tmp.append(k.toMap())
            }
            map["Bots"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bots") && dict["Bots"] != nil {
            var tmp : [QueryBotsResponseBody.Bots] = []
            for v in dict["Bots"] as! [Any] {
                var model = QueryBotsResponseBody.Bots()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.bots = tmp
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class QueryBotsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBotsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryBotsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCategoriesRequest : Tea.TeaModel {
    public var agentKey: String?

    public var knowledgeType: Int64?

    public var parentCategoryId: Int64?

    public var showChildrens: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledgeType != nil {
            map["KnowledgeType"] = self.knowledgeType!
        }
        if self.parentCategoryId != nil {
            map["ParentCategoryId"] = self.parentCategoryId!
        }
        if self.showChildrens != nil {
            map["ShowChildrens"] = self.showChildrens!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("KnowledgeType") && dict["KnowledgeType"] != nil {
            self.knowledgeType = dict["KnowledgeType"] as! Int64
        }
        if dict.keys.contains("ParentCategoryId") && dict["ParentCategoryId"] != nil {
            self.parentCategoryId = dict["ParentCategoryId"] as! Int64
        }
        if dict.keys.contains("ShowChildrens") && dict["ShowChildrens"] != nil {
            self.showChildrens = dict["ShowChildrens"] as! Bool
        }
    }
}

public class QueryCategoriesResponseBody : Tea.TeaModel {
    public var categories: [Children]?

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
        if self.categories != nil {
            var tmp : [Any] = []
            for k in self.categories! {
                tmp.append(k.toMap())
            }
            map["Categories"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Categories") && dict["Categories"] != nil {
            var tmp : [Children] = []
            for v in dict["Categories"] as! [Any] {
                var model = Children()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.categories = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryCategoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCategoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryCategoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCoreWordsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var coreWordName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var synonym: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.coreWordName != nil {
            map["CoreWordName"] = self.coreWordName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.synonym != nil {
            map["Synonym"] = self.synonym!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CoreWordName") && dict["CoreWordName"] != nil {
            self.coreWordName = dict["CoreWordName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Synonym") && dict["Synonym"] != nil {
            self.synonym = dict["Synonym"] as! String
        }
    }
}

public class QueryCoreWordsResponseBody : Tea.TeaModel {
    public class CoreWords : Tea.TeaModel {
        public var coreWordCode: String?

        public var coreWordName: String?

        public var createTime: String?

        public var modifyTime: String?

        public var synonyms: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.coreWordCode != nil {
                map["CoreWordCode"] = self.coreWordCode!
            }
            if self.coreWordName != nil {
                map["CoreWordName"] = self.coreWordName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.synonyms != nil {
                map["Synonyms"] = self.synonyms!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CoreWordCode") && dict["CoreWordCode"] != nil {
                self.coreWordCode = dict["CoreWordCode"] as! String
            }
            if dict.keys.contains("CoreWordName") && dict["CoreWordName"] != nil {
                self.coreWordName = dict["CoreWordName"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("Synonyms") && dict["Synonyms"] != nil {
                self.synonyms = dict["Synonyms"] as! [String]
            }
        }
    }
    public var coreWords: [QueryCoreWordsResponseBody.CoreWords]?

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
        if self.coreWords != nil {
            var tmp : [Any] = []
            for k in self.coreWords! {
                tmp.append(k.toMap())
            }
            map["CoreWords"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CoreWords") && dict["CoreWords"] != nil {
            var tmp : [QueryCoreWordsResponseBody.CoreWords] = []
            for v in dict["CoreWords"] as! [Any] {
                var model = QueryCoreWordsResponseBody.CoreWords()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.coreWords = tmp
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class QueryCoreWordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCoreWordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryCoreWordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDialogsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dialogName: String?

    public var instanceId: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dialogName != nil {
            map["DialogName"] = self.dialogName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DialogName") && dict["DialogName"] != nil {
            self.dialogName = dict["DialogName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class QueryDialogsResponseBody : Tea.TeaModel {
    public class Dialogs : Tea.TeaModel {
        public var createTime: String?

        public var createUserId: String?

        public var createUserName: String?

        public var description_: String?

        public var dialogId: Int64?

        public var dialogName: String?

        public var isOnline: Bool?

        public var isSampleDialog: Bool?

        public var modifyTime: String?

        public var modifyUserId: String?

        public var modifyUserName: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUserId != nil {
                map["CreateUserId"] = self.createUserId!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.dialogId != nil {
                map["DialogId"] = self.dialogId!
            }
            if self.dialogName != nil {
                map["DialogName"] = self.dialogName!
            }
            if self.isOnline != nil {
                map["IsOnline"] = self.isOnline!
            }
            if self.isSampleDialog != nil {
                map["IsSampleDialog"] = self.isSampleDialog!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.modifyUserId != nil {
                map["ModifyUserId"] = self.modifyUserId!
            }
            if self.modifyUserName != nil {
                map["ModifyUserName"] = self.modifyUserName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUserId") && dict["CreateUserId"] != nil {
                self.createUserId = dict["CreateUserId"] as! String
            }
            if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
                self.createUserName = dict["CreateUserName"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
                self.dialogId = dict["DialogId"] as! Int64
            }
            if dict.keys.contains("DialogName") && dict["DialogName"] != nil {
                self.dialogName = dict["DialogName"] as! String
            }
            if dict.keys.contains("IsOnline") && dict["IsOnline"] != nil {
                self.isOnline = dict["IsOnline"] as! Bool
            }
            if dict.keys.contains("IsSampleDialog") && dict["IsSampleDialog"] != nil {
                self.isSampleDialog = dict["IsSampleDialog"] as! Bool
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ModifyUserId") && dict["ModifyUserId"] != nil {
                self.modifyUserId = dict["ModifyUserId"] as! String
            }
            if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
                self.modifyUserName = dict["ModifyUserName"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var dialogs: [QueryDialogsResponseBody.Dialogs]?

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
        if self.dialogs != nil {
            var tmp : [Any] = []
            for k in self.dialogs! {
                tmp.append(k.toMap())
            }
            map["Dialogs"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dialogs") && dict["Dialogs"] != nil {
            var tmp : [QueryDialogsResponseBody.Dialogs] = []
            for v in dict["Dialogs"] as! [Any] {
                var model = QueryDialogsResponseBody.Dialogs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dialogs = tmp
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class QueryDialogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDialogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryDialogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryEntitiesRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dialogId: Int64?

    public var entityName: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        if self.entityName != nil {
            map["EntityName"] = self.entityName!
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
        if dict.keys.contains("EntityName") && dict["EntityName"] != nil {
            self.entityName = dict["EntityName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class QueryEntitiesResponseBody : Tea.TeaModel {
    public class Entities : Tea.TeaModel {
        public class Members : Tea.TeaModel {
            public var memberName: String?

            public var synonyms: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.memberName != nil {
                    map["MemberName"] = self.memberName!
                }
                if self.synonyms != nil {
                    map["Synonyms"] = self.synonyms!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MemberName") && dict["MemberName"] != nil {
                    self.memberName = dict["MemberName"] as! String
                }
                if dict.keys.contains("Synonyms") && dict["Synonyms"] != nil {
                    self.synonyms = dict["Synonyms"] as! [String]
                }
            }
        }
        public var createTime: String?

        public var createUserId: String?

        public var createUserName: String?

        public var entityId: Int64?

        public var entityName: String?

        public var entityType: String?

        public var members: [QueryEntitiesResponseBody.Entities.Members]?

        public var modifyTime: String?

        public var modifyUserId: String?

        public var modifyUserName: String?

        public var regex: String?

        public override init() {
            super.init()
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
            if self.createUserId != nil {
                map["CreateUserId"] = self.createUserId!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.entityName != nil {
                map["EntityName"] = self.entityName!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.members != nil {
                var tmp : [Any] = []
                for k in self.members! {
                    tmp.append(k.toMap())
                }
                map["Members"] = tmp
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.modifyUserId != nil {
                map["ModifyUserId"] = self.modifyUserId!
            }
            if self.modifyUserName != nil {
                map["ModifyUserName"] = self.modifyUserName!
            }
            if self.regex != nil {
                map["Regex"] = self.regex!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUserId") && dict["CreateUserId"] != nil {
                self.createUserId = dict["CreateUserId"] as! String
            }
            if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
                self.createUserName = dict["CreateUserName"] as! String
            }
            if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
                self.entityId = dict["EntityId"] as! Int64
            }
            if dict.keys.contains("EntityName") && dict["EntityName"] != nil {
                self.entityName = dict["EntityName"] as! String
            }
            if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("Members") && dict["Members"] != nil {
                var tmp : [QueryEntitiesResponseBody.Entities.Members] = []
                for v in dict["Members"] as! [Any] {
                    var model = QueryEntitiesResponseBody.Entities.Members()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.members = tmp
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ModifyUserId") && dict["ModifyUserId"] != nil {
                self.modifyUserId = dict["ModifyUserId"] as! String
            }
            if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
                self.modifyUserName = dict["ModifyUserName"] as! String
            }
            if dict.keys.contains("Regex") && dict["Regex"] != nil {
                self.regex = dict["Regex"] as! String
            }
        }
    }
    public var entities: [QueryEntitiesResponseBody.Entities]?

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
        if self.entities != nil {
            var tmp : [Any] = []
            for k in self.entities! {
                tmp.append(k.toMap())
            }
            map["Entities"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Entities") && dict["Entities"] != nil {
            var tmp : [QueryEntitiesResponseBody.Entities] = []
            for v in dict["Entities"] as! [Any] {
                var model = QueryEntitiesResponseBody.Entities()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.entities = tmp
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class QueryEntitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEntitiesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryEntitiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryIntentsRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dialogId: Int64?

    public var instanceId: String?

    public var intentName: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.intentName != nil {
            map["IntentName"] = self.intentName!
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IntentName") && dict["IntentName"] != nil {
            self.intentName = dict["IntentName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class QueryIntentsResponseBody : Tea.TeaModel {
    public class Intents : Tea.TeaModel {
        public class RuleCheck : Tea.TeaModel {
            public var error: [String]?

            public var strict: Bool?

            public var text: String?

            public var warning: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.error != nil {
                    map["Error"] = self.error!
                }
                if self.strict != nil {
                    map["Strict"] = self.strict!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.warning != nil {
                    map["Warning"] = self.warning!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Error") && dict["Error"] != nil {
                    self.error = dict["Error"] as! [String]
                }
                if dict.keys.contains("Strict") && dict["Strict"] != nil {
                    self.strict = dict["Strict"] as! Bool
                }
                if dict.keys.contains("Text") && dict["Text"] != nil {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("Warning") && dict["Warning"] != nil {
                    self.warning = dict["Warning"] as! [String]
                }
            }
        }
        public class Slot : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public var userSayId: String?

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
                    if self.userSayId != nil {
                        map["UserSayId"] = self.userSayId!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("UserSayId") && dict["UserSayId"] != nil {
                        self.userSayId = dict["UserSayId"] as! String
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var isArray: Bool?

            public var isNecessary: Bool?

            public var lifeSpan: Int32?

            public var name: String?

            public var question: [String]?

            public var slotId: String?

            public var tags: [QueryIntentsResponseBody.Intents.Slot.Tags]?

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
                if self.isArray != nil {
                    map["IsArray"] = self.isArray!
                }
                if self.isNecessary != nil {
                    map["IsNecessary"] = self.isNecessary!
                }
                if self.lifeSpan != nil {
                    map["LifeSpan"] = self.lifeSpan!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.question != nil {
                    map["Question"] = self.question!
                }
                if self.slotId != nil {
                    map["SlotId"] = self.slotId!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IsArray") && dict["IsArray"] != nil {
                    self.isArray = dict["IsArray"] as! Bool
                }
                if dict.keys.contains("IsNecessary") && dict["IsNecessary"] != nil {
                    self.isNecessary = dict["IsNecessary"] as! Bool
                }
                if dict.keys.contains("LifeSpan") && dict["LifeSpan"] != nil {
                    self.lifeSpan = dict["LifeSpan"] as! Int32
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Question") && dict["Question"] != nil {
                    self.question = dict["Question"] as! [String]
                }
                if dict.keys.contains("SlotId") && dict["SlotId"] != nil {
                    self.slotId = dict["SlotId"] as! String
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var tmp : [QueryIntentsResponseBody.Intents.Slot.Tags] = []
                    for v in dict["Tags"] as! [Any] {
                        var model = QueryIntentsResponseBody.Intents.Slot.Tags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class UserSay : Tea.TeaModel {
            public class Data : Tea.TeaModel {
                public var slotId: String?

                public var text: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.slotId != nil {
                        map["SlotId"] = self.slotId!
                    }
                    if self.text != nil {
                        map["Text"] = self.text!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SlotId") && dict["SlotId"] != nil {
                        self.slotId = dict["SlotId"] as! String
                    }
                    if dict.keys.contains("Text") && dict["Text"] != nil {
                        self.text = dict["Text"] as! String
                    }
                }
            }
            public var data: [QueryIntentsResponseBody.Intents.UserSay.Data]?

            public var strict: Bool?

            public var userSayId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
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
                if self.strict != nil {
                    map["Strict"] = self.strict!
                }
                if self.userSayId != nil {
                    map["UserSayId"] = self.userSayId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Data") && dict["Data"] != nil {
                    var tmp : [QueryIntentsResponseBody.Intents.UserSay.Data] = []
                    for v in dict["Data"] as! [Any] {
                        var model = QueryIntentsResponseBody.Intents.UserSay.Data()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.data = tmp
                }
                if dict.keys.contains("Strict") && dict["Strict"] != nil {
                    self.strict = dict["Strict"] as! Bool
                }
                if dict.keys.contains("UserSayId") && dict["UserSayId"] != nil {
                    self.userSayId = dict["UserSayId"] as! String
                }
            }
        }
        public var createTime: String?

        public var createUserId: String?

        public var createUserName: String?

        public var intentId: Int64?

        public var modifyTime: String?

        public var modifyUserId: String?

        public var modifyUserName: String?

        public var name: String?

        public var ruleCheck: [QueryIntentsResponseBody.Intents.RuleCheck]?

        public var slot: [QueryIntentsResponseBody.Intents.Slot]?

        public var userSay: [QueryIntentsResponseBody.Intents.UserSay]?

        public override init() {
            super.init()
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
            if self.createUserId != nil {
                map["CreateUserId"] = self.createUserId!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.intentId != nil {
                map["IntentId"] = self.intentId!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.modifyUserId != nil {
                map["ModifyUserId"] = self.modifyUserId!
            }
            if self.modifyUserName != nil {
                map["ModifyUserName"] = self.modifyUserName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ruleCheck != nil {
                var tmp : [Any] = []
                for k in self.ruleCheck! {
                    tmp.append(k.toMap())
                }
                map["RuleCheck"] = tmp
            }
            if self.slot != nil {
                var tmp : [Any] = []
                for k in self.slot! {
                    tmp.append(k.toMap())
                }
                map["Slot"] = tmp
            }
            if self.userSay != nil {
                var tmp : [Any] = []
                for k in self.userSay! {
                    tmp.append(k.toMap())
                }
                map["UserSay"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUserId") && dict["CreateUserId"] != nil {
                self.createUserId = dict["CreateUserId"] as! String
            }
            if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
                self.createUserName = dict["CreateUserName"] as! String
            }
            if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
                self.intentId = dict["IntentId"] as! Int64
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ModifyUserId") && dict["ModifyUserId"] != nil {
                self.modifyUserId = dict["ModifyUserId"] as! String
            }
            if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
                self.modifyUserName = dict["ModifyUserName"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RuleCheck") && dict["RuleCheck"] != nil {
                var tmp : [QueryIntentsResponseBody.Intents.RuleCheck] = []
                for v in dict["RuleCheck"] as! [Any] {
                    var model = QueryIntentsResponseBody.Intents.RuleCheck()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ruleCheck = tmp
            }
            if dict.keys.contains("Slot") && dict["Slot"] != nil {
                var tmp : [QueryIntentsResponseBody.Intents.Slot] = []
                for v in dict["Slot"] as! [Any] {
                    var model = QueryIntentsResponseBody.Intents.Slot()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.slot = tmp
            }
            if dict.keys.contains("UserSay") && dict["UserSay"] != nil {
                var tmp : [QueryIntentsResponseBody.Intents.UserSay] = []
                for v in dict["UserSay"] as! [Any] {
                    var model = QueryIntentsResponseBody.Intents.UserSay()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userSay = tmp
            }
        }
    }
    public var intents: [QueryIntentsResponseBody.Intents]?

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
        if self.intents != nil {
            var tmp : [Any] = []
            for k in self.intents! {
                tmp.append(k.toMap())
            }
            map["Intents"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Intents") && dict["Intents"] != nil {
            var tmp : [QueryIntentsResponseBody.Intents] = []
            for v in dict["Intents"] as! [Any] {
                var model = QueryIntentsResponseBody.Intents()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.intents = tmp
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class QueryIntentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryIntentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryIntentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryKnowledgesRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryId: Int64?

    public var coreWordName: String?

    public var knowledgeTitle: String?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.coreWordName != nil {
            map["CoreWordName"] = self.coreWordName!
        }
        if self.knowledgeTitle != nil {
            map["KnowledgeTitle"] = self.knowledgeTitle!
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
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("CoreWordName") && dict["CoreWordName"] != nil {
            self.coreWordName = dict["CoreWordName"] as! String
        }
        if dict.keys.contains("KnowledgeTitle") && dict["KnowledgeTitle"] != nil {
            self.knowledgeTitle = dict["KnowledgeTitle"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class QueryKnowledgesResponseBody : Tea.TeaModel {
    public class Knowledges : Tea.TeaModel {
        public var categoryId: Int64?

        public var coreWords: [String]?

        public var createTime: String?

        public var createUserName: String?

        public var endDate: String?

        public var knowledgeId: Int64?

        public var knowledgeStatus: Int32?

        public var knowledgeTitle: String?

        public var modifyTime: String?

        public var modifyUserName: String?

        public var startDate: String?

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
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.coreWords != nil {
                map["CoreWords"] = self.coreWords!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.knowledgeId != nil {
                map["KnowledgeId"] = self.knowledgeId!
            }
            if self.knowledgeStatus != nil {
                map["KnowledgeStatus"] = self.knowledgeStatus!
            }
            if self.knowledgeTitle != nil {
                map["KnowledgeTitle"] = self.knowledgeTitle!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.modifyUserName != nil {
                map["ModifyUserName"] = self.modifyUserName!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("CoreWords") && dict["CoreWords"] != nil {
                self.coreWords = dict["CoreWords"] as! [String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
                self.createUserName = dict["CreateUserName"] as! String
            }
            if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
                self.knowledgeId = dict["KnowledgeId"] as! Int64
            }
            if dict.keys.contains("KnowledgeStatus") && dict["KnowledgeStatus"] != nil {
                self.knowledgeStatus = dict["KnowledgeStatus"] as! Int32
            }
            if dict.keys.contains("KnowledgeTitle") && dict["KnowledgeTitle"] != nil {
                self.knowledgeTitle = dict["KnowledgeTitle"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
                self.modifyUserName = dict["ModifyUserName"] as! String
            }
            if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
                self.startDate = dict["StartDate"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var knowledges: [QueryKnowledgesResponseBody.Knowledges]?

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
        if self.knowledges != nil {
            var tmp : [Any] = []
            for k in self.knowledges! {
                tmp.append(k.toMap())
            }
            map["Knowledges"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Knowledges") && dict["Knowledges"] != nil {
            var tmp : [QueryKnowledgesResponseBody.Knowledges] = []
            for v in dict["Knowledges"] as! [Any] {
                var model = QueryKnowledgesResponseBody.Knowledges()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.knowledges = tmp
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class QueryKnowledgesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryKnowledgesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryKnowledgesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPerspectivesRequest : Tea.TeaModel {
    public var agentKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
    }
}

public class QueryPerspectivesResponseBody : Tea.TeaModel {
    public class Perspectives : Tea.TeaModel {
        public var createTime: String?

        public var createUserName: String?

        public var modifyTime: String?

        public var modifyUserName: String?

        public var name: String?

        public var perspectiveCode: String?

        public var perspectiveId: String?

        public var selfDefine: Bool?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.modifyUserName != nil {
                map["ModifyUserName"] = self.modifyUserName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.perspectiveCode != nil {
                map["PerspectiveCode"] = self.perspectiveCode!
            }
            if self.perspectiveId != nil {
                map["PerspectiveId"] = self.perspectiveId!
            }
            if self.selfDefine != nil {
                map["SelfDefine"] = self.selfDefine!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUserName") && dict["CreateUserName"] != nil {
                self.createUserName = dict["CreateUserName"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ModifyUserName") && dict["ModifyUserName"] != nil {
                self.modifyUserName = dict["ModifyUserName"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PerspectiveCode") && dict["PerspectiveCode"] != nil {
                self.perspectiveCode = dict["PerspectiveCode"] as! String
            }
            if dict.keys.contains("PerspectiveId") && dict["PerspectiveId"] != nil {
                self.perspectiveId = dict["PerspectiveId"] as! String
            }
            if dict.keys.contains("SelfDefine") && dict["SelfDefine"] != nil {
                self.selfDefine = dict["SelfDefine"] as! Bool
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var perspectives: [QueryPerspectivesResponseBody.Perspectives]?

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
        if self.perspectives != nil {
            var tmp : [Any] = []
            for k in self.perspectives! {
                tmp.append(k.toMap())
            }
            map["Perspectives"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Perspectives") && dict["Perspectives"] != nil {
            var tmp : [QueryPerspectivesResponseBody.Perspectives] = []
            for v in dict["Perspectives"] as! [Any] {
                var model = QueryPerspectivesResponseBody.Perspectives()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.perspectives = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryPerspectivesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPerspectivesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryPerspectivesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySystemEntitiesRequest : Tea.TeaModel {
    public var agentKey: String?

    public var entityName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.entityName != nil {
            map["EntityName"] = self.entityName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityName") && dict["EntityName"] != nil {
            self.entityName = dict["EntityName"] as! String
        }
    }
}

public class QuerySystemEntitiesResponseBody : Tea.TeaModel {
    public class SystemEntities : Tea.TeaModel {
        public var defaultQuestion: String?

        public var entityCode: String?

        public var entityName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defaultQuestion != nil {
                map["DefaultQuestion"] = self.defaultQuestion!
            }
            if self.entityCode != nil {
                map["EntityCode"] = self.entityCode!
            }
            if self.entityName != nil {
                map["EntityName"] = self.entityName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultQuestion") && dict["DefaultQuestion"] != nil {
                self.defaultQuestion = dict["DefaultQuestion"] as! String
            }
            if dict.keys.contains("EntityCode") && dict["EntityCode"] != nil {
                self.entityCode = dict["EntityCode"] as! String
            }
            if dict.keys.contains("EntityName") && dict["EntityName"] != nil {
                self.entityName = dict["EntityName"] as! String
            }
        }
    }
    public var requestId: String?

    public var systemEntities: [QuerySystemEntitiesResponseBody.SystemEntities]?

    public override init() {
        super.init()
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
        if self.systemEntities != nil {
            var tmp : [Any] = []
            for k in self.systemEntities! {
                tmp.append(k.toMap())
            }
            map["SystemEntities"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SystemEntities") && dict["SystemEntities"] != nil {
            var tmp : [QuerySystemEntitiesResponseBody.SystemEntities] = []
            for v in dict["SystemEntities"] as! [Any] {
                var model = QuerySystemEntitiesResponseBody.SystemEntities()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.systemEntities = tmp
        }
    }
}

public class QuerySystemEntitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySystemEntitiesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QuerySystemEntitiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveEntityMemberRequest : Tea.TeaModel {
    public class Member : Tea.TeaModel {
        public var memberName: String?

        public var synonyms: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.memberName != nil {
                map["MemberName"] = self.memberName!
            }
            if self.synonyms != nil {
                map["Synonyms"] = self.synonyms!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberName") && dict["MemberName"] != nil {
                self.memberName = dict["MemberName"] as! String
            }
            if dict.keys.contains("Synonyms") && dict["Synonyms"] != nil {
                self.synonyms = dict["Synonyms"] as! [String]
            }
        }
    }
    public var agentKey: String?

    public var entityId: Int64?

    public var member: RemoveEntityMemberRequest.Member?

    public var removeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.member?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.member != nil {
            map["Member"] = self.member?.toMap()
        }
        if self.removeType != nil {
            map["RemoveType"] = self.removeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("Member") && dict["Member"] != nil {
            var model = RemoveEntityMemberRequest.Member()
            model.fromMap(dict["Member"] as! [String: Any])
            self.member = model
        }
        if dict.keys.contains("RemoveType") && dict["RemoveType"] != nil {
            self.removeType = dict["RemoveType"] as! String
        }
    }
}

public class RemoveEntityMemberShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var entityId: Int64?

    public var memberShrink: String?

    public var removeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.memberShrink != nil {
            map["Member"] = self.memberShrink!
        }
        if self.removeType != nil {
            map["RemoveType"] = self.removeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("Member") && dict["Member"] != nil {
            self.memberShrink = dict["Member"] as! String
        }
        if dict.keys.contains("RemoveType") && dict["RemoveType"] != nil {
            self.removeType = dict["RemoveType"] as! String
        }
    }
}

public class RemoveEntityMemberResponseBody : Tea.TeaModel {
    public var entityId: Int64?

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
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveEntityMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveEntityMemberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveEntityMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveSynonymRequest : Tea.TeaModel {
    public var agentKey: String?

    public var coreWordName: String?

    public var synonym: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.coreWordName != nil {
            map["CoreWordName"] = self.coreWordName!
        }
        if self.synonym != nil {
            map["Synonym"] = self.synonym!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CoreWordName") && dict["CoreWordName"] != nil {
            self.coreWordName = dict["CoreWordName"] as! String
        }
        if dict.keys.contains("Synonym") && dict["Synonym"] != nil {
            self.synonym = dict["Synonym"] as! String
        }
    }
}

public class RemoveSynonymResponseBody : Tea.TeaModel {
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

public class RemoveSynonymResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveSynonymResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveSynonymResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TestDialogFlowRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dialogId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
    }
}

public class TestDialogFlowResponseBody : Tea.TeaModel {
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

public class TestDialogFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TestDialogFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TestDialogFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCategoryRequest : Tea.TeaModel {
    public var agentKey: String?

    public var categoryId: Int64?

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
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! Int64
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class UpdateCategoryResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCategoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCoreWordRequest : Tea.TeaModel {
    public var agentKey: String?

    public var coreWordCode: String?

    public var coreWordName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.coreWordCode != nil {
            map["CoreWordCode"] = self.coreWordCode!
        }
        if self.coreWordName != nil {
            map["CoreWordName"] = self.coreWordName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("CoreWordCode") && dict["CoreWordCode"] != nil {
            self.coreWordCode = dict["CoreWordCode"] as! String
        }
        if dict.keys.contains("CoreWordName") && dict["CoreWordName"] != nil {
            self.coreWordName = dict["CoreWordName"] as! String
        }
    }
}

public class UpdateCoreWordResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateCoreWordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCoreWordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateCoreWordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDialogRequest : Tea.TeaModel {
    public var agentKey: String?

    public var description_: String?

    public var dialogId: Int64?

    public var dialogName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        if self.dialogName != nil {
            map["DialogName"] = self.dialogName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
        if dict.keys.contains("DialogName") && dict["DialogName"] != nil {
            self.dialogName = dict["DialogName"] as! String
        }
    }
}

public class UpdateDialogResponseBody : Tea.TeaModel {
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

public class UpdateDialogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDialogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDialogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDialogFlowRequest : Tea.TeaModel {
    public class ModuleDefinition : Tea.TeaModel {
        public var globalVars: [String: Any]?

        public var moduleDefinition: PaasProcessData?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.moduleDefinition?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.globalVars != nil {
                map["GlobalVars"] = self.globalVars!
            }
            if self.moduleDefinition != nil {
                map["ModuleDefinition"] = self.moduleDefinition?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GlobalVars") && dict["GlobalVars"] != nil {
                self.globalVars = dict["GlobalVars"] as! [String: Any]
            }
            if dict.keys.contains("ModuleDefinition") && dict["ModuleDefinition"] != nil {
                var model = PaasProcessData()
                model.fromMap(dict["ModuleDefinition"] as! [String: Any])
                self.moduleDefinition = model
            }
        }
    }
    public var agentKey: String?

    public var dialogId: Int64?

    public var moduleDefinition: UpdateDialogFlowRequest.ModuleDefinition?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.moduleDefinition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        if self.moduleDefinition != nil {
            map["ModuleDefinition"] = self.moduleDefinition?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
        if dict.keys.contains("ModuleDefinition") && dict["ModuleDefinition"] != nil {
            var model = UpdateDialogFlowRequest.ModuleDefinition()
            model.fromMap(dict["ModuleDefinition"] as! [String: Any])
            self.moduleDefinition = model
        }
    }
}

public class UpdateDialogFlowShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var dialogId: Int64?

    public var moduleDefinitionShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        if self.moduleDefinitionShrink != nil {
            map["ModuleDefinition"] = self.moduleDefinitionShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("DialogId") && dict["DialogId"] != nil {
            self.dialogId = dict["DialogId"] as! Int64
        }
        if dict.keys.contains("ModuleDefinition") && dict["ModuleDefinition"] != nil {
            self.moduleDefinitionShrink = dict["ModuleDefinition"] as! String
        }
    }
}

public class UpdateDialogFlowResponseBody : Tea.TeaModel {
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

public class UpdateDialogFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDialogFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDialogFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEntityRequest : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var memberName: String?

        public var synonyms: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.memberName != nil {
                map["MemberName"] = self.memberName!
            }
            if self.synonyms != nil {
                map["Synonyms"] = self.synonyms!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MemberName") && dict["MemberName"] != nil {
                self.memberName = dict["MemberName"] as! String
            }
            if dict.keys.contains("Synonyms") && dict["Synonyms"] != nil {
                self.synonyms = dict["Synonyms"] as! [String]
            }
        }
    }
    public var agentKey: String?

    public var entityId: Int64?

    public var entityName: String?

    public var entityType: String?

    public var members: [UpdateEntityRequest.Members]?

    public var regex: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.entityName != nil {
            map["EntityName"] = self.entityName!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["Members"] = tmp
        }
        if self.regex != nil {
            map["Regex"] = self.regex!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityName") && dict["EntityName"] != nil {
            self.entityName = dict["EntityName"] as! String
        }
        if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [UpdateEntityRequest.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = UpdateEntityRequest.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.members = tmp
        }
        if dict.keys.contains("Regex") && dict["Regex"] != nil {
            self.regex = dict["Regex"] as! String
        }
    }
}

public class UpdateEntityShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var entityId: Int64?

    public var entityName: String?

    public var entityType: String?

    public var membersShrink: String?

    public var regex: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.entityName != nil {
            map["EntityName"] = self.entityName!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.membersShrink != nil {
            map["Members"] = self.membersShrink!
        }
        if self.regex != nil {
            map["Regex"] = self.regex!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityName") && dict["EntityName"] != nil {
            self.entityName = dict["EntityName"] as! String
        }
        if dict.keys.contains("EntityType") && dict["EntityType"] != nil {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Members") && dict["Members"] != nil {
            self.membersShrink = dict["Members"] as! String
        }
        if dict.keys.contains("Regex") && dict["Regex"] != nil {
            self.regex = dict["Regex"] as! String
        }
    }
}

public class UpdateEntityResponseBody : Tea.TeaModel {
    public var entityId: Int64?

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
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityId") && dict["EntityId"] != nil {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEntityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateIntentRequest : Tea.TeaModel {
    public var agentKey: String?

    public var intentDefinition: IntentCreateDTO?

    public var intentId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.intentDefinition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.intentDefinition != nil {
            map["IntentDefinition"] = self.intentDefinition?.toMap()
        }
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("IntentDefinition") && dict["IntentDefinition"] != nil {
            var model = IntentCreateDTO()
            model.fromMap(dict["IntentDefinition"] as! [String: Any])
            self.intentDefinition = model
        }
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
    }
}

public class UpdateIntentShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var intentDefinitionShrink: String?

    public var intentId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.intentDefinitionShrink != nil {
            map["IntentDefinition"] = self.intentDefinitionShrink!
        }
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("IntentDefinition") && dict["IntentDefinition"] != nil {
            self.intentDefinitionShrink = dict["IntentDefinition"] as! String
        }
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
    }
}

public class UpdateIntentResponseBody : Tea.TeaModel {
    public var intentId: Int64?

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
        if self.intentId != nil {
            map["IntentId"] = self.intentId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IntentId") && dict["IntentId"] != nil {
            self.intentId = dict["IntentId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateIntentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateIntentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateIntentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateKnowledgeRequest : Tea.TeaModel {
    public class Knowledge : Tea.TeaModel {
        public class Outlines : Tea.TeaModel {
            public var action: String?

            public var knowledgeId: Int64?

            public var outlineId: Int64?

            public var title: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.knowledgeId != nil {
                    map["KnowledgeId"] = self.knowledgeId!
                }
                if self.outlineId != nil {
                    map["OutlineId"] = self.outlineId!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") && dict["Action"] != nil {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
                    self.knowledgeId = dict["KnowledgeId"] as! Int64
                }
                if dict.keys.contains("OutlineId") && dict["OutlineId"] != nil {
                    self.outlineId = dict["OutlineId"] as! Int64
                }
                if dict.keys.contains("Title") && dict["Title"] != nil {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public class SimQuestions : Tea.TeaModel {
            public var action: String?

            public var simQuestionId: Int64?

            public var title: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.simQuestionId != nil {
                    map["SimQuestionId"] = self.simQuestionId!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") && dict["Action"] != nil {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("SimQuestionId") && dict["SimQuestionId"] != nil {
                    self.simQuestionId = dict["SimQuestionId"] as! Int64
                }
                if dict.keys.contains("Title") && dict["Title"] != nil {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public class Solutions : Tea.TeaModel {
            public var action: String?

            public var content: String?

            public var perspectiveIds: [String]?

            public var plainText: String?

            public var solutionId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.perspectiveIds != nil {
                    map["PerspectiveIds"] = self.perspectiveIds!
                }
                if self.plainText != nil {
                    map["PlainText"] = self.plainText!
                }
                if self.solutionId != nil {
                    map["SolutionId"] = self.solutionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") && dict["Action"] != nil {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("PerspectiveIds") && dict["PerspectiveIds"] != nil {
                    self.perspectiveIds = dict["PerspectiveIds"] as! [String]
                }
                if dict.keys.contains("PlainText") && dict["PlainText"] != nil {
                    self.plainText = dict["PlainText"] as! String
                }
                if dict.keys.contains("SolutionId") && dict["SolutionId"] != nil {
                    self.solutionId = dict["SolutionId"] as! Int64
                }
            }
        }
        public var categoryId: Int64?

        public var endDate: String?

        public var knowledgeId: Int64?

        public var knowledgeTitle: String?

        public var knowledgeType: Int32?

        public var outlines: [UpdateKnowledgeRequest.Knowledge.Outlines]?

        public var simQuestions: [UpdateKnowledgeRequest.Knowledge.SimQuestions]?

        public var solutions: [UpdateKnowledgeRequest.Knowledge.Solutions]?

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
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.knowledgeId != nil {
                map["KnowledgeId"] = self.knowledgeId!
            }
            if self.knowledgeTitle != nil {
                map["KnowledgeTitle"] = self.knowledgeTitle!
            }
            if self.knowledgeType != nil {
                map["KnowledgeType"] = self.knowledgeType!
            }
            if self.outlines != nil {
                var tmp : [Any] = []
                for k in self.outlines! {
                    tmp.append(k.toMap())
                }
                map["Outlines"] = tmp
            }
            if self.simQuestions != nil {
                var tmp : [Any] = []
                for k in self.simQuestions! {
                    tmp.append(k.toMap())
                }
                map["SimQuestions"] = tmp
            }
            if self.solutions != nil {
                var tmp : [Any] = []
                for k in self.solutions! {
                    tmp.append(k.toMap())
                }
                map["Solutions"] = tmp
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
                self.knowledgeId = dict["KnowledgeId"] as! Int64
            }
            if dict.keys.contains("KnowledgeTitle") && dict["KnowledgeTitle"] != nil {
                self.knowledgeTitle = dict["KnowledgeTitle"] as! String
            }
            if dict.keys.contains("KnowledgeType") && dict["KnowledgeType"] != nil {
                self.knowledgeType = dict["KnowledgeType"] as! Int32
            }
            if dict.keys.contains("Outlines") && dict["Outlines"] != nil {
                var tmp : [UpdateKnowledgeRequest.Knowledge.Outlines] = []
                for v in dict["Outlines"] as! [Any] {
                    var model = UpdateKnowledgeRequest.Knowledge.Outlines()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.outlines = tmp
            }
            if dict.keys.contains("SimQuestions") && dict["SimQuestions"] != nil {
                var tmp : [UpdateKnowledgeRequest.Knowledge.SimQuestions] = []
                for v in dict["SimQuestions"] as! [Any] {
                    var model = UpdateKnowledgeRequest.Knowledge.SimQuestions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.simQuestions = tmp
            }
            if dict.keys.contains("Solutions") && dict["Solutions"] != nil {
                var tmp : [UpdateKnowledgeRequest.Knowledge.Solutions] = []
                for v in dict["Solutions"] as! [Any] {
                    var model = UpdateKnowledgeRequest.Knowledge.Solutions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.solutions = tmp
            }
            if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
                self.startDate = dict["StartDate"] as! String
            }
        }
    }
    public var agentKey: String?

    public var knowledge: UpdateKnowledgeRequest.Knowledge?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.knowledge?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledge != nil {
            map["Knowledge"] = self.knowledge?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Knowledge") && dict["Knowledge"] != nil {
            var model = UpdateKnowledgeRequest.Knowledge()
            model.fromMap(dict["Knowledge"] as! [String: Any])
            self.knowledge = model
        }
    }
}

public class UpdateKnowledgeShrinkRequest : Tea.TeaModel {
    public var agentKey: String?

    public var knowledgeShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.knowledgeShrink != nil {
            map["Knowledge"] = self.knowledgeShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Knowledge") && dict["Knowledge"] != nil {
            self.knowledgeShrink = dict["Knowledge"] as! String
        }
    }
}

public class UpdateKnowledgeResponseBody : Tea.TeaModel {
    public var knowledgeId: Int64?

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
        if self.knowledgeId != nil {
            map["KnowledgeId"] = self.knowledgeId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KnowledgeId") && dict["KnowledgeId"] != nil {
            self.knowledgeId = dict["KnowledgeId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateKnowledgeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateKnowledgeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateKnowledgeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePerspectiveRequest : Tea.TeaModel {
    public var agentKey: String?

    public var name: String?

    public var perspectiveId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentKey != nil {
            map["AgentKey"] = self.agentKey!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.perspectiveId != nil {
            map["PerspectiveId"] = self.perspectiveId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentKey") && dict["AgentKey"] != nil {
            self.agentKey = dict["AgentKey"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PerspectiveId") && dict["PerspectiveId"] != nil {
            self.perspectiveId = dict["PerspectiveId"] as! String
        }
    }
}

public class UpdatePerspectiveResponseBody : Tea.TeaModel {
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

public class UpdatePerspectiveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePerspectiveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePerspectiveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
