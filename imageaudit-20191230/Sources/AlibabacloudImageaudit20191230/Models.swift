import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import DarabonbaNumber
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["ImageTimeMillisecond"] as? Int64 {
                self.imageTimeMillisecond = value
            }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
            if let value = dict["Interval"] as? Int32 {
                self.interval = value
            }
            if let value = dict["MaxFrames"] as? Int32 {
                self.maxFrames = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Scene"] as? [String] {
            self.scene = value
        }
        if let value = dict["Task"] as? [Any?] {
            var tmp : [ScanImageRequest.Task] = []
            for v in value {
                if v != nil {
                    var model = ScanImageRequest.Task()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.task = tmp
        }
    }
}

public class ScanImageAdvanceRequest : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public var dataId: String?

        public var imageTimeMillisecond: Int64?

        public var imageURLObject: InputStream?

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
            if self.imageURLObject != nil {
                map["ImageURL"] = self.imageURLObject!
            }
            if self.interval != nil {
                map["Interval"] = self.interval!
            }
            if self.maxFrames != nil {
                map["MaxFrames"] = self.maxFrames!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["ImageTimeMillisecond"] as? Int64 {
                self.imageTimeMillisecond = value
            }
            if let value = dict["ImageURL"] as? InputStream {
                self.imageURLObject = value
            }
            if let value = dict["Interval"] as? Int32 {
                self.interval = value
            }
            if let value = dict["MaxFrames"] as? Int32 {
                self.maxFrames = value
            }
        }
    }
    public var scene: [String]?

    public var task: [ScanImageAdvanceRequest.Task]?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Scene"] as? [String] {
            self.scene = value
        }
        if let value = dict["Task"] as? [Any?] {
            var tmp : [ScanImageAdvanceRequest.Task] = []
            for v in value {
                if v != nil {
                    var model = ScanImageAdvanceRequest.Task()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.task = tmp
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Rate"] as? Double {
                            self.rate = value
                        }
                        if let value = dict["URL"] as? String {
                            self.URL = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Context"] as? String {
                            self.context = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Height"] as? Double {
                            self.height = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                        if let value = dict["Width"] as? Double {
                            self.width = value
                        }
                        if let value = dict["X"] as? Double {
                            self.x = value
                        }
                        if let value = dict["Y"] as? Double {
                            self.y = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Height"] as? Double {
                            self.height = value
                        }
                        if let value = dict["Width"] as? Double {
                            self.width = value
                        }
                        if let value = dict["X"] as? Double {
                            self.x = value
                        }
                        if let value = dict["Y"] as? Double {
                            self.y = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Id"] as? String {
                                self.id = value
                            }
                            if let value = dict["Name"] as? String {
                                self.name = value
                            }
                            if let value = dict["Rate"] as? Double {
                                self.rate = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Faces"] as? [Any?] {
                            var tmp : [ScanImageResponseBody.Data.Results.SubResults.SfaceDataList.Faces] = []
                            for v in value {
                                if v != nil {
                                    var model = ScanImageResponseBody.Data.Results.SubResults.SfaceDataList.Faces()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.faces = tmp
                        }
                        if let value = dict["Height"] as? Double {
                            self.height = value
                        }
                        if let value = dict["Width"] as? Double {
                            self.width = value
                        }
                        if let value = dict["X"] as? Double {
                            self.x = value
                        }
                        if let value = dict["Y"] as? Double {
                            self.y = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Frames"] as? [Any?] {
                        var tmp : [ScanImageResponseBody.Data.Results.SubResults.Frames] = []
                        for v in value {
                            if v != nil {
                                var model = ScanImageResponseBody.Data.Results.SubResults.Frames()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.frames = tmp
                    }
                    if let value = dict["HintWordsInfoList"] as? [Any?] {
                        var tmp : [ScanImageResponseBody.Data.Results.SubResults.HintWordsInfoList] = []
                        for v in value {
                            if v != nil {
                                var model = ScanImageResponseBody.Data.Results.SubResults.HintWordsInfoList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.hintWordsInfoList = tmp
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["LogoDataList"] as? [Any?] {
                        var tmp : [ScanImageResponseBody.Data.Results.SubResults.LogoDataList] = []
                        for v in value {
                            if v != nil {
                                var model = ScanImageResponseBody.Data.Results.SubResults.LogoDataList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.logoDataList = tmp
                    }
                    if let value = dict["OCRDataList"] as? [String] {
                        self.OCRDataList = value
                    }
                    if let value = dict["ProgramCodeDataList"] as? [Any?] {
                        var tmp : [ScanImageResponseBody.Data.Results.SubResults.ProgramCodeDataList] = []
                        for v in value {
                            if v != nil {
                                var model = ScanImageResponseBody.Data.Results.SubResults.ProgramCodeDataList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.programCodeDataList = tmp
                    }
                    if let value = dict["Rate"] as? Double {
                        self.rate = value
                    }
                    if let value = dict["Scene"] as? String {
                        self.scene = value
                    }
                    if let value = dict["SfaceDataList"] as? [Any?] {
                        var tmp : [ScanImageResponseBody.Data.Results.SubResults.SfaceDataList] = []
                        for v in value {
                            if v != nil {
                                var model = ScanImageResponseBody.Data.Results.SubResults.SfaceDataList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.sfaceDataList = tmp
                    }
                    if let value = dict["Suggestion"] as? String {
                        self.suggestion = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataId"] as? String {
                    self.dataId = value
                }
                if let value = dict["ImageURL"] as? String {
                    self.imageURL = value
                }
                if let value = dict["SubResults"] as? [Any?] {
                    var tmp : [ScanImageResponseBody.Data.Results.SubResults] = []
                    for v in value {
                        if v != nil {
                            var model = ScanImageResponseBody.Data.Results.SubResults()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.subResults = tmp
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Results"] as? [Any?] {
                var tmp : [ScanImageResponseBody.Data.Results] = []
                for v in value {
                    if v != nil {
                        var model = ScanImageResponseBody.Data.Results()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ScanImageResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ScanImageResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Label"] as? String {
                self.label = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [ScanTextRequest.Labels] = []
            for v in value {
                if v != nil {
                    var model = ScanTextRequest.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [ScanTextRequest.Tasks] = []
            for v in value {
                if v != nil {
                    var model = ScanTextRequest.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Context"] as? String {
                                self.context = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Contexts"] as? [Any?] {
                            var tmp : [ScanTextResponseBody.Data.Elements.Results.Details.Contexts] = []
                            for v in value {
                                if v != nil {
                                    var model = ScanTextResponseBody.Data.Elements.Results.Details.Contexts()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.contexts = tmp
                        }
                        if let value = dict["Label"] as? String {
                            self.label = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Details"] as? [Any?] {
                        var tmp : [ScanTextResponseBody.Data.Elements.Results.Details] = []
                        for v in value {
                            if v != nil {
                                var model = ScanTextResponseBody.Data.Elements.Results.Details()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.details = tmp
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["Rate"] as? Double {
                        self.rate = value
                    }
                    if let value = dict["Suggestion"] as? String {
                        self.suggestion = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Results"] as? [Any?] {
                    var tmp : [ScanTextResponseBody.Data.Elements.Results] = []
                    for v in value {
                        if v != nil {
                            var model = ScanTextResponseBody.Data.Elements.Results()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.results = tmp
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [ScanTextResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = ScanTextResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ScanTextResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ScanTextResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
