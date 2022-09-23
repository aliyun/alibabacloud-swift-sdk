import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ScanImageRequest : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public var dataId: String?

        public var imageTimeMillisecond: Int64?

        public var imageURL: String?

        public var interval: Int32?

        public var maxFrames: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.imageTimeMillisecond != nil {
                map["ImageTimeMillisecond"] = self.imageTimeMillisecond!
            }
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            if self.interval != nil {
                map["Interval"] = self.interval!
            }
            if self.maxFrames != nil {
                map["MaxFrames"] = self.maxFrames!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("ImageTimeMillisecond") {
                self.imageTimeMillisecond = dict["ImageTimeMillisecond"] as! Int64
            }
            if dict.keys.contains("ImageURL") {
                self.imageURL = dict["ImageURL"] as! String
            }
            if dict.keys.contains("Interval") {
                self.interval = dict["Interval"] as! Int32
            }
            if dict.keys.contains("MaxFrames") {
                self.maxFrames = dict["MaxFrames"] as! Int32
            }
        }
    }
    public var scene: [String]?

    public var task: [ScanImageRequest.Task]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.task != nil {
            var tmp : [Any] = []
            for k in self.task! {
                tmp.append(k.toMap())
            }
            map["Task"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! [String]
        }
        if dict.keys.contains("Task") {
            self.task = dict["Task"] as! [ScanImageRequest.Task]
        }
    }
}

public class ScanImageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Results : Tea.TeaModel {
            public class SubResults : Tea.TeaModel {
                public class Frames : Tea.TeaModel {
                    public var rate: Double?

                    public var URL: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.rate != nil {
                            map["Rate"] = self.rate!
                        }
                        if self.URL != nil {
                            map["URL"] = self.URL!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Rate") {
                            self.rate = dict["Rate"] as! Double
                        }
                        if dict.keys.contains("URL") {
                            self.URL = dict["URL"] as! String
                        }
                    }
                }
                public class HintWordsInfoList : Tea.TeaModel {
                    public var context: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.context != nil {
                            map["Context"] = self.context!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Context") {
                            self.context = dict["Context"] as! String
                        }
                    }
                }
                public class LogoDataList : Tea.TeaModel {
                    public var height: Double?

                    public var name: String?

                    public var type: String?

                    public var width: Double?

                    public var x: Double?

                    public var y: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        if self.x != nil {
                            map["X"] = self.x!
                        }
                        if self.y != nil {
                            map["Y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Height") {
                            self.height = dict["Height"] as! Double
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("Width") {
                            self.width = dict["Width"] as! Double
                        }
                        if dict.keys.contains("X") {
                            self.x = dict["X"] as! Double
                        }
                        if dict.keys.contains("Y") {
                            self.y = dict["Y"] as! Double
                        }
                    }
                }
                public class ProgramCodeDataList : Tea.TeaModel {
                    public var height: Double?

                    public var width: Double?

                    public var x: Double?

                    public var y: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        if self.x != nil {
                            map["X"] = self.x!
                        }
                        if self.y != nil {
                            map["Y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Height") {
                            self.height = dict["Height"] as! Double
                        }
                        if dict.keys.contains("Width") {
                            self.width = dict["Width"] as! Double
                        }
                        if dict.keys.contains("X") {
                            self.x = dict["X"] as! Double
                        }
                        if dict.keys.contains("Y") {
                            self.y = dict["Y"] as! Double
                        }
                    }
                }
                public class SfaceDataList : Tea.TeaModel {
                    public class Faces : Tea.TeaModel {
                        public var id: String?

                        public var name: String?

                        public var rate: Double?

                        public override init() {
                            super.init()
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
                            if self.rate != nil {
                                map["Rate"] = self.rate!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Id") {
                                self.id = dict["Id"] as! String
                            }
                            if dict.keys.contains("Name") {
                                self.name = dict["Name"] as! String
                            }
                            if dict.keys.contains("Rate") {
                                self.rate = dict["Rate"] as! Double
                            }
                        }
                    }
                    public var faces: [ScanImageResponseBody.Data.Results.SubResults.SfaceDataList.Faces]?

                    public var height: Double?

                    public var width: Double?

                    public var x: Double?

                    public var y: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.faces != nil {
                            var tmp : [Any] = []
                            for k in self.faces! {
                                tmp.append(k.toMap())
                            }
                            map["Faces"] = tmp
                        }
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        if self.x != nil {
                            map["X"] = self.x!
                        }
                        if self.y != nil {
                            map["Y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Faces") {
                            self.faces = dict["Faces"] as! [ScanImageResponseBody.Data.Results.SubResults.SfaceDataList.Faces]
                        }
                        if dict.keys.contains("Height") {
                            self.height = dict["Height"] as! Double
                        }
                        if dict.keys.contains("Width") {
                            self.width = dict["Width"] as! Double
                        }
                        if dict.keys.contains("X") {
                            self.x = dict["X"] as! Double
                        }
                        if dict.keys.contains("Y") {
                            self.y = dict["Y"] as! Double
                        }
                    }
                }
                public var frames: [ScanImageResponseBody.Data.Results.SubResults.Frames]?

                public var hintWordsInfoList: [ScanImageResponseBody.Data.Results.SubResults.HintWordsInfoList]?

                public var label: String?

                public var logoDataList: [ScanImageResponseBody.Data.Results.SubResults.LogoDataList]?

                public var OCRDataList: [String]?

                public var programCodeDataList: [ScanImageResponseBody.Data.Results.SubResults.ProgramCodeDataList]?

                public var rate: Double?

                public var scene: String?

                public var sfaceDataList: [ScanImageResponseBody.Data.Results.SubResults.SfaceDataList]?

                public var suggestion: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.frames != nil {
                        var tmp : [Any] = []
                        for k in self.frames! {
                            tmp.append(k.toMap())
                        }
                        map["Frames"] = tmp
                    }
                    if self.hintWordsInfoList != nil {
                        var tmp : [Any] = []
                        for k in self.hintWordsInfoList! {
                            tmp.append(k.toMap())
                        }
                        map["HintWordsInfoList"] = tmp
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.logoDataList != nil {
                        var tmp : [Any] = []
                        for k in self.logoDataList! {
                            tmp.append(k.toMap())
                        }
                        map["LogoDataList"] = tmp
                    }
                    if self.OCRDataList != nil {
                        map["OCRDataList"] = self.OCRDataList!
                    }
                    if self.programCodeDataList != nil {
                        var tmp : [Any] = []
                        for k in self.programCodeDataList! {
                            tmp.append(k.toMap())
                        }
                        map["ProgramCodeDataList"] = tmp
                    }
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    if self.scene != nil {
                        map["Scene"] = self.scene!
                    }
                    if self.sfaceDataList != nil {
                        var tmp : [Any] = []
                        for k in self.sfaceDataList! {
                            tmp.append(k.toMap())
                        }
                        map["SfaceDataList"] = tmp
                    }
                    if self.suggestion != nil {
                        map["Suggestion"] = self.suggestion!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Frames") {
                        self.frames = dict["Frames"] as! [ScanImageResponseBody.Data.Results.SubResults.Frames]
                    }
                    if dict.keys.contains("HintWordsInfoList") {
                        self.hintWordsInfoList = dict["HintWordsInfoList"] as! [ScanImageResponseBody.Data.Results.SubResults.HintWordsInfoList]
                    }
                    if dict.keys.contains("Label") {
                        self.label = dict["Label"] as! String
                    }
                    if dict.keys.contains("LogoDataList") {
                        self.logoDataList = dict["LogoDataList"] as! [ScanImageResponseBody.Data.Results.SubResults.LogoDataList]
                    }
                    if dict.keys.contains("OCRDataList") {
                        self.OCRDataList = dict["OCRDataList"] as! [String]
                    }
                    if dict.keys.contains("ProgramCodeDataList") {
                        self.programCodeDataList = dict["ProgramCodeDataList"] as! [ScanImageResponseBody.Data.Results.SubResults.ProgramCodeDataList]
                    }
                    if dict.keys.contains("Rate") {
                        self.rate = dict["Rate"] as! Double
                    }
                    if dict.keys.contains("Scene") {
                        self.scene = dict["Scene"] as! String
                    }
                    if dict.keys.contains("SfaceDataList") {
                        self.sfaceDataList = dict["SfaceDataList"] as! [ScanImageResponseBody.Data.Results.SubResults.SfaceDataList]
                    }
                    if dict.keys.contains("Suggestion") {
                        self.suggestion = dict["Suggestion"] as! String
                    }
                }
            }
            public var dataId: String?

            public var imageURL: String?

            public var subResults: [ScanImageResponseBody.Data.Results.SubResults]?

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
                if self.dataId != nil {
                    map["DataId"] = self.dataId!
                }
                if self.imageURL != nil {
                    map["ImageURL"] = self.imageURL!
                }
                if self.subResults != nil {
                    var tmp : [Any] = []
                    for k in self.subResults! {
                        tmp.append(k.toMap())
                    }
                    map["SubResults"] = tmp
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataId") {
                    self.dataId = dict["DataId"] as! String
                }
                if dict.keys.contains("ImageURL") {
                    self.imageURL = dict["ImageURL"] as! String
                }
                if dict.keys.contains("SubResults") {
                    self.subResults = dict["SubResults"] as! [ScanImageResponseBody.Data.Results.SubResults]
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
            }
        }
        public var results: [ScanImageResponseBody.Data.Results]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.results != nil {
                var tmp : [Any] = []
                for k in self.results! {
                    tmp.append(k.toMap())
                }
                map["Results"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Results") {
                self.results = dict["Results"] as! [ScanImageResponseBody.Data.Results]
            }
        }
    }
    public var data: ScanImageResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = ScanImageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ScanImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScanImageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ScanImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ScanTextRequest : Tea.TeaModel {
    public class Labels : Tea.TeaModel {
        public var label: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.label != nil {
                map["Label"] = self.label!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! String
            }
        }
    }
    public class Tasks : Tea.TeaModel {
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
                map["Content"] = self.content!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
        }
    }
    public var labels: [ScanTextRequest.Labels]?

    public var tasks: [ScanTextRequest.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! [ScanTextRequest.Labels]
        }
        if dict.keys.contains("Tasks") {
            self.tasks = dict["Tasks"] as! [ScanTextRequest.Tasks]
        }
    }
}

public class ScanTextResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public class Results : Tea.TeaModel {
                public class Details : Tea.TeaModel {
                    public class Contexts : Tea.TeaModel {
                        public var context: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.context != nil {
                                map["Context"] = self.context!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Context") {
                                self.context = dict["Context"] as! String
                            }
                        }
                    }
                    public var contexts: [ScanTextResponseBody.Data.Elements.Results.Details.Contexts]?

                    public var label: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.contexts != nil {
                            var tmp : [Any] = []
                            for k in self.contexts! {
                                tmp.append(k.toMap())
                            }
                            map["Contexts"] = tmp
                        }
                        if self.label != nil {
                            map["Label"] = self.label!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Contexts") {
                            self.contexts = dict["Contexts"] as! [ScanTextResponseBody.Data.Elements.Results.Details.Contexts]
                        }
                        if dict.keys.contains("Label") {
                            self.label = dict["Label"] as! String
                        }
                    }
                }
                public var details: [ScanTextResponseBody.Data.Elements.Results.Details]?

                public var label: String?

                public var rate: Double?

                public var suggestion: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.details != nil {
                        var tmp : [Any] = []
                        for k in self.details! {
                            tmp.append(k.toMap())
                        }
                        map["Details"] = tmp
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    if self.suggestion != nil {
                        map["Suggestion"] = self.suggestion!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Details") {
                        self.details = dict["Details"] as! [ScanTextResponseBody.Data.Elements.Results.Details]
                    }
                    if dict.keys.contains("Label") {
                        self.label = dict["Label"] as! String
                    }
                    if dict.keys.contains("Rate") {
                        self.rate = dict["Rate"] as! Double
                    }
                    if dict.keys.contains("Suggestion") {
                        self.suggestion = dict["Suggestion"] as! String
                    }
                }
            }
            public var results: [ScanTextResponseBody.Data.Elements.Results]?

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
                if self.results != nil {
                    var tmp : [Any] = []
                    for k in self.results! {
                        tmp.append(k.toMap())
                    }
                    map["Results"] = tmp
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Results") {
                    self.results = dict["Results"] as! [ScanTextResponseBody.Data.Elements.Results]
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
            }
        }
        public var elements: [ScanTextResponseBody.Data.Elements]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.elements != nil {
                var tmp : [Any] = []
                for k in self.elements! {
                    tmp.append(k.toMap())
                }
                map["Elements"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Elements") {
                self.elements = dict["Elements"] as! [ScanTextResponseBody.Data.Elements]
            }
        }
    }
    public var data: ScanTextResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = ScanTextResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ScanTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScanTextResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ScanTextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
