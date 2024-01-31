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
        if dict.keys.contains("Service") && dict["Service"] != nil {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
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
                        if dict.keys.contains("Confidence") && dict["Confidence"] != nil {
                            self.confidence = dict["Confidence"] as! Double
                        }
                        if dict.keys.contains("Label") && dict["Label"] != nil {
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
                        if dict.keys.contains("H") && dict["H"] != nil {
                            self.h = dict["H"] as! Int32
                        }
                        if dict.keys.contains("W") && dict["W"] != nil {
                            self.w = dict["W"] as! Int32
                        }
                        if dict.keys.contains("X") && dict["X"] != nil {
                            self.x = dict["X"] as! Int32
                        }
                        if dict.keys.contains("Y") && dict["Y"] != nil {
                            self.y = dict["Y"] as! Int32
                        }
                    }
                }
                public var description_: String?

                public var labelResult: [DescribeFileModerationResultResponseBody.Data.PageResult.ImageResult.LabelResult]?

                public var location: DescribeFileModerationResultResponseBody.Data.PageResult.ImageResult.Location?

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
                    if self.service != nil {
                        map["Service"] = self.service!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Description") && dict["Description"] != nil {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("LabelResult") && dict["LabelResult"] != nil {
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
                    if dict.keys.contains("Location") && dict["Location"] != nil {
                        var model = DescribeFileModerationResultResponseBody.Data.PageResult.ImageResult.Location()
                        model.fromMap(dict["Location"] as! [String: Any])
                        self.location = model
                    }
                    if dict.keys.contains("Service") && dict["Service"] != nil {
                        self.service = dict["Service"] as! String
                    }
                }
            }
            public class TextResult : Tea.TeaModel {
                public var description_: String?

                public var labels: String?

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
                    if dict.keys.contains("Description") && dict["Description"] != nil {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("Labels") && dict["Labels"] != nil {
                        self.labels = dict["Labels"] as! String
                    }
                    if dict.keys.contains("RiskTips") && dict["RiskTips"] != nil {
                        self.riskTips = dict["RiskTips"] as! String
                    }
                    if dict.keys.contains("RiskWords") && dict["RiskWords"] != nil {
                        self.riskWords = dict["RiskWords"] as! String
                    }
                    if dict.keys.contains("Service") && dict["Service"] != nil {
                        self.service = dict["Service"] as! String
                    }
                    if dict.keys.contains("Text") && dict["Text"] != nil {
                        self.text = dict["Text"] as! String
                    }
                    if dict.keys.contains("TextSegment") && dict["TextSegment"] != nil {
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
                if dict.keys.contains("ImageResult") && dict["ImageResult"] != nil {
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
                if dict.keys.contains("ImageUrl") && dict["ImageUrl"] != nil {
                    self.imageUrl = dict["ImageUrl"] as! String
                }
                if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                    self.pageNum = dict["PageNum"] as! Int32
                }
                if dict.keys.contains("TextResult") && dict["TextResult"] != nil {
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
                if dict.keys.contains("TextUrl") && dict["TextUrl"] != nil {
                    self.textUrl = dict["TextUrl"] as! String
                }
            }
        }
        public var dataId: String?

        public var docType: String?

        public var pageResult: [DescribeFileModerationResultResponseBody.Data.PageResult]?

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
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("DocType") && dict["DocType"] != nil {
                self.docType = dict["DocType"] as! String
            }
            if dict.keys.contains("PageResult") && dict["PageResult"] != nil {
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
            if dict.keys.contains("Url") && dict["Url"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeFileModerationResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("ReqId") && dict["ReqId"] != nil {
            self.reqId = dict["ReqId"] as! String
        }
    }
}

public class DescribeImageModerationResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
                if dict.keys.contains("Confidence") && dict["Confidence"] != nil {
                    self.confidence = dict["Confidence"] as! Double
                }
                if dict.keys.contains("Label") && dict["Label"] != nil {
                    self.label = dict["Label"] as! String
                }
            }
        }
        public var dataId: String?

        public var frame: String?

        public var frameNum: Int32?

        public var reqId: String?

        public var result: [DescribeImageModerationResultResponseBody.Data.Result]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("Frame") && dict["Frame"] != nil {
                self.frame = dict["Frame"] as! String
            }
            if dict.keys.contains("FrameNum") && dict["FrameNum"] != nil {
                self.frameNum = dict["FrameNum"] as! Int32
            }
            if dict.keys.contains("ReqId") && dict["ReqId"] != nil {
                self.reqId = dict["ReqId"] as! String
            }
            if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeImageModerationResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InfoType") && dict["InfoType"] != nil {
            self.infoType = dict["InfoType"] as! String
        }
        if dict.keys.contains("ReqId") && dict["ReqId"] != nil {
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
                if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("LibId") && dict["LibId"] != nil {
                    self.libId = dict["LibId"] as! String
                }
                if dict.keys.contains("LibName") && dict["LibName"] != nil {
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
                if dict.keys.contains("FigureId") && dict["FigureId"] != nil {
                    self.figureId = dict["FigureId"] as! String
                }
            }
        }
        public class TextInImage : Tea.TeaModel {
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
                if self.ocrDatas != nil {
                    map["OcrDatas"] = self.ocrDatas!
                }
                if self.riskWords != nil {
                    map["RiskWords"] = self.riskWords!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OcrDatas") && dict["OcrDatas"] != nil {
                    self.ocrDatas = dict["OcrDatas"] as! [String]
                }
                if dict.keys.contains("RiskWords") && dict["RiskWords"] != nil {
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
            if dict.keys.contains("CustomImage") && dict["CustomImage"] != nil {
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
            if dict.keys.contains("PublicFigure") && dict["PublicFigure"] != nil {
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
            if dict.keys.contains("TextInImage") && dict["TextInImage"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeImageResultExtResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
            if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
                self.accessKeyId = dict["AccessKeyId"] as! String
            }
            if dict.keys.contains("AccessKeySecret") && dict["AccessKeySecret"] != nil {
                self.accessKeySecret = dict["AccessKeySecret"] as! String
            }
            if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
                self.bucketName = dict["BucketName"] as! String
            }
            if dict.keys.contains("Expiration") && dict["Expiration"] != nil {
                self.expiration = dict["Expiration"] as! Int32
            }
            if dict.keys.contains("FileNamePrefix") && dict["FileNamePrefix"] != nil {
                self.fileNamePrefix = dict["FileNamePrefix"] as! String
            }
            if dict.keys.contains("OssInternalEndPoint") && dict["OssInternalEndPoint"] != nil {
                self.ossInternalEndPoint = dict["OssInternalEndPoint"] as! String
            }
            if dict.keys.contains("OssInternetEndPoint") && dict["OssInternetEndPoint"] != nil {
                self.ossInternetEndPoint = dict["OssInternetEndPoint"] as! String
            }
            if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeUploadTokenResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("ReqId") && dict["ReqId"] != nil {
            self.reqId = dict["ReqId"] as! String
        }
    }
}

public class DescribeUrlModerationResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ExtraInfo : Tea.TeaModel {
            public var icpNo: String?

            public var icpType: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IcpNo") && dict["IcpNo"] != nil {
                    self.icpNo = dict["IcpNo"] as! String
                }
                if dict.keys.contains("IcpType") && dict["IcpType"] != nil {
                    self.icpType = dict["IcpType"] as! String
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
                if dict.keys.contains("Confidence") && dict["Confidence"] != nil {
                    self.confidence = dict["Confidence"] as! Double
                }
                if dict.keys.contains("Label") && dict["Label"] != nil {
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
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("ExtraInfo") && dict["ExtraInfo"] != nil {
                var model = DescribeUrlModerationResultResponseBody.Data.ExtraInfo()
                model.fromMap(dict["ExtraInfo"] as! [String: Any])
                self.extraInfo = model
            }
            if dict.keys.contains("ReqId") && dict["ReqId"] != nil {
                self.reqId = dict["ReqId"] as! String
            }
            if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeUrlModerationResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Service") && dict["Service"] != nil {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
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
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = FileModerationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Service") && dict["Service"] != nil {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
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
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("ReqId") && dict["ReqId"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ImageAsyncModerationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ImageAsyncModerationResponseBody()
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
        if dict.keys.contains("Service") && dict["Service"] != nil {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class ImageModerationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
                if dict.keys.contains("Confidence") && dict["Confidence"] != nil {
                    self.confidence = dict["Confidence"] as! Double
                }
                if dict.keys.contains("Label") && dict["Label"] != nil {
                    self.label = dict["Label"] as! String
                }
            }
        }
        public var dataId: String?

        public var result: [ImageModerationResponseBody.Data.Result]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ImageModerationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Service") && dict["Service"] != nil {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
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
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
            if dict.keys.contains("deviceId") && dict["deviceId"] != nil {
                self.deviceId = dict["deviceId"] as! String
            }
            if dict.keys.contains("labels") && dict["labels"] != nil {
                self.labels = dict["labels"] as! String
            }
            if dict.keys.contains("reason") && dict["reason"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = TextModerationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Service") && dict["Service"] != nil {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class TextModerationPlusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Advice : Tea.TeaModel {
            public var answer: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Answer") && dict["Answer"] != nil {
                    self.answer = dict["Answer"] as! String
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
                    if dict.keys.contains("KeyWords") && dict["KeyWords"] != nil {
                        self.keyWords = dict["KeyWords"] as! String
                    }
                    if dict.keys.contains("LibName") && dict["LibName"] != nil {
                        self.libName = dict["LibName"] as! String
                    }
                }
            }
            public var confidence: Double?

            public var customizedHit: [TextModerationPlusResponseBody.Data.Result.CustomizedHit]?

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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.riskWords != nil {
                    map["RiskWords"] = self.riskWords!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Confidence") && dict["Confidence"] != nil {
                    self.confidence = dict["Confidence"] as! Double
                }
                if dict.keys.contains("CustomizedHit") && dict["CustomizedHit"] != nil {
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
                if dict.keys.contains("Label") && dict["Label"] != nil {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("RiskWords") && dict["RiskWords"] != nil {
                    self.riskWords = dict["RiskWords"] as! String
                }
            }
        }
        public var advice: [TextModerationPlusResponseBody.Data.Advice]?

        public var result: [TextModerationPlusResponseBody.Data.Result]?

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
            if self.score != nil {
                map["Score"] = self.score!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Advice") && dict["Advice"] != nil {
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
            if dict.keys.contains("Result") && dict["Result"] != nil {
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
            if dict.keys.contains("Score") && dict["Score"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = TextModerationPlusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Service") && dict["Service"] != nil {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
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
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("ReqId") && dict["ReqId"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UrlAsyncModerationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Service") && dict["Service"] != nil {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class VideoModerationResponseBody : Tea.TeaModel {
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
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = VideoModerationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Service") && dict["Service"] != nil {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Service") && dict["Service"] != nil {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
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
                    if dict.keys.contains("Label") && dict["Label"] != nil {
                        self.label = dict["Label"] as! String
                    }
                    if dict.keys.contains("LabelSum") && dict["LabelSum"] != nil {
                        self.labelSum = dict["LabelSum"] as! Int32
                    }
                }
            }
            public class SliceDetails : Tea.TeaModel {
                public var endTime: Int64?

                public var endTimestamp: Int64?

                public var extend: String?

                public var labels: String?

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
                    if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                        self.endTime = dict["EndTime"] as! Int64
                    }
                    if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
                        self.endTimestamp = dict["EndTimestamp"] as! Int64
                    }
                    if dict.keys.contains("Extend") && dict["Extend"] != nil {
                        self.extend = dict["Extend"] as! String
                    }
                    if dict.keys.contains("Labels") && dict["Labels"] != nil {
                        self.labels = dict["Labels"] as! String
                    }
                    if dict.keys.contains("RiskTips") && dict["RiskTips"] != nil {
                        self.riskTips = dict["RiskTips"] as! String
                    }
                    if dict.keys.contains("RiskWords") && dict["RiskWords"] != nil {
                        self.riskWords = dict["RiskWords"] as! String
                    }
                    if dict.keys.contains("Score") && dict["Score"] != nil {
                        self.score = dict["Score"] as! Double
                    }
                    if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                        self.startTime = dict["StartTime"] as! Int64
                    }
                    if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
                        self.startTimestamp = dict["StartTimestamp"] as! Int64
                    }
                    if dict.keys.contains("Text") && dict["Text"] != nil {
                        self.text = dict["Text"] as! String
                    }
                    if dict.keys.contains("Url") && dict["Url"] != nil {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public var audioSummarys: [VideoModerationResultResponseBody.Data.AudioResult.AudioSummarys]?

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
                if dict.keys.contains("AudioSummarys") && dict["AudioSummarys"] != nil {
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
                if dict.keys.contains("SliceDetails") && dict["SliceDetails"] != nil {
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
                    if dict.keys.contains("Label") && dict["Label"] != nil {
                        self.label = dict["Label"] as! String
                    }
                    if dict.keys.contains("LabelSum") && dict["LabelSum"] != nil {
                        self.labelSum = dict["LabelSum"] as! Int32
                    }
                }
            }
            public class Frames : Tea.TeaModel {
                public class Results : Tea.TeaModel {
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
                            if dict.keys.contains("Confidence") && dict["Confidence"] != nil {
                                self.confidence = dict["Confidence"] as! Double
                            }
                            if dict.keys.contains("Label") && dict["Label"] != nil {
                                self.label = dict["Label"] as! String
                            }
                        }
                    }
                    public var result: [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.Result]?

                    public var service: String?

                    public override init() {
                        super.init()
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
                            var tmp : [Any] = []
                            for k in self.result! {
                                tmp.append(k.toMap())
                            }
                            map["Result"] = tmp
                        }
                        if self.service != nil {
                            map["Service"] = self.service!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Result") && dict["Result"] != nil {
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
                        if dict.keys.contains("Service") && dict["Service"] != nil {
                            self.service = dict["Service"] as! String
                        }
                    }
                }
                public var offset: Double?

                public var results: [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results]?

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
                    if self.tempUrl != nil {
                        map["TempUrl"] = self.tempUrl!
                    }
                    if self.timestamp != nil {
                        map["Timestamp"] = self.timestamp!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Offset") && dict["Offset"] != nil {
                        self.offset = dict["Offset"] as! Double
                    }
                    if dict.keys.contains("Results") && dict["Results"] != nil {
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
                    if dict.keys.contains("TempUrl") && dict["TempUrl"] != nil {
                        self.tempUrl = dict["TempUrl"] as! String
                    }
                    if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                        self.timestamp = dict["Timestamp"] as! Int64
                    }
                }
            }
            public var frameNum: Int32?

            public var frameSummarys: [VideoModerationResultResponseBody.Data.FrameResult.FrameSummarys]?

            public var frames: [VideoModerationResultResponseBody.Data.FrameResult.Frames]?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FrameNum") && dict["FrameNum"] != nil {
                    self.frameNum = dict["FrameNum"] as! Int32
                }
                if dict.keys.contains("FrameSummarys") && dict["FrameSummarys"] != nil {
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
                if dict.keys.contains("Frames") && dict["Frames"] != nil {
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
            }
        }
        public var audioResult: VideoModerationResultResponseBody.Data.AudioResult?

        public var dataId: String?

        public var frameResult: VideoModerationResultResponseBody.Data.FrameResult?

        public var liveId: String?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioResult") && dict["AudioResult"] != nil {
                var model = VideoModerationResultResponseBody.Data.AudioResult()
                model.fromMap(dict["AudioResult"] as! [String: Any])
                self.audioResult = model
            }
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("FrameResult") && dict["FrameResult"] != nil {
                var model = VideoModerationResultResponseBody.Data.FrameResult()
                model.fromMap(dict["FrameResult"] as! [String: Any])
                self.frameResult = model
            }
            if dict.keys.contains("LiveId") && dict["LiveId"] != nil {
                self.liveId = dict["LiveId"] as! String
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = VideoModerationResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Service") && dict["Service"] != nil {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
            self.serviceParameters = dict["ServiceParameters"] as! String
        }
    }
}

public class VoiceModerationResponseBody : Tea.TeaModel {
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
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = VoiceModerationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Service") && dict["Service"] != nil {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Service") && dict["Service"] != nil {
            self.service = dict["Service"] as! String
        }
        if dict.keys.contains("ServiceParameters") && dict["ServiceParameters"] != nil {
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
                if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
                    self.endTimestamp = dict["EndTimestamp"] as! Int64
                }
                if dict.keys.contains("Extend") && dict["Extend"] != nil {
                    self.extend = dict["Extend"] as! String
                }
                if dict.keys.contains("Labels") && dict["Labels"] != nil {
                    self.labels = dict["Labels"] as! String
                }
                if dict.keys.contains("OriginAlgoResult") && dict["OriginAlgoResult"] != nil {
                    self.originAlgoResult = dict["OriginAlgoResult"] as! [String: Any]
                }
                if dict.keys.contains("RiskTips") && dict["RiskTips"] != nil {
                    self.riskTips = dict["RiskTips"] as! String
                }
                if dict.keys.contains("RiskWords") && dict["RiskWords"] != nil {
                    self.riskWords = dict["RiskWords"] as! String
                }
                if dict.keys.contains("Score") && dict["Score"] != nil {
                    self.score = dict["Score"] as! Double
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
                    self.startTimestamp = dict["StartTimestamp"] as! Int64
                }
                if dict.keys.contains("Text") && dict["Text"] != nil {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("Url") && dict["Url"] != nil {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var liveId: String?

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
            if self.liveId != nil {
                map["LiveId"] = self.liveId!
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
            if dict.keys.contains("LiveId") && dict["LiveId"] != nil {
                self.liveId = dict["LiveId"] as! String
            }
            if dict.keys.contains("SliceDetails") && dict["SliceDetails"] != nil {
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
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = VoiceModerationResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = VoiceModerationResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
