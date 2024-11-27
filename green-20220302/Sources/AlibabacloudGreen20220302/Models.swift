import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DescribeFileModerationResultRequest : Tea.TeaModel {
    public var service: String?

    public var serviceParameters: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Service") {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class DescribeFileModerationResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageResult : Tea.TeaModel {
            public class ImageResult : Tea.TeaModel {
                public class LabelResult : Tea.TeaModel {
                    public var confidence: Double?

                    public var description_: String?

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
                        if self.confidence != nil {
                            map["Confidence"] = self.confidence!
                        }
                        if self.description_ != nil {
                            map["Description"] = self.description_!
                        }
                        if self.label != nil {
                            map["Label"] = self.label!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Confidence") {
                            self.confidence = dict["Confidence"] as! Double
                        }
                        if dict.keys.contains("Description") {
                            self.description_ = dict["Description"] as! String
                        }
                        if dict.keys.contains("Label") {
                            self.label = dict["Label"] as! String
                        }
                    }
                }
                public class Location : Tea.TeaModel {
                    public var h: Int32?

                    public var w: Int32?

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
                        if self.h != nil {
                            map["H"] = self.h!
                        }
                        if self.w != nil {
                            map["W"] = self.w!
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
                        if dict.keys.contains("H") {
                            self.h = dict["H"] as! Int32
                        }
                        if dict.keys.contains("W") {
                            self.w = dict["W"] as! Int32
                        }
                        if dict.keys.contains("X") {
                            self.x = dict["X"] as! Int32
                        }
                        if dict.keys.contains("Y") {
                            self.y = dict["Y"] as! Int32
                        }
                    }
                }
                public var description_: String?

                public var labelResult: [DescribeFileModerationResultResponseBody.Data.PageResult.ImageResult.LabelResult]?

                public var location: DescribeFileModerationResultResponseBody.Data.PageResult.ImageResult.Location?

                public var riskLevel: String?

                public var service: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.location?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.labelResult != nil {
                        var tmp : [Any] = []
                        for k in self.labelResult! {
                            tmp.append(k.toMap())
                        }
                        map["LabelResult"] = tmp
                    }
                    if self.location != nil {
                        map["Location"] = self.location?.toMap()
                    }
                    if self.riskLevel != nil {
                        map["RiskLevel"] = self.riskLevel!
                    }
                    if self.service != nil {
                        map["Service"] = self.service!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("LabelResult") {
                        var tmp : [DescribeFileModerationResultResponseBody.Data.PageResult.ImageResult.LabelResult] = []
                        for v in dict["LabelResult"] as! [Any] {
                            var model = DescribeFileModerationResultResponseBody.Data.PageResult.ImageResult.LabelResult()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.labelResult = tmp
                    }
                    if dict.keys.contains("Location") {
                        var model = DescribeFileModerationResultResponseBody.Data.PageResult.ImageResult.Location()
                        model.fromMap(dict["Location"] as! [String: Any])
                        self.location = model
                    }
                    if dict.keys.contains("RiskLevel") {
                        self.riskLevel = dict["RiskLevel"] as! String
                    }
                    if dict.keys.contains("Service") {
                        self.service = dict["Service"] as! String
                    }
                }
            }
            public class TextResult : Tea.TeaModel {
                public var description_: String?

                public var labels: String?

                public var riskLevel: String?

                public var riskTips: String?

                public var riskWords: String?

                public var service: String?

                public var text: String?

                public var textSegment: String?

                public override init() {
                    super.init()
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
                    if self.labels != nil {
                        map["Labels"] = self.labels!
                    }
                    if self.riskLevel != nil {
                        map["RiskLevel"] = self.riskLevel!
                    }
                    if self.riskTips != nil {
                        map["RiskTips"] = self.riskTips!
                    }
                    if self.riskWords != nil {
                        map["RiskWords"] = self.riskWords!
                    }
                    if self.service != nil {
                        map["Service"] = self.service!
                    }
                    if self.text != nil {
                        map["Text"] = self.text!
                    }
                    if self.textSegment != nil {
                        map["TextSegment"] = self.textSegment!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("Labels") {
                        self.labels = dict["Labels"] as! String
                    }
                    if dict.keys.contains("RiskLevel") {
                        self.riskLevel = dict["RiskLevel"] as! String
                    }
                    if dict.keys.contains("RiskTips") {
                        self.riskTips = dict["RiskTips"] as! String
                    }
                    if dict.keys.contains("RiskWords") {
                        self.riskWords = dict["RiskWords"] as! String
                    }
                    if dict.keys.contains("Service") {
                        self.service = dict["Service"] as! String
                    }
                    if dict.keys.contains("Text") {
                        self.text = dict["Text"] as! String
                    }
                    if dict.keys.contains("TextSegment") {
                        self.textSegment = dict["TextSegment"] as! String
                    }
                }
            }
            public var imageResult: [DescribeFileModerationResultResponseBody.Data.PageResult.ImageResult]?

            public var imageUrl: String?

            public var pageNum: Int32?

            public var textResult: [DescribeFileModerationResultResponseBody.Data.PageResult.TextResult]?

            public var textUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.imageResult != nil {
                    var tmp : [Any] = []
                    for k in self.imageResult! {
                        tmp.append(k.toMap())
                    }
                    map["ImageResult"] = tmp
                }
                if self.imageUrl != nil {
                    map["ImageUrl"] = self.imageUrl!
                }
                if self.pageNum != nil {
                    map["PageNum"] = self.pageNum!
                }
                if self.textResult != nil {
                    var tmp : [Any] = []
                    for k in self.textResult! {
                        tmp.append(k.toMap())
                    }
                    map["TextResult"] = tmp
                }
                if self.textUrl != nil {
                    map["TextUrl"] = self.textUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ImageResult") {
                    var tmp : [DescribeFileModerationResultResponseBody.Data.PageResult.ImageResult] = []
                    for v in dict["ImageResult"] as! [Any] {
                        var model = DescribeFileModerationResultResponseBody.Data.PageResult.ImageResult()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.imageResult = tmp
                }
                if dict.keys.contains("ImageUrl") {
                    self.imageUrl = dict["ImageUrl"] as! String
                }
                if dict.keys.contains("PageNum") {
                    self.pageNum = dict["PageNum"] as! Int32
                }
                if dict.keys.contains("TextResult") {
                    var tmp : [DescribeFileModerationResultResponseBody.Data.PageResult.TextResult] = []
                    for v in dict["TextResult"] as! [Any] {
                        var model = DescribeFileModerationResultResponseBody.Data.PageResult.TextResult()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.textResult = tmp
                }
                if dict.keys.contains("TextUrl") {
                    self.textUrl = dict["TextUrl"] as! String
                }
            }
        }
        public class PageSummary : Tea.TeaModel {
            public class ImageSummary : Tea.TeaModel {
                public class ImageLabels : Tea.TeaModel {
                    public var description_: String?

                    public var label: String?

                    public var labelSum: Int32?

                    public override init() {
                        super.init()
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
                        if self.label != nil {
                            map["Label"] = self.label!
                        }
                        if self.labelSum != nil {
                            map["LabelSum"] = self.labelSum!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Description") {
                            self.description_ = dict["Description"] as! String
                        }
                        if dict.keys.contains("Label") {
                            self.label = dict["Label"] as! String
                        }
                        if dict.keys.contains("LabelSum") {
                            self.labelSum = dict["LabelSum"] as! Int32
                        }
                    }
                }
                public var imageLabels: [DescribeFileModerationResultResponseBody.Data.PageSummary.ImageSummary.ImageLabels]?

                public var riskLevel: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.imageLabels != nil {
                        var tmp : [Any] = []
                        for k in self.imageLabels! {
                            tmp.append(k.toMap())
                        }
                        map["ImageLabels"] = tmp
                    }
                    if self.riskLevel != nil {
                        map["RiskLevel"] = self.riskLevel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ImageLabels") {
                        var tmp : [DescribeFileModerationResultResponseBody.Data.PageSummary.ImageSummary.ImageLabels] = []
                        for v in dict["ImageLabels"] as! [Any] {
                            var model = DescribeFileModerationResultResponseBody.Data.PageSummary.ImageSummary.ImageLabels()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.imageLabels = tmp
                    }
                    if dict.keys.contains("RiskLevel") {
                        self.riskLevel = dict["RiskLevel"] as! String
                    }
                }
            }
            public class TextSummary : Tea.TeaModel {
                public class TextLabels : Tea.TeaModel {
                    public var label: String?

                    public var labelSum: Int32?

                    public override init() {
                        super.init()
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
                        if self.labelSum != nil {
                            map["LabelSum"] = self.labelSum!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Label") {
                            self.label = dict["Label"] as! String
                        }
                        if dict.keys.contains("LabelSum") {
                            self.labelSum = dict["LabelSum"] as! Int32
                        }
                    }
                }
                public var riskLevel: String?

                public var textLabels: [DescribeFileModerationResultResponseBody.Data.PageSummary.TextSummary.TextLabels]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.riskLevel != nil {
                        map["RiskLevel"] = self.riskLevel!
                    }
                    if self.textLabels != nil {
                        var tmp : [Any] = []
                        for k in self.textLabels! {
                            tmp.append(k.toMap())
                        }
                        map["TextLabels"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RiskLevel") {
                        self.riskLevel = dict["RiskLevel"] as! String
                    }
                    if dict.keys.contains("TextLabels") {
                        var tmp : [DescribeFileModerationResultResponseBody.Data.PageSummary.TextSummary.TextLabels] = []
                        for v in dict["TextLabels"] as! [Any] {
                            var model = DescribeFileModerationResultResponseBody.Data.PageSummary.TextSummary.TextLabels()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.textLabels = tmp
                    }
                }
            }
            public var imageSummary: DescribeFileModerationResultResponseBody.Data.PageSummary.ImageSummary?

            public var pageSum: Int32?

            public var textSummary: DescribeFileModerationResultResponseBody.Data.PageSummary.TextSummary?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.imageSummary?.validate()
                try self.textSummary?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.imageSummary != nil {
                    map["ImageSummary"] = self.imageSummary?.toMap()
                }
                if self.pageSum != nil {
                    map["PageSum"] = self.pageSum!
                }
                if self.textSummary != nil {
                    map["TextSummary"] = self.textSummary?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ImageSummary") {
                    var model = DescribeFileModerationResultResponseBody.Data.PageSummary.ImageSummary()
                    model.fromMap(dict["ImageSummary"] as! [String: Any])
                    self.imageSummary = model
                }
                if dict.keys.contains("PageSum") {
                    self.pageSum = dict["PageSum"] as! Int32
                }
                if dict.keys.contains("TextSummary") {
                    var model = DescribeFileModerationResultResponseBody.Data.PageSummary.TextSummary()
                    model.fromMap(dict["TextSummary"] as! [String: Any])
                    self.textSummary = model
                }
            }
        }
        public var dataId: String?

        public var docType: String?

        public var pageResult: [DescribeFileModerationResultResponseBody.Data.PageResult]?

        public var pageSummary: DescribeFileModerationResultResponseBody.Data.PageSummary?

        public var riskLevel: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageSummary?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.docType != nil {
                map["DocType"] = self.docType!
            }
            if self.pageResult != nil {
                var tmp : [Any] = []
                for k in self.pageResult! {
                    tmp.append(k.toMap())
                }
                map["PageResult"] = tmp
            }
            if self.pageSummary != nil {
                map["PageSummary"] = self.pageSummary?.toMap()
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("DocType") {
                self.docType = dict["DocType"] as! String
            }
            if dict.keys.contains("PageResult") {
                var tmp : [DescribeFileModerationResultResponseBody.Data.PageResult] = []
                for v in dict["PageResult"] as! [Any] {
                    var model = DescribeFileModerationResultResponseBody.Data.PageResult()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.pageResult = tmp
            }
            if dict.keys.contains("PageSummary") {
                var model = DescribeFileModerationResultResponseBody.Data.PageSummary()
                model.fromMap(dict["PageSummary"] as! [String: Any])
                self.pageSummary = model
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: DescribeFileModerationResultResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeFileModerationResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeFileModerationResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFileModerationResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeFileModerationResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeImageModerationResultRequest : Tea.TeaModel {
    public var reqId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.reqId != nil {
            map["ReqId"] = self.reqId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReqId") {
            self.reqId = dict["ReqId"] as! String
        }
    }
}

public class DescribeImageModerationResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var confidence: Double?

            public var description_: String?

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
                if self.confidence != nil {
                    map["Confidence"] = self.confidence!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Confidence") {
                    self.confidence = dict["Confidence"] as! Double
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
            }
        }
        public var dataId: String?

        public var frame: String?

        public var frameNum: Int32?

        public var reqId: String?

        public var result: [DescribeImageModerationResultResponseBody.Data.Result]?

        public var riskLevel: String?

        public override init() {
            super.init()
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
            if self.frame != nil {
                map["Frame"] = self.frame!
            }
            if self.frameNum != nil {
                map["FrameNum"] = self.frameNum!
            }
            if self.reqId != nil {
                map["ReqId"] = self.reqId!
            }
            if self.result != nil {
                var tmp : [Any] = []
                for k in self.result! {
                    tmp.append(k.toMap())
                }
                map["Result"] = tmp
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("Frame") {
                self.frame = dict["Frame"] as! String
            }
            if dict.keys.contains("FrameNum") {
                self.frameNum = dict["FrameNum"] as! Int32
            }
            if dict.keys.contains("ReqId") {
                self.reqId = dict["ReqId"] as! String
            }
            if dict.keys.contains("Result") {
                var tmp : [DescribeImageModerationResultResponseBody.Data.Result] = []
                for v in dict["Result"] as! [Any] {
                    var model = DescribeImageModerationResultResponseBody.Data.Result()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.result = tmp
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: DescribeImageModerationResultResponseBody.Data?

    public var msg: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeImageModerationResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeImageModerationResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImageModerationResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeImageModerationResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeImageResultExtRequest : Tea.TeaModel {
    public var infoType: String?

    public var reqId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.infoType != nil {
            map["InfoType"] = self.infoType!
        }
        if self.reqId != nil {
            map["ReqId"] = self.reqId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InfoType") {
            self.infoType = dict["InfoType"] as! String
        }
        if dict.keys.contains("ReqId") {
            self.reqId = dict["ReqId"] as! String
        }
    }
}

public class DescribeImageResultExtResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CustomImage : Tea.TeaModel {
            public var imageId: String?

            public var libId: String?

            public var libName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.libId != nil {
                    map["LibId"] = self.libId!
                }
                if self.libName != nil {
                    map["LibName"] = self.libName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ImageId") {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("LibId") {
                    self.libId = dict["LibId"] as! String
                }
                if dict.keys.contains("LibName") {
                    self.libName = dict["LibName"] as! String
                }
            }
        }
        public class PublicFigure : Tea.TeaModel {
            public var figureId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.figureId != nil {
                    map["FigureId"] = self.figureId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FigureId") {
                    self.figureId = dict["FigureId"] as! String
                }
            }
        }
        public class TextInImage : Tea.TeaModel {
            public class CustomTexts : Tea.TeaModel {
                public var keyWords: String?

                public var libId: String?

                public var libName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.keyWords != nil {
                        map["KeyWords"] = self.keyWords!
                    }
                    if self.libId != nil {
                        map["LibId"] = self.libId!
                    }
                    if self.libName != nil {
                        map["LibName"] = self.libName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("KeyWords") {
                        self.keyWords = dict["KeyWords"] as! String
                    }
                    if dict.keys.contains("LibId") {
                        self.libId = dict["LibId"] as! String
                    }
                    if dict.keys.contains("LibName") {
                        self.libName = dict["LibName"] as! String
                    }
                }
            }
            public var customTexts: [DescribeImageResultExtResponseBody.Data.TextInImage.CustomTexts]?

            public var ocrDatas: [String]?

            public var riskWords: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customTexts != nil {
                    var tmp : [Any] = []
                    for k in self.customTexts! {
                        tmp.append(k.toMap())
                    }
                    map["CustomTexts"] = tmp
                }
                if self.ocrDatas != nil {
                    map["OcrDatas"] = self.ocrDatas!
                }
                if self.riskWords != nil {
                    map["RiskWords"] = self.riskWords!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CustomTexts") {
                    var tmp : [DescribeImageResultExtResponseBody.Data.TextInImage.CustomTexts] = []
                    for v in dict["CustomTexts"] as! [Any] {
                        var model = DescribeImageResultExtResponseBody.Data.TextInImage.CustomTexts()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.customTexts = tmp
                }
                if dict.keys.contains("OcrDatas") {
                    self.ocrDatas = dict["OcrDatas"] as! [String]
                }
                if dict.keys.contains("RiskWords") {
                    self.riskWords = dict["RiskWords"] as! [String]
                }
            }
        }
        public var customImage: [DescribeImageResultExtResponseBody.Data.CustomImage]?

        public var publicFigure: [DescribeImageResultExtResponseBody.Data.PublicFigure]?

        public var textInImage: DescribeImageResultExtResponseBody.Data.TextInImage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.textInImage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customImage != nil {
                var tmp : [Any] = []
                for k in self.customImage! {
                    tmp.append(k.toMap())
                }
                map["CustomImage"] = tmp
            }
            if self.publicFigure != nil {
                var tmp : [Any] = []
                for k in self.publicFigure! {
                    tmp.append(k.toMap())
                }
                map["PublicFigure"] = tmp
            }
            if self.textInImage != nil {
                map["TextInImage"] = self.textInImage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomImage") {
                var tmp : [DescribeImageResultExtResponseBody.Data.CustomImage] = []
                for v in dict["CustomImage"] as! [Any] {
                    var model = DescribeImageResultExtResponseBody.Data.CustomImage()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.customImage = tmp
            }
            if dict.keys.contains("PublicFigure") {
                var tmp : [DescribeImageResultExtResponseBody.Data.PublicFigure] = []
                for v in dict["PublicFigure"] as! [Any] {
                    var model = DescribeImageResultExtResponseBody.Data.PublicFigure()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.publicFigure = tmp
            }
            if dict.keys.contains("TextInImage") {
                var model = DescribeImageResultExtResponseBody.Data.TextInImage()
                model.fromMap(dict["TextInImage"] as! [String: Any])
                self.textInImage = model
            }
        }
    }
    public var code: Int32?

    public var data: DescribeImageResultExtResponseBody.Data?

    public var msg: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeImageResultExtResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeImageResultExtResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImageResultExtResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeImageResultExtResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUploadTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var bucketName: String?

        public var expiration: Int32?

        public var fileNamePrefix: String?

        public var ossInternalEndPoint: String?

        public var ossInternetEndPoint: String?

        public var securityToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyId != nil {
                map["AccessKeyId"] = self.accessKeyId!
            }
            if self.accessKeySecret != nil {
                map["AccessKeySecret"] = self.accessKeySecret!
            }
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.expiration != nil {
                map["Expiration"] = self.expiration!
            }
            if self.fileNamePrefix != nil {
                map["FileNamePrefix"] = self.fileNamePrefix!
            }
            if self.ossInternalEndPoint != nil {
                map["OssInternalEndPoint"] = self.ossInternalEndPoint!
            }
            if self.ossInternetEndPoint != nil {
                map["OssInternetEndPoint"] = self.ossInternetEndPoint!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyId") {
                self.accessKeyId = dict["AccessKeyId"] as! String
            }
            if dict.keys.contains("AccessKeySecret") {
                self.accessKeySecret = dict["AccessKeySecret"] as! String
            }
            if dict.keys.contains("BucketName") {
                self.bucketName = dict["BucketName"] as! String
            }
            if dict.keys.contains("Expiration") {
                self.expiration = dict["Expiration"] as! Int32
            }
            if dict.keys.contains("FileNamePrefix") {
                self.fileNamePrefix = dict["FileNamePrefix"] as! String
            }
            if dict.keys.contains("OssInternalEndPoint") {
                self.ossInternalEndPoint = dict["OssInternalEndPoint"] as! String
            }
            if dict.keys.contains("OssInternetEndPoint") {
                self.ossInternetEndPoint = dict["OssInternetEndPoint"] as! String
            }
            if dict.keys.contains("SecurityToken") {
                self.securityToken = dict["SecurityToken"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: DescribeUploadTokenResponseBody.Data?

    public var msg: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeUploadTokenResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeUploadTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUploadTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeUploadTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUrlModerationResultRequest : Tea.TeaModel {
    public var reqId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.reqId != nil {
            map["ReqId"] = self.reqId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReqId") {
            self.reqId = dict["ReqId"] as! String
        }
    }
}

public class DescribeUrlModerationResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ExtraInfo : Tea.TeaModel {
            public var icpNo: String?

            public var icpType: String?

            public var siteType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.icpNo != nil {
                    map["IcpNo"] = self.icpNo!
                }
                if self.icpType != nil {
                    map["IcpType"] = self.icpType!
                }
                if self.siteType != nil {
                    map["SiteType"] = self.siteType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IcpNo") {
                    self.icpNo = dict["IcpNo"] as! String
                }
                if dict.keys.contains("IcpType") {
                    self.icpType = dict["IcpType"] as! String
                }
                if dict.keys.contains("SiteType") {
                    self.siteType = dict["SiteType"] as! String
                }
            }
        }
        public class Result : Tea.TeaModel {
            public var confidence: Double?

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
                if self.confidence != nil {
                    map["Confidence"] = self.confidence!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Confidence") {
                    self.confidence = dict["Confidence"] as! Double
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
            }
        }
        public var dataId: String?

        public var extraInfo: DescribeUrlModerationResultResponseBody.Data.ExtraInfo?

        public var reqId: String?

        public var result: [DescribeUrlModerationResultResponseBody.Data.Result]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extraInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.extraInfo != nil {
                map["ExtraInfo"] = self.extraInfo?.toMap()
            }
            if self.reqId != nil {
                map["ReqId"] = self.reqId!
            }
            if self.result != nil {
                var tmp : [Any] = []
                for k in self.result! {
                    tmp.append(k.toMap())
                }
                map["Result"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("ExtraInfo") {
                var model = DescribeUrlModerationResultResponseBody.Data.ExtraInfo()
                model.fromMap(dict["ExtraInfo"] as! [String: Any])
                self.extraInfo = model
            }
            if dict.keys.contains("ReqId") {
                self.reqId = dict["ReqId"] as! String
            }
            if dict.keys.contains("Result") {
                var tmp : [DescribeUrlModerationResultResponseBody.Data.Result] = []
                for v in dict["Result"] as! [Any] {
                    var model = DescribeUrlModerationResultResponseBody.Data.Result()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.result = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeUrlModerationResultResponseBody.Data?

    public var msg: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeUrlModerationResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeUrlModerationResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUrlModerationResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeUrlModerationResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FileModerationRequest : Tea.TeaModel {
    public var service: String?

    public var serviceParameters: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Service") {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class FileModerationResponseBody : Tea.TeaModel {
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
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: FileModerationResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = FileModerationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FileModerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FileModerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = FileModerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImageAsyncModerationRequest : Tea.TeaModel {
    public var service: String?

    public var serviceParameters: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Service") {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class ImageAsyncModerationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dataId: String?

        public var reqId: String?

        public override init() {
            super.init()
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
            if self.reqId != nil {
                map["ReqId"] = self.reqId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("ReqId") {
                self.reqId = dict["ReqId"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: ImageAsyncModerationResponseBody.Data?

    public var msg: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ImageAsyncModerationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ImageAsyncModerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImageAsyncModerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ImageAsyncModerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImageBatchModerationRequest : Tea.TeaModel {
    public var serviceParameters: String?

    public var services: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        if self.services != nil {
            map["Services"] = self.services!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceParameters") {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
        if dict.keys.contains("Services") {
            self.services = dict["Services"] as! String
        }
    }
}

public class ImageBatchModerationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var confidence: Double?

            public var description_: String?

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
                if self.confidence != nil {
                    map["Confidence"] = self.confidence!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Confidence") {
                    self.confidence = dict["Confidence"] as! Double
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
            }
        }
        public class Results : Tea.TeaModel {
            public class Ext : Tea.TeaModel {
                public class CustomImage : Tea.TeaModel {
                    public var imageId: String?

                    public var libId: String?

                    public var libName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.imageId != nil {
                            map["ImageId"] = self.imageId!
                        }
                        if self.libId != nil {
                            map["LibId"] = self.libId!
                        }
                        if self.libName != nil {
                            map["LibName"] = self.libName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ImageId") {
                            self.imageId = dict["ImageId"] as! String
                        }
                        if dict.keys.contains("LibId") {
                            self.libId = dict["LibId"] as! String
                        }
                        if dict.keys.contains("LibName") {
                            self.libName = dict["LibName"] as! String
                        }
                    }
                }
                public class LogoData : Tea.TeaModel {
                    public class Location : Tea.TeaModel {
                        public var h: Int32?

                        public var w: Int32?

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
                            if self.h != nil {
                                map["H"] = self.h!
                            }
                            if self.w != nil {
                                map["W"] = self.w!
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
                            if dict.keys.contains("H") {
                                self.h = dict["H"] as! Int32
                            }
                            if dict.keys.contains("W") {
                                self.w = dict["W"] as! Int32
                            }
                            if dict.keys.contains("X") {
                                self.x = dict["X"] as! Int32
                            }
                            if dict.keys.contains("Y") {
                                self.y = dict["Y"] as! Int32
                            }
                        }
                    }
                    public class Logo : Tea.TeaModel {
                        public var confidence: Double?

                        public var label: String?

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
                            if self.confidence != nil {
                                map["Confidence"] = self.confidence!
                            }
                            if self.label != nil {
                                map["Label"] = self.label!
                            }
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Confidence") {
                                self.confidence = dict["Confidence"] as! Double
                            }
                            if dict.keys.contains("Label") {
                                self.label = dict["Label"] as! String
                            }
                            if dict.keys.contains("Name") {
                                self.name = dict["Name"] as! String
                            }
                        }
                    }
                    public var location: ImageBatchModerationResponseBody.Data.Results.Ext.LogoData.Location?

                    public var logo: [ImageBatchModerationResponseBody.Data.Results.Ext.LogoData.Logo]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.location?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.location != nil {
                            map["Location"] = self.location?.toMap()
                        }
                        if self.logo != nil {
                            var tmp : [Any] = []
                            for k in self.logo! {
                                tmp.append(k.toMap())
                            }
                            map["Logo"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Location") {
                            var model = ImageBatchModerationResponseBody.Data.Results.Ext.LogoData.Location()
                            model.fromMap(dict["Location"] as! [String: Any])
                            self.location = model
                        }
                        if dict.keys.contains("Logo") {
                            var tmp : [ImageBatchModerationResponseBody.Data.Results.Ext.LogoData.Logo] = []
                            for v in dict["Logo"] as! [Any] {
                                var model = ImageBatchModerationResponseBody.Data.Results.Ext.LogoData.Logo()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.logo = tmp
                        }
                    }
                }
                public class PublicFigure : Tea.TeaModel {
                    public class Location : Tea.TeaModel {
                        public var h: Int32?

                        public var w: Int32?

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
                            if self.h != nil {
                                map["H"] = self.h!
                            }
                            if self.w != nil {
                                map["W"] = self.w!
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
                            if dict.keys.contains("H") {
                                self.h = dict["H"] as! Int32
                            }
                            if dict.keys.contains("W") {
                                self.w = dict["W"] as! Int32
                            }
                            if dict.keys.contains("X") {
                                self.x = dict["X"] as! Int32
                            }
                            if dict.keys.contains("Y") {
                                self.y = dict["Y"] as! Int32
                            }
                        }
                    }
                    public var figureId: String?

                    public var figureName: String?

                    public var location: [ImageBatchModerationResponseBody.Data.Results.Ext.PublicFigure.Location]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.figureId != nil {
                            map["FigureId"] = self.figureId!
                        }
                        if self.figureName != nil {
                            map["FigureName"] = self.figureName!
                        }
                        if self.location != nil {
                            var tmp : [Any] = []
                            for k in self.location! {
                                tmp.append(k.toMap())
                            }
                            map["Location"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("FigureId") {
                            self.figureId = dict["FigureId"] as! String
                        }
                        if dict.keys.contains("FigureName") {
                            self.figureName = dict["FigureName"] as! String
                        }
                        if dict.keys.contains("Location") {
                            var tmp : [ImageBatchModerationResponseBody.Data.Results.Ext.PublicFigure.Location] = []
                            for v in dict["Location"] as! [Any] {
                                var model = ImageBatchModerationResponseBody.Data.Results.Ext.PublicFigure.Location()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.location = tmp
                        }
                    }
                }
                public class TextInImage : Tea.TeaModel {
                    public class CustomText : Tea.TeaModel {
                        public var keyWords: String?

                        public var libId: String?

                        public var libName: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.keyWords != nil {
                                map["KeyWords"] = self.keyWords!
                            }
                            if self.libId != nil {
                                map["LibId"] = self.libId!
                            }
                            if self.libName != nil {
                                map["LibName"] = self.libName!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("KeyWords") {
                                self.keyWords = dict["KeyWords"] as! String
                            }
                            if dict.keys.contains("LibId") {
                                self.libId = dict["LibId"] as! String
                            }
                            if dict.keys.contains("LibName") {
                                self.libName = dict["LibName"] as! String
                            }
                        }
                    }
                    public class OcrResult : Tea.TeaModel {
                        public class Location : Tea.TeaModel {
                            public var h: Int32?

                            public var w: Int32?

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
                                if self.h != nil {
                                    map["H"] = self.h!
                                }
                                if self.w != nil {
                                    map["W"] = self.w!
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
                                if dict.keys.contains("H") {
                                    self.h = dict["H"] as! Int32
                                }
                                if dict.keys.contains("W") {
                                    self.w = dict["W"] as! Int32
                                }
                                if dict.keys.contains("X") {
                                    self.x = dict["X"] as! Int32
                                }
                                if dict.keys.contains("Y") {
                                    self.y = dict["Y"] as! Int32
                                }
                            }
                        }
                        public var location: ImageBatchModerationResponseBody.Data.Results.Ext.TextInImage.OcrResult.Location?

                        public var text: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.location?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.location != nil {
                                map["Location"] = self.location?.toMap()
                            }
                            if self.text != nil {
                                map["Text"] = self.text!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Location") {
                                var model = ImageBatchModerationResponseBody.Data.Results.Ext.TextInImage.OcrResult.Location()
                                model.fromMap(dict["Location"] as! [String: Any])
                                self.location = model
                            }
                            if dict.keys.contains("Text") {
                                self.text = dict["Text"] as! String
                            }
                        }
                    }
                    public var customText: [ImageBatchModerationResponseBody.Data.Results.Ext.TextInImage.CustomText]?

                    public var ocrResult: [ImageBatchModerationResponseBody.Data.Results.Ext.TextInImage.OcrResult]?

                    public var riskWord: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.customText != nil {
                            var tmp : [Any] = []
                            for k in self.customText! {
                                tmp.append(k.toMap())
                            }
                            map["CustomText"] = tmp
                        }
                        if self.ocrResult != nil {
                            var tmp : [Any] = []
                            for k in self.ocrResult! {
                                tmp.append(k.toMap())
                            }
                            map["OcrResult"] = tmp
                        }
                        if self.riskWord != nil {
                            map["RiskWord"] = self.riskWord!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CustomText") {
                            var tmp : [ImageBatchModerationResponseBody.Data.Results.Ext.TextInImage.CustomText] = []
                            for v in dict["CustomText"] as! [Any] {
                                var model = ImageBatchModerationResponseBody.Data.Results.Ext.TextInImage.CustomText()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.customText = tmp
                        }
                        if dict.keys.contains("OcrResult") {
                            var tmp : [ImageBatchModerationResponseBody.Data.Results.Ext.TextInImage.OcrResult] = []
                            for v in dict["OcrResult"] as! [Any] {
                                var model = ImageBatchModerationResponseBody.Data.Results.Ext.TextInImage.OcrResult()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.ocrResult = tmp
                        }
                        if dict.keys.contains("RiskWord") {
                            self.riskWord = dict["RiskWord"] as! [String]
                        }
                    }
                }
                public var customImage: [ImageBatchModerationResponseBody.Data.Results.Ext.CustomImage]?

                public var logoData: ImageBatchModerationResponseBody.Data.Results.Ext.LogoData?

                public var publicFigure: [ImageBatchModerationResponseBody.Data.Results.Ext.PublicFigure]?

                public var textInImage: ImageBatchModerationResponseBody.Data.Results.Ext.TextInImage?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.logoData?.validate()
                    try self.textInImage?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.customImage != nil {
                        var tmp : [Any] = []
                        for k in self.customImage! {
                            tmp.append(k.toMap())
                        }
                        map["CustomImage"] = tmp
                    }
                    if self.logoData != nil {
                        map["LogoData"] = self.logoData?.toMap()
                    }
                    if self.publicFigure != nil {
                        var tmp : [Any] = []
                        for k in self.publicFigure! {
                            tmp.append(k.toMap())
                        }
                        map["PublicFigure"] = tmp
                    }
                    if self.textInImage != nil {
                        map["TextInImage"] = self.textInImage?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CustomImage") {
                        var tmp : [ImageBatchModerationResponseBody.Data.Results.Ext.CustomImage] = []
                        for v in dict["CustomImage"] as! [Any] {
                            var model = ImageBatchModerationResponseBody.Data.Results.Ext.CustomImage()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.customImage = tmp
                    }
                    if dict.keys.contains("LogoData") {
                        var model = ImageBatchModerationResponseBody.Data.Results.Ext.LogoData()
                        model.fromMap(dict["LogoData"] as! [String: Any])
                        self.logoData = model
                    }
                    if dict.keys.contains("PublicFigure") {
                        var tmp : [ImageBatchModerationResponseBody.Data.Results.Ext.PublicFigure] = []
                        for v in dict["PublicFigure"] as! [Any] {
                            var model = ImageBatchModerationResponseBody.Data.Results.Ext.PublicFigure()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.publicFigure = tmp
                    }
                    if dict.keys.contains("TextInImage") {
                        var model = ImageBatchModerationResponseBody.Data.Results.Ext.TextInImage()
                        model.fromMap(dict["TextInImage"] as! [String: Any])
                        self.textInImage = model
                    }
                }
            }
            public class Result : Tea.TeaModel {
                public var confidence: Double?

                public var description_: String?

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
                    if self.confidence != nil {
                        map["Confidence"] = self.confidence!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Confidence") {
                        self.confidence = dict["Confidence"] as! Double
                    }
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("Label") {
                        self.label = dict["Label"] as! String
                    }
                }
            }
            public var ext: ImageBatchModerationResponseBody.Data.Results.Ext?

            public var result: [ImageBatchModerationResponseBody.Data.Results.Result]?

            public var riskLevel: String?

            public var service: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.ext?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ext != nil {
                    map["Ext"] = self.ext?.toMap()
                }
                if self.result != nil {
                    var tmp : [Any] = []
                    for k in self.result! {
                        tmp.append(k.toMap())
                    }
                    map["Result"] = tmp
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                if self.service != nil {
                    map["Service"] = self.service!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Ext") {
                    var model = ImageBatchModerationResponseBody.Data.Results.Ext()
                    model.fromMap(dict["Ext"] as! [String: Any])
                    self.ext = model
                }
                if dict.keys.contains("Result") {
                    var tmp : [ImageBatchModerationResponseBody.Data.Results.Result] = []
                    for v in dict["Result"] as! [Any] {
                        var model = ImageBatchModerationResponseBody.Data.Results.Result()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.result = tmp
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! String
                }
                if dict.keys.contains("Service") {
                    self.service = dict["Service"] as! String
                }
            }
        }
        public var dataId: String?

        public var result: [ImageBatchModerationResponseBody.Data.Result]?

        public var results: [ImageBatchModerationResponseBody.Data.Results]?

        public var riskLevel: String?

        public override init() {
            super.init()
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
            if self.result != nil {
                var tmp : [Any] = []
                for k in self.result! {
                    tmp.append(k.toMap())
                }
                map["Result"] = tmp
            }
            if self.results != nil {
                var tmp : [Any] = []
                for k in self.results! {
                    tmp.append(k.toMap())
                }
                map["Results"] = tmp
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("Result") {
                var tmp : [ImageBatchModerationResponseBody.Data.Result] = []
                for v in dict["Result"] as! [Any] {
                    var model = ImageBatchModerationResponseBody.Data.Result()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.result = tmp
            }
            if dict.keys.contains("Results") {
                var tmp : [ImageBatchModerationResponseBody.Data.Results] = []
                for v in dict["Results"] as! [Any] {
                    var model = ImageBatchModerationResponseBody.Data.Results()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.results = tmp
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: ImageBatchModerationResponseBody.Data?

    public var msg: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ImageBatchModerationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ImageBatchModerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImageBatchModerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ImageBatchModerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImageModerationRequest : Tea.TeaModel {
    public var service: String?

    public var serviceParameters: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Service") {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class ImageModerationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Ext : Tea.TeaModel {
            public class CustomImage : Tea.TeaModel {
                public var imageId: String?

                public var libId: String?

                public var libName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.imageId != nil {
                        map["ImageId"] = self.imageId!
                    }
                    if self.libId != nil {
                        map["LibId"] = self.libId!
                    }
                    if self.libName != nil {
                        map["LibName"] = self.libName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ImageId") {
                        self.imageId = dict["ImageId"] as! String
                    }
                    if dict.keys.contains("LibId") {
                        self.libId = dict["LibId"] as! String
                    }
                    if dict.keys.contains("LibName") {
                        self.libName = dict["LibName"] as! String
                    }
                }
            }
            public class FaceData : Tea.TeaModel {
                public class Bang : Tea.TeaModel {
                    public var confidence: Double?

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
                        if self.confidence != nil {
                            map["Confidence"] = self.confidence!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Confidence") {
                            self.confidence = dict["Confidence"] as! Double
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public class Gender : Tea.TeaModel {
                    public var confidence: Double?

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
                        if self.confidence != nil {
                            map["Confidence"] = self.confidence!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Confidence") {
                            self.confidence = dict["Confidence"] as! Double
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public class Hairstyle : Tea.TeaModel {
                    public var confidence: Double?

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
                        if self.confidence != nil {
                            map["Confidence"] = self.confidence!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Confidence") {
                            self.confidence = dict["Confidence"] as! Double
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public class Hat : Tea.TeaModel {
                    public var confidence: Double?

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
                        if self.confidence != nil {
                            map["Confidence"] = self.confidence!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Confidence") {
                            self.confidence = dict["Confidence"] as! Double
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public class Location : Tea.TeaModel {
                    public var h: Int32?

                    public var w: Int32?

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
                        if self.h != nil {
                            map["H"] = self.h!
                        }
                        if self.w != nil {
                            map["W"] = self.w!
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
                        if dict.keys.contains("H") {
                            self.h = dict["H"] as! Int32
                        }
                        if dict.keys.contains("W") {
                            self.w = dict["W"] as! Int32
                        }
                        if dict.keys.contains("X") {
                            self.x = dict["X"] as! Int32
                        }
                        if dict.keys.contains("Y") {
                            self.y = dict["Y"] as! Int32
                        }
                    }
                }
                public class Mask : Tea.TeaModel {
                    public var confidence: Double?

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
                        if self.confidence != nil {
                            map["Confidence"] = self.confidence!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Confidence") {
                            self.confidence = dict["Confidence"] as! Double
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public class Mustache : Tea.TeaModel {
                    public var confidence: Double?

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
                        if self.confidence != nil {
                            map["Confidence"] = self.confidence!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Confidence") {
                            self.confidence = dict["Confidence"] as! Double
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public class Quality : Tea.TeaModel {
                    public var blur: Double?

                    public var integrity: Double?

                    public var pitch: Double?

                    public var roll: Double?

                    public var yaw: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.blur != nil {
                            map["Blur"] = self.blur!
                        }
                        if self.integrity != nil {
                            map["Integrity"] = self.integrity!
                        }
                        if self.pitch != nil {
                            map["Pitch"] = self.pitch!
                        }
                        if self.roll != nil {
                            map["Roll"] = self.roll!
                        }
                        if self.yaw != nil {
                            map["Yaw"] = self.yaw!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Blur") {
                            self.blur = dict["Blur"] as! Double
                        }
                        if dict.keys.contains("Integrity") {
                            self.integrity = dict["Integrity"] as! Double
                        }
                        if dict.keys.contains("Pitch") {
                            self.pitch = dict["Pitch"] as! Double
                        }
                        if dict.keys.contains("Roll") {
                            self.roll = dict["Roll"] as! Double
                        }
                        if dict.keys.contains("Yaw") {
                            self.yaw = dict["Yaw"] as! Double
                        }
                    }
                }
                public var age: Int32?

                public var bang: ImageModerationResponseBody.Data.Ext.FaceData.Bang?

                public var gender: ImageModerationResponseBody.Data.Ext.FaceData.Gender?

                public var glasses: String?

                public var hairstyle: ImageModerationResponseBody.Data.Ext.FaceData.Hairstyle?

                public var hat: ImageModerationResponseBody.Data.Ext.FaceData.Hat?

                public var location: ImageModerationResponseBody.Data.Ext.FaceData.Location?

                public var mask: ImageModerationResponseBody.Data.Ext.FaceData.Mask?

                public var mustache: ImageModerationResponseBody.Data.Ext.FaceData.Mustache?

                public var quality: ImageModerationResponseBody.Data.Ext.FaceData.Quality?

                public var smile: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.bang?.validate()
                    try self.gender?.validate()
                    try self.hairstyle?.validate()
                    try self.hat?.validate()
                    try self.location?.validate()
                    try self.mask?.validate()
                    try self.mustache?.validate()
                    try self.quality?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.age != nil {
                        map["Age"] = self.age!
                    }
                    if self.bang != nil {
                        map["Bang"] = self.bang?.toMap()
                    }
                    if self.gender != nil {
                        map["Gender"] = self.gender?.toMap()
                    }
                    if self.glasses != nil {
                        map["Glasses"] = self.glasses!
                    }
                    if self.hairstyle != nil {
                        map["Hairstyle"] = self.hairstyle?.toMap()
                    }
                    if self.hat != nil {
                        map["Hat"] = self.hat?.toMap()
                    }
                    if self.location != nil {
                        map["Location"] = self.location?.toMap()
                    }
                    if self.mask != nil {
                        map["Mask"] = self.mask?.toMap()
                    }
                    if self.mustache != nil {
                        map["Mustache"] = self.mustache?.toMap()
                    }
                    if self.quality != nil {
                        map["Quality"] = self.quality?.toMap()
                    }
                    if self.smile != nil {
                        map["Smile"] = self.smile!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Age") {
                        self.age = dict["Age"] as! Int32
                    }
                    if dict.keys.contains("Bang") {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData.Bang()
                        model.fromMap(dict["Bang"] as! [String: Any])
                        self.bang = model
                    }
                    if dict.keys.contains("Gender") {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData.Gender()
                        model.fromMap(dict["Gender"] as! [String: Any])
                        self.gender = model
                    }
                    if dict.keys.contains("Glasses") {
                        self.glasses = dict["Glasses"] as! String
                    }
                    if dict.keys.contains("Hairstyle") {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData.Hairstyle()
                        model.fromMap(dict["Hairstyle"] as! [String: Any])
                        self.hairstyle = model
                    }
                    if dict.keys.contains("Hat") {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData.Hat()
                        model.fromMap(dict["Hat"] as! [String: Any])
                        self.hat = model
                    }
                    if dict.keys.contains("Location") {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData.Location()
                        model.fromMap(dict["Location"] as! [String: Any])
                        self.location = model
                    }
                    if dict.keys.contains("Mask") {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData.Mask()
                        model.fromMap(dict["Mask"] as! [String: Any])
                        self.mask = model
                    }
                    if dict.keys.contains("Mustache") {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData.Mustache()
                        model.fromMap(dict["Mustache"] as! [String: Any])
                        self.mustache = model
                    }
                    if dict.keys.contains("Quality") {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData.Quality()
                        model.fromMap(dict["Quality"] as! [String: Any])
                        self.quality = model
                    }
                    if dict.keys.contains("Smile") {
                        self.smile = dict["Smile"] as! Double
                    }
                }
            }
            public class LogoData : Tea.TeaModel {
                public class Location : Tea.TeaModel {
                    public var h: Int32?

                    public var w: Int32?

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
                        if self.h != nil {
                            map["H"] = self.h!
                        }
                        if self.w != nil {
                            map["W"] = self.w!
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
                        if dict.keys.contains("H") {
                            self.h = dict["H"] as! Int32
                        }
                        if dict.keys.contains("W") {
                            self.w = dict["W"] as! Int32
                        }
                        if dict.keys.contains("X") {
                            self.x = dict["X"] as! Int32
                        }
                        if dict.keys.contains("Y") {
                            self.y = dict["Y"] as! Int32
                        }
                    }
                }
                public class Logo : Tea.TeaModel {
                    public var confidence: Double?

                    public var label: String?

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
                        if self.confidence != nil {
                            map["Confidence"] = self.confidence!
                        }
                        if self.label != nil {
                            map["Label"] = self.label!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Confidence") {
                            self.confidence = dict["Confidence"] as! Double
                        }
                        if dict.keys.contains("Label") {
                            self.label = dict["Label"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var location: ImageModerationResponseBody.Data.Ext.LogoData.Location?

                public var logo: [ImageModerationResponseBody.Data.Ext.LogoData.Logo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.location?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.location != nil {
                        map["Location"] = self.location?.toMap()
                    }
                    if self.logo != nil {
                        var tmp : [Any] = []
                        for k in self.logo! {
                            tmp.append(k.toMap())
                        }
                        map["Logo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Location") {
                        var model = ImageModerationResponseBody.Data.Ext.LogoData.Location()
                        model.fromMap(dict["Location"] as! [String: Any])
                        self.location = model
                    }
                    if dict.keys.contains("Logo") {
                        var tmp : [ImageModerationResponseBody.Data.Ext.LogoData.Logo] = []
                        for v in dict["Logo"] as! [Any] {
                            var model = ImageModerationResponseBody.Data.Ext.LogoData.Logo()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.logo = tmp
                    }
                }
            }
            public class OcrResult : Tea.TeaModel {
                public class Location : Tea.TeaModel {
                    public var h: Int32?

                    public var w: Int32?

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
                        if self.h != nil {
                            map["H"] = self.h!
                        }
                        if self.w != nil {
                            map["W"] = self.w!
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
                        if dict.keys.contains("H") {
                            self.h = dict["H"] as! Int32
                        }
                        if dict.keys.contains("W") {
                            self.w = dict["W"] as! Int32
                        }
                        if dict.keys.contains("X") {
                            self.x = dict["X"] as! Int32
                        }
                        if dict.keys.contains("Y") {
                            self.y = dict["Y"] as! Int32
                        }
                    }
                }
                public var location: ImageModerationResponseBody.Data.Ext.OcrResult.Location?

                public var text: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.location?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.location != nil {
                        map["Location"] = self.location?.toMap()
                    }
                    if self.text != nil {
                        map["Text"] = self.text!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Location") {
                        var model = ImageModerationResponseBody.Data.Ext.OcrResult.Location()
                        model.fromMap(dict["Location"] as! [String: Any])
                        self.location = model
                    }
                    if dict.keys.contains("Text") {
                        self.text = dict["Text"] as! String
                    }
                }
            }
            public class PublicFigure : Tea.TeaModel {
                public class Location : Tea.TeaModel {
                    public var h: Int32?

                    public var w: Int32?

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
                        if self.h != nil {
                            map["H"] = self.h!
                        }
                        if self.w != nil {
                            map["W"] = self.w!
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
                        if dict.keys.contains("H") {
                            self.h = dict["H"] as! Int32
                        }
                        if dict.keys.contains("W") {
                            self.w = dict["W"] as! Int32
                        }
                        if dict.keys.contains("X") {
                            self.x = dict["X"] as! Int32
                        }
                        if dict.keys.contains("Y") {
                            self.y = dict["Y"] as! Int32
                        }
                    }
                }
                public var figureId: String?

                public var figureName: String?

                public var location: [ImageModerationResponseBody.Data.Ext.PublicFigure.Location]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.figureId != nil {
                        map["FigureId"] = self.figureId!
                    }
                    if self.figureName != nil {
                        map["FigureName"] = self.figureName!
                    }
                    if self.location != nil {
                        var tmp : [Any] = []
                        for k in self.location! {
                            tmp.append(k.toMap())
                        }
                        map["Location"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FigureId") {
                        self.figureId = dict["FigureId"] as! String
                    }
                    if dict.keys.contains("FigureName") {
                        self.figureName = dict["FigureName"] as! String
                    }
                    if dict.keys.contains("Location") {
                        var tmp : [ImageModerationResponseBody.Data.Ext.PublicFigure.Location] = []
                        for v in dict["Location"] as! [Any] {
                            var model = ImageModerationResponseBody.Data.Ext.PublicFigure.Location()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.location = tmp
                    }
                }
            }
            public class Recognition : Tea.TeaModel {
                public var classification: String?

                public var confidence: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.classification != nil {
                        map["Classification"] = self.classification!
                    }
                    if self.confidence != nil {
                        map["Confidence"] = self.confidence!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Classification") {
                        self.classification = dict["Classification"] as! String
                    }
                    if dict.keys.contains("Confidence") {
                        self.confidence = dict["Confidence"] as! Double
                    }
                }
            }
            public class TextInImage : Tea.TeaModel {
                public class CustomText : Tea.TeaModel {
                    public var keyWords: String?

                    public var libId: String?

                    public var libName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.keyWords != nil {
                            map["KeyWords"] = self.keyWords!
                        }
                        if self.libId != nil {
                            map["LibId"] = self.libId!
                        }
                        if self.libName != nil {
                            map["LibName"] = self.libName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("KeyWords") {
                            self.keyWords = dict["KeyWords"] as! String
                        }
                        if dict.keys.contains("LibId") {
                            self.libId = dict["LibId"] as! String
                        }
                        if dict.keys.contains("LibName") {
                            self.libName = dict["LibName"] as! String
                        }
                    }
                }
                public class OcrResult : Tea.TeaModel {
                    public class Location : Tea.TeaModel {
                        public var h: Int32?

                        public var w: Int32?

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
                            if self.h != nil {
                                map["H"] = self.h!
                            }
                            if self.w != nil {
                                map["W"] = self.w!
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
                            if dict.keys.contains("H") {
                                self.h = dict["H"] as! Int32
                            }
                            if dict.keys.contains("W") {
                                self.w = dict["W"] as! Int32
                            }
                            if dict.keys.contains("X") {
                                self.x = dict["X"] as! Int32
                            }
                            if dict.keys.contains("Y") {
                                self.y = dict["Y"] as! Int32
                            }
                        }
                    }
                    public var location: ImageModerationResponseBody.Data.Ext.TextInImage.OcrResult.Location?

                    public var text: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.location?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.location != nil {
                            map["Location"] = self.location?.toMap()
                        }
                        if self.text != nil {
                            map["Text"] = self.text!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Location") {
                            var model = ImageModerationResponseBody.Data.Ext.TextInImage.OcrResult.Location()
                            model.fromMap(dict["Location"] as! [String: Any])
                            self.location = model
                        }
                        if dict.keys.contains("Text") {
                            self.text = dict["Text"] as! String
                        }
                    }
                }
                public var customText: [ImageModerationResponseBody.Data.Ext.TextInImage.CustomText]?

                public var ocrResult: [ImageModerationResponseBody.Data.Ext.TextInImage.OcrResult]?

                public var riskWord: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.customText != nil {
                        var tmp : [Any] = []
                        for k in self.customText! {
                            tmp.append(k.toMap())
                        }
                        map["CustomText"] = tmp
                    }
                    if self.ocrResult != nil {
                        var tmp : [Any] = []
                        for k in self.ocrResult! {
                            tmp.append(k.toMap())
                        }
                        map["OcrResult"] = tmp
                    }
                    if self.riskWord != nil {
                        map["RiskWord"] = self.riskWord!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CustomText") {
                        var tmp : [ImageModerationResponseBody.Data.Ext.TextInImage.CustomText] = []
                        for v in dict["CustomText"] as! [Any] {
                            var model = ImageModerationResponseBody.Data.Ext.TextInImage.CustomText()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.customText = tmp
                    }
                    if dict.keys.contains("OcrResult") {
                        var tmp : [ImageModerationResponseBody.Data.Ext.TextInImage.OcrResult] = []
                        for v in dict["OcrResult"] as! [Any] {
                            var model = ImageModerationResponseBody.Data.Ext.TextInImage.OcrResult()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.ocrResult = tmp
                    }
                    if dict.keys.contains("RiskWord") {
                        self.riskWord = dict["RiskWord"] as! [String]
                    }
                }
            }
            public class VlContent : Tea.TeaModel {
                public var outputText: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.outputText != nil {
                        map["OutputText"] = self.outputText!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("OutputText") {
                        self.outputText = dict["OutputText"] as! String
                    }
                }
            }
            public var customImage: [ImageModerationResponseBody.Data.Ext.CustomImage]?

            public var faceData: [ImageModerationResponseBody.Data.Ext.FaceData]?

            public var logoData: [ImageModerationResponseBody.Data.Ext.LogoData]?

            public var ocrResult: [ImageModerationResponseBody.Data.Ext.OcrResult]?

            public var publicFigure: [ImageModerationResponseBody.Data.Ext.PublicFigure]?

            public var recognition: [ImageModerationResponseBody.Data.Ext.Recognition]?

            public var textInImage: ImageModerationResponseBody.Data.Ext.TextInImage?

            public var vlContent: ImageModerationResponseBody.Data.Ext.VlContent?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.textInImage?.validate()
                try self.vlContent?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.customImage != nil {
                    var tmp : [Any] = []
                    for k in self.customImage! {
                        tmp.append(k.toMap())
                    }
                    map["CustomImage"] = tmp
                }
                if self.faceData != nil {
                    var tmp : [Any] = []
                    for k in self.faceData! {
                        tmp.append(k.toMap())
                    }
                    map["FaceData"] = tmp
                }
                if self.logoData != nil {
                    var tmp : [Any] = []
                    for k in self.logoData! {
                        tmp.append(k.toMap())
                    }
                    map["LogoData"] = tmp
                }
                if self.ocrResult != nil {
                    var tmp : [Any] = []
                    for k in self.ocrResult! {
                        tmp.append(k.toMap())
                    }
                    map["OcrResult"] = tmp
                }
                if self.publicFigure != nil {
                    var tmp : [Any] = []
                    for k in self.publicFigure! {
                        tmp.append(k.toMap())
                    }
                    map["PublicFigure"] = tmp
                }
                if self.recognition != nil {
                    var tmp : [Any] = []
                    for k in self.recognition! {
                        tmp.append(k.toMap())
                    }
                    map["Recognition"] = tmp
                }
                if self.textInImage != nil {
                    map["TextInImage"] = self.textInImage?.toMap()
                }
                if self.vlContent != nil {
                    map["VlContent"] = self.vlContent?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CustomImage") {
                    var tmp : [ImageModerationResponseBody.Data.Ext.CustomImage] = []
                    for v in dict["CustomImage"] as! [Any] {
                        var model = ImageModerationResponseBody.Data.Ext.CustomImage()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.customImage = tmp
                }
                if dict.keys.contains("FaceData") {
                    var tmp : [ImageModerationResponseBody.Data.Ext.FaceData] = []
                    for v in dict["FaceData"] as! [Any] {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.faceData = tmp
                }
                if dict.keys.contains("LogoData") {
                    var tmp : [ImageModerationResponseBody.Data.Ext.LogoData] = []
                    for v in dict["LogoData"] as! [Any] {
                        var model = ImageModerationResponseBody.Data.Ext.LogoData()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.logoData = tmp
                }
                if dict.keys.contains("OcrResult") {
                    var tmp : [ImageModerationResponseBody.Data.Ext.OcrResult] = []
                    for v in dict["OcrResult"] as! [Any] {
                        var model = ImageModerationResponseBody.Data.Ext.OcrResult()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.ocrResult = tmp
                }
                if dict.keys.contains("PublicFigure") {
                    var tmp : [ImageModerationResponseBody.Data.Ext.PublicFigure] = []
                    for v in dict["PublicFigure"] as! [Any] {
                        var model = ImageModerationResponseBody.Data.Ext.PublicFigure()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.publicFigure = tmp
                }
                if dict.keys.contains("Recognition") {
                    var tmp : [ImageModerationResponseBody.Data.Ext.Recognition] = []
                    for v in dict["Recognition"] as! [Any] {
                        var model = ImageModerationResponseBody.Data.Ext.Recognition()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.recognition = tmp
                }
                if dict.keys.contains("TextInImage") {
                    var model = ImageModerationResponseBody.Data.Ext.TextInImage()
                    model.fromMap(dict["TextInImage"] as! [String: Any])
                    self.textInImage = model
                }
                if dict.keys.contains("VlContent") {
                    var model = ImageModerationResponseBody.Data.Ext.VlContent()
                    model.fromMap(dict["VlContent"] as! [String: Any])
                    self.vlContent = model
                }
            }
        }
        public class Result : Tea.TeaModel {
            public var confidence: Double?

            public var description_: String?

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
                if self.confidence != nil {
                    map["Confidence"] = self.confidence!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Confidence") {
                    self.confidence = dict["Confidence"] as! Double
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
            }
        }
        public var dataId: String?

        public var ext: ImageModerationResponseBody.Data.Ext?

        public var result: [ImageModerationResponseBody.Data.Result]?

        public var riskLevel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ext?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.ext != nil {
                map["Ext"] = self.ext?.toMap()
            }
            if self.result != nil {
                var tmp : [Any] = []
                for k in self.result! {
                    tmp.append(k.toMap())
                }
                map["Result"] = tmp
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("Ext") {
                var model = ImageModerationResponseBody.Data.Ext()
                model.fromMap(dict["Ext"] as! [String: Any])
                self.ext = model
            }
            if dict.keys.contains("Result") {
                var tmp : [ImageModerationResponseBody.Data.Result] = []
                for v in dict["Result"] as! [Any] {
                    var model = ImageModerationResponseBody.Data.Result()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.result = tmp
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: ImageModerationResponseBody.Data?

    public var msg: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ImageModerationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ImageModerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImageModerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ImageModerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TextModerationRequest : Tea.TeaModel {
    public var service: String?

    public var serviceParameters: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Service") {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class TextModerationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountId: String?

        public var deviceId: String?

        public var labels: String?

        public var reason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            if self.deviceId != nil {
                map["deviceId"] = self.deviceId!
            }
            if self.labels != nil {
                map["labels"] = self.labels!
            }
            if self.reason != nil {
                map["reason"] = self.reason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") {
                self.accountId = dict["accountId"] as! String
            }
            if dict.keys.contains("deviceId") {
                self.deviceId = dict["deviceId"] as! String
            }
            if dict.keys.contains("labels") {
                self.labels = dict["labels"] as! String
            }
            if dict.keys.contains("reason") {
                self.reason = dict["reason"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: TextModerationResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = TextModerationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TextModerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TextModerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = TextModerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TextModerationPlusRequest : Tea.TeaModel {
    public var service: String?

    public var serviceParameters: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Service") {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class TextModerationPlusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Advice : Tea.TeaModel {
            public var answer: String?

            public var hitLabel: String?

            public var hitLibName: String?

            public override init() {
                super.init()
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
                    map["Answer"] = self.answer!
                }
                if self.hitLabel != nil {
                    map["HitLabel"] = self.hitLabel!
                }
                if self.hitLibName != nil {
                    map["HitLibName"] = self.hitLibName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Answer") {
                    self.answer = dict["Answer"] as! String
                }
                if dict.keys.contains("HitLabel") {
                    self.hitLabel = dict["HitLabel"] as! String
                }
                if dict.keys.contains("HitLibName") {
                    self.hitLibName = dict["HitLibName"] as! String
                }
            }
        }
        public class Result : Tea.TeaModel {
            public class CustomizedHit : Tea.TeaModel {
                public var keyWords: String?

                public var libName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.keyWords != nil {
                        map["KeyWords"] = self.keyWords!
                    }
                    if self.libName != nil {
                        map["LibName"] = self.libName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("KeyWords") {
                        self.keyWords = dict["KeyWords"] as! String
                    }
                    if dict.keys.contains("LibName") {
                        self.libName = dict["LibName"] as! String
                    }
                }
            }
            public var confidence: Double?

            public var customizedHit: [TextModerationPlusResponseBody.Data.Result.CustomizedHit]?

            public var description_: String?

            public var label: String?

            public var riskWords: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.confidence != nil {
                    map["Confidence"] = self.confidence!
                }
                if self.customizedHit != nil {
                    var tmp : [Any] = []
                    for k in self.customizedHit! {
                        tmp.append(k.toMap())
                    }
                    map["CustomizedHit"] = tmp
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.riskWords != nil {
                    map["RiskWords"] = self.riskWords!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Confidence") {
                    self.confidence = dict["Confidence"] as! Double
                }
                if dict.keys.contains("CustomizedHit") {
                    var tmp : [TextModerationPlusResponseBody.Data.Result.CustomizedHit] = []
                    for v in dict["CustomizedHit"] as! [Any] {
                        var model = TextModerationPlusResponseBody.Data.Result.CustomizedHit()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.customizedHit = tmp
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("RiskWords") {
                    self.riskWords = dict["RiskWords"] as! String
                }
            }
        }
        public var advice: [TextModerationPlusResponseBody.Data.Advice]?

        public var result: [TextModerationPlusResponseBody.Data.Result]?

        public var riskLevel: String?

        public var score: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.advice != nil {
                var tmp : [Any] = []
                for k in self.advice! {
                    tmp.append(k.toMap())
                }
                map["Advice"] = tmp
            }
            if self.result != nil {
                var tmp : [Any] = []
                for k in self.result! {
                    tmp.append(k.toMap())
                }
                map["Result"] = tmp
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Advice") {
                var tmp : [TextModerationPlusResponseBody.Data.Advice] = []
                for v in dict["Advice"] as! [Any] {
                    var model = TextModerationPlusResponseBody.Data.Advice()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.advice = tmp
            }
            if dict.keys.contains("Result") {
                var tmp : [TextModerationPlusResponseBody.Data.Result] = []
                for v in dict["Result"] as! [Any] {
                    var model = TextModerationPlusResponseBody.Data.Result()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.result = tmp
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! String
            }
            if dict.keys.contains("Score") {
                self.score = dict["Score"] as! Double
            }
        }
    }
    public var code: Int32?

    public var data: TextModerationPlusResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = TextModerationPlusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TextModerationPlusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TextModerationPlusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = TextModerationPlusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UrlAsyncModerationRequest : Tea.TeaModel {
    public var service: String?

    public var serviceParameters: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Service") {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class UrlAsyncModerationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dataId: String?

        public var reqId: String?

        public override init() {
            super.init()
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
            if self.reqId != nil {
                map["ReqId"] = self.reqId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("ReqId") {
                self.reqId = dict["ReqId"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: UrlAsyncModerationResponseBody.Data?

    public var msg: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = UrlAsyncModerationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UrlAsyncModerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UrlAsyncModerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UrlAsyncModerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VideoModerationRequest : Tea.TeaModel {
    public var service: String?

    public var serviceParameters: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Service") {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class VideoModerationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dataId: String?

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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: VideoModerationResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = VideoModerationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VideoModerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VideoModerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = VideoModerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VideoModerationCancelRequest : Tea.TeaModel {
    public var service: String?

    public var serviceParameters: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Service") {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class VideoModerationCancelResponseBody : Tea.TeaModel {
    public var code: Int32?

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
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VideoModerationCancelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VideoModerationCancelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = VideoModerationCancelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VideoModerationResultRequest : Tea.TeaModel {
    public var service: String?

    public var serviceParameters: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Service") {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class VideoModerationResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AudioResult : Tea.TeaModel {
            public class AudioSummarys : Tea.TeaModel {
                public var label: String?

                public var labelSum: Int32?

                public override init() {
                    super.init()
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
                    if self.labelSum != nil {
                        map["LabelSum"] = self.labelSum!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Label") {
                        self.label = dict["Label"] as! String
                    }
                    if dict.keys.contains("LabelSum") {
                        self.labelSum = dict["LabelSum"] as! Int32
                    }
                }
            }
            public class SliceDetails : Tea.TeaModel {
                public var endTime: Int64?

                public var endTimestamp: Int64?

                public var extend: String?

                public var labels: String?

                public var riskLevel: String?

                public var riskTips: String?

                public var riskWords: String?

                public var score: Double?

                public var startTime: Int64?

                public var startTimestamp: Int64?

                public var text: String?

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
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.endTimestamp != nil {
                        map["EndTimestamp"] = self.endTimestamp!
                    }
                    if self.extend != nil {
                        map["Extend"] = self.extend!
                    }
                    if self.labels != nil {
                        map["Labels"] = self.labels!
                    }
                    if self.riskLevel != nil {
                        map["RiskLevel"] = self.riskLevel!
                    }
                    if self.riskTips != nil {
                        map["RiskTips"] = self.riskTips!
                    }
                    if self.riskWords != nil {
                        map["RiskWords"] = self.riskWords!
                    }
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.startTimestamp != nil {
                        map["StartTimestamp"] = self.startTimestamp!
                    }
                    if self.text != nil {
                        map["Text"] = self.text!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EndTime") {
                        self.endTime = dict["EndTime"] as! Int64
                    }
                    if dict.keys.contains("EndTimestamp") {
                        self.endTimestamp = dict["EndTimestamp"] as! Int64
                    }
                    if dict.keys.contains("Extend") {
                        self.extend = dict["Extend"] as! String
                    }
                    if dict.keys.contains("Labels") {
                        self.labels = dict["Labels"] as! String
                    }
                    if dict.keys.contains("RiskLevel") {
                        self.riskLevel = dict["RiskLevel"] as! String
                    }
                    if dict.keys.contains("RiskTips") {
                        self.riskTips = dict["RiskTips"] as! String
                    }
                    if dict.keys.contains("RiskWords") {
                        self.riskWords = dict["RiskWords"] as! String
                    }
                    if dict.keys.contains("Score") {
                        self.score = dict["Score"] as! Double
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! Int64
                    }
                    if dict.keys.contains("StartTimestamp") {
                        self.startTimestamp = dict["StartTimestamp"] as! Int64
                    }
                    if dict.keys.contains("Text") {
                        self.text = dict["Text"] as! String
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public var audioSummarys: [VideoModerationResultResponseBody.Data.AudioResult.AudioSummarys]?

            public var riskLevel: String?

            public var sliceDetails: [VideoModerationResultResponseBody.Data.AudioResult.SliceDetails]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audioSummarys != nil {
                    var tmp : [Any] = []
                    for k in self.audioSummarys! {
                        tmp.append(k.toMap())
                    }
                    map["AudioSummarys"] = tmp
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                if self.sliceDetails != nil {
                    var tmp : [Any] = []
                    for k in self.sliceDetails! {
                        tmp.append(k.toMap())
                    }
                    map["SliceDetails"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AudioSummarys") {
                    var tmp : [VideoModerationResultResponseBody.Data.AudioResult.AudioSummarys] = []
                    for v in dict["AudioSummarys"] as! [Any] {
                        var model = VideoModerationResultResponseBody.Data.AudioResult.AudioSummarys()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.audioSummarys = tmp
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! String
                }
                if dict.keys.contains("SliceDetails") {
                    var tmp : [VideoModerationResultResponseBody.Data.AudioResult.SliceDetails] = []
                    for v in dict["SliceDetails"] as! [Any] {
                        var model = VideoModerationResultResponseBody.Data.AudioResult.SliceDetails()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.sliceDetails = tmp
                }
            }
        }
        public class FrameResult : Tea.TeaModel {
            public class FrameSummarys : Tea.TeaModel {
                public var description_: String?

                public var label: String?

                public var labelSum: Int32?

                public override init() {
                    super.init()
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
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.labelSum != nil {
                        map["LabelSum"] = self.labelSum!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("Label") {
                        self.label = dict["Label"] as! String
                    }
                    if dict.keys.contains("LabelSum") {
                        self.labelSum = dict["LabelSum"] as! Int32
                    }
                }
            }
            public class Frames : Tea.TeaModel {
                public class Results : Tea.TeaModel {
                    public class CustomImage : Tea.TeaModel {
                        public var imageId: String?

                        public var libId: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.imageId != nil {
                                map["ImageId"] = self.imageId!
                            }
                            if self.libId != nil {
                                map["LibId"] = self.libId!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ImageId") {
                                self.imageId = dict["ImageId"] as! String
                            }
                            if dict.keys.contains("LibId") {
                                self.libId = dict["LibId"] as! String
                            }
                        }
                    }
                    public class PublicFigure : Tea.TeaModel {
                        public var figureId: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.figureId != nil {
                                map["FigureId"] = self.figureId!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("FigureId") {
                                self.figureId = dict["FigureId"] as! String
                            }
                        }
                    }
                    public class Result : Tea.TeaModel {
                        public var confidence: Double?

                        public var description_: String?

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
                            if self.confidence != nil {
                                map["Confidence"] = self.confidence!
                            }
                            if self.description_ != nil {
                                map["Description"] = self.description_!
                            }
                            if self.label != nil {
                                map["Label"] = self.label!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Confidence") {
                                self.confidence = dict["Confidence"] as! Double
                            }
                            if dict.keys.contains("Description") {
                                self.description_ = dict["Description"] as! String
                            }
                            if dict.keys.contains("Label") {
                                self.label = dict["Label"] as! String
                            }
                        }
                    }
                    public var customImage: [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.CustomImage]?

                    public var publicFigure: [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.PublicFigure]?

                    public var result: [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.Result]?

                    public var service: String?

                    public var textInImage: [String: Any]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.customImage != nil {
                            var tmp : [Any] = []
                            for k in self.customImage! {
                                tmp.append(k.toMap())
                            }
                            map["CustomImage"] = tmp
                        }
                        if self.publicFigure != nil {
                            var tmp : [Any] = []
                            for k in self.publicFigure! {
                                tmp.append(k.toMap())
                            }
                            map["PublicFigure"] = tmp
                        }
                        if self.result != nil {
                            var tmp : [Any] = []
                            for k in self.result! {
                                tmp.append(k.toMap())
                            }
                            map["Result"] = tmp
                        }
                        if self.service != nil {
                            map["Service"] = self.service!
                        }
                        if self.textInImage != nil {
                            map["TextInImage"] = self.textInImage!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CustomImage") {
                            var tmp : [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.CustomImage] = []
                            for v in dict["CustomImage"] as! [Any] {
                                var model = VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.CustomImage()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.customImage = tmp
                        }
                        if dict.keys.contains("PublicFigure") {
                            var tmp : [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.PublicFigure] = []
                            for v in dict["PublicFigure"] as! [Any] {
                                var model = VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.PublicFigure()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.publicFigure = tmp
                        }
                        if dict.keys.contains("Result") {
                            var tmp : [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.Result] = []
                            for v in dict["Result"] as! [Any] {
                                var model = VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.Result()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.result = tmp
                        }
                        if dict.keys.contains("Service") {
                            self.service = dict["Service"] as! String
                        }
                        if dict.keys.contains("TextInImage") {
                            self.textInImage = dict["TextInImage"] as! [String: Any]
                        }
                    }
                }
                public var offset: Double?

                public var results: [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results]?

                public var riskLevel: String?

                public var tempUrl: String?

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
                    if self.offset != nil {
                        map["Offset"] = self.offset!
                    }
                    if self.results != nil {
                        var tmp : [Any] = []
                        for k in self.results! {
                            tmp.append(k.toMap())
                        }
                        map["Results"] = tmp
                    }
                    if self.riskLevel != nil {
                        map["RiskLevel"] = self.riskLevel!
                    }
                    if self.tempUrl != nil {
                        map["TempUrl"] = self.tempUrl!
                    }
                    if self.timestamp != nil {
                        map["Timestamp"] = self.timestamp!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Offset") {
                        self.offset = dict["Offset"] as! Double
                    }
                    if dict.keys.contains("Results") {
                        var tmp : [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results] = []
                        for v in dict["Results"] as! [Any] {
                            var model = VideoModerationResultResponseBody.Data.FrameResult.Frames.Results()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.results = tmp
                    }
                    if dict.keys.contains("RiskLevel") {
                        self.riskLevel = dict["RiskLevel"] as! String
                    }
                    if dict.keys.contains("TempUrl") {
                        self.tempUrl = dict["TempUrl"] as! String
                    }
                    if dict.keys.contains("Timestamp") {
                        self.timestamp = dict["Timestamp"] as! Int64
                    }
                }
            }
            public var frameNum: Int32?

            public var frameSummarys: [VideoModerationResultResponseBody.Data.FrameResult.FrameSummarys]?

            public var frames: [VideoModerationResultResponseBody.Data.FrameResult.Frames]?

            public var riskLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.frameNum != nil {
                    map["FrameNum"] = self.frameNum!
                }
                if self.frameSummarys != nil {
                    var tmp : [Any] = []
                    for k in self.frameSummarys! {
                        tmp.append(k.toMap())
                    }
                    map["FrameSummarys"] = tmp
                }
                if self.frames != nil {
                    var tmp : [Any] = []
                    for k in self.frames! {
                        tmp.append(k.toMap())
                    }
                    map["Frames"] = tmp
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FrameNum") {
                    self.frameNum = dict["FrameNum"] as! Int32
                }
                if dict.keys.contains("FrameSummarys") {
                    var tmp : [VideoModerationResultResponseBody.Data.FrameResult.FrameSummarys] = []
                    for v in dict["FrameSummarys"] as! [Any] {
                        var model = VideoModerationResultResponseBody.Data.FrameResult.FrameSummarys()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.frameSummarys = tmp
                }
                if dict.keys.contains("Frames") {
                    var tmp : [VideoModerationResultResponseBody.Data.FrameResult.Frames] = []
                    for v in dict["Frames"] as! [Any] {
                        var model = VideoModerationResultResponseBody.Data.FrameResult.Frames()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.frames = tmp
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! String
                }
            }
        }
        public var audioResult: VideoModerationResultResponseBody.Data.AudioResult?

        public var dataId: String?

        public var frameResult: VideoModerationResultResponseBody.Data.FrameResult?

        public var liveId: String?

        public var riskLevel: String?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.audioResult?.validate()
            try self.frameResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioResult != nil {
                map["AudioResult"] = self.audioResult?.toMap()
            }
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.frameResult != nil {
                map["FrameResult"] = self.frameResult?.toMap()
            }
            if self.liveId != nil {
                map["LiveId"] = self.liveId!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioResult") {
                var model = VideoModerationResultResponseBody.Data.AudioResult()
                model.fromMap(dict["AudioResult"] as! [String: Any])
                self.audioResult = model
            }
            if dict.keys.contains("DataId") {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("FrameResult") {
                var model = VideoModerationResultResponseBody.Data.FrameResult()
                model.fromMap(dict["FrameResult"] as! [String: Any])
                self.frameResult = model
            }
            if dict.keys.contains("LiveId") {
                self.liveId = dict["LiveId"] as! String
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: VideoModerationResultResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = VideoModerationResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VideoModerationResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VideoModerationResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = VideoModerationResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VoiceModerationRequest : Tea.TeaModel {
    public var service: String?

    public var serviceParameters: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Service") {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class VoiceModerationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dataId: String?

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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: VoiceModerationResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = VoiceModerationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VoiceModerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VoiceModerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = VoiceModerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VoiceModerationCancelRequest : Tea.TeaModel {
    public var service: String?

    public var serviceParameters: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Service") {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class VoiceModerationCancelResponseBody : Tea.TeaModel {
    public var code: Int32?

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
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VoiceModerationCancelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VoiceModerationCancelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = VoiceModerationCancelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VoiceModerationResultRequest : Tea.TeaModel {
    public var service: String?

    public var serviceParameters: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Service") {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class VoiceModerationResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SliceDetails : Tea.TeaModel {
            public var endTime: Int64?

            public var endTimestamp: Int64?

            public var extend: String?

            public var labels: String?

            public var originAlgoResult: [String: Any]?

            public var riskLevel: String?

            public var riskTips: String?

            public var riskWords: String?

            public var score: Double?

            public var startTime: Int64?

            public var startTimestamp: Int64?

            public var text: String?

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
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.endTimestamp != nil {
                    map["EndTimestamp"] = self.endTimestamp!
                }
                if self.extend != nil {
                    map["Extend"] = self.extend!
                }
                if self.labels != nil {
                    map["Labels"] = self.labels!
                }
                if self.originAlgoResult != nil {
                    map["OriginAlgoResult"] = self.originAlgoResult!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                if self.riskTips != nil {
                    map["RiskTips"] = self.riskTips!
                }
                if self.riskWords != nil {
                    map["RiskWords"] = self.riskWords!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.startTimestamp != nil {
                    map["StartTimestamp"] = self.startTimestamp!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("EndTimestamp") {
                    self.endTimestamp = dict["EndTimestamp"] as! Int64
                }
                if dict.keys.contains("Extend") {
                    self.extend = dict["Extend"] as! String
                }
                if dict.keys.contains("Labels") {
                    self.labels = dict["Labels"] as! String
                }
                if dict.keys.contains("OriginAlgoResult") {
                    self.originAlgoResult = dict["OriginAlgoResult"] as! [String: Any]
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! String
                }
                if dict.keys.contains("RiskTips") {
                    self.riskTips = dict["RiskTips"] as! String
                }
                if dict.keys.contains("RiskWords") {
                    self.riskWords = dict["RiskWords"] as! String
                }
                if dict.keys.contains("Score") {
                    self.score = dict["Score"] as! Double
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("StartTimestamp") {
                    self.startTimestamp = dict["StartTimestamp"] as! Int64
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var dataId: String?

        public var liveId: String?

        public var riskLevel: String?

        public var sliceDetails: [VoiceModerationResultResponseBody.Data.SliceDetails]?

        public var taskId: String?

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
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.liveId != nil {
                map["LiveId"] = self.liveId!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.sliceDetails != nil {
                var tmp : [Any] = []
                for k in self.sliceDetails! {
                    tmp.append(k.toMap())
                }
                map["SliceDetails"] = tmp
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("LiveId") {
                self.liveId = dict["LiveId"] as! String
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! String
            }
            if dict.keys.contains("SliceDetails") {
                var tmp : [VoiceModerationResultResponseBody.Data.SliceDetails] = []
                for v in dict["SliceDetails"] as! [Any] {
                    var model = VoiceModerationResultResponseBody.Data.SliceDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sliceDetails = tmp
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: VoiceModerationResultResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = VoiceModerationResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VoiceModerationResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VoiceModerationResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = VoiceModerationResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
