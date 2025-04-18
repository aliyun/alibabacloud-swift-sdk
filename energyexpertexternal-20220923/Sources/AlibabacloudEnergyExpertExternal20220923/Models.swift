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

public class CarbonEmissionElecSummaryItem : Tea.TeaModel {
    public var carbonEmissionData: Double?

    public var dataUnit: String?

    public var name: String?

    public var ratio: Double?

    public var rawData: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.carbonEmissionData != nil {
            map["carbonEmissionData"] = self.carbonEmissionData!
        }
        if self.dataUnit != nil {
            map["dataUnit"] = self.dataUnit!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.ratio != nil {
            map["ratio"] = self.ratio!
        }
        if self.rawData != nil {
            map["rawData"] = self.rawData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("carbonEmissionData") {
            self.carbonEmissionData = dict["carbonEmissionData"] as! Double
        }
        if dict.keys.contains("dataUnit") {
            self.dataUnit = dict["dataUnit"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("ratio") {
            self.ratio = dict["ratio"] as! Double
        }
        if dict.keys.contains("rawData") {
            self.rawData = dict["rawData"] as! Double
        }
    }
}

public class ConstituteItem : Tea.TeaModel {
    public class EnvGasEmissions : Tea.TeaModel {
        public var carbonEmissionData: Double?

        public var gasEmissionData: Double?

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
            if self.carbonEmissionData != nil {
                map["carbonEmissionData"] = self.carbonEmissionData!
            }
            if self.gasEmissionData != nil {
                map["gasEmissionData"] = self.gasEmissionData!
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
            if dict.keys.contains("carbonEmissionData") {
                self.carbonEmissionData = dict["carbonEmissionData"] as! Double
            }
            if dict.keys.contains("gasEmissionData") {
                self.gasEmissionData = dict["gasEmissionData"] as! Double
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var carbonEmissionData: Double?

    public var dataUnit: String?

    public var emissionSource: String?

    public var emissionSourceKey: String?

    public var enterpriseName: String?

    public var envGasEmissions: [ConstituteItem.EnvGasEmissions]?

    public var name: String?

    public var nameKey: String?

    public var ratio: Double?

    public var rawData: Double?

    public var subConstituteItems: [ConstituteItem]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.carbonEmissionData != nil {
            map["carbonEmissionData"] = self.carbonEmissionData!
        }
        if self.dataUnit != nil {
            map["dataUnit"] = self.dataUnit!
        }
        if self.emissionSource != nil {
            map["emissionSource"] = self.emissionSource!
        }
        if self.emissionSourceKey != nil {
            map["emissionSourceKey"] = self.emissionSourceKey!
        }
        if self.enterpriseName != nil {
            map["enterpriseName"] = self.enterpriseName!
        }
        if self.envGasEmissions != nil {
            var tmp : [Any] = []
            for k in self.envGasEmissions! {
                tmp.append(k.toMap())
            }
            map["envGasEmissions"] = tmp
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nameKey != nil {
            map["nameKey"] = self.nameKey!
        }
        if self.ratio != nil {
            map["ratio"] = self.ratio!
        }
        if self.rawData != nil {
            map["rawData"] = self.rawData!
        }
        if self.subConstituteItems != nil {
            var tmp : [Any] = []
            for k in self.subConstituteItems! {
                tmp.append(k.toMap())
            }
            map["subConstituteItems"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("carbonEmissionData") {
            self.carbonEmissionData = dict["carbonEmissionData"] as! Double
        }
        if dict.keys.contains("dataUnit") {
            self.dataUnit = dict["dataUnit"] as! String
        }
        if dict.keys.contains("emissionSource") {
            self.emissionSource = dict["emissionSource"] as! String
        }
        if dict.keys.contains("emissionSourceKey") {
            self.emissionSourceKey = dict["emissionSourceKey"] as! String
        }
        if dict.keys.contains("enterpriseName") {
            self.enterpriseName = dict["enterpriseName"] as! String
        }
        if dict.keys.contains("envGasEmissions") {
            var tmp : [ConstituteItem.EnvGasEmissions] = []
            for v in dict["envGasEmissions"] as! [Any] {
                var model = ConstituteItem.EnvGasEmissions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.envGasEmissions = tmp
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nameKey") {
            self.nameKey = dict["nameKey"] as! String
        }
        if dict.keys.contains("ratio") {
            self.ratio = dict["ratio"] as! Double
        }
        if dict.keys.contains("rawData") {
            self.rawData = dict["rawData"] as! Double
        }
        if dict.keys.contains("subConstituteItems") {
            var tmp : [ConstituteItem] = []
            for v in dict["subConstituteItems"] as! [Any] {
                var model = ConstituteItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subConstituteItems = tmp
        }
    }
}

public class ContentItem : Tea.TeaModel {
    public class ExtInfo : Tea.TeaModel {
        public class Pos : Tea.TeaModel {
            public var x: Int64?

            public var y: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.x != nil {
                    map["x"] = self.x!
                }
                if self.y != nil {
                    map["y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("x") {
                    self.x = dict["x"] as! Int64
                }
                if dict.keys.contains("y") {
                    self.y = dict["y"] as! Int64
                }
            }
        }
        public var alignment: String?

        public var index: Int64?

        public var level: Int64?

        public var pageNum: [Int64]?

        public var pos: [ContentItem.ExtInfo.Pos]?

        public var subType: String?

        public var text: String?

        public var type: String?

        public var uniqueId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alignment != nil {
                map["alignment"] = self.alignment!
            }
            if self.index != nil {
                map["index"] = self.index!
            }
            if self.level != nil {
                map["level"] = self.level!
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pos != nil {
                var tmp : [Any] = []
                for k in self.pos! {
                    tmp.append(k.toMap())
                }
                map["pos"] = tmp
            }
            if self.subType != nil {
                map["subType"] = self.subType!
            }
            if self.text != nil {
                map["text"] = self.text!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.uniqueId != nil {
                map["uniqueId"] = self.uniqueId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("alignment") {
                self.alignment = dict["alignment"] as! String
            }
            if dict.keys.contains("index") {
                self.index = dict["index"] as! Int64
            }
            if dict.keys.contains("level") {
                self.level = dict["level"] as! Int64
            }
            if dict.keys.contains("pageNum") {
                self.pageNum = dict["pageNum"] as! [Int64]
            }
            if dict.keys.contains("pos") {
                var tmp : [ContentItem.ExtInfo.Pos] = []
                for v in dict["pos"] as! [Any] {
                    var model = ContentItem.ExtInfo.Pos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pos = tmp
            }
            if dict.keys.contains("subType") {
                self.subType = dict["subType"] as! String
            }
            if dict.keys.contains("text") {
                self.text = dict["text"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("uniqueId") {
                self.uniqueId = dict["uniqueId"] as! String
            }
        }
    }
    public var extInfo: [ContentItem.ExtInfo]?

    public var score: Double?

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
        if self.extInfo != nil {
            var tmp : [Any] = []
            for k in self.extInfo! {
                tmp.append(k.toMap())
            }
            map["extInfo"] = tmp
        }
        if self.score != nil {
            map["score"] = self.score!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("extInfo") {
            var tmp : [ContentItem.ExtInfo] = []
            for v in dict["extInfo"] as! [Any] {
                var model = ContentItem.ExtInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.extInfo = tmp
        }
        if dict.keys.contains("score") {
            self.score = dict["score"] as! Double
        }
        if dict.keys.contains("text") {
            self.text = dict["text"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class EpdInventoryConstituteItem : Tea.TeaModel {
    public var carbonEmission: Double?

    public var factor: String?

    public var factorDataset: String?

    public var factorId: String?

    public var factorType: Int32?

    public var factorUnit: String?

    public var inventoryId: Int64?

    public var inventoryUnit: String?

    public var inventoryValue: Double?

    public var inventoryValuePerProduct: Double?

    public var inventoryValuePerProductUnit: String?

    public var items: [EpdInventoryConstituteItem]?

    public var name: String?

    public var num: Int64?

    public var percent: Double?

    public var quantity: Double?

    public var resourceType: String?

    public var state: Int32?

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
        if self.carbonEmission != nil {
            map["carbonEmission"] = self.carbonEmission!
        }
        if self.factor != nil {
            map["factor"] = self.factor!
        }
        if self.factorDataset != nil {
            map["factorDataset"] = self.factorDataset!
        }
        if self.factorId != nil {
            map["factorId"] = self.factorId!
        }
        if self.factorType != nil {
            map["factorType"] = self.factorType!
        }
        if self.factorUnit != nil {
            map["factorUnit"] = self.factorUnit!
        }
        if self.inventoryId != nil {
            map["inventoryId"] = self.inventoryId!
        }
        if self.inventoryUnit != nil {
            map["inventoryUnit"] = self.inventoryUnit!
        }
        if self.inventoryValue != nil {
            map["inventoryValue"] = self.inventoryValue!
        }
        if self.inventoryValuePerProduct != nil {
            map["inventoryValuePerProduct"] = self.inventoryValuePerProduct!
        }
        if self.inventoryValuePerProductUnit != nil {
            map["inventoryValuePerProductUnit"] = self.inventoryValuePerProductUnit!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.num != nil {
            map["num"] = self.num!
        }
        if self.percent != nil {
            map["percent"] = self.percent!
        }
        if self.quantity != nil {
            map["quantity"] = self.quantity!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.state != nil {
            map["state"] = self.state!
        }
        if self.unit != nil {
            map["unit"] = self.unit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("carbonEmission") {
            self.carbonEmission = dict["carbonEmission"] as! Double
        }
        if dict.keys.contains("factor") {
            self.factor = dict["factor"] as! String
        }
        if dict.keys.contains("factorDataset") {
            self.factorDataset = dict["factorDataset"] as! String
        }
        if dict.keys.contains("factorId") {
            self.factorId = dict["factorId"] as! String
        }
        if dict.keys.contains("factorType") {
            self.factorType = dict["factorType"] as! Int32
        }
        if dict.keys.contains("factorUnit") {
            self.factorUnit = dict["factorUnit"] as! String
        }
        if dict.keys.contains("inventoryId") {
            self.inventoryId = dict["inventoryId"] as! Int64
        }
        if dict.keys.contains("inventoryUnit") {
            self.inventoryUnit = dict["inventoryUnit"] as! String
        }
        if dict.keys.contains("inventoryValue") {
            self.inventoryValue = dict["inventoryValue"] as! Double
        }
        if dict.keys.contains("inventoryValuePerProduct") {
            self.inventoryValuePerProduct = dict["inventoryValuePerProduct"] as! Double
        }
        if dict.keys.contains("inventoryValuePerProductUnit") {
            self.inventoryValuePerProductUnit = dict["inventoryValuePerProductUnit"] as! String
        }
        if dict.keys.contains("items") {
            var tmp : [EpdInventoryConstituteItem] = []
            for v in dict["items"] as! [Any] {
                var model = EpdInventoryConstituteItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("num") {
            self.num = dict["num"] as! Int64
        }
        if dict.keys.contains("percent") {
            self.percent = dict["percent"] as! Double
        }
        if dict.keys.contains("quantity") {
            self.quantity = dict["quantity"] as! Double
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! String
        }
        if dict.keys.contains("state") {
            self.state = dict["state"] as! Int32
        }
        if dict.keys.contains("unit") {
            self.unit = dict["unit"] as! String
        }
    }
}

public class GwpInventoryConstitute : Tea.TeaModel {
    public var byResourceType: [GwpResourceConstitute]?

    public var carbonEmission: Double?

    public var items: [GwpInventoryConstitute]?

    public var name: String?

    public var percent: Double?

    public var resourceType: Int32?

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
        if self.byResourceType != nil {
            var tmp : [Any] = []
            for k in self.byResourceType! {
                tmp.append(k.toMap())
            }
            map["byResourceType"] = tmp
        }
        if self.carbonEmission != nil {
            map["carbonEmission"] = self.carbonEmission!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.percent != nil {
            map["percent"] = self.percent!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.unit != nil {
            map["unit"] = self.unit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("byResourceType") {
            var tmp : [GwpResourceConstitute] = []
            for v in dict["byResourceType"] as! [Any] {
                var model = GwpResourceConstitute()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.byResourceType = tmp
        }
        if dict.keys.contains("carbonEmission") {
            self.carbonEmission = dict["carbonEmission"] as! Double
        }
        if dict.keys.contains("items") {
            var tmp : [GwpInventoryConstitute] = []
            for v in dict["items"] as! [Any] {
                var model = GwpInventoryConstitute()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("percent") {
            self.percent = dict["percent"] as! Double
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! Int32
        }
        if dict.keys.contains("unit") {
            self.unit = dict["unit"] as! String
        }
    }
}

public class GwpResourceConstitute : Tea.TeaModel {
    public var carbonEmission: Double?

    public var name: String?

    public var percent: String?

    public var resourceType: Int32?

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
        if self.carbonEmission != nil {
            map["carbonEmission"] = self.carbonEmission!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.percent != nil {
            map["percent"] = self.percent!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.unit != nil {
            map["unit"] = self.unit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("carbonEmission") {
            self.carbonEmission = dict["carbonEmission"] as! Double
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("percent") {
            self.percent = dict["percent"] as! String
        }
        if dict.keys.contains("resourceType") {
            self.resourceType = dict["resourceType"] as! Int32
        }
        if dict.keys.contains("unit") {
            self.unit = dict["unit"] as! String
        }
    }
}

public class OrgEmission : Tea.TeaModel {
    public class ModuleEmissionList : Tea.TeaModel {
        public var carbonEmissionData: Double?

        public var name: String?

        public var nameKey: String?

        public var ratio: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.carbonEmissionData != nil {
                map["carbonEmissionData"] = self.carbonEmissionData!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.nameKey != nil {
                map["nameKey"] = self.nameKey!
            }
            if self.ratio != nil {
                map["ratio"] = self.ratio!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("carbonEmissionData") {
                self.carbonEmissionData = dict["carbonEmissionData"] as! Double
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("nameKey") {
                self.nameKey = dict["nameKey"] as! String
            }
            if dict.keys.contains("ratio") {
                self.ratio = dict["ratio"] as! Double
            }
        }
    }
    public var carbonEmissionData: Double?

    public var moduleEmissionList: [OrgEmission.ModuleEmissionList]?

    public var name: String?

    public var nameKey: String?

    public var ratio: Double?

    public var subEmissionItems: [OrgEmission]?

    public var weightingCarbonEmissionData: Double?

    public var weightingProportion: Double?

    public var weightingRatio: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.carbonEmissionData != nil {
            map["carbonEmissionData"] = self.carbonEmissionData!
        }
        if self.moduleEmissionList != nil {
            var tmp : [Any] = []
            for k in self.moduleEmissionList! {
                tmp.append(k.toMap())
            }
            map["moduleEmissionList"] = tmp
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nameKey != nil {
            map["nameKey"] = self.nameKey!
        }
        if self.ratio != nil {
            map["ratio"] = self.ratio!
        }
        if self.subEmissionItems != nil {
            var tmp : [Any] = []
            for k in self.subEmissionItems! {
                tmp.append(k.toMap())
            }
            map["subEmissionItems"] = tmp
        }
        if self.weightingCarbonEmissionData != nil {
            map["weightingCarbonEmissionData"] = self.weightingCarbonEmissionData!
        }
        if self.weightingProportion != nil {
            map["weightingProportion"] = self.weightingProportion!
        }
        if self.weightingRatio != nil {
            map["weightingRatio"] = self.weightingRatio!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("carbonEmissionData") {
            self.carbonEmissionData = dict["carbonEmissionData"] as! Double
        }
        if dict.keys.contains("moduleEmissionList") {
            var tmp : [OrgEmission.ModuleEmissionList] = []
            for v in dict["moduleEmissionList"] as! [Any] {
                var model = OrgEmission.ModuleEmissionList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.moduleEmissionList = tmp
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nameKey") {
            self.nameKey = dict["nameKey"] as! String
        }
        if dict.keys.contains("ratio") {
            self.ratio = dict["ratio"] as! Double
        }
        if dict.keys.contains("subEmissionItems") {
            var tmp : [OrgEmission] = []
            for v in dict["subEmissionItems"] as! [Any] {
                var model = OrgEmission()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subEmissionItems = tmp
        }
        if dict.keys.contains("weightingCarbonEmissionData") {
            self.weightingCarbonEmissionData = dict["weightingCarbonEmissionData"] as! Double
        }
        if dict.keys.contains("weightingProportion") {
            self.weightingProportion = dict["weightingProportion"] as! Double
        }
        if dict.keys.contains("weightingRatio") {
            self.weightingRatio = dict["weightingRatio"] as! Double
        }
    }
}

public class AnalyzeVlRealtimeRequest : Tea.TeaModel {
    public var fileUrl: String?

    public var language: String?

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
        if self.fileUrl != nil {
            map["fileUrl"] = self.fileUrl!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileUrl") {
            self.fileUrl = dict["fileUrl"] as! String
        }
        if dict.keys.contains("language") {
            self.language = dict["language"] as! String
        }
        if dict.keys.contains("templateId") {
            self.templateId = dict["templateId"] as! String
        }
    }
}

public class AnalyzeVlRealtimeAdvanceRequest : Tea.TeaModel {
    public var fileUrlObject: InputStream?

    public var language: String?

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
        if self.fileUrlObject != nil {
            map["fileUrl"] = self.fileUrlObject!
        }
        if self.language != nil {
            map["language"] = self.language!
        }
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileUrl") {
            self.fileUrlObject = dict["fileUrl"] as! InputStream
        }
        if dict.keys.contains("language") {
            self.language = dict["language"] as! String
        }
        if dict.keys.contains("templateId") {
            self.templateId = dict["templateId"] as! String
        }
    }
}

public class AnalyzeVlRealtimeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class KvListInfo : Tea.TeaModel {
            public class Context : Tea.TeaModel {
                public class Confidence : Tea.TeaModel {
                    public var keyConfidence: Double?

                    public var valueConfidence: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.keyConfidence != nil {
                            map["keyConfidence"] = self.keyConfidence!
                        }
                        if self.valueConfidence != nil {
                            map["valueConfidence"] = self.valueConfidence!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("keyConfidence") {
                            self.keyConfidence = dict["keyConfidence"] as! Double
                        }
                        if dict.keys.contains("valueConfidence") {
                            self.valueConfidence = dict["valueConfidence"] as! Double
                        }
                    }
                }
                public var confidence: AnalyzeVlRealtimeResponseBody.Data.KvListInfo.Context.Confidence?

                public var key: [ContentItem]?

                public var value: [ContentItem]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.confidence?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.confidence != nil {
                        map["confidence"] = self.confidence?.toMap()
                    }
                    if self.key != nil {
                        var tmp : [Any] = []
                        for k in self.key! {
                            tmp.append(k.toMap())
                        }
                        map["key"] = tmp
                    }
                    if self.value != nil {
                        var tmp : [Any] = []
                        for k in self.value! {
                            tmp.append(k.toMap())
                        }
                        map["value"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("confidence") {
                        var model = AnalyzeVlRealtimeResponseBody.Data.KvListInfo.Context.Confidence()
                        model.fromMap(dict["confidence"] as! [String: Any])
                        self.confidence = model
                    }
                    if dict.keys.contains("key") {
                        var tmp : [ContentItem] = []
                        for v in dict["key"] as! [Any] {
                            var model = ContentItem()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.key = tmp
                    }
                    if dict.keys.contains("value") {
                        var tmp : [ContentItem] = []
                        for v in dict["value"] as! [Any] {
                            var model = ContentItem()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.value = tmp
                    }
                }
            }
            public var context: AnalyzeVlRealtimeResponseBody.Data.KvListInfo.Context?

            public var keyName: String?

            public var keyValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.context?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.context != nil {
                    map["context"] = self.context?.toMap()
                }
                if self.keyName != nil {
                    map["keyName"] = self.keyName!
                }
                if self.keyValue != nil {
                    map["keyValue"] = self.keyValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("context") {
                    var model = AnalyzeVlRealtimeResponseBody.Data.KvListInfo.Context()
                    model.fromMap(dict["context"] as! [String: Any])
                    self.context = model
                }
                if dict.keys.contains("keyName") {
                    self.keyName = dict["keyName"] as! String
                }
                if dict.keys.contains("keyValue") {
                    self.keyValue = dict["keyValue"] as! String
                }
            }
        }
        public var kvListInfo: [AnalyzeVlRealtimeResponseBody.Data.KvListInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.kvListInfo != nil {
                var tmp : [Any] = []
                for k in self.kvListInfo! {
                    tmp.append(k.toMap())
                }
                map["kvListInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("kvListInfo") {
                var tmp : [AnalyzeVlRealtimeResponseBody.Data.KvListInfo] = []
                for v in dict["kvListInfo"] as! [Any] {
                    var model = AnalyzeVlRealtimeResponseBody.Data.KvListInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.kvListInfo = tmp
            }
        }
    }
    public var data: AnalyzeVlRealtimeResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = AnalyzeVlRealtimeResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class AnalyzeVlRealtimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AnalyzeVlRealtimeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AnalyzeVlRealtimeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchSaveInstructionStatusRequest : Tea.TeaModel {
    public var factoryId: String?

    public var pKey: String?

    public var statusList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.factoryId != nil {
            map["factoryId"] = self.factoryId!
        }
        if self.pKey != nil {
            map["pKey"] = self.pKey!
        }
        if self.statusList != nil {
            map["statusList"] = self.statusList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("factoryId") {
            self.factoryId = dict["factoryId"] as! String
        }
        if dict.keys.contains("pKey") {
            self.pKey = dict["pKey"] as! String
        }
        if dict.keys.contains("statusList") {
            self.statusList = dict["statusList"] as! String
        }
    }
}

public class BatchSaveInstructionStatusResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class BatchSaveInstructionStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchSaveInstructionStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BatchSaveInstructionStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchUpdateSystemRunningPlanRequest : Tea.TeaModel {
    public var controlType: Int32?

    public var dateType: Int32?

    public var earliestStartupTime: String?

    public var endTime: String?

    public var factoryId: String?

    public var latestShutdownTime: String?

    public var maxCarbonDioxide: Double?

    public var maxTem: Double?

    public var minTem: Double?

    public var seasonMode: Int32?

    public var startTime: String?

    public var systemId: String?

    public var workingEndTime: String?

    public var workingStartTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.controlType != nil {
            map["controlType"] = self.controlType!
        }
        if self.dateType != nil {
            map["dateType"] = self.dateType!
        }
        if self.earliestStartupTime != nil {
            map["earliestStartupTime"] = self.earliestStartupTime!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.factoryId != nil {
            map["factoryId"] = self.factoryId!
        }
        if self.latestShutdownTime != nil {
            map["latestShutdownTime"] = self.latestShutdownTime!
        }
        if self.maxCarbonDioxide != nil {
            map["maxCarbonDioxide"] = self.maxCarbonDioxide!
        }
        if self.maxTem != nil {
            map["maxTem"] = self.maxTem!
        }
        if self.minTem != nil {
            map["minTem"] = self.minTem!
        }
        if self.seasonMode != nil {
            map["seasonMode"] = self.seasonMode!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.systemId != nil {
            map["systemId"] = self.systemId!
        }
        if self.workingEndTime != nil {
            map["workingEndTime"] = self.workingEndTime!
        }
        if self.workingStartTime != nil {
            map["workingStartTime"] = self.workingStartTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("controlType") {
            self.controlType = dict["controlType"] as! Int32
        }
        if dict.keys.contains("dateType") {
            self.dateType = dict["dateType"] as! Int32
        }
        if dict.keys.contains("earliestStartupTime") {
            self.earliestStartupTime = dict["earliestStartupTime"] as! String
        }
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("factoryId") {
            self.factoryId = dict["factoryId"] as! String
        }
        if dict.keys.contains("latestShutdownTime") {
            self.latestShutdownTime = dict["latestShutdownTime"] as! String
        }
        if dict.keys.contains("maxCarbonDioxide") {
            self.maxCarbonDioxide = dict["maxCarbonDioxide"] as! Double
        }
        if dict.keys.contains("maxTem") {
            self.maxTem = dict["maxTem"] as! Double
        }
        if dict.keys.contains("minTem") {
            self.minTem = dict["minTem"] as! Double
        }
        if dict.keys.contains("seasonMode") {
            self.seasonMode = dict["seasonMode"] as! Int32
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! String
        }
        if dict.keys.contains("systemId") {
            self.systemId = dict["systemId"] as! String
        }
        if dict.keys.contains("workingEndTime") {
            self.workingEndTime = dict["workingEndTime"] as! String
        }
        if dict.keys.contains("workingStartTime") {
            self.workingStartTime = dict["workingStartTime"] as! String
        }
    }
}

public class BatchUpdateSystemRunningPlanResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class BatchUpdateSystemRunningPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchUpdateSystemRunningPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = BatchUpdateSystemRunningPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EditProhibitedDevicesRequest : Tea.TeaModel {
    public class HvacDeviceConfigVOList : Tea.TeaModel {
        public var buildingId: String?

        public var deviceId: String?

        public var deviceName: String?

        public var deviceType: String?

        public var fenceId: String?

        public var floorId: String?

        public var isForbidden: Int32?

        public var isUnfavorableArea: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buildingId != nil {
                map["buildingId"] = self.buildingId!
            }
            if self.deviceId != nil {
                map["deviceId"] = self.deviceId!
            }
            if self.deviceName != nil {
                map["deviceName"] = self.deviceName!
            }
            if self.deviceType != nil {
                map["deviceType"] = self.deviceType!
            }
            if self.fenceId != nil {
                map["fenceId"] = self.fenceId!
            }
            if self.floorId != nil {
                map["floorId"] = self.floorId!
            }
            if self.isForbidden != nil {
                map["isForbidden"] = self.isForbidden!
            }
            if self.isUnfavorableArea != nil {
                map["isUnfavorableArea"] = self.isUnfavorableArea!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("buildingId") {
                self.buildingId = dict["buildingId"] as! String
            }
            if dict.keys.contains("deviceId") {
                self.deviceId = dict["deviceId"] as! String
            }
            if dict.keys.contains("deviceName") {
                self.deviceName = dict["deviceName"] as! String
            }
            if dict.keys.contains("deviceType") {
                self.deviceType = dict["deviceType"] as! String
            }
            if dict.keys.contains("fenceId") {
                self.fenceId = dict["fenceId"] as! String
            }
            if dict.keys.contains("floorId") {
                self.floorId = dict["floorId"] as! String
            }
            if dict.keys.contains("isForbidden") {
                self.isForbidden = dict["isForbidden"] as! Int32
            }
            if dict.keys.contains("isUnfavorableArea") {
                self.isUnfavorableArea = dict["isUnfavorableArea"] as! Int32
            }
        }
    }
    public var factoryId: String?

    public var hvacDeviceConfigVOList: [EditProhibitedDevicesRequest.HvacDeviceConfigVOList]?

    public var systemId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.factoryId != nil {
            map["factoryId"] = self.factoryId!
        }
        if self.hvacDeviceConfigVOList != nil {
            var tmp : [Any] = []
            for k in self.hvacDeviceConfigVOList! {
                tmp.append(k.toMap())
            }
            map["hvacDeviceConfigVOList"] = tmp
        }
        if self.systemId != nil {
            map["systemId"] = self.systemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("factoryId") {
            self.factoryId = dict["factoryId"] as! String
        }
        if dict.keys.contains("hvacDeviceConfigVOList") {
            var tmp : [EditProhibitedDevicesRequest.HvacDeviceConfigVOList] = []
            for v in dict["hvacDeviceConfigVOList"] as! [Any] {
                var model = EditProhibitedDevicesRequest.HvacDeviceConfigVOList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hvacDeviceConfigVOList = tmp
        }
        if dict.keys.contains("systemId") {
            self.systemId = dict["systemId"] as! String
        }
    }
}

public class EditProhibitedDevicesResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class EditProhibitedDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditProhibitedDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EditProhibitedDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EditUnfavorableAreaDevicesRequest : Tea.TeaModel {
    public class HvacDeviceConfigVOList : Tea.TeaModel {
        public var buildingId: String?

        public var deviceId: String?

        public var deviceName: String?

        public var deviceType: String?

        public var fenceId: String?

        public var floorId: String?

        public var isForbidden: Int32?

        public var isUnfavorableArea: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buildingId != nil {
                map["buildingId"] = self.buildingId!
            }
            if self.deviceId != nil {
                map["deviceId"] = self.deviceId!
            }
            if self.deviceName != nil {
                map["deviceName"] = self.deviceName!
            }
            if self.deviceType != nil {
                map["deviceType"] = self.deviceType!
            }
            if self.fenceId != nil {
                map["fenceId"] = self.fenceId!
            }
            if self.floorId != nil {
                map["floorId"] = self.floorId!
            }
            if self.isForbidden != nil {
                map["isForbidden"] = self.isForbidden!
            }
            if self.isUnfavorableArea != nil {
                map["isUnfavorableArea"] = self.isUnfavorableArea!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("buildingId") {
                self.buildingId = dict["buildingId"] as! String
            }
            if dict.keys.contains("deviceId") {
                self.deviceId = dict["deviceId"] as! String
            }
            if dict.keys.contains("deviceName") {
                self.deviceName = dict["deviceName"] as! String
            }
            if dict.keys.contains("deviceType") {
                self.deviceType = dict["deviceType"] as! String
            }
            if dict.keys.contains("fenceId") {
                self.fenceId = dict["fenceId"] as! String
            }
            if dict.keys.contains("floorId") {
                self.floorId = dict["floorId"] as! String
            }
            if dict.keys.contains("isForbidden") {
                self.isForbidden = dict["isForbidden"] as! Int32
            }
            if dict.keys.contains("isUnfavorableArea") {
                self.isUnfavorableArea = dict["isUnfavorableArea"] as! Int32
            }
        }
    }
    public var factoryId: String?

    public var hvacDeviceConfigVOList: [EditUnfavorableAreaDevicesRequest.HvacDeviceConfigVOList]?

    public var systemId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.factoryId != nil {
            map["factoryId"] = self.factoryId!
        }
        if self.hvacDeviceConfigVOList != nil {
            var tmp : [Any] = []
            for k in self.hvacDeviceConfigVOList! {
                tmp.append(k.toMap())
            }
            map["hvacDeviceConfigVOList"] = tmp
        }
        if self.systemId != nil {
            map["systemId"] = self.systemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("factoryId") {
            self.factoryId = dict["factoryId"] as! String
        }
        if dict.keys.contains("hvacDeviceConfigVOList") {
            var tmp : [EditUnfavorableAreaDevicesRequest.HvacDeviceConfigVOList] = []
            for v in dict["hvacDeviceConfigVOList"] as! [Any] {
                var model = EditUnfavorableAreaDevicesRequest.HvacDeviceConfigVOList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hvacDeviceConfigVOList = tmp
        }
        if dict.keys.contains("systemId") {
            self.systemId = dict["systemId"] as! String
        }
    }
}

public class EditUnfavorableAreaDevicesResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class EditUnfavorableAreaDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditUnfavorableAreaDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EditUnfavorableAreaDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateResultRequest : Tea.TeaModel {
    public var code: String?

    public var productId: Int64?

    public var productType: Int64?

    public override init() {
        super.init()
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
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productType != nil {
            map["productType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! Int64
        }
        if dict.keys.contains("productType") {
            self.productType = dict["productType"] as! Int64
        }
    }
}

public class GenerateResultResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GenerateResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GenerateResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAreaElecConstituteRequest : Tea.TeaModel {
    public var code: String?

    public var year: Int32?

    public override init() {
        super.init()
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
        if self.year != nil {
            map["year"] = self.year!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("year") {
            self.year = dict["year"] as! Int32
        }
    }
}

public class GetAreaElecConstituteResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var light: [CarbonEmissionElecSummaryItem]?

        public var nuclear: [CarbonEmissionElecSummaryItem]?

        public var renewing: [CarbonEmissionElecSummaryItem]?

        public var urban: [CarbonEmissionElecSummaryItem]?

        public var water: [CarbonEmissionElecSummaryItem]?

        public var wind: [CarbonEmissionElecSummaryItem]?

        public var zero: [CarbonEmissionElecSummaryItem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.light != nil {
                var tmp : [Any] = []
                for k in self.light! {
                    tmp.append(k.toMap())
                }
                map["light"] = tmp
            }
            if self.nuclear != nil {
                var tmp : [Any] = []
                for k in self.nuclear! {
                    tmp.append(k.toMap())
                }
                map["nuclear"] = tmp
            }
            if self.renewing != nil {
                var tmp : [Any] = []
                for k in self.renewing! {
                    tmp.append(k.toMap())
                }
                map["renewing"] = tmp
            }
            if self.urban != nil {
                var tmp : [Any] = []
                for k in self.urban! {
                    tmp.append(k.toMap())
                }
                map["urban"] = tmp
            }
            if self.water != nil {
                var tmp : [Any] = []
                for k in self.water! {
                    tmp.append(k.toMap())
                }
                map["water"] = tmp
            }
            if self.wind != nil {
                var tmp : [Any] = []
                for k in self.wind! {
                    tmp.append(k.toMap())
                }
                map["wind"] = tmp
            }
            if self.zero != nil {
                var tmp : [Any] = []
                for k in self.zero! {
                    tmp.append(k.toMap())
                }
                map["zero"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("light") {
                var tmp : [CarbonEmissionElecSummaryItem] = []
                for v in dict["light"] as! [Any] {
                    var model = CarbonEmissionElecSummaryItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.light = tmp
            }
            if dict.keys.contains("nuclear") {
                var tmp : [CarbonEmissionElecSummaryItem] = []
                for v in dict["nuclear"] as! [Any] {
                    var model = CarbonEmissionElecSummaryItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nuclear = tmp
            }
            if dict.keys.contains("renewing") {
                var tmp : [CarbonEmissionElecSummaryItem] = []
                for v in dict["renewing"] as! [Any] {
                    var model = CarbonEmissionElecSummaryItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.renewing = tmp
            }
            if dict.keys.contains("urban") {
                var tmp : [CarbonEmissionElecSummaryItem] = []
                for v in dict["urban"] as! [Any] {
                    var model = CarbonEmissionElecSummaryItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.urban = tmp
            }
            if dict.keys.contains("water") {
                var tmp : [CarbonEmissionElecSummaryItem] = []
                for v in dict["water"] as! [Any] {
                    var model = CarbonEmissionElecSummaryItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.water = tmp
            }
            if dict.keys.contains("wind") {
                var tmp : [CarbonEmissionElecSummaryItem] = []
                for v in dict["wind"] as! [Any] {
                    var model = CarbonEmissionElecSummaryItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.wind = tmp
            }
            if dict.keys.contains("zero") {
                var tmp : [CarbonEmissionElecSummaryItem] = []
                for v in dict["zero"] as! [Any] {
                    var model = CarbonEmissionElecSummaryItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.zero = tmp
            }
        }
    }
    public var code: String?

    public var data: GetAreaElecConstituteResponseBody.Data?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if dict.keys.contains("data") {
            var model = GetAreaElecConstituteResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetAreaElecConstituteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAreaElecConstituteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetAreaElecConstituteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCarbonEmissionTrendRequest : Tea.TeaModel {
    public var code: String?

    public var moduleCode: String?

    public var moduleType: Int32?

    public var trendType: Int32?

    public var yearList: [Int32]?

    public override init() {
        super.init()
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
        if self.moduleCode != nil {
            map["moduleCode"] = self.moduleCode!
        }
        if self.moduleType != nil {
            map["moduleType"] = self.moduleType!
        }
        if self.trendType != nil {
            map["trendType"] = self.trendType!
        }
        if self.yearList != nil {
            map["yearList"] = self.yearList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("moduleCode") {
            self.moduleCode = dict["moduleCode"] as! String
        }
        if dict.keys.contains("moduleType") {
            self.moduleType = dict["moduleType"] as! Int32
        }
        if dict.keys.contains("trendType") {
            self.trendType = dict["trendType"] as! Int32
        }
        if dict.keys.contains("yearList") {
            self.yearList = dict["yearList"] as! [Int32]
        }
    }
}

public class GetCarbonEmissionTrendResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ActualEmissionList : Tea.TeaModel {
            public class Items : Tea.TeaModel {
                public var carbonEmissionData: Double?

                public var month: Int32?

                public var year: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.carbonEmissionData != nil {
                        map["carbonEmissionData"] = self.carbonEmissionData!
                    }
                    if self.month != nil {
                        map["month"] = self.month!
                    }
                    if self.year != nil {
                        map["year"] = self.year!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("carbonEmissionData") {
                        self.carbonEmissionData = dict["carbonEmissionData"] as! Double
                    }
                    if dict.keys.contains("month") {
                        self.month = dict["month"] as! Int32
                    }
                    if dict.keys.contains("year") {
                        self.year = dict["year"] as! String
                    }
                }
            }
            public var items: [GetCarbonEmissionTrendResponseBody.Data.ActualEmissionList.Items]?

            public var year: String?

            public override init() {
                super.init()
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
                    map["items"] = tmp
                }
                if self.year != nil {
                    map["year"] = self.year!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("items") {
                    var tmp : [GetCarbonEmissionTrendResponseBody.Data.ActualEmissionList.Items] = []
                    for v in dict["items"] as! [Any] {
                        var model = GetCarbonEmissionTrendResponseBody.Data.ActualEmissionList.Items()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.items = tmp
                }
                if dict.keys.contains("year") {
                    self.year = dict["year"] as! String
                }
            }
        }
        public class TargetEmissionList : Tea.TeaModel {
            public class Items : Tea.TeaModel {
                public var carbonEmissionData: Double?

                public var month: Int32?

                public var year: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.carbonEmissionData != nil {
                        map["carbonEmissionData"] = self.carbonEmissionData!
                    }
                    if self.month != nil {
                        map["month"] = self.month!
                    }
                    if self.year != nil {
                        map["year"] = self.year!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("carbonEmissionData") {
                        self.carbonEmissionData = dict["carbonEmissionData"] as! Double
                    }
                    if dict.keys.contains("month") {
                        self.month = dict["month"] as! Int32
                    }
                    if dict.keys.contains("year") {
                        self.year = dict["year"] as! String
                    }
                }
            }
            public var items: [GetCarbonEmissionTrendResponseBody.Data.TargetEmissionList.Items]?

            public var year: String?

            public override init() {
                super.init()
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
                    map["items"] = tmp
                }
                if self.year != nil {
                    map["year"] = self.year!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("items") {
                    var tmp : [GetCarbonEmissionTrendResponseBody.Data.TargetEmissionList.Items] = []
                    for v in dict["items"] as! [Any] {
                        var model = GetCarbonEmissionTrendResponseBody.Data.TargetEmissionList.Items()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.items = tmp
                }
                if dict.keys.contains("year") {
                    self.year = dict["year"] as! String
                }
            }
        }
        public var actualEmissionList: [GetCarbonEmissionTrendResponseBody.Data.ActualEmissionList]?

        public var targetEmissionList: [GetCarbonEmissionTrendResponseBody.Data.TargetEmissionList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actualEmissionList != nil {
                var tmp : [Any] = []
                for k in self.actualEmissionList! {
                    tmp.append(k.toMap())
                }
                map["actualEmissionList"] = tmp
            }
            if self.targetEmissionList != nil {
                var tmp : [Any] = []
                for k in self.targetEmissionList! {
                    tmp.append(k.toMap())
                }
                map["targetEmissionList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("actualEmissionList") {
                var tmp : [GetCarbonEmissionTrendResponseBody.Data.ActualEmissionList] = []
                for v in dict["actualEmissionList"] as! [Any] {
                    var model = GetCarbonEmissionTrendResponseBody.Data.ActualEmissionList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.actualEmissionList = tmp
            }
            if dict.keys.contains("targetEmissionList") {
                var tmp : [GetCarbonEmissionTrendResponseBody.Data.TargetEmissionList] = []
                for v in dict["targetEmissionList"] as! [Any] {
                    var model = GetCarbonEmissionTrendResponseBody.Data.TargetEmissionList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.targetEmissionList = tmp
            }
        }
    }
    public var data: GetCarbonEmissionTrendResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetCarbonEmissionTrendResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetCarbonEmissionTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCarbonEmissionTrendResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetCarbonEmissionTrendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDataItemListRequest : Tea.TeaModel {
    public var code: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
    }
}

public class GetDataItemListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var name: String?

        public var period: Int32?

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
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.period != nil {
                map["period"] = self.period!
            }
            if self.unit != nil {
                map["unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("code") {
                self.code = dict["code"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("period") {
                self.period = dict["period"] as! Int32
            }
            if dict.keys.contains("unit") {
                self.unit = dict["unit"] as! String
            }
        }
    }
    public var data: [GetDataItemListResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [GetDataItemListResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetDataItemListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetDataItemListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataItemListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDataItemListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDataQualityAnalysisRequest : Tea.TeaModel {
    public var code: String?

    public var dataQualityEvaluationType: Int64?

    public var productId: Int64?

    public var productType: Int64?

    public override init() {
        super.init()
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
        if self.dataQualityEvaluationType != nil {
            map["dataQualityEvaluationType"] = self.dataQualityEvaluationType!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productType != nil {
            map["productType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("dataQualityEvaluationType") {
            self.dataQualityEvaluationType = dict["dataQualityEvaluationType"] as! Int64
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! Int64
        }
        if dict.keys.contains("productType") {
            self.productType = dict["productType"] as! Int64
        }
    }
}

public class GetDataQualityAnalysisResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DataQuality : Tea.TeaModel {
            public class Score : Tea.TeaModel {
                public var g1: Double?

                public var g2: Double?

                public var g3: Double?

                public var g4: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.g1 != nil {
                        map["g1"] = self.g1!
                    }
                    if self.g2 != nil {
                        map["g2"] = self.g2!
                    }
                    if self.g3 != nil {
                        map["g3"] = self.g3!
                    }
                    if self.g4 != nil {
                        map["g4"] = self.g4!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("g1") {
                        self.g1 = dict["g1"] as! Double
                    }
                    if dict.keys.contains("g2") {
                        self.g2 = dict["g2"] as! Double
                    }
                    if dict.keys.contains("g3") {
                        self.g3 = dict["g3"] as! Double
                    }
                    if dict.keys.contains("g4") {
                        self.g4 = dict["g4"] as! Double
                    }
                }
            }
            public var inventory: String?

            public var score: GetDataQualityAnalysisResponseBody.Data.DataQuality.Score?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.score?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inventory != nil {
                    map["inventory"] = self.inventory!
                }
                if self.score != nil {
                    map["score"] = self.score?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inventory") {
                    self.inventory = dict["inventory"] as! String
                }
                if dict.keys.contains("score") {
                    var model = GetDataQualityAnalysisResponseBody.Data.DataQuality.Score()
                    model.fromMap(dict["score"] as! [String: Any])
                    self.score = model
                }
            }
        }
        public class DataQualityResult : Tea.TeaModel {
            public var dataQualityScore: Double?

            public var g1: Double?

            public var g2: Double?

            public var g3: Double?

            public var g4: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataQualityScore != nil {
                    map["data_quality_score"] = self.dataQualityScore!
                }
                if self.g1 != nil {
                    map["g1"] = self.g1!
                }
                if self.g2 != nil {
                    map["g2"] = self.g2!
                }
                if self.g3 != nil {
                    map["g3"] = self.g3!
                }
                if self.g4 != nil {
                    map["g4"] = self.g4!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("data_quality_score") {
                    self.dataQualityScore = dict["data_quality_score"] as! Double
                }
                if dict.keys.contains("g1") {
                    self.g1 = dict["g1"] as! Double
                }
                if dict.keys.contains("g2") {
                    self.g2 = dict["g2"] as! Double
                }
                if dict.keys.contains("g3") {
                    self.g3 = dict["g3"] as! Double
                }
                if dict.keys.contains("g4") {
                    self.g4 = dict["g4"] as! Double
                }
            }
        }
        public class SensitivityList : Tea.TeaModel {
            public var id: String?

            public var inventory: String?

            public var reductionList: [String]?

            public var sensitivity: Double?

            public override init() {
                super.init()
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
                if self.inventory != nil {
                    map["inventory"] = self.inventory!
                }
                if self.reductionList != nil {
                    map["reductionList"] = self.reductionList!
                }
                if self.sensitivity != nil {
                    map["sensitivity"] = self.sensitivity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("inventory") {
                    self.inventory = dict["inventory"] as! String
                }
                if dict.keys.contains("reductionList") {
                    self.reductionList = dict["reductionList"] as! [String]
                }
                if dict.keys.contains("sensitivity") {
                    self.sensitivity = dict["sensitivity"] as! Double
                }
            }
        }
        public class UncertaintyValues : Tea.TeaModel {
            public var inventory: String?

            public var uncertaintyContribution: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inventory != nil {
                    map["inventory"] = self.inventory!
                }
                if self.uncertaintyContribution != nil {
                    map["uncertaintyContribution"] = self.uncertaintyContribution!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("inventory") {
                    self.inventory = dict["inventory"] as! String
                }
                if dict.keys.contains("uncertaintyContribution") {
                    self.uncertaintyContribution = dict["uncertaintyContribution"] as! String
                }
            }
        }
        public var dataQuality: [GetDataQualityAnalysisResponseBody.Data.DataQuality]?

        public var dataQualityResult: GetDataQualityAnalysisResponseBody.Data.DataQualityResult?

        public var sensitivityList: [GetDataQualityAnalysisResponseBody.Data.SensitivityList]?

        public var uncertainty: String?

        public var uncertaintyValues: [GetDataQualityAnalysisResponseBody.Data.UncertaintyValues]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataQualityResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataQuality != nil {
                var tmp : [Any] = []
                for k in self.dataQuality! {
                    tmp.append(k.toMap())
                }
                map["dataQuality"] = tmp
            }
            if self.dataQualityResult != nil {
                map["dataQualityResult"] = self.dataQualityResult?.toMap()
            }
            if self.sensitivityList != nil {
                var tmp : [Any] = []
                for k in self.sensitivityList! {
                    tmp.append(k.toMap())
                }
                map["sensitivityList"] = tmp
            }
            if self.uncertainty != nil {
                map["uncertainty"] = self.uncertainty!
            }
            if self.uncertaintyValues != nil {
                var tmp : [Any] = []
                for k in self.uncertaintyValues! {
                    tmp.append(k.toMap())
                }
                map["uncertaintyValues"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dataQuality") {
                var tmp : [GetDataQualityAnalysisResponseBody.Data.DataQuality] = []
                for v in dict["dataQuality"] as! [Any] {
                    var model = GetDataQualityAnalysisResponseBody.Data.DataQuality()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataQuality = tmp
            }
            if dict.keys.contains("dataQualityResult") {
                var model = GetDataQualityAnalysisResponseBody.Data.DataQualityResult()
                model.fromMap(dict["dataQualityResult"] as! [String: Any])
                self.dataQualityResult = model
            }
            if dict.keys.contains("sensitivityList") {
                var tmp : [GetDataQualityAnalysisResponseBody.Data.SensitivityList] = []
                for v in dict["sensitivityList"] as! [Any] {
                    var model = GetDataQualityAnalysisResponseBody.Data.SensitivityList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sensitivityList = tmp
            }
            if dict.keys.contains("uncertainty") {
                self.uncertainty = dict["uncertainty"] as! String
            }
            if dict.keys.contains("uncertaintyValues") {
                var tmp : [GetDataQualityAnalysisResponseBody.Data.UncertaintyValues] = []
                for v in dict["uncertaintyValues"] as! [Any] {
                    var model = GetDataQualityAnalysisResponseBody.Data.UncertaintyValues()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.uncertaintyValues = tmp
            }
        }
    }
    public var data: GetDataQualityAnalysisResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetDataQualityAnalysisResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetDataQualityAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataQualityAnalysisResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDataQualityAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeviceInfoRequest : Tea.TeaModel {
    public var deviceId: String?

    public var ds: String?

    public var factoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceId != nil {
            map["deviceId"] = self.deviceId!
        }
        if self.ds != nil {
            map["ds"] = self.ds!
        }
        if self.factoryId != nil {
            map["factoryId"] = self.factoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deviceId") {
            self.deviceId = dict["deviceId"] as! String
        }
        if dict.keys.contains("ds") {
            self.ds = dict["ds"] as! String
        }
        if dict.keys.contains("factoryId") {
            self.factoryId = dict["factoryId"] as! String
        }
    }
}

public class GetDeviceInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RecordList : Tea.TeaModel {
            public var identifier: String?

            public var paramName: String?

            public var statisticsDate: String?

            public var type: String?

            public var unit: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.identifier != nil {
                    map["identifier"] = self.identifier!
                }
                if self.paramName != nil {
                    map["paramName"] = self.paramName!
                }
                if self.statisticsDate != nil {
                    map["statisticsDate"] = self.statisticsDate!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.unit != nil {
                    map["unit"] = self.unit!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("identifier") {
                    self.identifier = dict["identifier"] as! String
                }
                if dict.keys.contains("paramName") {
                    self.paramName = dict["paramName"] as! String
                }
                if dict.keys.contains("statisticsDate") {
                    self.statisticsDate = dict["statisticsDate"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("unit") {
                    self.unit = dict["unit"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! Double
                }
            }
        }
        public var deviceId: String?

        public var deviceName: String?

        public var firstTypeName: String?

        public var recordList: [GetDeviceInfoResponseBody.Data.RecordList]?

        public var secondTypeName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceId != nil {
                map["deviceId"] = self.deviceId!
            }
            if self.deviceName != nil {
                map["deviceName"] = self.deviceName!
            }
            if self.firstTypeName != nil {
                map["firstTypeName"] = self.firstTypeName!
            }
            if self.recordList != nil {
                var tmp : [Any] = []
                for k in self.recordList! {
                    tmp.append(k.toMap())
                }
                map["recordList"] = tmp
            }
            if self.secondTypeName != nil {
                map["secondTypeName"] = self.secondTypeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deviceId") {
                self.deviceId = dict["deviceId"] as! String
            }
            if dict.keys.contains("deviceName") {
                self.deviceName = dict["deviceName"] as! String
            }
            if dict.keys.contains("firstTypeName") {
                self.firstTypeName = dict["firstTypeName"] as! String
            }
            if dict.keys.contains("recordList") {
                var tmp : [GetDeviceInfoResponseBody.Data.RecordList] = []
                for v in dict["recordList"] as! [Any] {
                    var model = GetDeviceInfoResponseBody.Data.RecordList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.recordList = tmp
            }
            if dict.keys.contains("secondTypeName") {
                self.secondTypeName = dict["secondTypeName"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetDeviceInfoResponseBody.Data?

    public var httpCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetDeviceInfoResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetDeviceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDeviceInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeviceListRequest : Tea.TeaModel {
    public var factoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.factoryId != nil {
            map["factoryId"] = self.factoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("factoryId") {
            self.factoryId = dict["factoryId"] as! String
        }
    }
}

public class GetDeviceListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DeviceList : Tea.TeaModel {
            public class Info : Tea.TeaModel {
                public var constKva: Int32?

                public var ct: Int32?

                public var magnification: Int32?

                public var pressure: Int32?

                public var pt: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.constKva != nil {
                        map["constKva"] = self.constKva!
                    }
                    if self.ct != nil {
                        map["ct"] = self.ct!
                    }
                    if self.magnification != nil {
                        map["magnification"] = self.magnification!
                    }
                    if self.pressure != nil {
                        map["pressure"] = self.pressure!
                    }
                    if self.pt != nil {
                        map["pt"] = self.pt!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("constKva") {
                        self.constKva = dict["constKva"] as! Int32
                    }
                    if dict.keys.contains("ct") {
                        self.ct = dict["ct"] as! Int32
                    }
                    if dict.keys.contains("magnification") {
                        self.magnification = dict["magnification"] as! Int32
                    }
                    if dict.keys.contains("pressure") {
                        self.pressure = dict["pressure"] as! Int32
                    }
                    if dict.keys.contains("pt") {
                        self.pt = dict["pt"] as! Int32
                    }
                }
            }
            public var deviceId: String?

            public var deviceName: String?

            public var firstTypeName: String?

            public var info: GetDeviceListResponseBody.Data.DeviceList.Info?

            public var parentDevice: String?

            public var secondTypeName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.info?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceId != nil {
                    map["deviceId"] = self.deviceId!
                }
                if self.deviceName != nil {
                    map["deviceName"] = self.deviceName!
                }
                if self.firstTypeName != nil {
                    map["firstTypeName"] = self.firstTypeName!
                }
                if self.info != nil {
                    map["info"] = self.info?.toMap()
                }
                if self.parentDevice != nil {
                    map["parentDevice"] = self.parentDevice!
                }
                if self.secondTypeName != nil {
                    map["secondTypeName"] = self.secondTypeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("deviceId") {
                    self.deviceId = dict["deviceId"] as! String
                }
                if dict.keys.contains("deviceName") {
                    self.deviceName = dict["deviceName"] as! String
                }
                if dict.keys.contains("firstTypeName") {
                    self.firstTypeName = dict["firstTypeName"] as! String
                }
                if dict.keys.contains("info") {
                    var model = GetDeviceListResponseBody.Data.DeviceList.Info()
                    model.fromMap(dict["info"] as! [String: Any])
                    self.info = model
                }
                if dict.keys.contains("parentDevice") {
                    self.parentDevice = dict["parentDevice"] as! String
                }
                if dict.keys.contains("secondTypeName") {
                    self.secondTypeName = dict["secondTypeName"] as! String
                }
            }
        }
        public var code: String?

        public var deviceList: [GetDeviceListResponseBody.Data.DeviceList]?

        public var factoryId: String?

        public var httpCode: Int32?

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
                map["code"] = self.code!
            }
            if self.deviceList != nil {
                var tmp : [Any] = []
                for k in self.deviceList! {
                    tmp.append(k.toMap())
                }
                map["deviceList"] = tmp
            }
            if self.factoryId != nil {
                map["factoryId"] = self.factoryId!
            }
            if self.httpCode != nil {
                map["httpCode"] = self.httpCode!
            }
            if self.success != nil {
                map["success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("code") {
                self.code = dict["code"] as! String
            }
            if dict.keys.contains("deviceList") {
                var tmp : [GetDeviceListResponseBody.Data.DeviceList] = []
                for v in dict["deviceList"] as! [Any] {
                    var model = GetDeviceListResponseBody.Data.DeviceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.deviceList = tmp
            }
            if dict.keys.contains("factoryId") {
                self.factoryId = dict["factoryId"] as! String
            }
            if dict.keys.contains("httpCode") {
                self.httpCode = dict["httpCode"] as! Int32
            }
            if dict.keys.contains("success") {
                self.success = dict["success"] as! Bool
            }
        }
    }
    public var code: String?

    public var data: GetDeviceListResponseBody.Data?

    public var httpCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetDeviceListResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetDeviceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeviceListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDeviceListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDocExtractionResultRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class GetDocExtractionResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class KvListInfo : Tea.TeaModel {
            public class Context : Tea.TeaModel {
                public class Confidence : Tea.TeaModel {
                    public var keyConfidence: Double?

                    public var valueConfidence: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.keyConfidence != nil {
                            map["keyConfidence"] = self.keyConfidence!
                        }
                        if self.valueConfidence != nil {
                            map["valueConfidence"] = self.valueConfidence!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("keyConfidence") {
                            self.keyConfidence = dict["keyConfidence"] as! Double
                        }
                        if dict.keys.contains("valueConfidence") {
                            self.valueConfidence = dict["valueConfidence"] as! Double
                        }
                    }
                }
                public var confidence: GetDocExtractionResultResponseBody.Data.KvListInfo.Context.Confidence?

                public var key: [ContentItem]?

                public var value: [ContentItem]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.confidence?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.confidence != nil {
                        map["confidence"] = self.confidence?.toMap()
                    }
                    if self.key != nil {
                        var tmp : [Any] = []
                        for k in self.key! {
                            tmp.append(k.toMap())
                        }
                        map["key"] = tmp
                    }
                    if self.value != nil {
                        var tmp : [Any] = []
                        for k in self.value! {
                            tmp.append(k.toMap())
                        }
                        map["value"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("confidence") {
                        var model = GetDocExtractionResultResponseBody.Data.KvListInfo.Context.Confidence()
                        model.fromMap(dict["confidence"] as! [String: Any])
                        self.confidence = model
                    }
                    if dict.keys.contains("key") {
                        var tmp : [ContentItem] = []
                        for v in dict["key"] as! [Any] {
                            var model = ContentItem()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.key = tmp
                    }
                    if dict.keys.contains("value") {
                        var tmp : [ContentItem] = []
                        for v in dict["value"] as! [Any] {
                            var model = ContentItem()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.value = tmp
                    }
                }
            }
            public var context: GetDocExtractionResultResponseBody.Data.KvListInfo.Context?

            public var keyName: String?

            public var keyValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.context?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.context != nil {
                    map["context"] = self.context?.toMap()
                }
                if self.keyName != nil {
                    map["keyName"] = self.keyName!
                }
                if self.keyValue != nil {
                    map["keyValue"] = self.keyValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("context") {
                    var model = GetDocExtractionResultResponseBody.Data.KvListInfo.Context()
                    model.fromMap(dict["context"] as! [String: Any])
                    self.context = model
                }
                if dict.keys.contains("keyName") {
                    self.keyName = dict["keyName"] as! String
                }
                if dict.keys.contains("keyValue") {
                    self.keyValue = dict["keyValue"] as! String
                }
            }
        }
        public var kvListInfo: [GetDocExtractionResultResponseBody.Data.KvListInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.kvListInfo != nil {
                var tmp : [Any] = []
                for k in self.kvListInfo! {
                    tmp.append(k.toMap())
                }
                map["kvListInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("kvListInfo") {
                var tmp : [GetDocExtractionResultResponseBody.Data.KvListInfo] = []
                for v in dict["kvListInfo"] as! [Any] {
                    var model = GetDocExtractionResultResponseBody.Data.KvListInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.kvListInfo = tmp
            }
        }
    }
    public var data: GetDocExtractionResultResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetDocExtractionResultResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetDocExtractionResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocExtractionResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDocExtractionResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDocParsingResultRequest : Tea.TeaModel {
    public var returnFormat: String?

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
        if self.returnFormat != nil {
            map["returnFormat"] = self.returnFormat!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("returnFormat") {
            self.returnFormat = dict["returnFormat"] as! String
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class GetDocParsingResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
    public var data: GetDocParsingResultResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetDocParsingResultResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetDocParsingResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocParsingResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDocParsingResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDocumentAnalyzeResultRequest : Tea.TeaModel {
    public var jobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["jobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("jobId") {
            self.jobId = dict["jobId"] as! String
        }
    }
}

public class GetDocumentAnalyzeResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class KvListInfo : Tea.TeaModel {
            public class Context : Tea.TeaModel {
                public class Confidence : Tea.TeaModel {
                    public var keyConfidence: Double?

                    public var valueConfidence: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.keyConfidence != nil {
                            map["keyConfidence"] = self.keyConfidence!
                        }
                        if self.valueConfidence != nil {
                            map["valueConfidence"] = self.valueConfidence!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("keyConfidence") {
                            self.keyConfidence = dict["keyConfidence"] as! Double
                        }
                        if dict.keys.contains("valueConfidence") {
                            self.valueConfidence = dict["valueConfidence"] as! Double
                        }
                    }
                }
                public var confidence: GetDocumentAnalyzeResultResponseBody.Data.KvListInfo.Context.Confidence?

                public var key: [ContentItem]?

                public var value: [ContentItem]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.confidence?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.confidence != nil {
                        map["confidence"] = self.confidence?.toMap()
                    }
                    if self.key != nil {
                        var tmp : [Any] = []
                        for k in self.key! {
                            tmp.append(k.toMap())
                        }
                        map["key"] = tmp
                    }
                    if self.value != nil {
                        var tmp : [Any] = []
                        for k in self.value! {
                            tmp.append(k.toMap())
                        }
                        map["value"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("confidence") {
                        var model = GetDocumentAnalyzeResultResponseBody.Data.KvListInfo.Context.Confidence()
                        model.fromMap(dict["confidence"] as! [String: Any])
                        self.confidence = model
                    }
                    if dict.keys.contains("key") {
                        var tmp : [ContentItem] = []
                        for v in dict["key"] as! [Any] {
                            var model = ContentItem()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.key = tmp
                    }
                    if dict.keys.contains("value") {
                        var tmp : [ContentItem] = []
                        for v in dict["value"] as! [Any] {
                            var model = ContentItem()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.value = tmp
                    }
                }
            }
            public var context: GetDocumentAnalyzeResultResponseBody.Data.KvListInfo.Context?

            public var keyName: String?

            public var keyValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.context?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.context != nil {
                    map["context"] = self.context?.toMap()
                }
                if self.keyName != nil {
                    map["keyName"] = self.keyName!
                }
                if self.keyValue != nil {
                    map["keyValue"] = self.keyValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("context") {
                    var model = GetDocumentAnalyzeResultResponseBody.Data.KvListInfo.Context()
                    model.fromMap(dict["context"] as! [String: Any])
                    self.context = model
                }
                if dict.keys.contains("keyName") {
                    self.keyName = dict["keyName"] as! String
                }
                if dict.keys.contains("keyValue") {
                    self.keyValue = dict["keyValue"] as! String
                }
            }
        }
        public var kvListInfo: [GetDocumentAnalyzeResultResponseBody.Data.KvListInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.kvListInfo != nil {
                var tmp : [Any] = []
                for k in self.kvListInfo! {
                    tmp.append(k.toMap())
                }
                map["kvListInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("kvListInfo") {
                var tmp : [GetDocumentAnalyzeResultResponseBody.Data.KvListInfo] = []
                for v in dict["kvListInfo"] as! [Any] {
                    var model = GetDocumentAnalyzeResultResponseBody.Data.KvListInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.kvListInfo = tmp
            }
        }
    }
    public var data: GetDocumentAnalyzeResultResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetDocumentAnalyzeResultResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetDocumentAnalyzeResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocumentAnalyzeResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDocumentAnalyzeResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetElecConstituteRequest : Tea.TeaModel {
    public var code: String?

    public var year: Int32?

    public override init() {
        super.init()
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
        if self.year != nil {
            map["year"] = self.year!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("year") {
            self.year = dict["year"] as! Int32
        }
    }
}

public class GetElecConstituteResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Light : Tea.TeaModel {
            public var carbonEmissionData: Double?

            public var dataUnit: String?

            public var name: String?

            public var nameKey: String?

            public var ratio: Double?

            public var rawData: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.carbonEmissionData != nil {
                    map["carbonEmissionData"] = self.carbonEmissionData!
                }
                if self.dataUnit != nil {
                    map["dataUnit"] = self.dataUnit!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nameKey != nil {
                    map["nameKey"] = self.nameKey!
                }
                if self.ratio != nil {
                    map["ratio"] = self.ratio!
                }
                if self.rawData != nil {
                    map["rawData"] = self.rawData!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("carbonEmissionData") {
                    self.carbonEmissionData = dict["carbonEmissionData"] as! Double
                }
                if dict.keys.contains("dataUnit") {
                    self.dataUnit = dict["dataUnit"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nameKey") {
                    self.nameKey = dict["nameKey"] as! String
                }
                if dict.keys.contains("ratio") {
                    self.ratio = dict["ratio"] as! Double
                }
                if dict.keys.contains("rawData") {
                    self.rawData = dict["rawData"] as! Double
                }
            }
        }
        public class Nuclear : Tea.TeaModel {
            public var carbonEmissionData: Double?

            public var dataUnit: String?

            public var name: String?

            public var nameKey: String?

            public var ratio: Double?

            public var rawData: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.carbonEmissionData != nil {
                    map["carbonEmissionData"] = self.carbonEmissionData!
                }
                if self.dataUnit != nil {
                    map["dataUnit"] = self.dataUnit!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nameKey != nil {
                    map["nameKey"] = self.nameKey!
                }
                if self.ratio != nil {
                    map["ratio"] = self.ratio!
                }
                if self.rawData != nil {
                    map["rawData"] = self.rawData!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("carbonEmissionData") {
                    self.carbonEmissionData = dict["carbonEmissionData"] as! Double
                }
                if dict.keys.contains("dataUnit") {
                    self.dataUnit = dict["dataUnit"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nameKey") {
                    self.nameKey = dict["nameKey"] as! String
                }
                if dict.keys.contains("ratio") {
                    self.ratio = dict["ratio"] as! Double
                }
                if dict.keys.contains("rawData") {
                    self.rawData = dict["rawData"] as! Double
                }
            }
        }
        public class Renewing : Tea.TeaModel {
            public var carbonEmissionData: Double?

            public var dataUnit: String?

            public var name: String?

            public var nameKey: String?

            public var ratio: Double?

            public var rawData: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.carbonEmissionData != nil {
                    map["carbonEmissionData"] = self.carbonEmissionData!
                }
                if self.dataUnit != nil {
                    map["dataUnit"] = self.dataUnit!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nameKey != nil {
                    map["nameKey"] = self.nameKey!
                }
                if self.ratio != nil {
                    map["ratio"] = self.ratio!
                }
                if self.rawData != nil {
                    map["rawData"] = self.rawData!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("carbonEmissionData") {
                    self.carbonEmissionData = dict["carbonEmissionData"] as! Double
                }
                if dict.keys.contains("dataUnit") {
                    self.dataUnit = dict["dataUnit"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nameKey") {
                    self.nameKey = dict["nameKey"] as! String
                }
                if dict.keys.contains("ratio") {
                    self.ratio = dict["ratio"] as! Double
                }
                if dict.keys.contains("rawData") {
                    self.rawData = dict["rawData"] as! Double
                }
            }
        }
        public class Urban : Tea.TeaModel {
            public var carbonEmissionData: Double?

            public var dataUnit: String?

            public var name: String?

            public var nameKey: String?

            public var ratio: Double?

            public var rawData: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.carbonEmissionData != nil {
                    map["carbonEmissionData"] = self.carbonEmissionData!
                }
                if self.dataUnit != nil {
                    map["dataUnit"] = self.dataUnit!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nameKey != nil {
                    map["nameKey"] = self.nameKey!
                }
                if self.ratio != nil {
                    map["ratio"] = self.ratio!
                }
                if self.rawData != nil {
                    map["rawData"] = self.rawData!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("carbonEmissionData") {
                    self.carbonEmissionData = dict["carbonEmissionData"] as! Double
                }
                if dict.keys.contains("dataUnit") {
                    self.dataUnit = dict["dataUnit"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nameKey") {
                    self.nameKey = dict["nameKey"] as! String
                }
                if dict.keys.contains("ratio") {
                    self.ratio = dict["ratio"] as! Double
                }
                if dict.keys.contains("rawData") {
                    self.rawData = dict["rawData"] as! Double
                }
            }
        }
        public class Water : Tea.TeaModel {
            public var carbonEmissionData: Double?

            public var dataUnit: String?

            public var name: String?

            public var nameKey: String?

            public var ratio: Double?

            public var rawData: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.carbonEmissionData != nil {
                    map["carbonEmissionData"] = self.carbonEmissionData!
                }
                if self.dataUnit != nil {
                    map["dataUnit"] = self.dataUnit!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nameKey != nil {
                    map["nameKey"] = self.nameKey!
                }
                if self.ratio != nil {
                    map["ratio"] = self.ratio!
                }
                if self.rawData != nil {
                    map["rawData"] = self.rawData!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("carbonEmissionData") {
                    self.carbonEmissionData = dict["carbonEmissionData"] as! Double
                }
                if dict.keys.contains("dataUnit") {
                    self.dataUnit = dict["dataUnit"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nameKey") {
                    self.nameKey = dict["nameKey"] as! String
                }
                if dict.keys.contains("ratio") {
                    self.ratio = dict["ratio"] as! Double
                }
                if dict.keys.contains("rawData") {
                    self.rawData = dict["rawData"] as! Double
                }
            }
        }
        public class Wind : Tea.TeaModel {
            public var carbonEmissionData: Double?

            public var dataUnit: String?

            public var name: String?

            public var nameKey: String?

            public var ratio: Double?

            public var rawData: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.carbonEmissionData != nil {
                    map["carbonEmissionData"] = self.carbonEmissionData!
                }
                if self.dataUnit != nil {
                    map["dataUnit"] = self.dataUnit!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nameKey != nil {
                    map["nameKey"] = self.nameKey!
                }
                if self.ratio != nil {
                    map["ratio"] = self.ratio!
                }
                if self.rawData != nil {
                    map["rawData"] = self.rawData!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("carbonEmissionData") {
                    self.carbonEmissionData = dict["carbonEmissionData"] as! Double
                }
                if dict.keys.contains("dataUnit") {
                    self.dataUnit = dict["dataUnit"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nameKey") {
                    self.nameKey = dict["nameKey"] as! String
                }
                if dict.keys.contains("ratio") {
                    self.ratio = dict["ratio"] as! Double
                }
                if dict.keys.contains("rawData") {
                    self.rawData = dict["rawData"] as! Double
                }
            }
        }
        public class Zero : Tea.TeaModel {
            public var carbonEmissionData: Double?

            public var dataUnit: String?

            public var name: String?

            public var nameKey: String?

            public var ratio: Double?

            public var rawData: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.carbonEmissionData != nil {
                    map["carbonEmissionData"] = self.carbonEmissionData!
                }
                if self.dataUnit != nil {
                    map["dataUnit"] = self.dataUnit!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nameKey != nil {
                    map["nameKey"] = self.nameKey!
                }
                if self.ratio != nil {
                    map["ratio"] = self.ratio!
                }
                if self.rawData != nil {
                    map["rawData"] = self.rawData!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("carbonEmissionData") {
                    self.carbonEmissionData = dict["carbonEmissionData"] as! Double
                }
                if dict.keys.contains("dataUnit") {
                    self.dataUnit = dict["dataUnit"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nameKey") {
                    self.nameKey = dict["nameKey"] as! String
                }
                if dict.keys.contains("ratio") {
                    self.ratio = dict["ratio"] as! Double
                }
                if dict.keys.contains("rawData") {
                    self.rawData = dict["rawData"] as! Double
                }
            }
        }
        public var light: GetElecConstituteResponseBody.Data.Light?

        public var nuclear: GetElecConstituteResponseBody.Data.Nuclear?

        public var renewing: GetElecConstituteResponseBody.Data.Renewing?

        public var urban: GetElecConstituteResponseBody.Data.Urban?

        public var water: GetElecConstituteResponseBody.Data.Water?

        public var wind: GetElecConstituteResponseBody.Data.Wind?

        public var zero: GetElecConstituteResponseBody.Data.Zero?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.light?.validate()
            try self.nuclear?.validate()
            try self.renewing?.validate()
            try self.urban?.validate()
            try self.water?.validate()
            try self.wind?.validate()
            try self.zero?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.light != nil {
                map["light"] = self.light?.toMap()
            }
            if self.nuclear != nil {
                map["nuclear"] = self.nuclear?.toMap()
            }
            if self.renewing != nil {
                map["renewing"] = self.renewing?.toMap()
            }
            if self.urban != nil {
                map["urban"] = self.urban?.toMap()
            }
            if self.water != nil {
                map["water"] = self.water?.toMap()
            }
            if self.wind != nil {
                map["wind"] = self.wind?.toMap()
            }
            if self.zero != nil {
                map["zero"] = self.zero?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("light") {
                var model = GetElecConstituteResponseBody.Data.Light()
                model.fromMap(dict["light"] as! [String: Any])
                self.light = model
            }
            if dict.keys.contains("nuclear") {
                var model = GetElecConstituteResponseBody.Data.Nuclear()
                model.fromMap(dict["nuclear"] as! [String: Any])
                self.nuclear = model
            }
            if dict.keys.contains("renewing") {
                var model = GetElecConstituteResponseBody.Data.Renewing()
                model.fromMap(dict["renewing"] as! [String: Any])
                self.renewing = model
            }
            if dict.keys.contains("urban") {
                var model = GetElecConstituteResponseBody.Data.Urban()
                model.fromMap(dict["urban"] as! [String: Any])
                self.urban = model
            }
            if dict.keys.contains("water") {
                var model = GetElecConstituteResponseBody.Data.Water()
                model.fromMap(dict["water"] as! [String: Any])
                self.water = model
            }
            if dict.keys.contains("wind") {
                var model = GetElecConstituteResponseBody.Data.Wind()
                model.fromMap(dict["wind"] as! [String: Any])
                self.wind = model
            }
            if dict.keys.contains("zero") {
                var model = GetElecConstituteResponseBody.Data.Zero()
                model.fromMap(dict["zero"] as! [String: Any])
                self.zero = model
            }
        }
    }
    public var data: GetElecConstituteResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetElecConstituteResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetElecConstituteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetElecConstituteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetElecConstituteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetElecTrendRequest : Tea.TeaModel {
    public var code: String?

    public var yearList: [Int32]?

    public override init() {
        super.init()
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
        if self.yearList != nil {
            map["yearList"] = self.yearList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("yearList") {
            self.yearList = dict["yearList"] as! [Int32]
        }
    }
}

public class GetElecTrendResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Light : Tea.TeaModel {
            public var carbonEmissionData: Double?

            public var dataUnit: String?

            public var month: Int32?

            public var name: String?

            public var nameKey: String?

            public var ratio: Double?

            public var rawData: Double?

            public var year: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.carbonEmissionData != nil {
                    map["carbonEmissionData"] = self.carbonEmissionData!
                }
                if self.dataUnit != nil {
                    map["dataUnit"] = self.dataUnit!
                }
                if self.month != nil {
                    map["month"] = self.month!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nameKey != nil {
                    map["nameKey"] = self.nameKey!
                }
                if self.ratio != nil {
                    map["ratio"] = self.ratio!
                }
                if self.rawData != nil {
                    map["rawData"] = self.rawData!
                }
                if self.year != nil {
                    map["year"] = self.year!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("carbonEmissionData") {
                    self.carbonEmissionData = dict["carbonEmissionData"] as! Double
                }
                if dict.keys.contains("dataUnit") {
                    self.dataUnit = dict["dataUnit"] as! String
                }
                if dict.keys.contains("month") {
                    self.month = dict["month"] as! Int32
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nameKey") {
                    self.nameKey = dict["nameKey"] as! String
                }
                if dict.keys.contains("ratio") {
                    self.ratio = dict["ratio"] as! Double
                }
                if dict.keys.contains("rawData") {
                    self.rawData = dict["rawData"] as! Double
                }
                if dict.keys.contains("year") {
                    self.year = dict["year"] as! String
                }
            }
        }
        public class Nuclear : Tea.TeaModel {
            public var carbonEmissionData: Double?

            public var dataUnit: String?

            public var month: Int32?

            public var name: String?

            public var nameKey: String?

            public var ratio: Double?

            public var rawData: Double?

            public var year: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.carbonEmissionData != nil {
                    map["carbonEmissionData"] = self.carbonEmissionData!
                }
                if self.dataUnit != nil {
                    map["dataUnit"] = self.dataUnit!
                }
                if self.month != nil {
                    map["month"] = self.month!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nameKey != nil {
                    map["nameKey"] = self.nameKey!
                }
                if self.ratio != nil {
                    map["ratio"] = self.ratio!
                }
                if self.rawData != nil {
                    map["rawData"] = self.rawData!
                }
                if self.year != nil {
                    map["year"] = self.year!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("carbonEmissionData") {
                    self.carbonEmissionData = dict["carbonEmissionData"] as! Double
                }
                if dict.keys.contains("dataUnit") {
                    self.dataUnit = dict["dataUnit"] as! String
                }
                if dict.keys.contains("month") {
                    self.month = dict["month"] as! Int32
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nameKey") {
                    self.nameKey = dict["nameKey"] as! String
                }
                if dict.keys.contains("ratio") {
                    self.ratio = dict["ratio"] as! Double
                }
                if dict.keys.contains("rawData") {
                    self.rawData = dict["rawData"] as! Double
                }
                if dict.keys.contains("year") {
                    self.year = dict["year"] as! String
                }
            }
        }
        public class Renewing : Tea.TeaModel {
            public var carbonEmissionData: Double?

            public var dataUnit: String?

            public var month: Int32?

            public var name: String?

            public var nameKey: String?

            public var ratio: Double?

            public var rawData: Double?

            public var year: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.carbonEmissionData != nil {
                    map["carbonEmissionData"] = self.carbonEmissionData!
                }
                if self.dataUnit != nil {
                    map["dataUnit"] = self.dataUnit!
                }
                if self.month != nil {
                    map["month"] = self.month!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nameKey != nil {
                    map["nameKey"] = self.nameKey!
                }
                if self.ratio != nil {
                    map["ratio"] = self.ratio!
                }
                if self.rawData != nil {
                    map["rawData"] = self.rawData!
                }
                if self.year != nil {
                    map["year"] = self.year!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("carbonEmissionData") {
                    self.carbonEmissionData = dict["carbonEmissionData"] as! Double
                }
                if dict.keys.contains("dataUnit") {
                    self.dataUnit = dict["dataUnit"] as! String
                }
                if dict.keys.contains("month") {
                    self.month = dict["month"] as! Int32
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nameKey") {
                    self.nameKey = dict["nameKey"] as! String
                }
                if dict.keys.contains("ratio") {
                    self.ratio = dict["ratio"] as! Double
                }
                if dict.keys.contains("rawData") {
                    self.rawData = dict["rawData"] as! Double
                }
                if dict.keys.contains("year") {
                    self.year = dict["year"] as! String
                }
            }
        }
        public class Urban : Tea.TeaModel {
            public var carbonEmissionData: Double?

            public var dataUnit: String?

            public var month: Int32?

            public var name: String?

            public var nameKey: String?

            public var ratio: Double?

            public var rawData: Double?

            public var year: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.carbonEmissionData != nil {
                    map["carbonEmissionData"] = self.carbonEmissionData!
                }
                if self.dataUnit != nil {
                    map["dataUnit"] = self.dataUnit!
                }
                if self.month != nil {
                    map["month"] = self.month!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nameKey != nil {
                    map["nameKey"] = self.nameKey!
                }
                if self.ratio != nil {
                    map["ratio"] = self.ratio!
                }
                if self.rawData != nil {
                    map["rawData"] = self.rawData!
                }
                if self.year != nil {
                    map["year"] = self.year!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("carbonEmissionData") {
                    self.carbonEmissionData = dict["carbonEmissionData"] as! Double
                }
                if dict.keys.contains("dataUnit") {
                    self.dataUnit = dict["dataUnit"] as! String
                }
                if dict.keys.contains("month") {
                    self.month = dict["month"] as! Int32
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nameKey") {
                    self.nameKey = dict["nameKey"] as! String
                }
                if dict.keys.contains("ratio") {
                    self.ratio = dict["ratio"] as! Double
                }
                if dict.keys.contains("rawData") {
                    self.rawData = dict["rawData"] as! Double
                }
                if dict.keys.contains("year") {
                    self.year = dict["year"] as! String
                }
            }
        }
        public class Water : Tea.TeaModel {
            public var carbonEmissionData: Double?

            public var dataUnit: String?

            public var month: Int32?

            public var name: String?

            public var nameKey: String?

            public var ratio: Double?

            public var rawData: Double?

            public var year: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.carbonEmissionData != nil {
                    map["carbonEmissionData"] = self.carbonEmissionData!
                }
                if self.dataUnit != nil {
                    map["dataUnit"] = self.dataUnit!
                }
                if self.month != nil {
                    map["month"] = self.month!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nameKey != nil {
                    map["nameKey"] = self.nameKey!
                }
                if self.ratio != nil {
                    map["ratio"] = self.ratio!
                }
                if self.rawData != nil {
                    map["rawData"] = self.rawData!
                }
                if self.year != nil {
                    map["year"] = self.year!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("carbonEmissionData") {
                    self.carbonEmissionData = dict["carbonEmissionData"] as! Double
                }
                if dict.keys.contains("dataUnit") {
                    self.dataUnit = dict["dataUnit"] as! String
                }
                if dict.keys.contains("month") {
                    self.month = dict["month"] as! Int32
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nameKey") {
                    self.nameKey = dict["nameKey"] as! String
                }
                if dict.keys.contains("ratio") {
                    self.ratio = dict["ratio"] as! Double
                }
                if dict.keys.contains("rawData") {
                    self.rawData = dict["rawData"] as! Double
                }
                if dict.keys.contains("year") {
                    self.year = dict["year"] as! String
                }
            }
        }
        public class Wind : Tea.TeaModel {
            public var carbonEmissionData: Double?

            public var dataUnit: String?

            public var month: Int32?

            public var name: String?

            public var nameKey: String?

            public var ratio: Double?

            public var rawData: Double?

            public var year: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.carbonEmissionData != nil {
                    map["carbonEmissionData"] = self.carbonEmissionData!
                }
                if self.dataUnit != nil {
                    map["dataUnit"] = self.dataUnit!
                }
                if self.month != nil {
                    map["month"] = self.month!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nameKey != nil {
                    map["nameKey"] = self.nameKey!
                }
                if self.ratio != nil {
                    map["ratio"] = self.ratio!
                }
                if self.rawData != nil {
                    map["rawData"] = self.rawData!
                }
                if self.year != nil {
                    map["year"] = self.year!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("carbonEmissionData") {
                    self.carbonEmissionData = dict["carbonEmissionData"] as! Double
                }
                if dict.keys.contains("dataUnit") {
                    self.dataUnit = dict["dataUnit"] as! String
                }
                if dict.keys.contains("month") {
                    self.month = dict["month"] as! Int32
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nameKey") {
                    self.nameKey = dict["nameKey"] as! String
                }
                if dict.keys.contains("ratio") {
                    self.ratio = dict["ratio"] as! Double
                }
                if dict.keys.contains("rawData") {
                    self.rawData = dict["rawData"] as! Double
                }
                if dict.keys.contains("year") {
                    self.year = dict["year"] as! String
                }
            }
        }
        public class Zero : Tea.TeaModel {
            public var carbonEmissionData: Double?

            public var dataUnit: String?

            public var month: Int32?

            public var name: String?

            public var nameKey: String?

            public var ratio: Double?

            public var rawData: Double?

            public var year: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.carbonEmissionData != nil {
                    map["carbonEmissionData"] = self.carbonEmissionData!
                }
                if self.dataUnit != nil {
                    map["dataUnit"] = self.dataUnit!
                }
                if self.month != nil {
                    map["month"] = self.month!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nameKey != nil {
                    map["nameKey"] = self.nameKey!
                }
                if self.ratio != nil {
                    map["ratio"] = self.ratio!
                }
                if self.rawData != nil {
                    map["rawData"] = self.rawData!
                }
                if self.year != nil {
                    map["year"] = self.year!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("carbonEmissionData") {
                    self.carbonEmissionData = dict["carbonEmissionData"] as! Double
                }
                if dict.keys.contains("dataUnit") {
                    self.dataUnit = dict["dataUnit"] as! String
                }
                if dict.keys.contains("month") {
                    self.month = dict["month"] as! Int32
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nameKey") {
                    self.nameKey = dict["nameKey"] as! String
                }
                if dict.keys.contains("ratio") {
                    self.ratio = dict["ratio"] as! Double
                }
                if dict.keys.contains("rawData") {
                    self.rawData = dict["rawData"] as! Double
                }
                if dict.keys.contains("year") {
                    self.year = dict["year"] as! String
                }
            }
        }
        public var light: [GetElecTrendResponseBody.Data.Light]?

        public var nuclear: [GetElecTrendResponseBody.Data.Nuclear]?

        public var renewing: [GetElecTrendResponseBody.Data.Renewing]?

        public var urban: [GetElecTrendResponseBody.Data.Urban]?

        public var water: [GetElecTrendResponseBody.Data.Water]?

        public var wind: [GetElecTrendResponseBody.Data.Wind]?

        public var zero: [GetElecTrendResponseBody.Data.Zero]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.light != nil {
                var tmp : [Any] = []
                for k in self.light! {
                    tmp.append(k.toMap())
                }
                map["light"] = tmp
            }
            if self.nuclear != nil {
                var tmp : [Any] = []
                for k in self.nuclear! {
                    tmp.append(k.toMap())
                }
                map["nuclear"] = tmp
            }
            if self.renewing != nil {
                var tmp : [Any] = []
                for k in self.renewing! {
                    tmp.append(k.toMap())
                }
                map["renewing"] = tmp
            }
            if self.urban != nil {
                var tmp : [Any] = []
                for k in self.urban! {
                    tmp.append(k.toMap())
                }
                map["urban"] = tmp
            }
            if self.water != nil {
                var tmp : [Any] = []
                for k in self.water! {
                    tmp.append(k.toMap())
                }
                map["water"] = tmp
            }
            if self.wind != nil {
                var tmp : [Any] = []
                for k in self.wind! {
                    tmp.append(k.toMap())
                }
                map["wind"] = tmp
            }
            if self.zero != nil {
                var tmp : [Any] = []
                for k in self.zero! {
                    tmp.append(k.toMap())
                }
                map["zero"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("light") {
                var tmp : [GetElecTrendResponseBody.Data.Light] = []
                for v in dict["light"] as! [Any] {
                    var model = GetElecTrendResponseBody.Data.Light()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.light = tmp
            }
            if dict.keys.contains("nuclear") {
                var tmp : [GetElecTrendResponseBody.Data.Nuclear] = []
                for v in dict["nuclear"] as! [Any] {
                    var model = GetElecTrendResponseBody.Data.Nuclear()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nuclear = tmp
            }
            if dict.keys.contains("renewing") {
                var tmp : [GetElecTrendResponseBody.Data.Renewing] = []
                for v in dict["renewing"] as! [Any] {
                    var model = GetElecTrendResponseBody.Data.Renewing()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.renewing = tmp
            }
            if dict.keys.contains("urban") {
                var tmp : [GetElecTrendResponseBody.Data.Urban] = []
                for v in dict["urban"] as! [Any] {
                    var model = GetElecTrendResponseBody.Data.Urban()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.urban = tmp
            }
            if dict.keys.contains("water") {
                var tmp : [GetElecTrendResponseBody.Data.Water] = []
                for v in dict["water"] as! [Any] {
                    var model = GetElecTrendResponseBody.Data.Water()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.water = tmp
            }
            if dict.keys.contains("wind") {
                var tmp : [GetElecTrendResponseBody.Data.Wind] = []
                for v in dict["wind"] as! [Any] {
                    var model = GetElecTrendResponseBody.Data.Wind()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.wind = tmp
            }
            if dict.keys.contains("zero") {
                var tmp : [GetElecTrendResponseBody.Data.Zero] = []
                for v in dict["zero"] as! [Any] {
                    var model = GetElecTrendResponseBody.Data.Zero()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.zero = tmp
            }
        }
    }
    public var code: String?

    public var data: GetElecTrendResponseBody.Data?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
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
        if dict.keys.contains("data") {
            var model = GetElecTrendResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetElecTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetElecTrendResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetElecTrendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEmissionSourceConstituteRequest : Tea.TeaModel {
    public var code: String?

    public var moduleCode: String?

    public var moduleType: Int32?

    public var year: Int32?

    public override init() {
        super.init()
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
        if self.moduleCode != nil {
            map["moduleCode"] = self.moduleCode!
        }
        if self.moduleType != nil {
            map["moduleType"] = self.moduleType!
        }
        if self.year != nil {
            map["year"] = self.year!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("moduleCode") {
            self.moduleCode = dict["moduleCode"] as! String
        }
        if dict.keys.contains("moduleType") {
            self.moduleType = dict["moduleType"] as! Int32
        }
        if dict.keys.contains("year") {
            self.year = dict["year"] as! Int32
        }
    }
}

public class GetEmissionSourceConstituteResponseBody : Tea.TeaModel {
    public var data: [ConstituteItem]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [ConstituteItem] = []
            for v in dict["data"] as! [Any] {
                var model = ConstituteItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetEmissionSourceConstituteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEmissionSourceConstituteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetEmissionSourceConstituteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEmissionSummaryRequest : Tea.TeaModel {
    public var code: String?

    public var moduleCode: String?

    public var moduleType: Int32?

    public var year: Int32?

    public override init() {
        super.init()
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
        if self.moduleCode != nil {
            map["moduleCode"] = self.moduleCode!
        }
        if self.moduleType != nil {
            map["moduleType"] = self.moduleType!
        }
        if self.year != nil {
            map["year"] = self.year!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("moduleCode") {
            self.moduleCode = dict["moduleCode"] as! String
        }
        if dict.keys.contains("moduleType") {
            self.moduleType = dict["moduleType"] as! Int32
        }
        if dict.keys.contains("year") {
            self.year = dict["year"] as! Int32
        }
    }
}

public class GetEmissionSummaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var actualEmissionRatio: Double?

        public var carbonSaveConversion: Double?

        public var currentPeriodCarbonEmissionData: Double?

        public var isWeighting: Bool?

        public var lastPeriodCarbonEmissionData: Double?

        public var lastPeriodWeightingCarbonEmissionData: Double?

        public var ratio: Double?

        public var totalCarbonEmissionData: Double?

        public var weightingCarbonEmissionData: Double?

        public var weightingRatio: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actualEmissionRatio != nil {
                map["actualEmissionRatio"] = self.actualEmissionRatio!
            }
            if self.carbonSaveConversion != nil {
                map["carbonSaveConversion"] = self.carbonSaveConversion!
            }
            if self.currentPeriodCarbonEmissionData != nil {
                map["currentPeriodCarbonEmissionData"] = self.currentPeriodCarbonEmissionData!
            }
            if self.isWeighting != nil {
                map["isWeighting"] = self.isWeighting!
            }
            if self.lastPeriodCarbonEmissionData != nil {
                map["lastPeriodCarbonEmissionData"] = self.lastPeriodCarbonEmissionData!
            }
            if self.lastPeriodWeightingCarbonEmissionData != nil {
                map["lastPeriodWeightingCarbonEmissionData"] = self.lastPeriodWeightingCarbonEmissionData!
            }
            if self.ratio != nil {
                map["ratio"] = self.ratio!
            }
            if self.totalCarbonEmissionData != nil {
                map["totalCarbonEmissionData"] = self.totalCarbonEmissionData!
            }
            if self.weightingCarbonEmissionData != nil {
                map["weightingCarbonEmissionData"] = self.weightingCarbonEmissionData!
            }
            if self.weightingRatio != nil {
                map["weightingRatio"] = self.weightingRatio!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("actualEmissionRatio") {
                self.actualEmissionRatio = dict["actualEmissionRatio"] as! Double
            }
            if dict.keys.contains("carbonSaveConversion") {
                self.carbonSaveConversion = dict["carbonSaveConversion"] as! Double
            }
            if dict.keys.contains("currentPeriodCarbonEmissionData") {
                self.currentPeriodCarbonEmissionData = dict["currentPeriodCarbonEmissionData"] as! Double
            }
            if dict.keys.contains("isWeighting") {
                self.isWeighting = dict["isWeighting"] as! Bool
            }
            if dict.keys.contains("lastPeriodCarbonEmissionData") {
                self.lastPeriodCarbonEmissionData = dict["lastPeriodCarbonEmissionData"] as! Double
            }
            if dict.keys.contains("lastPeriodWeightingCarbonEmissionData") {
                self.lastPeriodWeightingCarbonEmissionData = dict["lastPeriodWeightingCarbonEmissionData"] as! Double
            }
            if dict.keys.contains("ratio") {
                self.ratio = dict["ratio"] as! Double
            }
            if dict.keys.contains("totalCarbonEmissionData") {
                self.totalCarbonEmissionData = dict["totalCarbonEmissionData"] as! Double
            }
            if dict.keys.contains("weightingCarbonEmissionData") {
                self.weightingCarbonEmissionData = dict["weightingCarbonEmissionData"] as! Double
            }
            if dict.keys.contains("weightingRatio") {
                self.weightingRatio = dict["weightingRatio"] as! Double
            }
        }
    }
    public var data: GetEmissionSummaryResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetEmissionSummaryResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetEmissionSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEmissionSummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetEmissionSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEpdInventoryConstituteRequest : Tea.TeaModel {
    public var code: String?

    public var productId: Int64?

    public var productType: Int64?

    public override init() {
        super.init()
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
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productType != nil {
            map["productType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! Int64
        }
        if dict.keys.contains("productType") {
            self.productType = dict["productType"] as! Int64
        }
    }
}

public class GetEpdInventoryConstituteResponseBody : Tea.TeaModel {
    public var data: [EpdInventoryConstituteItem]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [EpdInventoryConstituteItem] = []
            for v in dict["data"] as! [Any] {
                var model = EpdInventoryConstituteItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetEpdInventoryConstituteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEpdInventoryConstituteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetEpdInventoryConstituteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEpdSummaryRequest : Tea.TeaModel {
    public var code: String?

    public var productId: Int64?

    public var productType: Int64?

    public override init() {
        super.init()
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
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productType != nil {
            map["productType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! Int64
        }
        if dict.keys.contains("productType") {
            self.productType = dict["productType"] as! Int64
        }
    }
}

public class GetEpdSummaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var carbonEmission: Double?

        public var indicator: String?

        public var key: String?

        public var method: String?

        public var name: String?

        public var num: Int64?

        public var preUnit: String?

        public var state: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.carbonEmission != nil {
                map["carbonEmission"] = self.carbonEmission!
            }
            if self.indicator != nil {
                map["indicator"] = self.indicator!
            }
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.method != nil {
                map["method"] = self.method!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.num != nil {
                map["num"] = self.num!
            }
            if self.preUnit != nil {
                map["preUnit"] = self.preUnit!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("carbonEmission") {
                self.carbonEmission = dict["carbonEmission"] as! Double
            }
            if dict.keys.contains("indicator") {
                self.indicator = dict["indicator"] as! String
            }
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("method") {
                self.method = dict["method"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("num") {
                self.num = dict["num"] as! Int64
            }
            if dict.keys.contains("preUnit") {
                self.preUnit = dict["preUnit"] as! String
            }
            if dict.keys.contains("state") {
                self.state = dict["state"] as! Int64
            }
        }
    }
    public var data: [GetEpdSummaryResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [GetEpdSummaryResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetEpdSummaryResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetEpdSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEpdSummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetEpdSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFootprintListRequest : Tea.TeaModel {
    public var code: String?

    public var currentPage: Int64?

    public var pageSize: Int64?

    public var productType: Int64?

    public override init() {
        super.init()
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
        if self.currentPage != nil {
            map["currentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.productType != nil {
            map["productType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("currentPage") {
            self.currentPage = dict["currentPage"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("productType") {
            self.productType = dict["productType"] as! Int64
        }
    }
}

public class GetFootprintListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var amount: Double?

            public var authStatus: Int64?

            public var checkEndTime: String?

            public var checkStartTime: String?

            public var code: String?

            public var createdBy: String?

            public var id: Int64?

            public var isDemoModel: Int64?

            public var lifeCycle: String?

            public var lifeCycleType: Int64?

            public var name: String?

            public var type: String?

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
                if self.amount != nil {
                    map["amount"] = self.amount!
                }
                if self.authStatus != nil {
                    map["authStatus"] = self.authStatus!
                }
                if self.checkEndTime != nil {
                    map["checkEndTime"] = self.checkEndTime!
                }
                if self.checkStartTime != nil {
                    map["checkStartTime"] = self.checkStartTime!
                }
                if self.code != nil {
                    map["code"] = self.code!
                }
                if self.createdBy != nil {
                    map["createdBy"] = self.createdBy!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.isDemoModel != nil {
                    map["isDemoModel"] = self.isDemoModel!
                }
                if self.lifeCycle != nil {
                    map["lifeCycle"] = self.lifeCycle!
                }
                if self.lifeCycleType != nil {
                    map["lifeCycleType"] = self.lifeCycleType!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.unit != nil {
                    map["unit"] = self.unit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("amount") {
                    self.amount = dict["amount"] as! Double
                }
                if dict.keys.contains("authStatus") {
                    self.authStatus = dict["authStatus"] as! Int64
                }
                if dict.keys.contains("checkEndTime") {
                    self.checkEndTime = dict["checkEndTime"] as! String
                }
                if dict.keys.contains("checkStartTime") {
                    self.checkStartTime = dict["checkStartTime"] as! String
                }
                if dict.keys.contains("code") {
                    self.code = dict["code"] as! String
                }
                if dict.keys.contains("createdBy") {
                    self.createdBy = dict["createdBy"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("isDemoModel") {
                    self.isDemoModel = dict["isDemoModel"] as! Int64
                }
                if dict.keys.contains("lifeCycle") {
                    self.lifeCycle = dict["lifeCycle"] as! String
                }
                if dict.keys.contains("lifeCycleType") {
                    self.lifeCycleType = dict["lifeCycleType"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("unit") {
                    self.unit = dict["unit"] as! String
                }
            }
        }
        public var currentPage: Int64?

        public var pageSize: Int64?

        public var records: [GetFootprintListResponseBody.Data.Records]?

        public var total: Int64?

        public var totalPage: Int64?

        public override init() {
            super.init()
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
                map["currentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["records"] = tmp
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            if self.totalPage != nil {
                map["totalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("currentPage") {
                self.currentPage = dict["currentPage"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("records") {
                var tmp : [GetFootprintListResponseBody.Data.Records] = []
                for v in dict["records"] as! [Any] {
                    var model = GetFootprintListResponseBody.Data.Records()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.records = tmp
            }
            if dict.keys.contains("total") {
                self.total = dict["total"] as! Int64
            }
            if dict.keys.contains("totalPage") {
                self.totalPage = dict["totalPage"] as! Int64
            }
        }
    }
    public var data: GetFootprintListResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetFootprintListResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetFootprintListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFootprintListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetFootprintListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGasConstituteRequest : Tea.TeaModel {
    public var code: String?

    public var moduleCode: String?

    public var moduleType: Int32?

    public var year: Int32?

    public override init() {
        super.init()
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
        if self.moduleCode != nil {
            map["moduleCode"] = self.moduleCode!
        }
        if self.moduleType != nil {
            map["moduleType"] = self.moduleType!
        }
        if self.year != nil {
            map["year"] = self.year!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("moduleCode") {
            self.moduleCode = dict["moduleCode"] as! String
        }
        if dict.keys.contains("moduleType") {
            self.moduleType = dict["moduleType"] as! Int32
        }
        if dict.keys.contains("year") {
            self.year = dict["year"] as! Int32
        }
    }
}

public class GetGasConstituteResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var carbonEmissionData: Double?

        public var gasEmissionData: Double?

        public var name: String?

        public var ratio: Double?

        public var type: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.carbonEmissionData != nil {
                map["carbonEmissionData"] = self.carbonEmissionData!
            }
            if self.gasEmissionData != nil {
                map["gasEmissionData"] = self.gasEmissionData!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.ratio != nil {
                map["ratio"] = self.ratio!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("carbonEmissionData") {
                self.carbonEmissionData = dict["carbonEmissionData"] as! Double
            }
            if dict.keys.contains("gasEmissionData") {
                self.gasEmissionData = dict["gasEmissionData"] as! Double
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("ratio") {
                self.ratio = dict["ratio"] as! Double
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! Int32
            }
        }
    }
    public var data: [GetGasConstituteResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var tmp : [GetGasConstituteResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetGasConstituteResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetGasConstituteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGasConstituteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetGasConstituteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGwpBenchmarkListRequest : Tea.TeaModel {
    public var code: String?

    public var productId: Int64?

    public var productType: Int64?

    public override init() {
        super.init()
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
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productType != nil {
            map["productType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! Int64
        }
        if dict.keys.contains("productType") {
            self.productType = dict["productType"] as! Int64
        }
    }
}

public class GetGwpBenchmarkListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var activeReduction: Double?

            public var benchmarkEmission: Double?

            public var benchmarkName: String?

            public var carbonEmission: Double?

            public var name: String?

            public var percent: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activeReduction != nil {
                    map["activeReduction"] = self.activeReduction!
                }
                if self.benchmarkEmission != nil {
                    map["benchmarkEmission"] = self.benchmarkEmission!
                }
                if self.benchmarkName != nil {
                    map["benchmarkName"] = self.benchmarkName!
                }
                if self.carbonEmission != nil {
                    map["carbonEmission"] = self.carbonEmission!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.percent != nil {
                    map["percent"] = self.percent!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("activeReduction") {
                    self.activeReduction = dict["activeReduction"] as! Double
                }
                if dict.keys.contains("benchmarkEmission") {
                    self.benchmarkEmission = dict["benchmarkEmission"] as! Double
                }
                if dict.keys.contains("benchmarkName") {
                    self.benchmarkName = dict["benchmarkName"] as! String
                }
                if dict.keys.contains("carbonEmission") {
                    self.carbonEmission = dict["carbonEmission"] as! Double
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("percent") {
                    self.percent = dict["percent"] as! String
                }
            }
        }
        public var items: [GetGwpBenchmarkListResponseBody.Data.Items]?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["items"] = tmp
            }
            if self.unit != nil {
                map["unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [GetGwpBenchmarkListResponseBody.Data.Items] = []
                for v in dict["items"] as! [Any] {
                    var model = GetGwpBenchmarkListResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("unit") {
                self.unit = dict["unit"] as! String
            }
        }
    }
    public var data: GetGwpBenchmarkListResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetGwpBenchmarkListResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetGwpBenchmarkListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGwpBenchmarkListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetGwpBenchmarkListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGwpBenchmarkSummaryRequest : Tea.TeaModel {
    public var code: String?

    public var productId: Int64?

    public var productType: Int64?

    public override init() {
        super.init()
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
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productType != nil {
            map["productType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! Int64
        }
        if dict.keys.contains("productType") {
            self.productType = dict["productType"] as! Int64
        }
    }
}

public class GetGwpBenchmarkSummaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var name: String?

            public var percent: String?

            public var quantity: Int64?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.percent != nil {
                    map["percent"] = self.percent!
                }
                if self.quantity != nil {
                    map["quantity"] = self.quantity!
                }
                if self.unit != nil {
                    map["unit"] = self.unit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("percent") {
                    self.percent = dict["percent"] as! String
                }
                if dict.keys.contains("quantity") {
                    self.quantity = dict["quantity"] as! Int64
                }
                if dict.keys.contains("unit") {
                    self.unit = dict["unit"] as! String
                }
            }
        }
        public var items: [GetGwpBenchmarkSummaryResponseBody.Data.Items]?

        public var quantity: Int64?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["items"] = tmp
            }
            if self.quantity != nil {
                map["quantity"] = self.quantity!
            }
            if self.unit != nil {
                map["unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [GetGwpBenchmarkSummaryResponseBody.Data.Items] = []
                for v in dict["items"] as! [Any] {
                    var model = GetGwpBenchmarkSummaryResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("quantity") {
                self.quantity = dict["quantity"] as! Int64
            }
            if dict.keys.contains("unit") {
                self.unit = dict["unit"] as! String
            }
        }
    }
    public var data: GetGwpBenchmarkSummaryResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetGwpBenchmarkSummaryResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetGwpBenchmarkSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGwpBenchmarkSummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetGwpBenchmarkSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGwpInventoryConstituteRequest : Tea.TeaModel {
    public var code: String?

    public var productId: Int64?

    public var productType: Int64?

    public override init() {
        super.init()
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
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productType != nil {
            map["productType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! Int64
        }
        if dict.keys.contains("productType") {
            self.productType = dict["productType"] as! Int64
        }
    }
}

public class GetGwpInventoryConstituteResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var byResourceType: [GwpInventoryConstitute]?

        public var carbonEmission: Double?

        public var items: [GwpInventoryConstitute]?

        public var name: String?

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
            if self.byResourceType != nil {
                var tmp : [Any] = []
                for k in self.byResourceType! {
                    tmp.append(k.toMap())
                }
                map["byResourceType"] = tmp
            }
            if self.carbonEmission != nil {
                map["carbonEmission"] = self.carbonEmission!
            }
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["items"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.unit != nil {
                map["unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("byResourceType") {
                var tmp : [GwpInventoryConstitute] = []
                for v in dict["byResourceType"] as! [Any] {
                    var model = GwpInventoryConstitute()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.byResourceType = tmp
            }
            if dict.keys.contains("carbonEmission") {
                self.carbonEmission = dict["carbonEmission"] as! Double
            }
            if dict.keys.contains("items") {
                var tmp : [GwpInventoryConstitute] = []
                for v in dict["items"] as! [Any] {
                    var model = GwpInventoryConstitute()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("unit") {
                self.unit = dict["unit"] as! String
            }
        }
    }
    public var data: GetGwpInventoryConstituteResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetGwpInventoryConstituteResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetGwpInventoryConstituteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGwpInventoryConstituteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetGwpInventoryConstituteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGwpInventorySummaryRequest : Tea.TeaModel {
    public var code: String?

    public var productId: Int64?

    public var productType: Int64?

    public override init() {
        super.init()
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
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productType != nil {
            map["productType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! Int64
        }
        if dict.keys.contains("productType") {
            self.productType = dict["productType"] as! Int64
        }
    }
}

public class GetGwpInventorySummaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var name: String?

            public var percent: String?

            public var quantity: Double?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.percent != nil {
                    map["percent"] = self.percent!
                }
                if self.quantity != nil {
                    map["quantity"] = self.quantity!
                }
                if self.unit != nil {
                    map["unit"] = self.unit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("percent") {
                    self.percent = dict["percent"] as! String
                }
                if dict.keys.contains("quantity") {
                    self.quantity = dict["quantity"] as! Double
                }
                if dict.keys.contains("unit") {
                    self.unit = dict["unit"] as! String
                }
            }
        }
        public var items: [GetGwpInventorySummaryResponseBody.Data.Items]?

        public var quantity: Double?

        public var resultGenerateTime: Int64?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["items"] = tmp
            }
            if self.quantity != nil {
                map["quantity"] = self.quantity!
            }
            if self.resultGenerateTime != nil {
                map["resultGenerateTime"] = self.resultGenerateTime!
            }
            if self.unit != nil {
                map["unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [GetGwpInventorySummaryResponseBody.Data.Items] = []
                for v in dict["items"] as! [Any] {
                    var model = GetGwpInventorySummaryResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("quantity") {
                self.quantity = dict["quantity"] as! Double
            }
            if dict.keys.contains("resultGenerateTime") {
                self.resultGenerateTime = dict["resultGenerateTime"] as! Int64
            }
            if dict.keys.contains("unit") {
                self.unit = dict["unit"] as! String
            }
        }
    }
    public var data: GetGwpInventorySummaryResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetGwpInventorySummaryResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetGwpInventorySummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGwpInventorySummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetGwpInventorySummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInventoryListRequest : Tea.TeaModel {
    public var code: String?

    public var emissionType: String?

    public var group: String?

    public var methodType: String?

    public var productId: Int64?

    public var productType: Int64?

    public override init() {
        super.init()
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
        if self.emissionType != nil {
            map["emissionType"] = self.emissionType!
        }
        if self.group != nil {
            map["group"] = self.group!
        }
        if self.methodType != nil {
            map["methodType"] = self.methodType!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productType != nil {
            map["productType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("emissionType") {
            self.emissionType = dict["emissionType"] as! String
        }
        if dict.keys.contains("group") {
            self.group = dict["group"] as! String
        }
        if dict.keys.contains("methodType") {
            self.methodType = dict["methodType"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! Int64
        }
        if dict.keys.contains("productType") {
            self.productType = dict["productType"] as! Int64
        }
    }
}

public class GetInventoryListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var carbonEmission: Double?

            public var name: String?

            public var percent: String?

            public var processName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.carbonEmission != nil {
                    map["carbonEmission"] = self.carbonEmission!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.percent != nil {
                    map["percent"] = self.percent!
                }
                if self.processName != nil {
                    map["processName"] = self.processName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("carbonEmission") {
                    self.carbonEmission = dict["carbonEmission"] as! Double
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("percent") {
                    self.percent = dict["percent"] as! String
                }
                if dict.keys.contains("processName") {
                    self.processName = dict["processName"] as! String
                }
            }
        }
        public var items: [GetInventoryListResponseBody.Data.Items]?

        public var productUnit: String?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["items"] = tmp
            }
            if self.productUnit != nil {
                map["productUnit"] = self.productUnit!
            }
            if self.unit != nil {
                map["unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("items") {
                var tmp : [GetInventoryListResponseBody.Data.Items] = []
                for v in dict["items"] as! [Any] {
                    var model = GetInventoryListResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("productUnit") {
                self.productUnit = dict["productUnit"] as! String
            }
            if dict.keys.contains("unit") {
                self.unit = dict["unit"] as! String
            }
        }
    }
    public var data: GetInventoryListResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetInventoryListResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetInventoryListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInventoryListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetInventoryListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOrgAndFactoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FactoryList : Tea.TeaModel {
            public var factoryId: String?

            public var factoryName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.factoryId != nil {
                    map["factoryId"] = self.factoryId!
                }
                if self.factoryName != nil {
                    map["factoryName"] = self.factoryName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("factoryId") {
                    self.factoryId = dict["factoryId"] as! String
                }
                if dict.keys.contains("factoryName") {
                    self.factoryName = dict["factoryName"] as! String
                }
            }
        }
        public var aliyunPk: String?

        public var factoryList: [GetOrgAndFactoryResponseBody.Data.FactoryList]?

        public var organizationId: String?

        public var organizationName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunPk != nil {
                map["aliyunPk"] = self.aliyunPk!
            }
            if self.factoryList != nil {
                var tmp : [Any] = []
                for k in self.factoryList! {
                    tmp.append(k.toMap())
                }
                map["factoryList"] = tmp
            }
            if self.organizationId != nil {
                map["organizationId"] = self.organizationId!
            }
            if self.organizationName != nil {
                map["organizationName"] = self.organizationName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("aliyunPk") {
                self.aliyunPk = dict["aliyunPk"] as! String
            }
            if dict.keys.contains("factoryList") {
                var tmp : [GetOrgAndFactoryResponseBody.Data.FactoryList] = []
                for v in dict["factoryList"] as! [Any] {
                    var model = GetOrgAndFactoryResponseBody.Data.FactoryList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.factoryList = tmp
            }
            if dict.keys.contains("organizationId") {
                self.organizationId = dict["organizationId"] as! String
            }
            if dict.keys.contains("organizationName") {
                self.organizationName = dict["organizationName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOrgAndFactoryResponseBody.Data]?

    public var httpCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.httpCode != nil {
            map["httpCode"] = self.httpCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var tmp : [GetOrgAndFactoryResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetOrgAndFactoryResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("httpCode") {
            self.httpCode = dict["httpCode"] as! Int32
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetOrgAndFactoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOrgAndFactoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetOrgAndFactoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOrgConstituteRequest : Tea.TeaModel {
    public var code: String?

    public var moduleCode: String?

    public var moduleType: Int32?

    public var year: Int32?

    public override init() {
        super.init()
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
        if self.moduleCode != nil {
            map["moduleCode"] = self.moduleCode!
        }
        if self.moduleType != nil {
            map["moduleType"] = self.moduleType!
        }
        if self.year != nil {
            map["year"] = self.year!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("moduleCode") {
            self.moduleCode = dict["moduleCode"] as! String
        }
        if dict.keys.contains("moduleType") {
            self.moduleType = dict["moduleType"] as! Int32
        }
        if dict.keys.contains("year") {
            self.year = dict["year"] as! Int32
        }
    }
}

public class GetOrgConstituteResponseBody : Tea.TeaModel {
    public var data: OrgEmission?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = OrgEmission()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetOrgConstituteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOrgConstituteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetOrgConstituteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPcrInfoRequest : Tea.TeaModel {
    public var code: String?

    public var productId: String?

    public var productType: Int64?

    public override init() {
        super.init()
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
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productType != nil {
            map["productType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! String
        }
        if dict.keys.contains("productType") {
            self.productType = dict["productType"] as! Int64
        }
    }
}

public class GetPcrInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var name: String?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("url") {
                self.url = dict["url"] as! String
            }
        }
    }
    public var data: GetPcrInfoResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetPcrInfoResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetPcrInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPcrInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPcrInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetReductionProposalRequest : Tea.TeaModel {
    public var code: String?

    public var dataQualityEvaluationType: Int32?

    public var productId: Int64?

    public var productType: Int64?

    public override init() {
        super.init()
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
        if self.dataQualityEvaluationType != nil {
            map["dataQualityEvaluationType"] = self.dataQualityEvaluationType!
        }
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productType != nil {
            map["productType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("dataQualityEvaluationType") {
            self.dataQualityEvaluationType = dict["dataQualityEvaluationType"] as! Int32
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! Int64
        }
        if dict.keys.contains("productType") {
            self.productType = dict["productType"] as! Int64
        }
    }
}

public class GetReductionProposalResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var reduction: String?

        public var reductionEvaluation: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.reduction != nil {
                map["reduction"] = self.reduction!
            }
            if self.reductionEvaluation != nil {
                map["reductionEvaluation"] = self.reductionEvaluation!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("reduction") {
                self.reduction = dict["reduction"] as! String
            }
            if dict.keys.contains("reductionEvaluation") {
                self.reductionEvaluation = dict["reductionEvaluation"] as! String
            }
        }
    }
    public var data: GetReductionProposalResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetReductionProposalResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetReductionProposalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetReductionProposalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetReductionProposalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetVLExtractionResultRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class GetVLExtractionResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class KvListInfo : Tea.TeaModel {
            public class Context : Tea.TeaModel {
                public class Confidence : Tea.TeaModel {
                    public var keyConfidence: Double?

                    public var valueConfidence: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.keyConfidence != nil {
                            map["keyConfidence"] = self.keyConfidence!
                        }
                        if self.valueConfidence != nil {
                            map["valueConfidence"] = self.valueConfidence!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("keyConfidence") {
                            self.keyConfidence = dict["keyConfidence"] as! Double
                        }
                        if dict.keys.contains("valueConfidence") {
                            self.valueConfidence = dict["valueConfidence"] as! Double
                        }
                    }
                }
                public var confidence: GetVLExtractionResultResponseBody.Data.KvListInfo.Context.Confidence?

                public var key: [ContentItem]?

                public var value: [ContentItem]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.confidence?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.confidence != nil {
                        map["confidence"] = self.confidence?.toMap()
                    }
                    if self.key != nil {
                        var tmp : [Any] = []
                        for k in self.key! {
                            tmp.append(k.toMap())
                        }
                        map["key"] = tmp
                    }
                    if self.value != nil {
                        var tmp : [Any] = []
                        for k in self.value! {
                            tmp.append(k.toMap())
                        }
                        map["value"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("confidence") {
                        var model = GetVLExtractionResultResponseBody.Data.KvListInfo.Context.Confidence()
                        model.fromMap(dict["confidence"] as! [String: Any])
                        self.confidence = model
                    }
                    if dict.keys.contains("key") {
                        var tmp : [ContentItem] = []
                        for v in dict["key"] as! [Any] {
                            var model = ContentItem()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.key = tmp
                    }
                    if dict.keys.contains("value") {
                        var tmp : [ContentItem] = []
                        for v in dict["value"] as! [Any] {
                            var model = ContentItem()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.value = tmp
                    }
                }
            }
            public var context: GetVLExtractionResultResponseBody.Data.KvListInfo.Context?

            public var keyName: String?

            public var keyValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.context?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.context != nil {
                    map["context"] = self.context?.toMap()
                }
                if self.keyName != nil {
                    map["keyName"] = self.keyName!
                }
                if self.keyValue != nil {
                    map["keyValue"] = self.keyValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("context") {
                    var model = GetVLExtractionResultResponseBody.Data.KvListInfo.Context()
                    model.fromMap(dict["context"] as! [String: Any])
                    self.context = model
                }
                if dict.keys.contains("keyName") {
                    self.keyName = dict["keyName"] as! String
                }
                if dict.keys.contains("keyValue") {
                    self.keyValue = dict["keyValue"] as! String
                }
            }
        }
        public var kvListInfo: [GetVLExtractionResultResponseBody.Data.KvListInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.kvListInfo != nil {
                var tmp : [Any] = []
                for k in self.kvListInfo! {
                    tmp.append(k.toMap())
                }
                map["kvListInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("kvListInfo") {
                var tmp : [GetVLExtractionResultResponseBody.Data.KvListInfo] = []
                for v in dict["kvListInfo"] as! [Any] {
                    var model = GetVLExtractionResultResponseBody.Data.KvListInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.kvListInfo = tmp
            }
        }
    }
    public var data: GetVLExtractionResultResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = GetVLExtractionResultResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetVLExtractionResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVLExtractionResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetVLExtractionResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IsCompletedRequest : Tea.TeaModel {
    public var code: String?

    public var productId: Int64?

    public var productType: Int64?

    public override init() {
        super.init()
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
        if self.productId != nil {
            map["productId"] = self.productId!
        }
        if self.productType != nil {
            map["productType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("productId") {
            self.productId = dict["productId"] as! Int64
        }
        if dict.keys.contains("productType") {
            self.productType = dict["productType"] as! Int64
        }
    }
}

public class IsCompletedResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var modifiedTime: Int64?

        public var taskKey: String?

        public var taskShortResult: String?

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
            if self.modifiedTime != nil {
                map["modifiedTime"] = self.modifiedTime!
            }
            if self.taskKey != nil {
                map["taskKey"] = self.taskKey!
            }
            if self.taskShortResult != nil {
                map["taskShortResult"] = self.taskShortResult!
            }
            if self.taskStatus != nil {
                map["taskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("modifiedTime") {
                self.modifiedTime = dict["modifiedTime"] as! Int64
            }
            if dict.keys.contains("taskKey") {
                self.taskKey = dict["taskKey"] as! String
            }
            if dict.keys.contains("taskShortResult") {
                self.taskShortResult = dict["taskShortResult"] as! String
            }
            if dict.keys.contains("taskStatus") {
                self.taskStatus = dict["taskStatus"] as! String
            }
        }
    }
    public var data: IsCompletedResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = IsCompletedResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class IsCompletedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IsCompletedResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = IsCompletedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PushDeviceDataRequest : Tea.TeaModel {
    public class Devices : Tea.TeaModel {
        public var data: [String: Any]?

        public var deviceId: String?

        public var recordTime: String?

        public override init() {
            super.init()
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
                map["data"] = self.data!
            }
            if self.deviceId != nil {
                map["deviceId"] = self.deviceId!
            }
            if self.recordTime != nil {
                map["recordTime"] = self.recordTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("data") {
                self.data = dict["data"] as! [String: Any]
            }
            if dict.keys.contains("deviceId") {
                self.deviceId = dict["deviceId"] as! String
            }
            if dict.keys.contains("recordTime") {
                self.recordTime = dict["recordTime"] as! String
            }
        }
    }
    public var deviceType: String?

    public var devices: [PushDeviceDataRequest.Devices]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceType != nil {
            map["deviceType"] = self.deviceType!
        }
        if self.devices != nil {
            var tmp : [Any] = []
            for k in self.devices! {
                tmp.append(k.toMap())
            }
            map["devices"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deviceType") {
            self.deviceType = dict["deviceType"] as! String
        }
        if dict.keys.contains("devices") {
            var tmp : [PushDeviceDataRequest.Devices] = []
            for v in dict["devices"] as! [Any] {
                var model = PushDeviceDataRequest.Devices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.devices = tmp
        }
    }
}

public class PushDeviceDataResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class PushDeviceDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushDeviceDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PushDeviceDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PushItemDataRequest : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var code: String?

        public var month: String?

        public var value: Double?

        public override init() {
            super.init()
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
            if self.month != nil {
                map["month"] = self.month!
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
            if dict.keys.contains("month") {
                self.month = dict["month"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! Double
            }
        }
    }
    public var code: String?

    public var items: PushItemDataRequest.Items?

    public var year: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.items != nil {
            map["items"] = self.items?.toMap()
        }
        if self.year != nil {
            map["year"] = self.year!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("items") {
            var model = PushItemDataRequest.Items()
            model.fromMap(dict["items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("year") {
            self.year = dict["year"] as! String
        }
    }
}

public class PushItemDataResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class PushItemDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushItemDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PushItemDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecalculateCarbonEmissionRequest : Tea.TeaModel {
    public var code: String?

    public var year: String?

    public override init() {
        super.init()
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
        if self.year != nil {
            map["year"] = self.year!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("year") {
            self.year = dict["year"] as! String
        }
    }
}

public class RecalculateCarbonEmissionResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class RecalculateCarbonEmissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecalculateCarbonEmissionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RecalculateCarbonEmissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendDocumentAskQuestionRequest : Tea.TeaModel {
    public var folderId: String?

    public var prompt: String?

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
        if self.folderId != nil {
            map["folderId"] = self.folderId!
        }
        if self.prompt != nil {
            map["prompt"] = self.prompt!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("folderId") {
            self.folderId = dict["folderId"] as! String
        }
        if dict.keys.contains("prompt") {
            self.prompt = dict["prompt"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
    }
}

public class SendDocumentAskQuestionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var answer: String?

        public var document: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answer != nil {
                map["answer"] = self.answer!
            }
            if self.document != nil {
                map["document"] = self.document!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("answer") {
                self.answer = dict["answer"] as! String
            }
            if dict.keys.contains("document") {
                self.document = dict["document"] as! [String]
            }
        }
    }
    public var data: SendDocumentAskQuestionResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = SendDocumentAskQuestionResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class SendDocumentAskQuestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendDocumentAskQuestionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SendDocumentAskQuestionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetRunningPlanRequest : Tea.TeaModel {
    public var controlType: Int32?

    public var dateType: Int32?

    public var earliestStartupTime: String?

    public var endTime: String?

    public var factoryId: String?

    public var latestShutdownTime: String?

    public var maxCarbonDioxide: Double?

    public var maxTem: Double?

    public var minTem: Double?

    public var pKey: String?

    public var seasonMode: Int32?

    public var startTime: String?

    public var statisticsTime: String?

    public var systemId: String?

    public var workingEndTime: String?

    public var workingStartTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.controlType != nil {
            map["controlType"] = self.controlType!
        }
        if self.dateType != nil {
            map["dateType"] = self.dateType!
        }
        if self.earliestStartupTime != nil {
            map["earliestStartupTime"] = self.earliestStartupTime!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.factoryId != nil {
            map["factoryId"] = self.factoryId!
        }
        if self.latestShutdownTime != nil {
            map["latestShutdownTime"] = self.latestShutdownTime!
        }
        if self.maxCarbonDioxide != nil {
            map["maxCarbonDioxide"] = self.maxCarbonDioxide!
        }
        if self.maxTem != nil {
            map["maxTem"] = self.maxTem!
        }
        if self.minTem != nil {
            map["minTem"] = self.minTem!
        }
        if self.pKey != nil {
            map["pKey"] = self.pKey!
        }
        if self.seasonMode != nil {
            map["seasonMode"] = self.seasonMode!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.statisticsTime != nil {
            map["statisticsTime"] = self.statisticsTime!
        }
        if self.systemId != nil {
            map["systemId"] = self.systemId!
        }
        if self.workingEndTime != nil {
            map["workingEndTime"] = self.workingEndTime!
        }
        if self.workingStartTime != nil {
            map["workingStartTime"] = self.workingStartTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("controlType") {
            self.controlType = dict["controlType"] as! Int32
        }
        if dict.keys.contains("dateType") {
            self.dateType = dict["dateType"] as! Int32
        }
        if dict.keys.contains("earliestStartupTime") {
            self.earliestStartupTime = dict["earliestStartupTime"] as! String
        }
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("factoryId") {
            self.factoryId = dict["factoryId"] as! String
        }
        if dict.keys.contains("latestShutdownTime") {
            self.latestShutdownTime = dict["latestShutdownTime"] as! String
        }
        if dict.keys.contains("maxCarbonDioxide") {
            self.maxCarbonDioxide = dict["maxCarbonDioxide"] as! Double
        }
        if dict.keys.contains("maxTem") {
            self.maxTem = dict["maxTem"] as! Double
        }
        if dict.keys.contains("minTem") {
            self.minTem = dict["minTem"] as! Double
        }
        if dict.keys.contains("pKey") {
            self.pKey = dict["pKey"] as! String
        }
        if dict.keys.contains("seasonMode") {
            self.seasonMode = dict["seasonMode"] as! Int32
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! String
        }
        if dict.keys.contains("statisticsTime") {
            self.statisticsTime = dict["statisticsTime"] as! String
        }
        if dict.keys.contains("systemId") {
            self.systemId = dict["systemId"] as! String
        }
        if dict.keys.contains("workingEndTime") {
            self.workingEndTime = dict["workingEndTime"] as! String
        }
        if dict.keys.contains("workingStartTime") {
            self.workingStartTime = dict["workingStartTime"] as! String
        }
    }
}

public class SetRunningPlanResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class SetRunningPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetRunningPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetRunningPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitDocExtractionTaskRequest : Tea.TeaModel {
    public var extractType: String?

    public var fileName: String?

    public var fileUrl: String?

    public var folderId: String?

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
        if self.extractType != nil {
            map["extractType"] = self.extractType!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.fileUrl != nil {
            map["fileUrl"] = self.fileUrl!
        }
        if self.folderId != nil {
            map["folderId"] = self.folderId!
        }
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("extractType") {
            self.extractType = dict["extractType"] as! String
        }
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("fileUrl") {
            self.fileUrl = dict["fileUrl"] as! String
        }
        if dict.keys.contains("folderId") {
            self.folderId = dict["folderId"] as! String
        }
        if dict.keys.contains("templateId") {
            self.templateId = dict["templateId"] as! String
        }
    }
}

public class SubmitDocExtractionTaskAdvanceRequest : Tea.TeaModel {
    public var extractType: String?

    public var fileName: String?

    public var fileUrlObject: InputStream?

    public var folderId: String?

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
        if self.extractType != nil {
            map["extractType"] = self.extractType!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.fileUrlObject != nil {
            map["fileUrl"] = self.fileUrlObject!
        }
        if self.folderId != nil {
            map["folderId"] = self.folderId!
        }
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("extractType") {
            self.extractType = dict["extractType"] as! String
        }
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("fileUrl") {
            self.fileUrlObject = dict["fileUrl"] as! InputStream
        }
        if dict.keys.contains("folderId") {
            self.folderId = dict["folderId"] as! String
        }
        if dict.keys.contains("templateId") {
            self.templateId = dict["templateId"] as! String
        }
    }
}

public class SubmitDocExtractionTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
        }
    }
    public var data: SubmitDocExtractionTaskResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = SubmitDocExtractionTaskResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class SubmitDocExtractionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitDocExtractionTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SubmitDocExtractionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitDocParsingTaskRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileUrl: String?

    public var folderId: String?

    public var needAnalyzeImg: Bool?

    public override init() {
        super.init()
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
        if self.fileUrl != nil {
            map["fileUrl"] = self.fileUrl!
        }
        if self.folderId != nil {
            map["folderId"] = self.folderId!
        }
        if self.needAnalyzeImg != nil {
            map["needAnalyzeImg"] = self.needAnalyzeImg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("fileUrl") {
            self.fileUrl = dict["fileUrl"] as! String
        }
        if dict.keys.contains("folderId") {
            self.folderId = dict["folderId"] as! String
        }
        if dict.keys.contains("needAnalyzeImg") {
            self.needAnalyzeImg = dict["needAnalyzeImg"] as! Bool
        }
    }
}

public class SubmitDocParsingTaskAdvanceRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileUrlObject: InputStream?

    public var folderId: String?

    public var needAnalyzeImg: Bool?

    public override init() {
        super.init()
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
        if self.fileUrlObject != nil {
            map["fileUrl"] = self.fileUrlObject!
        }
        if self.folderId != nil {
            map["folderId"] = self.folderId!
        }
        if self.needAnalyzeImg != nil {
            map["needAnalyzeImg"] = self.needAnalyzeImg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("fileUrl") {
            self.fileUrlObject = dict["fileUrl"] as! InputStream
        }
        if dict.keys.contains("folderId") {
            self.folderId = dict["folderId"] as! String
        }
        if dict.keys.contains("needAnalyzeImg") {
            self.needAnalyzeImg = dict["needAnalyzeImg"] as! Bool
        }
    }
}

public class SubmitDocParsingTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
        }
    }
    public var data: SubmitDocParsingTaskResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = SubmitDocParsingTaskResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class SubmitDocParsingTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitDocParsingTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SubmitDocParsingTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitDocumentAnalyzeJobRequest : Tea.TeaModel {
    public var analysisType: String?

    public var fileName: String?

    public var fileUrl: String?

    public var folderId: String?

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
        if self.analysisType != nil {
            map["analysisType"] = self.analysisType!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.fileUrl != nil {
            map["fileUrl"] = self.fileUrl!
        }
        if self.folderId != nil {
            map["folderId"] = self.folderId!
        }
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("analysisType") {
            self.analysisType = dict["analysisType"] as! String
        }
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("fileUrl") {
            self.fileUrl = dict["fileUrl"] as! String
        }
        if dict.keys.contains("folderId") {
            self.folderId = dict["folderId"] as! String
        }
        if dict.keys.contains("templateId") {
            self.templateId = dict["templateId"] as! String
        }
    }
}

public class SubmitDocumentAnalyzeJobAdvanceRequest : Tea.TeaModel {
    public var analysisType: String?

    public var fileName: String?

    public var fileUrlObject: InputStream?

    public var folderId: String?

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
        if self.analysisType != nil {
            map["analysisType"] = self.analysisType!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.fileUrlObject != nil {
            map["fileUrl"] = self.fileUrlObject!
        }
        if self.folderId != nil {
            map["folderId"] = self.folderId!
        }
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("analysisType") {
            self.analysisType = dict["analysisType"] as! String
        }
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("fileUrl") {
            self.fileUrlObject = dict["fileUrl"] as! InputStream
        }
        if dict.keys.contains("folderId") {
            self.folderId = dict["folderId"] as! String
        }
        if dict.keys.contains("templateId") {
            self.templateId = dict["templateId"] as! String
        }
    }
}

public class SubmitDocumentAnalyzeJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var jobId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobId != nil {
                map["jobId"] = self.jobId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("jobId") {
                self.jobId = dict["jobId"] as! String
            }
        }
    }
    public var data: SubmitDocumentAnalyzeJobResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = SubmitDocumentAnalyzeJobResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class SubmitDocumentAnalyzeJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitDocumentAnalyzeJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SubmitDocumentAnalyzeJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitVLExtractionTaskRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileUrl: String?

    public var folderId: String?

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
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.fileUrl != nil {
            map["fileUrl"] = self.fileUrl!
        }
        if self.folderId != nil {
            map["folderId"] = self.folderId!
        }
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("fileUrl") {
            self.fileUrl = dict["fileUrl"] as! String
        }
        if dict.keys.contains("folderId") {
            self.folderId = dict["folderId"] as! String
        }
        if dict.keys.contains("templateId") {
            self.templateId = dict["templateId"] as! String
        }
    }
}

public class SubmitVLExtractionTaskAdvanceRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileUrlObject: InputStream?

    public var folderId: String?

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
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.fileUrlObject != nil {
            map["fileUrl"] = self.fileUrlObject!
        }
        if self.folderId != nil {
            map["folderId"] = self.folderId!
        }
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("fileUrl") {
            self.fileUrlObject = dict["fileUrl"] as! InputStream
        }
        if dict.keys.contains("folderId") {
            self.folderId = dict["folderId"] as! String
        }
        if dict.keys.contains("templateId") {
            self.templateId = dict["templateId"] as! String
        }
    }
}

public class SubmitVLExtractionTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
        }
    }
    public var data: SubmitVLExtractionTaskResponseBody.Data?

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
            map["data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            var model = SubmitVLExtractionTaskResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class SubmitVLExtractionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitVLExtractionTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SubmitVLExtractionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
