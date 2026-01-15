import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["carbonEmissionData"] as? Double {
            self.carbonEmissionData = value
        }
        if let value = dict["dataUnit"] as? String {
            self.dataUnit = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["ratio"] as? Double {
            self.ratio = value
        }
        if let value = dict["rawData"] as? Double {
            self.rawData = value
        }
    }
}

public class ChatDocumentPageNum : Tea.TeaModel {
    public var num: Int32?

    public var pos: [[ChatRefDocPostion]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.num != nil {
            map["num"] = self.num!
        }
        if self.pos != nil {
            var tmp : [Any] = []
            for k in self.pos! {
                var l1 : [Any] = []
                for k1 in k {
                    l1.append(k1.toMap())
                }
                tmp.append(l1)
            }
            map["pos"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["num"] as? Int32 {
            self.num = value
        }
        if let value = dict["pos"] as? [Any?] {
            var tmp : [[ChatRefDocPostion]] = []
            for v in value {
                if v != nil {
                    var l1 : [ChatRefDocPostion] = []
                    for v1 in v as! [Any?] {
                        if v1 != nil {
                            var model = ChatRefDocPostion()
                            if v1 != nil {
                                model.fromMap(v1 as? [String: Any?])
                            }
                            l1.append(model)
                        }
                    }
                    tmp.append(l1)
                }
            }
            self.pos = tmp
        }
    }
}

public class ChatFolderItem : Tea.TeaModel {
    public var folderId: String?

    public var folderName: String?

    public var subFolders: [ChatItem]?

    public override init() {
        super.init()
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
        if self.folderName != nil {
            map["folderName"] = self.folderName!
        }
        if self.subFolders != nil {
            var tmp : [Any] = []
            for k in self.subFolders! {
                tmp.append(k.toMap())
            }
            map["subFolders"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
        if let value = dict["folderName"] as? String {
            self.folderName = value
        }
        if let value = dict["subFolders"] as? [Any?] {
            var tmp : [ChatItem] = []
            for v in value {
                if v != nil {
                    var model = ChatItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subFolders = tmp
        }
    }
}

public class ChatItem : Tea.TeaModel {
    public var answer: String?

    public var createTime: Int64?

    public var folderId: String?

    public var folderName: String?

    public var question: String?

    public var refDocList: [ChatRefDocItem]?

    public override init() {
        super.init()
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
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.folderId != nil {
            map["folderId"] = self.folderId!
        }
        if self.folderName != nil {
            map["folderName"] = self.folderName!
        }
        if self.question != nil {
            map["question"] = self.question!
        }
        if self.refDocList != nil {
            var tmp : [Any] = []
            for k in self.refDocList! {
                tmp.append(k.toMap())
            }
            map["refDocList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["answer"] as? String {
            self.answer = value
        }
        if let value = dict["createTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
        if let value = dict["folderName"] as? String {
            self.folderName = value
        }
        if let value = dict["question"] as? String {
            self.question = value
        }
        if let value = dict["refDocList"] as? [Any?] {
            var tmp : [ChatRefDocItem] = []
            for v in value {
                if v != nil {
                    var model = ChatRefDocItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.refDocList = tmp
        }
    }
}

public class ChatRefDocInfo : Tea.TeaModel {
    public var pageListInfo: [ChatRefDocPageInfo]?

    public var pages: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageListInfo != nil {
            var tmp : [Any] = []
            for k in self.pageListInfo! {
                tmp.append(k.toMap())
            }
            map["pageListInfo"] = tmp
        }
        if self.pages != nil {
            map["pages"] = self.pages!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageListInfo"] as? [Any?] {
            var tmp : [ChatRefDocPageInfo] = []
            for v in value {
                if v != nil {
                    var model = ChatRefDocPageInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.pageListInfo = tmp
        }
        if let value = dict["pages"] as? Int64 {
            self.pages = value
        }
    }
}

public class ChatRefDocItem : Tea.TeaModel {
    public var docInfo: ChatRefDocInfo?

    public var docName: String?

    public var docUrl: String?

    public var originDocName: String?

    public var originDocUrl: String?

    public var pageNum: [ChatDocumentPageNum]?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.docInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.docInfo != nil {
            map["docInfo"] = self.docInfo?.toMap()
        }
        if self.docName != nil {
            map["docName"] = self.docName!
        }
        if self.docUrl != nil {
            map["docUrl"] = self.docUrl!
        }
        if self.originDocName != nil {
            map["originDocName"] = self.originDocName!
        }
        if self.originDocUrl != nil {
            map["originDocUrl"] = self.originDocUrl!
        }
        if self.pageNum != nil {
            var tmp : [Any] = []
            for k in self.pageNum! {
                tmp.append(k.toMap())
            }
            map["pageNum"] = tmp
        }
        if self.sourceType != nil {
            map["sourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["docInfo"] as? [String: Any?] {
            var model = ChatRefDocInfo()
            model.fromMap(value)
            self.docInfo = model
        }
        if let value = dict["docName"] as? String {
            self.docName = value
        }
        if let value = dict["docUrl"] as? String {
            self.docUrl = value
        }
        if let value = dict["originDocName"] as? String {
            self.originDocName = value
        }
        if let value = dict["originDocUrl"] as? String {
            self.originDocUrl = value
        }
        if let value = dict["pageNum"] as? [Any?] {
            var tmp : [ChatDocumentPageNum] = []
            for v in value {
                if v != nil {
                    var model = ChatDocumentPageNum()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.pageNum = tmp
        }
        if let value = dict["sourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class ChatRefDocPageInfo : Tea.TeaModel {
    public var angle: Double?

    public var excelParseResult: String?

    public var imageHeight: Int32?

    public var imageUrl: String?

    public var imageWidth: Int32?

    public var pageIdCurDoc: Int32?

    public var pdfParseResult: String?

    public var wordParseResult: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.angle != nil {
            map["angle"] = self.angle!
        }
        if self.excelParseResult != nil {
            map["excelParseResult"] = self.excelParseResult!
        }
        if self.imageHeight != nil {
            map["imageHeight"] = self.imageHeight!
        }
        if self.imageUrl != nil {
            map["imageUrl"] = self.imageUrl!
        }
        if self.imageWidth != nil {
            map["imageWidth"] = self.imageWidth!
        }
        if self.pageIdCurDoc != nil {
            map["pageIdCurDoc"] = self.pageIdCurDoc!
        }
        if self.pdfParseResult != nil {
            map["pdfParseResult"] = self.pdfParseResult!
        }
        if self.wordParseResult != nil {
            map["wordParseResult"] = self.wordParseResult!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["angle"] as? Double {
            self.angle = value
        }
        if let value = dict["excelParseResult"] as? String {
            self.excelParseResult = value
        }
        if let value = dict["imageHeight"] as? Int32 {
            self.imageHeight = value
        }
        if let value = dict["imageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["imageWidth"] as? Int32 {
            self.imageWidth = value
        }
        if let value = dict["pageIdCurDoc"] as? Int32 {
            self.pageIdCurDoc = value
        }
        if let value = dict["pdfParseResult"] as? String {
            self.pdfParseResult = value
        }
        if let value = dict["wordParseResult"] as? String {
            self.wordParseResult = value
        }
    }
}

public class ChatRefDocPageNum : Tea.TeaModel {
    public var num: Int32?

    public var pos: [[ChatRefDocPostion]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.num != nil {
            map["num"] = self.num!
        }
        if self.pos != nil {
            var tmp : [Any] = []
            for k in self.pos! {
                var l1 : [Any] = []
                for k1 in k {
                    l1.append(k1.toMap())
                }
                tmp.append(l1)
            }
            map["pos"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["num"] as? Int32 {
            self.num = value
        }
        if let value = dict["pos"] as? [Any?] {
            var tmp : [[ChatRefDocPostion]] = []
            for v in value {
                if v != nil {
                    var l1 : [ChatRefDocPostion] = []
                    for v1 in v as! [Any?] {
                        if v1 != nil {
                            var model = ChatRefDocPostion()
                            if v1 != nil {
                                model.fromMap(v1 as? [String: Any?])
                            }
                            l1.append(model)
                        }
                    }
                    tmp.append(l1)
                }
            }
            self.pos = tmp
        }
    }
}

public class ChatRefDocPostion : Tea.TeaModel {
    public var x: Int32?

    public var y: Int32?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["x"] as? Int32 {
            self.x = value
        }
        if let value = dict["y"] as? Int32 {
            self.y = value
        }
    }
}

public class ChunkItem : Tea.TeaModel {
    public var chunkContent: String?

    public var chunkId: String?

    public var docElsIds: [String]?

    public var docId: String?

    public var docName: String?

    public var docUrl: String?

    public var rerankScore: Double?

    public var score: Double?

    public var weightedScore: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chunkContent != nil {
            map["chunkContent"] = self.chunkContent!
        }
        if self.chunkId != nil {
            map["chunkId"] = self.chunkId!
        }
        if self.docElsIds != nil {
            map["docElsIds"] = self.docElsIds!
        }
        if self.docId != nil {
            map["docId"] = self.docId!
        }
        if self.docName != nil {
            map["docName"] = self.docName!
        }
        if self.docUrl != nil {
            map["docUrl"] = self.docUrl!
        }
        if self.rerankScore != nil {
            map["rerankScore"] = self.rerankScore!
        }
        if self.score != nil {
            map["score"] = self.score!
        }
        if self.weightedScore != nil {
            map["weightedScore"] = self.weightedScore!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chunkContent"] as? String {
            self.chunkContent = value
        }
        if let value = dict["chunkId"] as? String {
            self.chunkId = value
        }
        if let value = dict["docElsIds"] as? [String] {
            self.docElsIds = value
        }
        if let value = dict["docId"] as? String {
            self.docId = value
        }
        if let value = dict["docName"] as? String {
            self.docName = value
        }
        if let value = dict["docUrl"] as? String {
            self.docUrl = value
        }
        if let value = dict["rerankScore"] as? Double {
            self.rerankScore = value
        }
        if let value = dict["score"] as? Double {
            self.score = value
        }
        if let value = dict["weightedScore"] as? Double {
            self.weightedScore = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["carbonEmissionData"] as? Double {
                self.carbonEmissionData = value
            }
            if let value = dict["gasEmissionData"] as? Double {
                self.gasEmissionData = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["carbonEmissionData"] as? Double {
            self.carbonEmissionData = value
        }
        if let value = dict["dataUnit"] as? String {
            self.dataUnit = value
        }
        if let value = dict["emissionSource"] as? String {
            self.emissionSource = value
        }
        if let value = dict["emissionSourceKey"] as? String {
            self.emissionSourceKey = value
        }
        if let value = dict["enterpriseName"] as? String {
            self.enterpriseName = value
        }
        if let value = dict["envGasEmissions"] as? [Any?] {
            var tmp : [ConstituteItem.EnvGasEmissions] = []
            for v in value {
                if v != nil {
                    var model = ConstituteItem.EnvGasEmissions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.envGasEmissions = tmp
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nameKey"] as? String {
            self.nameKey = value
        }
        if let value = dict["ratio"] as? Double {
            self.ratio = value
        }
        if let value = dict["rawData"] as? Double {
            self.rawData = value
        }
        if let value = dict["subConstituteItems"] as? [Any?] {
            var tmp : [ConstituteItem] = []
            for v in value {
                if v != nil {
                    var model = ConstituteItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["x"] as? Int64 {
                    self.x = value
                }
                if let value = dict["y"] as? Int64 {
                    self.y = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["alignment"] as? String {
                self.alignment = value
            }
            if let value = dict["index"] as? Int64 {
                self.index = value
            }
            if let value = dict["level"] as? Int64 {
                self.level = value
            }
            if let value = dict["pageNum"] as? [Int64] {
                self.pageNum = value
            }
            if let value = dict["pos"] as? [Any?] {
                var tmp : [ContentItem.ExtInfo.Pos] = []
                for v in value {
                    if v != nil {
                        var model = ContentItem.ExtInfo.Pos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pos = tmp
            }
            if let value = dict["subType"] as? String {
                self.subType = value
            }
            if let value = dict["text"] as? String {
                self.text = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["uniqueId"] as? String {
                self.uniqueId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["extInfo"] as? [Any?] {
            var tmp : [ContentItem.ExtInfo] = []
            for v in value {
                if v != nil {
                    var model = ContentItem.ExtInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.extInfo = tmp
        }
        if let value = dict["score"] as? Double {
            self.score = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class DocumentDetailItem : Tea.TeaModel {
    public var createTime: String?

    public var docHash: String?

    public var docName: String?

    public var docUrl: String?

    public var folderId: String?

    public var folderName: String?

    public var id: Int64?

    public var jobId: String?

    public var jobStatus: String?

    public var originDocName: String?

    public var originDocUrl: String?

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
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.docHash != nil {
            map["docHash"] = self.docHash!
        }
        if self.docName != nil {
            map["docName"] = self.docName!
        }
        if self.docUrl != nil {
            map["docUrl"] = self.docUrl!
        }
        if self.folderId != nil {
            map["folderId"] = self.folderId!
        }
        if self.folderName != nil {
            map["folderName"] = self.folderName!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.jobId != nil {
            map["jobId"] = self.jobId!
        }
        if self.jobStatus != nil {
            map["jobStatus"] = self.jobStatus!
        }
        if self.originDocName != nil {
            map["originDocName"] = self.originDocName!
        }
        if self.originDocUrl != nil {
            map["originDocUrl"] = self.originDocUrl!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["docHash"] as? String {
            self.docHash = value
        }
        if let value = dict["docName"] as? String {
            self.docName = value
        }
        if let value = dict["docUrl"] as? String {
            self.docUrl = value
        }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
        if let value = dict["folderName"] as? String {
            self.folderName = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["jobId"] as? String {
            self.jobId = value
        }
        if let value = dict["jobStatus"] as? String {
            self.jobStatus = value
        }
        if let value = dict["originDocName"] as? String {
            self.originDocName = value
        }
        if let value = dict["originDocUrl"] as? String {
            self.originDocUrl = value
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["carbonEmission"] as? Double {
            self.carbonEmission = value
        }
        if let value = dict["factor"] as? String {
            self.factor = value
        }
        if let value = dict["factorDataset"] as? String {
            self.factorDataset = value
        }
        if let value = dict["factorId"] as? String {
            self.factorId = value
        }
        if let value = dict["factorType"] as? Int32 {
            self.factorType = value
        }
        if let value = dict["factorUnit"] as? String {
            self.factorUnit = value
        }
        if let value = dict["inventoryId"] as? Int64 {
            self.inventoryId = value
        }
        if let value = dict["inventoryUnit"] as? String {
            self.inventoryUnit = value
        }
        if let value = dict["inventoryValue"] as? Double {
            self.inventoryValue = value
        }
        if let value = dict["inventoryValuePerProduct"] as? Double {
            self.inventoryValuePerProduct = value
        }
        if let value = dict["inventoryValuePerProductUnit"] as? String {
            self.inventoryValuePerProductUnit = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [EpdInventoryConstituteItem] = []
            for v in value {
                if v != nil {
                    var model = EpdInventoryConstituteItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["num"] as? Int64 {
            self.num = value
        }
        if let value = dict["percent"] as? Double {
            self.percent = value
        }
        if let value = dict["quantity"] as? Double {
            self.quantity = value
        }
        if let value = dict["resourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["state"] as? Int32 {
            self.state = value
        }
        if let value = dict["unit"] as? String {
            self.unit = value
        }
    }
}

public class FolderItem : Tea.TeaModel {
    public var currentLevel: Int32?

    public var docCount: Int32?

    public var folderDefault: Int32?

    public var folderId: String?

    public var folderName: String?

    public var folderNum: Int32?

    public var ossDomain: String?

    public var ossPath: String?

    public var ossUpdateBy: String?

    public var parentFolderId: String?

    public var resourcePath: String?

    public var storageType: Int32?

    public var subFolderList: [FolderItem]?

    public var syncParsingStatus: Int32?

    public var syncStatus: Int32?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentLevel != nil {
            map["currentLevel"] = self.currentLevel!
        }
        if self.docCount != nil {
            map["docCount"] = self.docCount!
        }
        if self.folderDefault != nil {
            map["folderDefault"] = self.folderDefault!
        }
        if self.folderId != nil {
            map["folderId"] = self.folderId!
        }
        if self.folderName != nil {
            map["folderName"] = self.folderName!
        }
        if self.folderNum != nil {
            map["folderNum"] = self.folderNum!
        }
        if self.ossDomain != nil {
            map["ossDomain"] = self.ossDomain!
        }
        if self.ossPath != nil {
            map["ossPath"] = self.ossPath!
        }
        if self.ossUpdateBy != nil {
            map["ossUpdateBy"] = self.ossUpdateBy!
        }
        if self.parentFolderId != nil {
            map["parentFolderId"] = self.parentFolderId!
        }
        if self.resourcePath != nil {
            map["resourcePath"] = self.resourcePath!
        }
        if self.storageType != nil {
            map["storageType"] = self.storageType!
        }
        if self.subFolderList != nil {
            var tmp : [Any] = []
            for k in self.subFolderList! {
                tmp.append(k.toMap())
            }
            map["subFolderList"] = tmp
        }
        if self.syncParsingStatus != nil {
            map["syncParsingStatus"] = self.syncParsingStatus!
        }
        if self.syncStatus != nil {
            map["syncStatus"] = self.syncStatus!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["currentLevel"] as? Int32 {
            self.currentLevel = value
        }
        if let value = dict["docCount"] as? Int32 {
            self.docCount = value
        }
        if let value = dict["folderDefault"] as? Int32 {
            self.folderDefault = value
        }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
        if let value = dict["folderName"] as? String {
            self.folderName = value
        }
        if let value = dict["folderNum"] as? Int32 {
            self.folderNum = value
        }
        if let value = dict["ossDomain"] as? String {
            self.ossDomain = value
        }
        if let value = dict["ossPath"] as? String {
            self.ossPath = value
        }
        if let value = dict["ossUpdateBy"] as? String {
            self.ossUpdateBy = value
        }
        if let value = dict["parentFolderId"] as? String {
            self.parentFolderId = value
        }
        if let value = dict["resourcePath"] as? String {
            self.resourcePath = value
        }
        if let value = dict["storageType"] as? Int32 {
            self.storageType = value
        }
        if let value = dict["subFolderList"] as? [Any?] {
            var tmp : [FolderItem] = []
            for v in value {
                if v != nil {
                    var model = FolderItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subFolderList = tmp
        }
        if let value = dict["syncParsingStatus"] as? Int32 {
            self.syncParsingStatus = value
        }
        if let value = dict["syncStatus"] as? Int32 {
            self.syncStatus = value
        }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["byResourceType"] as? [Any?] {
            var tmp : [GwpResourceConstitute] = []
            for v in value {
                if v != nil {
                    var model = GwpResourceConstitute()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.byResourceType = tmp
        }
        if let value = dict["carbonEmission"] as? Double {
            self.carbonEmission = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [GwpInventoryConstitute] = []
            for v in value {
                if v != nil {
                    var model = GwpInventoryConstitute()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["percent"] as? Double {
            self.percent = value
        }
        if let value = dict["resourceType"] as? Int32 {
            self.resourceType = value
        }
        if let value = dict["unit"] as? String {
            self.unit = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["carbonEmission"] as? Double {
            self.carbonEmission = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["percent"] as? String {
            self.percent = value
        }
        if let value = dict["resourceType"] as? Int32 {
            self.resourceType = value
        }
        if let value = dict["unit"] as? String {
            self.unit = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["carbonEmissionData"] as? Double {
                self.carbonEmissionData = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["nameKey"] as? String {
                self.nameKey = value
            }
            if let value = dict["ratio"] as? Double {
                self.ratio = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["carbonEmissionData"] as? Double {
            self.carbonEmissionData = value
        }
        if let value = dict["moduleEmissionList"] as? [Any?] {
            var tmp : [OrgEmission.ModuleEmissionList] = []
            for v in value {
                if v != nil {
                    var model = OrgEmission.ModuleEmissionList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.moduleEmissionList = tmp
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nameKey"] as? String {
            self.nameKey = value
        }
        if let value = dict["ratio"] as? Double {
            self.ratio = value
        }
        if let value = dict["subEmissionItems"] as? [Any?] {
            var tmp : [OrgEmission] = []
            for v in value {
                if v != nil {
                    var model = OrgEmission()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subEmissionItems = tmp
        }
        if let value = dict["weightingCarbonEmissionData"] as? Double {
            self.weightingCarbonEmissionData = value
        }
        if let value = dict["weightingProportion"] as? Double {
            self.weightingProportion = value
        }
        if let value = dict["weightingRatio"] as? Double {
            self.weightingRatio = value
        }
    }
}

public class AddFolderRequest : Tea.TeaModel {
    public var folderName: String?

    public var parentFolderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.folderName != nil {
            map["folderName"] = self.folderName!
        }
        if self.parentFolderId != nil {
            map["parentFolderId"] = self.parentFolderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["folderName"] as? String {
            self.folderName = value
        }
        if let value = dict["parentFolderId"] as? String {
            self.parentFolderId = value
        }
    }
}

public class AddFolderResponseBody : Tea.TeaModel {
    public var data: FolderItem?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = FolderItem()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddFolderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFolderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddFolderResponseBody()
            model.fromMap(value)
            self.body = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["templateId"] as? String {
            self.templateId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileUrl"] as? InputStream {
            self.fileUrlObject = value
        }
        if let value = dict["language"] as? String {
            self.language = value
        }
        if let value = dict["templateId"] as? String {
            self.templateId = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["keyConfidence"] as? Double {
                            self.keyConfidence = value
                        }
                        if let value = dict["valueConfidence"] as? Double {
                            self.valueConfidence = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["confidence"] as? [String: Any?] {
                        var model = AnalyzeVlRealtimeResponseBody.Data.KvListInfo.Context.Confidence()
                        model.fromMap(value)
                        self.confidence = model
                    }
                    if let value = dict["key"] as? [Any?] {
                        var tmp : [ContentItem] = []
                        for v in value {
                            if v != nil {
                                var model = ContentItem()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.key = tmp
                    }
                    if let value = dict["value"] as? [Any?] {
                        var tmp : [ContentItem] = []
                        for v in value {
                            if v != nil {
                                var model = ContentItem()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["context"] as? [String: Any?] {
                    var model = AnalyzeVlRealtimeResponseBody.Data.KvListInfo.Context()
                    model.fromMap(value)
                    self.context = model
                }
                if let value = dict["keyName"] as? String {
                    self.keyName = value
                }
                if let value = dict["keyValue"] as? String {
                    self.keyValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["kvListInfo"] as? [Any?] {
                var tmp : [AnalyzeVlRealtimeResponseBody.Data.KvListInfo] = []
                for v in value {
                    if v != nil {
                        var model = AnalyzeVlRealtimeResponseBody.Data.KvListInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = AnalyzeVlRealtimeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AnalyzeVlRealtimeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["factoryId"] as? String {
            self.factoryId = value
        }
        if let value = dict["pKey"] as? String {
            self.pKey = value
        }
        if let value = dict["statusList"] as? String {
            self.statusList = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BatchSaveInstructionStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["controlType"] as? Int32 {
            self.controlType = value
        }
        if let value = dict["dateType"] as? Int32 {
            self.dateType = value
        }
        if let value = dict["earliestStartupTime"] as? String {
            self.earliestStartupTime = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["factoryId"] as? String {
            self.factoryId = value
        }
        if let value = dict["latestShutdownTime"] as? String {
            self.latestShutdownTime = value
        }
        if let value = dict["maxCarbonDioxide"] as? Double {
            self.maxCarbonDioxide = value
        }
        if let value = dict["maxTem"] as? Double {
            self.maxTem = value
        }
        if let value = dict["minTem"] as? Double {
            self.minTem = value
        }
        if let value = dict["seasonMode"] as? Int32 {
            self.seasonMode = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["systemId"] as? String {
            self.systemId = value
        }
        if let value = dict["workingEndTime"] as? String {
            self.workingEndTime = value
        }
        if let value = dict["workingStartTime"] as? String {
            self.workingStartTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BatchUpdateSystemRunningPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatRequest : Tea.TeaModel {
    public var documentIds: [Int64]?

    public var question: String?

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
        if self.documentIds != nil {
            map["documentIds"] = self.documentIds!
        }
        if self.question != nil {
            map["question"] = self.question!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["documentIds"] as? [Int64] {
            self.documentIds = value
        }
        if let value = dict["question"] as? String {
            self.question = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class ChatResponseBody : Tea.TeaModel {
    public var data: ChatItem?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = ChatItem()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatStreamRequest : Tea.TeaModel {
    public var documentIds: [Int64]?

    public var question: String?

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
        if self.documentIds != nil {
            map["documentIds"] = self.documentIds!
        }
        if self.question != nil {
            map["question"] = self.question!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["documentIds"] as? [Int64] {
            self.documentIds = value
        }
        if let value = dict["question"] as? String {
            self.question = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class ChatStreamResponseBody : Tea.TeaModel {
    public var data: ChatItem?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = ChatItem()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ChatStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChatStreamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateChatSessionRequest : Tea.TeaModel {
    public var folderId: String?

    public var name: String?

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
        if self.folderId != nil {
            map["folderId"] = self.folderId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class CreateChatSessionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
        }
    }
    public var data: CreateChatSessionResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateChatSessionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateChatSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChatSessionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateChatSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDocumentRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class DeleteDocumentResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDocumentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDocumentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFolderRequest : Tea.TeaModel {
    public var folderId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
    }
}

public class DeleteFolderResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

public class DetailDocumentRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class DetailDocumentResponseBody : Tea.TeaModel {
    public var data: DocumentDetailItem?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = DocumentDetailItem()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetailDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetailDocumentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetailDocumentResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["buildingId"] as? String {
                self.buildingId = value
            }
            if let value = dict["deviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["deviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["deviceType"] as? String {
                self.deviceType = value
            }
            if let value = dict["fenceId"] as? String {
                self.fenceId = value
            }
            if let value = dict["floorId"] as? String {
                self.floorId = value
            }
            if let value = dict["isForbidden"] as? Int32 {
                self.isForbidden = value
            }
            if let value = dict["isUnfavorableArea"] as? Int32 {
                self.isUnfavorableArea = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["factoryId"] as? String {
            self.factoryId = value
        }
        if let value = dict["hvacDeviceConfigVOList"] as? [Any?] {
            var tmp : [EditProhibitedDevicesRequest.HvacDeviceConfigVOList] = []
            for v in value {
                if v != nil {
                    var model = EditProhibitedDevicesRequest.HvacDeviceConfigVOList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hvacDeviceConfigVOList = tmp
        }
        if let value = dict["systemId"] as? String {
            self.systemId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EditProhibitedDevicesResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["buildingId"] as? String {
                self.buildingId = value
            }
            if let value = dict["deviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["deviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["deviceType"] as? String {
                self.deviceType = value
            }
            if let value = dict["fenceId"] as? String {
                self.fenceId = value
            }
            if let value = dict["floorId"] as? String {
                self.floorId = value
            }
            if let value = dict["isForbidden"] as? Int32 {
                self.isForbidden = value
            }
            if let value = dict["isUnfavorableArea"] as? Int32 {
                self.isUnfavorableArea = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["factoryId"] as? String {
            self.factoryId = value
        }
        if let value = dict["hvacDeviceConfigVOList"] as? [Any?] {
            var tmp : [EditUnfavorableAreaDevicesRequest.HvacDeviceConfigVOList] = []
            for v in value {
                if v != nil {
                    var model = EditUnfavorableAreaDevicesRequest.HvacDeviceConfigVOList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hvacDeviceConfigVOList = tmp
        }
        if let value = dict["systemId"] as? String {
            self.systemId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EditUnfavorableAreaDevicesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["productId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["productType"] as? Int64 {
            self.productType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenerateResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["year"] as? Int32 {
            self.year = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["light"] as? [Any?] {
                var tmp : [CarbonEmissionElecSummaryItem] = []
                for v in value {
                    if v != nil {
                        var model = CarbonEmissionElecSummaryItem()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.light = tmp
            }
            if let value = dict["nuclear"] as? [Any?] {
                var tmp : [CarbonEmissionElecSummaryItem] = []
                for v in value {
                    if v != nil {
                        var model = CarbonEmissionElecSummaryItem()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nuclear = tmp
            }
            if let value = dict["renewing"] as? [Any?] {
                var tmp : [CarbonEmissionElecSummaryItem] = []
                for v in value {
                    if v != nil {
                        var model = CarbonEmissionElecSummaryItem()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.renewing = tmp
            }
            if let value = dict["urban"] as? [Any?] {
                var tmp : [CarbonEmissionElecSummaryItem] = []
                for v in value {
                    if v != nil {
                        var model = CarbonEmissionElecSummaryItem()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.urban = tmp
            }
            if let value = dict["water"] as? [Any?] {
                var tmp : [CarbonEmissionElecSummaryItem] = []
                for v in value {
                    if v != nil {
                        var model = CarbonEmissionElecSummaryItem()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.water = tmp
            }
            if let value = dict["wind"] as? [Any?] {
                var tmp : [CarbonEmissionElecSummaryItem] = []
                for v in value {
                    if v != nil {
                        var model = CarbonEmissionElecSummaryItem()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.wind = tmp
            }
            if let value = dict["zero"] as? [Any?] {
                var tmp : [CarbonEmissionElecSummaryItem] = []
                for v in value {
                    if v != nil {
                        var model = CarbonEmissionElecSummaryItem()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetAreaElecConstituteResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAreaElecConstituteResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["moduleCode"] as? String {
            self.moduleCode = value
        }
        if let value = dict["moduleType"] as? Int32 {
            self.moduleType = value
        }
        if let value = dict["trendType"] as? Int32 {
            self.trendType = value
        }
        if let value = dict["yearList"] as? [Int32] {
            self.yearList = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["carbonEmissionData"] as? Double {
                        self.carbonEmissionData = value
                    }
                    if let value = dict["month"] as? Int32 {
                        self.month = value
                    }
                    if let value = dict["year"] as? String {
                        self.year = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["items"] as? [Any?] {
                    var tmp : [GetCarbonEmissionTrendResponseBody.Data.ActualEmissionList.Items] = []
                    for v in value {
                        if v != nil {
                            var model = GetCarbonEmissionTrendResponseBody.Data.ActualEmissionList.Items()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.items = tmp
                }
                if let value = dict["year"] as? String {
                    self.year = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["carbonEmissionData"] as? Double {
                        self.carbonEmissionData = value
                    }
                    if let value = dict["month"] as? Int32 {
                        self.month = value
                    }
                    if let value = dict["year"] as? String {
                        self.year = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["items"] as? [Any?] {
                    var tmp : [GetCarbonEmissionTrendResponseBody.Data.TargetEmissionList.Items] = []
                    for v in value {
                        if v != nil {
                            var model = GetCarbonEmissionTrendResponseBody.Data.TargetEmissionList.Items()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.items = tmp
                }
                if let value = dict["year"] as? String {
                    self.year = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["actualEmissionList"] as? [Any?] {
                var tmp : [GetCarbonEmissionTrendResponseBody.Data.ActualEmissionList] = []
                for v in value {
                    if v != nil {
                        var model = GetCarbonEmissionTrendResponseBody.Data.ActualEmissionList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.actualEmissionList = tmp
            }
            if let value = dict["targetEmissionList"] as? [Any?] {
                var tmp : [GetCarbonEmissionTrendResponseBody.Data.TargetEmissionList] = []
                for v in value {
                    if v != nil {
                        var model = GetCarbonEmissionTrendResponseBody.Data.TargetEmissionList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetCarbonEmissionTrendResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCarbonEmissionTrendResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetChatFolderListResponseBody : Tea.TeaModel {
    public var data: [ChatFolderItem]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ChatFolderItem] = []
            for v in value {
                if v != nil {
                    var model = ChatFolderItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetChatFolderListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatFolderListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetChatFolderListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetChatListRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["currentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["currentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class GetChatListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var chatList: [ChatItem]?

        public var currentPage: Int64?

        public var pageSize: Int64?

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
            if self.chatList != nil {
                var tmp : [Any] = []
                for k in self.chatList! {
                    tmp.append(k.toMap())
                }
                map["chatList"] = tmp
            }
            if self.currentPage != nil {
                map["currentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            if self.totalPage != nil {
                map["totalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chatList"] as? [Any?] {
                var tmp : [ChatItem] = []
                for v in value {
                    if v != nil {
                        var model = ChatItem()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.chatList = tmp
            }
            if let value = dict["currentPage"] as? Int64 {
                self.currentPage = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["total"] as? Int64 {
                self.total = value
            }
            if let value = dict["totalPage"] as? Int64 {
                self.totalPage = value
            }
        }
    }
    public var data: GetChatListResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetChatListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetChatListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetChatListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetChatSessionListRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var name: String?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["currentPage"] = self.currentPage!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["currentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class GetChatSessionListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SessionList : Tea.TeaModel {
            public var createTime: Int64?

            public var folderId: String?

            public var name: String?

            public var sessionId: String?

            public var updateTime: Int64?

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
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.folderId != nil {
                    map["folderId"] = self.folderId!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.sessionId != nil {
                    map["sessionId"] = self.sessionId!
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                if self.userId != nil {
                    map["userId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["createTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["folderId"] as? String {
                    self.folderId = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["sessionId"] as? String {
                    self.sessionId = value
                }
                if let value = dict["updateTime"] as? Int64 {
                    self.updateTime = value
                }
                if let value = dict["userId"] as? String {
                    self.userId = value
                }
            }
        }
        public var currentPage: Int64?

        public var pageSize: Int64?

        public var sessionList: [GetChatSessionListResponseBody.Data.SessionList]?

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
            if self.sessionList != nil {
                var tmp : [Any] = []
                for k in self.sessionList! {
                    tmp.append(k.toMap())
                }
                map["sessionList"] = tmp
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            if self.totalPage != nil {
                map["totalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["currentPage"] as? Int64 {
                self.currentPage = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["sessionList"] as? [Any?] {
                var tmp : [GetChatSessionListResponseBody.Data.SessionList] = []
                for v in value {
                    if v != nil {
                        var model = GetChatSessionListResponseBody.Data.SessionList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sessionList = tmp
            }
            if let value = dict["total"] as? Int64 {
                self.total = value
            }
            if let value = dict["totalPage"] as? Int64 {
                self.totalPage = value
            }
        }
    }
    public var data: GetChatSessionListResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetChatSessionListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetChatSessionListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatSessionListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetChatSessionListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["period"] as? Int32 {
                self.period = value
            }
            if let value = dict["unit"] as? String {
                self.unit = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetDataItemListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetDataItemListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDataItemListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["dataQualityEvaluationType"] as? Int64 {
            self.dataQualityEvaluationType = value
        }
        if let value = dict["productId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["productType"] as? Int64 {
            self.productType = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["g1"] as? Double {
                        self.g1 = value
                    }
                    if let value = dict["g2"] as? Double {
                        self.g2 = value
                    }
                    if let value = dict["g3"] as? Double {
                        self.g3 = value
                    }
                    if let value = dict["g4"] as? Double {
                        self.g4 = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inventory"] as? String {
                    self.inventory = value
                }
                if let value = dict["score"] as? [String: Any?] {
                    var model = GetDataQualityAnalysisResponseBody.Data.DataQuality.Score()
                    model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["data_quality_score"] as? Double {
                    self.dataQualityScore = value
                }
                if let value = dict["g1"] as? Double {
                    self.g1 = value
                }
                if let value = dict["g2"] as? Double {
                    self.g2 = value
                }
                if let value = dict["g3"] as? Double {
                    self.g3 = value
                }
                if let value = dict["g4"] as? Double {
                    self.g4 = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["id"] as? String {
                    self.id = value
                }
                if let value = dict["inventory"] as? String {
                    self.inventory = value
                }
                if let value = dict["reductionList"] as? [String] {
                    self.reductionList = value
                }
                if let value = dict["sensitivity"] as? Double {
                    self.sensitivity = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["inventory"] as? String {
                    self.inventory = value
                }
                if let value = dict["uncertaintyContribution"] as? String {
                    self.uncertaintyContribution = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dataQuality"] as? [Any?] {
                var tmp : [GetDataQualityAnalysisResponseBody.Data.DataQuality] = []
                for v in value {
                    if v != nil {
                        var model = GetDataQualityAnalysisResponseBody.Data.DataQuality()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataQuality = tmp
            }
            if let value = dict["dataQualityResult"] as? [String: Any?] {
                var model = GetDataQualityAnalysisResponseBody.Data.DataQualityResult()
                model.fromMap(value)
                self.dataQualityResult = model
            }
            if let value = dict["sensitivityList"] as? [Any?] {
                var tmp : [GetDataQualityAnalysisResponseBody.Data.SensitivityList] = []
                for v in value {
                    if v != nil {
                        var model = GetDataQualityAnalysisResponseBody.Data.SensitivityList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sensitivityList = tmp
            }
            if let value = dict["uncertainty"] as? String {
                self.uncertainty = value
            }
            if let value = dict["uncertaintyValues"] as? [Any?] {
                var tmp : [GetDataQualityAnalysisResponseBody.Data.UncertaintyValues] = []
                for v in value {
                    if v != nil {
                        var model = GetDataQualityAnalysisResponseBody.Data.UncertaintyValues()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDataQualityAnalysisResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDataQualityAnalysisResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["ds"] as? String {
            self.ds = value
        }
        if let value = dict["factoryId"] as? String {
            self.factoryId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["identifier"] as? String {
                    self.identifier = value
                }
                if let value = dict["paramName"] as? String {
                    self.paramName = value
                }
                if let value = dict["statisticsDate"] as? String {
                    self.statisticsDate = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["unit"] as? String {
                    self.unit = value
                }
                if let value = dict["value"] as? Double {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["deviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["deviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["firstTypeName"] as? String {
                self.firstTypeName = value
            }
            if let value = dict["recordList"] as? [Any?] {
                var tmp : [GetDeviceInfoResponseBody.Data.RecordList] = []
                for v in value {
                    if v != nil {
                        var model = GetDeviceInfoResponseBody.Data.RecordList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.recordList = tmp
            }
            if let value = dict["secondTypeName"] as? String {
                self.secondTypeName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDeviceInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDeviceInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["factoryId"] as? String {
            self.factoryId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["constKva"] as? Int32 {
                        self.constKva = value
                    }
                    if let value = dict["ct"] as? Int32 {
                        self.ct = value
                    }
                    if let value = dict["magnification"] as? Int32 {
                        self.magnification = value
                    }
                    if let value = dict["pressure"] as? Int32 {
                        self.pressure = value
                    }
                    if let value = dict["pt"] as? Int32 {
                        self.pt = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["deviceId"] as? String {
                    self.deviceId = value
                }
                if let value = dict["deviceName"] as? String {
                    self.deviceName = value
                }
                if let value = dict["firstTypeName"] as? String {
                    self.firstTypeName = value
                }
                if let value = dict["info"] as? [String: Any?] {
                    var model = GetDeviceListResponseBody.Data.DeviceList.Info()
                    model.fromMap(value)
                    self.info = model
                }
                if let value = dict["parentDevice"] as? String {
                    self.parentDevice = value
                }
                if let value = dict["secondTypeName"] as? String {
                    self.secondTypeName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["deviceList"] as? [Any?] {
                var tmp : [GetDeviceListResponseBody.Data.DeviceList] = []
                for v in value {
                    if v != nil {
                        var model = GetDeviceListResponseBody.Data.DeviceList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.deviceList = tmp
            }
            if let value = dict["factoryId"] as? String {
                self.factoryId = value
            }
            if let value = dict["httpCode"] as? Int32 {
                self.httpCode = value
            }
            if let value = dict["success"] as? Bool {
                self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDeviceListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDeviceListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["keyConfidence"] as? Double {
                            self.keyConfidence = value
                        }
                        if let value = dict["valueConfidence"] as? Double {
                            self.valueConfidence = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["confidence"] as? [String: Any?] {
                        var model = GetDocExtractionResultResponseBody.Data.KvListInfo.Context.Confidence()
                        model.fromMap(value)
                        self.confidence = model
                    }
                    if let value = dict["key"] as? [Any?] {
                        var tmp : [ContentItem] = []
                        for v in value {
                            if v != nil {
                                var model = ContentItem()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.key = tmp
                    }
                    if let value = dict["value"] as? [Any?] {
                        var tmp : [ContentItem] = []
                        for v in value {
                            if v != nil {
                                var model = ContentItem()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["context"] as? [String: Any?] {
                    var model = GetDocExtractionResultResponseBody.Data.KvListInfo.Context()
                    model.fromMap(value)
                    self.context = model
                }
                if let value = dict["keyName"] as? String {
                    self.keyName = value
                }
                if let value = dict["keyValue"] as? String {
                    self.keyValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["kvListInfo"] as? [Any?] {
                var tmp : [GetDocExtractionResultResponseBody.Data.KvListInfo] = []
                for v in value {
                    if v != nil {
                        var model = GetDocExtractionResultResponseBody.Data.KvListInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDocExtractionResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDocExtractionResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["returnFormat"] as? String {
            self.returnFormat = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDocParsingResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDocParsingResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jobId"] as? String {
            self.jobId = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["keyConfidence"] as? Double {
                            self.keyConfidence = value
                        }
                        if let value = dict["valueConfidence"] as? Double {
                            self.valueConfidence = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["confidence"] as? [String: Any?] {
                        var model = GetDocumentAnalyzeResultResponseBody.Data.KvListInfo.Context.Confidence()
                        model.fromMap(value)
                        self.confidence = model
                    }
                    if let value = dict["key"] as? [Any?] {
                        var tmp : [ContentItem] = []
                        for v in value {
                            if v != nil {
                                var model = ContentItem()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.key = tmp
                    }
                    if let value = dict["value"] as? [Any?] {
                        var tmp : [ContentItem] = []
                        for v in value {
                            if v != nil {
                                var model = ContentItem()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["context"] as? [String: Any?] {
                    var model = GetDocumentAnalyzeResultResponseBody.Data.KvListInfo.Context()
                    model.fromMap(value)
                    self.context = model
                }
                if let value = dict["keyName"] as? String {
                    self.keyName = value
                }
                if let value = dict["keyValue"] as? String {
                    self.keyValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["kvListInfo"] as? [Any?] {
                var tmp : [GetDocumentAnalyzeResultResponseBody.Data.KvListInfo] = []
                for v in value {
                    if v != nil {
                        var model = GetDocumentAnalyzeResultResponseBody.Data.KvListInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDocumentAnalyzeResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDocumentAnalyzeResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["year"] as? Int32 {
            self.year = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["carbonEmissionData"] as? Double {
                    self.carbonEmissionData = value
                }
                if let value = dict["dataUnit"] as? String {
                    self.dataUnit = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["nameKey"] as? String {
                    self.nameKey = value
                }
                if let value = dict["ratio"] as? Double {
                    self.ratio = value
                }
                if let value = dict["rawData"] as? Double {
                    self.rawData = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["carbonEmissionData"] as? Double {
                    self.carbonEmissionData = value
                }
                if let value = dict["dataUnit"] as? String {
                    self.dataUnit = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["nameKey"] as? String {
                    self.nameKey = value
                }
                if let value = dict["ratio"] as? Double {
                    self.ratio = value
                }
                if let value = dict["rawData"] as? Double {
                    self.rawData = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["carbonEmissionData"] as? Double {
                    self.carbonEmissionData = value
                }
                if let value = dict["dataUnit"] as? String {
                    self.dataUnit = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["nameKey"] as? String {
                    self.nameKey = value
                }
                if let value = dict["ratio"] as? Double {
                    self.ratio = value
                }
                if let value = dict["rawData"] as? Double {
                    self.rawData = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["carbonEmissionData"] as? Double {
                    self.carbonEmissionData = value
                }
                if let value = dict["dataUnit"] as? String {
                    self.dataUnit = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["nameKey"] as? String {
                    self.nameKey = value
                }
                if let value = dict["ratio"] as? Double {
                    self.ratio = value
                }
                if let value = dict["rawData"] as? Double {
                    self.rawData = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["carbonEmissionData"] as? Double {
                    self.carbonEmissionData = value
                }
                if let value = dict["dataUnit"] as? String {
                    self.dataUnit = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["nameKey"] as? String {
                    self.nameKey = value
                }
                if let value = dict["ratio"] as? Double {
                    self.ratio = value
                }
                if let value = dict["rawData"] as? Double {
                    self.rawData = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["carbonEmissionData"] as? Double {
                    self.carbonEmissionData = value
                }
                if let value = dict["dataUnit"] as? String {
                    self.dataUnit = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["nameKey"] as? String {
                    self.nameKey = value
                }
                if let value = dict["ratio"] as? Double {
                    self.ratio = value
                }
                if let value = dict["rawData"] as? Double {
                    self.rawData = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["carbonEmissionData"] as? Double {
                    self.carbonEmissionData = value
                }
                if let value = dict["dataUnit"] as? String {
                    self.dataUnit = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["nameKey"] as? String {
                    self.nameKey = value
                }
                if let value = dict["ratio"] as? Double {
                    self.ratio = value
                }
                if let value = dict["rawData"] as? Double {
                    self.rawData = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["light"] as? [String: Any?] {
                var model = GetElecConstituteResponseBody.Data.Light()
                model.fromMap(value)
                self.light = model
            }
            if let value = dict["nuclear"] as? [String: Any?] {
                var model = GetElecConstituteResponseBody.Data.Nuclear()
                model.fromMap(value)
                self.nuclear = model
            }
            if let value = dict["renewing"] as? [String: Any?] {
                var model = GetElecConstituteResponseBody.Data.Renewing()
                model.fromMap(value)
                self.renewing = model
            }
            if let value = dict["urban"] as? [String: Any?] {
                var model = GetElecConstituteResponseBody.Data.Urban()
                model.fromMap(value)
                self.urban = model
            }
            if let value = dict["water"] as? [String: Any?] {
                var model = GetElecConstituteResponseBody.Data.Water()
                model.fromMap(value)
                self.water = model
            }
            if let value = dict["wind"] as? [String: Any?] {
                var model = GetElecConstituteResponseBody.Data.Wind()
                model.fromMap(value)
                self.wind = model
            }
            if let value = dict["zero"] as? [String: Any?] {
                var model = GetElecConstituteResponseBody.Data.Zero()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetElecConstituteResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetElecConstituteResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["yearList"] as? [Int32] {
            self.yearList = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["carbonEmissionData"] as? Double {
                    self.carbonEmissionData = value
                }
                if let value = dict["dataUnit"] as? String {
                    self.dataUnit = value
                }
                if let value = dict["month"] as? Int32 {
                    self.month = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["nameKey"] as? String {
                    self.nameKey = value
                }
                if let value = dict["ratio"] as? Double {
                    self.ratio = value
                }
                if let value = dict["rawData"] as? Double {
                    self.rawData = value
                }
                if let value = dict["year"] as? String {
                    self.year = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["carbonEmissionData"] as? Double {
                    self.carbonEmissionData = value
                }
                if let value = dict["dataUnit"] as? String {
                    self.dataUnit = value
                }
                if let value = dict["month"] as? Int32 {
                    self.month = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["nameKey"] as? String {
                    self.nameKey = value
                }
                if let value = dict["ratio"] as? Double {
                    self.ratio = value
                }
                if let value = dict["rawData"] as? Double {
                    self.rawData = value
                }
                if let value = dict["year"] as? String {
                    self.year = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["carbonEmissionData"] as? Double {
                    self.carbonEmissionData = value
                }
                if let value = dict["dataUnit"] as? String {
                    self.dataUnit = value
                }
                if let value = dict["month"] as? Int32 {
                    self.month = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["nameKey"] as? String {
                    self.nameKey = value
                }
                if let value = dict["ratio"] as? Double {
                    self.ratio = value
                }
                if let value = dict["rawData"] as? Double {
                    self.rawData = value
                }
                if let value = dict["year"] as? String {
                    self.year = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["carbonEmissionData"] as? Double {
                    self.carbonEmissionData = value
                }
                if let value = dict["dataUnit"] as? String {
                    self.dataUnit = value
                }
                if let value = dict["month"] as? Int32 {
                    self.month = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["nameKey"] as? String {
                    self.nameKey = value
                }
                if let value = dict["ratio"] as? Double {
                    self.ratio = value
                }
                if let value = dict["rawData"] as? Double {
                    self.rawData = value
                }
                if let value = dict["year"] as? String {
                    self.year = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["carbonEmissionData"] as? Double {
                    self.carbonEmissionData = value
                }
                if let value = dict["dataUnit"] as? String {
                    self.dataUnit = value
                }
                if let value = dict["month"] as? Int32 {
                    self.month = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["nameKey"] as? String {
                    self.nameKey = value
                }
                if let value = dict["ratio"] as? Double {
                    self.ratio = value
                }
                if let value = dict["rawData"] as? Double {
                    self.rawData = value
                }
                if let value = dict["year"] as? String {
                    self.year = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["carbonEmissionData"] as? Double {
                    self.carbonEmissionData = value
                }
                if let value = dict["dataUnit"] as? String {
                    self.dataUnit = value
                }
                if let value = dict["month"] as? Int32 {
                    self.month = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["nameKey"] as? String {
                    self.nameKey = value
                }
                if let value = dict["ratio"] as? Double {
                    self.ratio = value
                }
                if let value = dict["rawData"] as? Double {
                    self.rawData = value
                }
                if let value = dict["year"] as? String {
                    self.year = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["carbonEmissionData"] as? Double {
                    self.carbonEmissionData = value
                }
                if let value = dict["dataUnit"] as? String {
                    self.dataUnit = value
                }
                if let value = dict["month"] as? Int32 {
                    self.month = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["nameKey"] as? String {
                    self.nameKey = value
                }
                if let value = dict["ratio"] as? Double {
                    self.ratio = value
                }
                if let value = dict["rawData"] as? Double {
                    self.rawData = value
                }
                if let value = dict["year"] as? String {
                    self.year = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["light"] as? [Any?] {
                var tmp : [GetElecTrendResponseBody.Data.Light] = []
                for v in value {
                    if v != nil {
                        var model = GetElecTrendResponseBody.Data.Light()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.light = tmp
            }
            if let value = dict["nuclear"] as? [Any?] {
                var tmp : [GetElecTrendResponseBody.Data.Nuclear] = []
                for v in value {
                    if v != nil {
                        var model = GetElecTrendResponseBody.Data.Nuclear()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nuclear = tmp
            }
            if let value = dict["renewing"] as? [Any?] {
                var tmp : [GetElecTrendResponseBody.Data.Renewing] = []
                for v in value {
                    if v != nil {
                        var model = GetElecTrendResponseBody.Data.Renewing()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.renewing = tmp
            }
            if let value = dict["urban"] as? [Any?] {
                var tmp : [GetElecTrendResponseBody.Data.Urban] = []
                for v in value {
                    if v != nil {
                        var model = GetElecTrendResponseBody.Data.Urban()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.urban = tmp
            }
            if let value = dict["water"] as? [Any?] {
                var tmp : [GetElecTrendResponseBody.Data.Water] = []
                for v in value {
                    if v != nil {
                        var model = GetElecTrendResponseBody.Data.Water()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.water = tmp
            }
            if let value = dict["wind"] as? [Any?] {
                var tmp : [GetElecTrendResponseBody.Data.Wind] = []
                for v in value {
                    if v != nil {
                        var model = GetElecTrendResponseBody.Data.Wind()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.wind = tmp
            }
            if let value = dict["zero"] as? [Any?] {
                var tmp : [GetElecTrendResponseBody.Data.Zero] = []
                for v in value {
                    if v != nil {
                        var model = GetElecTrendResponseBody.Data.Zero()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetElecTrendResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetElecTrendResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["moduleCode"] as? String {
            self.moduleCode = value
        }
        if let value = dict["moduleType"] as? Int32 {
            self.moduleType = value
        }
        if let value = dict["year"] as? Int32 {
            self.year = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ConstituteItem] = []
            for v in value {
                if v != nil {
                    var model = ConstituteItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetEmissionSourceConstituteResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["moduleCode"] as? String {
            self.moduleCode = value
        }
        if let value = dict["moduleType"] as? Int32 {
            self.moduleType = value
        }
        if let value = dict["year"] as? Int32 {
            self.year = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["actualEmissionRatio"] as? Double {
                self.actualEmissionRatio = value
            }
            if let value = dict["carbonSaveConversion"] as? Double {
                self.carbonSaveConversion = value
            }
            if let value = dict["currentPeriodCarbonEmissionData"] as? Double {
                self.currentPeriodCarbonEmissionData = value
            }
            if let value = dict["isWeighting"] as? Bool {
                self.isWeighting = value
            }
            if let value = dict["lastPeriodCarbonEmissionData"] as? Double {
                self.lastPeriodCarbonEmissionData = value
            }
            if let value = dict["lastPeriodWeightingCarbonEmissionData"] as? Double {
                self.lastPeriodWeightingCarbonEmissionData = value
            }
            if let value = dict["ratio"] as? Double {
                self.ratio = value
            }
            if let value = dict["totalCarbonEmissionData"] as? Double {
                self.totalCarbonEmissionData = value
            }
            if let value = dict["weightingCarbonEmissionData"] as? Double {
                self.weightingCarbonEmissionData = value
            }
            if let value = dict["weightingRatio"] as? Double {
                self.weightingRatio = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetEmissionSummaryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetEmissionSummaryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["productId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["productType"] as? Int64 {
            self.productType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [EpdInventoryConstituteItem] = []
            for v in value {
                if v != nil {
                    var model = EpdInventoryConstituteItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetEpdInventoryConstituteResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["productId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["productType"] as? Int64 {
            self.productType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["carbonEmission"] as? Double {
                self.carbonEmission = value
            }
            if let value = dict["indicator"] as? String {
                self.indicator = value
            }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["method"] as? String {
                self.method = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["num"] as? Int64 {
                self.num = value
            }
            if let value = dict["preUnit"] as? String {
                self.preUnit = value
            }
            if let value = dict["state"] as? Int64 {
                self.state = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetEpdSummaryResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetEpdSummaryResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetEpdSummaryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["currentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["pageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["productType"] as? Int64 {
            self.productType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["amount"] as? Double {
                    self.amount = value
                }
                if let value = dict["authStatus"] as? Int64 {
                    self.authStatus = value
                }
                if let value = dict["checkEndTime"] as? String {
                    self.checkEndTime = value
                }
                if let value = dict["checkStartTime"] as? String {
                    self.checkStartTime = value
                }
                if let value = dict["code"] as? String {
                    self.code = value
                }
                if let value = dict["createdBy"] as? String {
                    self.createdBy = value
                }
                if let value = dict["id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["isDemoModel"] as? Int64 {
                    self.isDemoModel = value
                }
                if let value = dict["lifeCycle"] as? String {
                    self.lifeCycle = value
                }
                if let value = dict["lifeCycleType"] as? Int64 {
                    self.lifeCycleType = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["unit"] as? String {
                    self.unit = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["currentPage"] as? Int64 {
                self.currentPage = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["records"] as? [Any?] {
                var tmp : [GetFootprintListResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = GetFootprintListResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["total"] as? Int64 {
                self.total = value
            }
            if let value = dict["totalPage"] as? Int64 {
                self.totalPage = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetFootprintListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFootprintListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["moduleCode"] as? String {
            self.moduleCode = value
        }
        if let value = dict["moduleType"] as? Int32 {
            self.moduleType = value
        }
        if let value = dict["year"] as? Int32 {
            self.year = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["carbonEmissionData"] as? Double {
                self.carbonEmissionData = value
            }
            if let value = dict["gasEmissionData"] as? Double {
                self.gasEmissionData = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["ratio"] as? Double {
                self.ratio = value
            }
            if let value = dict["type"] as? Int32 {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetGasConstituteResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetGasConstituteResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetGasConstituteResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["productId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["productType"] as? Int64 {
            self.productType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["activeReduction"] as? Double {
                    self.activeReduction = value
                }
                if let value = dict["benchmarkEmission"] as? Double {
                    self.benchmarkEmission = value
                }
                if let value = dict["benchmarkName"] as? String {
                    self.benchmarkName = value
                }
                if let value = dict["carbonEmission"] as? Double {
                    self.carbonEmission = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["percent"] as? String {
                    self.percent = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [GetGwpBenchmarkListResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = GetGwpBenchmarkListResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["unit"] as? String {
                self.unit = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetGwpBenchmarkListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetGwpBenchmarkListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["productId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["productType"] as? Int64 {
            self.productType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["percent"] as? String {
                    self.percent = value
                }
                if let value = dict["quantity"] as? Int64 {
                    self.quantity = value
                }
                if let value = dict["unit"] as? String {
                    self.unit = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [GetGwpBenchmarkSummaryResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = GetGwpBenchmarkSummaryResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["quantity"] as? Int64 {
                self.quantity = value
            }
            if let value = dict["unit"] as? String {
                self.unit = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetGwpBenchmarkSummaryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetGwpBenchmarkSummaryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["productId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["productType"] as? Int64 {
            self.productType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["byResourceType"] as? [Any?] {
                var tmp : [GwpInventoryConstitute] = []
                for v in value {
                    if v != nil {
                        var model = GwpInventoryConstitute()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.byResourceType = tmp
            }
            if let value = dict["carbonEmission"] as? Double {
                self.carbonEmission = value
            }
            if let value = dict["items"] as? [Any?] {
                var tmp : [GwpInventoryConstitute] = []
                for v in value {
                    if v != nil {
                        var model = GwpInventoryConstitute()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["unit"] as? String {
                self.unit = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetGwpInventoryConstituteResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetGwpInventoryConstituteResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["productId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["productType"] as? Int64 {
            self.productType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["percent"] as? String {
                    self.percent = value
                }
                if let value = dict["quantity"] as? Double {
                    self.quantity = value
                }
                if let value = dict["unit"] as? String {
                    self.unit = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [GetGwpInventorySummaryResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = GetGwpInventorySummaryResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["quantity"] as? Double {
                self.quantity = value
            }
            if let value = dict["resultGenerateTime"] as? Int64 {
                self.resultGenerateTime = value
            }
            if let value = dict["unit"] as? String {
                self.unit = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetGwpInventorySummaryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetGwpInventorySummaryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["emissionType"] as? String {
            self.emissionType = value
        }
        if let value = dict["group"] as? String {
            self.group = value
        }
        if let value = dict["methodType"] as? String {
            self.methodType = value
        }
        if let value = dict["productId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["productType"] as? Int64 {
            self.productType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["carbonEmission"] as? Double {
                    self.carbonEmission = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["percent"] as? String {
                    self.percent = value
                }
                if let value = dict["processName"] as? String {
                    self.processName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["items"] as? [Any?] {
                var tmp : [GetInventoryListResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = GetInventoryListResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["productUnit"] as? String {
                self.productUnit = value
            }
            if let value = dict["unit"] as? String {
                self.unit = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetInventoryListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInventoryListResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["factoryId"] as? String {
                    self.factoryId = value
                }
                if let value = dict["factoryName"] as? String {
                    self.factoryName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["aliyunPk"] as? String {
                self.aliyunPk = value
            }
            if let value = dict["factoryList"] as? [Any?] {
                var tmp : [GetOrgAndFactoryResponseBody.Data.FactoryList] = []
                for v in value {
                    if v != nil {
                        var model = GetOrgAndFactoryResponseBody.Data.FactoryList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.factoryList = tmp
            }
            if let value = dict["organizationId"] as? String {
                self.organizationId = value
            }
            if let value = dict["organizationName"] as? String {
                self.organizationName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetOrgAndFactoryResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetOrgAndFactoryResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["httpCode"] as? Int32 {
            self.httpCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetOrgAndFactoryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["moduleCode"] as? String {
            self.moduleCode = value
        }
        if let value = dict["moduleType"] as? Int32 {
            self.moduleType = value
        }
        if let value = dict["year"] as? Int32 {
            self.year = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = OrgEmission()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetOrgConstituteResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["productId"] as? String {
            self.productId = value
        }
        if let value = dict["productType"] as? Int64 {
            self.productType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["url"] as? String {
                self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetPcrInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPcrInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["dataQualityEvaluationType"] as? Int32 {
            self.dataQualityEvaluationType = value
        }
        if let value = dict["productId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["productType"] as? Int64 {
            self.productType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["reduction"] as? String {
                self.reduction = value
            }
            if let value = dict["reductionEvaluation"] as? String {
                self.reductionEvaluation = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetReductionProposalResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetReductionProposalResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["keyConfidence"] as? Double {
                            self.keyConfidence = value
                        }
                        if let value = dict["valueConfidence"] as? Double {
                            self.valueConfidence = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["confidence"] as? [String: Any?] {
                        var model = GetVLExtractionResultResponseBody.Data.KvListInfo.Context.Confidence()
                        model.fromMap(value)
                        self.confidence = model
                    }
                    if let value = dict["key"] as? [Any?] {
                        var tmp : [ContentItem] = []
                        for v in value {
                            if v != nil {
                                var model = ContentItem()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.key = tmp
                    }
                    if let value = dict["value"] as? [Any?] {
                        var tmp : [ContentItem] = []
                        for v in value {
                            if v != nil {
                                var model = ContentItem()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["context"] as? [String: Any?] {
                    var model = GetVLExtractionResultResponseBody.Data.KvListInfo.Context()
                    model.fromMap(value)
                    self.context = model
                }
                if let value = dict["keyName"] as? String {
                    self.keyName = value
                }
                if let value = dict["keyValue"] as? String {
                    self.keyValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["kvListInfo"] as? [Any?] {
                var tmp : [GetVLExtractionResultResponseBody.Data.KvListInfo] = []
                for v in value {
                    if v != nil {
                        var model = GetVLExtractionResultResponseBody.Data.KvListInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetVLExtractionResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetVLExtractionResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["productId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["productType"] as? Int64 {
            self.productType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["modifiedTime"] as? Int64 {
                self.modifiedTime = value
            }
            if let value = dict["taskKey"] as? String {
                self.taskKey = value
            }
            if let value = dict["taskShortResult"] as? String {
                self.taskShortResult = value
            }
            if let value = dict["taskStatus"] as? String {
                self.taskStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = IsCompletedResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = IsCompletedResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["data"] as? [String: Any] {
                self.data = value
            }
            if let value = dict["deviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["recordTime"] as? String {
                self.recordTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["deviceType"] as? String {
            self.deviceType = value
        }
        if let value = dict["devices"] as? [Any?] {
            var tmp : [PushDeviceDataRequest.Devices] = []
            for v in value {
                if v != nil {
                    var model = PushDeviceDataRequest.Devices()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PushDeviceDataResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["code"] as? String {
                self.code = value
            }
            if let value = dict["month"] as? String {
                self.month = value
            }
            if let value = dict["value"] as? Double {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["items"] as? [String: Any?] {
            var model = PushItemDataRequest.Items()
            model.fromMap(value)
            self.items = model
        }
        if let value = dict["year"] as? String {
            self.year = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PushItemDataResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["year"] as? String {
            self.year = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RecalculateCarbonEmissionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RetrieveRequest : Tea.TeaModel {
    public var documentIds: [Int64]?

    public var folderIds: [String]?

    public var preRetrieveTopK: Int32?

    public var query: String?

    public var rerankerThreshold: Double?

    public var topK: Int32?

    public var useReranker: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.documentIds != nil {
            map["documentIds"] = self.documentIds!
        }
        if self.folderIds != nil {
            map["folderIds"] = self.folderIds!
        }
        if self.preRetrieveTopK != nil {
            map["preRetrieveTopK"] = self.preRetrieveTopK!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.rerankerThreshold != nil {
            map["rerankerThreshold"] = self.rerankerThreshold!
        }
        if self.topK != nil {
            map["topK"] = self.topK!
        }
        if self.useReranker != nil {
            map["useReranker"] = self.useReranker!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["documentIds"] as? [Int64] {
            self.documentIds = value
        }
        if let value = dict["folderIds"] as? [String] {
            self.folderIds = value
        }
        if let value = dict["preRetrieveTopK"] as? Int32 {
            self.preRetrieveTopK = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["rerankerThreshold"] as? Double {
            self.rerankerThreshold = value
        }
        if let value = dict["topK"] as? Int32 {
            self.topK = value
        }
        if let value = dict["useReranker"] as? Bool {
            self.useReranker = value
        }
    }
}

public class RetrieveResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var jobId: String?

        public var results: [ChunkItem]?

        public override init() {
            super.init()
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
            if self.results != nil {
                var tmp : [Any] = []
                for k in self.results! {
                    tmp.append(k.toMap())
                }
                map["results"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["jobId"] as? String {
                self.jobId = value
            }
            if let value = dict["results"] as? [Any?] {
                var tmp : [ChunkItem] = []
                for v in value {
                    if v != nil {
                        var model = ChunkItem()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.results = tmp
            }
        }
    }
    public var data: RetrieveResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = RetrieveResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class RetrieveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetrieveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RetrieveResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
        if let value = dict["prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["answer"] as? String {
                self.answer = value
            }
            if let value = dict["document"] as? [String] {
                self.document = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = SendDocumentAskQuestionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SendDocumentAskQuestionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["controlType"] as? Int32 {
            self.controlType = value
        }
        if let value = dict["dateType"] as? Int32 {
            self.dateType = value
        }
        if let value = dict["earliestStartupTime"] as? String {
            self.earliestStartupTime = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["factoryId"] as? String {
            self.factoryId = value
        }
        if let value = dict["latestShutdownTime"] as? String {
            self.latestShutdownTime = value
        }
        if let value = dict["maxCarbonDioxide"] as? Double {
            self.maxCarbonDioxide = value
        }
        if let value = dict["maxTem"] as? Double {
            self.maxTem = value
        }
        if let value = dict["minTem"] as? Double {
            self.minTem = value
        }
        if let value = dict["pKey"] as? String {
            self.pKey = value
        }
        if let value = dict["seasonMode"] as? Int32 {
            self.seasonMode = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["statisticsTime"] as? String {
            self.statisticsTime = value
        }
        if let value = dict["systemId"] as? String {
            self.systemId = value
        }
        if let value = dict["workingEndTime"] as? String {
            self.workingEndTime = value
        }
        if let value = dict["workingStartTime"] as? String {
            self.workingStartTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetRunningPlanResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["extractType"] as? String {
            self.extractType = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["fileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
        if let value = dict["templateId"] as? String {
            self.templateId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["extractType"] as? String {
            self.extractType = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["fileUrl"] as? InputStream {
            self.fileUrlObject = value
        }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
        if let value = dict["templateId"] as? String {
            self.templateId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = SubmitDocExtractionTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SubmitDocExtractionTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["fileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
        if let value = dict["needAnalyzeImg"] as? Bool {
            self.needAnalyzeImg = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["fileUrl"] as? InputStream {
            self.fileUrlObject = value
        }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
        if let value = dict["needAnalyzeImg"] as? Bool {
            self.needAnalyzeImg = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = SubmitDocParsingTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SubmitDocParsingTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["analysisType"] as? String {
            self.analysisType = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["fileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
        if let value = dict["templateId"] as? String {
            self.templateId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["analysisType"] as? String {
            self.analysisType = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["fileUrl"] as? InputStream {
            self.fileUrlObject = value
        }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
        if let value = dict["templateId"] as? String {
            self.templateId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["jobId"] as? String {
                self.jobId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = SubmitDocumentAnalyzeJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SubmitDocumentAnalyzeJobResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["fileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
        if let value = dict["templateId"] as? String {
            self.templateId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["fileUrl"] as? InputStream {
            self.fileUrlObject = value
        }
        if let value = dict["folderId"] as? String {
            self.folderId = value
        }
        if let value = dict["templateId"] as? String {
            self.templateId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = SubmitVLExtractionTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SubmitVLExtractionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
