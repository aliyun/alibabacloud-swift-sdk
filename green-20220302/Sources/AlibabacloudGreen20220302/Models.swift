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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Confidence"] as? Double {
                            self.confidence = value
                        }
                        if let value = dict["Description"] as? String {
                            self.description_ = value
                        }
                        if let value = dict["Label"] as? String {
                            self.label = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["H"] as? Int32 {
                            self.h = value
                        }
                        if let value = dict["W"] as? Int32 {
                            self.w = value
                        }
                        if let value = dict["X"] as? Int32 {
                            self.x = value
                        }
                        if let value = dict["Y"] as? Int32 {
                            self.y = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["LabelResult"] as? [Any?] {
                        var tmp : [DescribeFileModerationResultResponseBody.Data.PageResult.ImageResult.LabelResult] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeFileModerationResultResponseBody.Data.PageResult.ImageResult.LabelResult()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.labelResult = tmp
                    }
                    if let value = dict["Location"] as? [String: Any?] {
                        var model = DescribeFileModerationResultResponseBody.Data.PageResult.ImageResult.Location()
                        model.fromMap(value)
                        self.location = model
                    }
                    if let value = dict["RiskLevel"] as? String {
                        self.riskLevel = value
                    }
                    if let value = dict["Service"] as? String {
                        self.service = value
                    }
                }
            }
            public class TextResult : Tea.TeaModel {
                public var description_: String?

                public var descriptions: String?

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
                    if self.descriptions != nil {
                        map["Descriptions"] = self.descriptions!
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["Descriptions"] as? String {
                        self.descriptions = value
                    }
                    if let value = dict["Labels"] as? String {
                        self.labels = value
                    }
                    if let value = dict["RiskLevel"] as? String {
                        self.riskLevel = value
                    }
                    if let value = dict["RiskTips"] as? String {
                        self.riskTips = value
                    }
                    if let value = dict["RiskWords"] as? String {
                        self.riskWords = value
                    }
                    if let value = dict["Service"] as? String {
                        self.service = value
                    }
                    if let value = dict["Text"] as? String {
                        self.text = value
                    }
                    if let value = dict["TextSegment"] as? String {
                        self.textSegment = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ImageResult"] as? [Any?] {
                    var tmp : [DescribeFileModerationResultResponseBody.Data.PageResult.ImageResult] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeFileModerationResultResponseBody.Data.PageResult.ImageResult()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.imageResult = tmp
                }
                if let value = dict["ImageUrl"] as? String {
                    self.imageUrl = value
                }
                if let value = dict["PageNum"] as? Int32 {
                    self.pageNum = value
                }
                if let value = dict["TextResult"] as? [Any?] {
                    var tmp : [DescribeFileModerationResultResponseBody.Data.PageResult.TextResult] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeFileModerationResultResponseBody.Data.PageResult.TextResult()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.textResult = tmp
                }
                if let value = dict["TextUrl"] as? String {
                    self.textUrl = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Description"] as? String {
                            self.description_ = value
                        }
                        if let value = dict["Label"] as? String {
                            self.label = value
                        }
                        if let value = dict["LabelSum"] as? Int32 {
                            self.labelSum = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ImageLabels"] as? [Any?] {
                        var tmp : [DescribeFileModerationResultResponseBody.Data.PageSummary.ImageSummary.ImageLabels] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeFileModerationResultResponseBody.Data.PageSummary.ImageSummary.ImageLabels()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.imageLabels = tmp
                    }
                    if let value = dict["RiskLevel"] as? String {
                        self.riskLevel = value
                    }
                }
            }
            public class TextSummary : Tea.TeaModel {
                public class TextLabels : Tea.TeaModel {
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Description"] as? String {
                            self.description_ = value
                        }
                        if let value = dict["Label"] as? String {
                            self.label = value
                        }
                        if let value = dict["LabelSum"] as? Int32 {
                            self.labelSum = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RiskLevel"] as? String {
                        self.riskLevel = value
                    }
                    if let value = dict["TextLabels"] as? [Any?] {
                        var tmp : [DescribeFileModerationResultResponseBody.Data.PageSummary.TextSummary.TextLabels] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeFileModerationResultResponseBody.Data.PageSummary.TextSummary.TextLabels()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ImageSummary"] as? [String: Any?] {
                    var model = DescribeFileModerationResultResponseBody.Data.PageSummary.ImageSummary()
                    model.fromMap(value)
                    self.imageSummary = model
                }
                if let value = dict["PageSum"] as? Int32 {
                    self.pageSum = value
                }
                if let value = dict["TextSummary"] as? [String: Any?] {
                    var model = DescribeFileModerationResultResponseBody.Data.PageSummary.TextSummary()
                    model.fromMap(value)
                    self.textSummary = model
                }
            }
        }
        public var accountId: String?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["DocType"] as? String {
                self.docType = value
            }
            if let value = dict["PageResult"] as? [Any?] {
                var tmp : [DescribeFileModerationResultResponseBody.Data.PageResult] = []
                for v in value {
                    if v != nil {
                        var model = DescribeFileModerationResultResponseBody.Data.PageResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pageResult = tmp
            }
            if let value = dict["PageSummary"] as? [String: Any?] {
                var model = DescribeFileModerationResultResponseBody.Data.PageSummary()
                model.fromMap(value)
                self.pageSummary = model
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeFileModerationResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeFileModerationResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
        }
    }
}

public class DescribeImageModerationResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var confidence: Double?

            public var description_: String?

            public var label: String?

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
                if self.confidence != nil {
                    map["Confidence"] = self.confidence!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Confidence"] as? Double {
                    self.confidence = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["RiskLevel"] as? String {
                    self.riskLevel = value
                }
            }
        }
        public var accountId: String?

        public var dataId: String?

        public var frame: String?

        public var frameNum: Int32?

        public var manualTaskId: String?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.frame != nil {
                map["Frame"] = self.frame!
            }
            if self.frameNum != nil {
                map["FrameNum"] = self.frameNum!
            }
            if self.manualTaskId != nil {
                map["ManualTaskId"] = self.manualTaskId!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["Frame"] as? String {
                self.frame = value
            }
            if let value = dict["FrameNum"] as? Int32 {
                self.frameNum = value
            }
            if let value = dict["ManualTaskId"] as? String {
                self.manualTaskId = value
            }
            if let value = dict["ReqId"] as? String {
                self.reqId = value
            }
            if let value = dict["Result"] as? [Any?] {
                var tmp : [DescribeImageModerationResultResponseBody.Data.Result] = []
                for v in value {
                    if v != nil {
                        var model = DescribeImageModerationResultResponseBody.Data.Result()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.result = tmp
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeImageModerationResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeImageModerationResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InfoType"] as? String {
            self.infoType = value
        }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ImageId"] as? String {
                    self.imageId = value
                }
                if let value = dict["LibId"] as? String {
                    self.libId = value
                }
                if let value = dict["LibName"] as? String {
                    self.libName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FigureId"] as? String {
                    self.figureId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["KeyWords"] as? String {
                        self.keyWords = value
                    }
                    if let value = dict["LibId"] as? String {
                        self.libId = value
                    }
                    if let value = dict["LibName"] as? String {
                        self.libName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CustomTexts"] as? [Any?] {
                    var tmp : [DescribeImageResultExtResponseBody.Data.TextInImage.CustomTexts] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeImageResultExtResponseBody.Data.TextInImage.CustomTexts()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.customTexts = tmp
                }
                if let value = dict["OcrDatas"] as? [String] {
                    self.ocrDatas = value
                }
                if let value = dict["RiskWords"] as? [String] {
                    self.riskWords = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomImage"] as? [Any?] {
                var tmp : [DescribeImageResultExtResponseBody.Data.CustomImage] = []
                for v in value {
                    if v != nil {
                        var model = DescribeImageResultExtResponseBody.Data.CustomImage()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.customImage = tmp
            }
            if let value = dict["PublicFigure"] as? [Any?] {
                var tmp : [DescribeImageResultExtResponseBody.Data.PublicFigure] = []
                for v in value {
                    if v != nil {
                        var model = DescribeImageResultExtResponseBody.Data.PublicFigure()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.publicFigure = tmp
            }
            if let value = dict["TextInImage"] as? [String: Any?] {
                var model = DescribeImageResultExtResponseBody.Data.TextInImage()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeImageResultExtResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeImageResultExtResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMultimodalModerationResultRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
        }
    }
}

public class DescribeMultimodalModerationResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CommentDatas : Tea.TeaModel {
            public class CommentDatas : Tea.TeaModel {
                public class Results : Tea.TeaModel {
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
                        if self.description_ != nil {
                            map["Description"] = self.description_!
                        }
                        if self.label != nil {
                            map["Label"] = self.label!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Description"] as? String {
                            self.description_ = value
                        }
                        if let value = dict["Label"] as? String {
                            self.label = value
                        }
                    }
                }
                public var results: [DescribeMultimodalModerationResultResponseBody.Data.CommentDatas.CommentDatas.Results]?

                public override init() {
                    super.init()
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
                        var tmp : [DescribeMultimodalModerationResultResponseBody.Data.CommentDatas.CommentDatas.Results] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeMultimodalModerationResultResponseBody.Data.CommentDatas.CommentDatas.Results()
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
            public class Results : Tea.TeaModel {
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
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                }
            }
            public var commentDatas: [DescribeMultimodalModerationResultResponseBody.Data.CommentDatas.CommentDatas]?

            public var results: [DescribeMultimodalModerationResultResponseBody.Data.CommentDatas.Results]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commentDatas != nil {
                    var tmp : [Any] = []
                    for k in self.commentDatas! {
                        tmp.append(k.toMap())
                    }
                    map["CommentDatas"] = tmp
                }
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
                if let value = dict["CommentDatas"] as? [Any?] {
                    var tmp : [DescribeMultimodalModerationResultResponseBody.Data.CommentDatas.CommentDatas] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeMultimodalModerationResultResponseBody.Data.CommentDatas.CommentDatas()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.commentDatas = tmp
                }
                if let value = dict["Results"] as? [Any?] {
                    var tmp : [DescribeMultimodalModerationResultResponseBody.Data.CommentDatas.Results] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeMultimodalModerationResultResponseBody.Data.CommentDatas.Results()
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
        public class MainData : Tea.TeaModel {
            public class Results : Tea.TeaModel {
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
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                }
            }
            public var results: [DescribeMultimodalModerationResultResponseBody.Data.MainData.Results]?

            public override init() {
                super.init()
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
                    var tmp : [DescribeMultimodalModerationResultResponseBody.Data.MainData.Results] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeMultimodalModerationResultResponseBody.Data.MainData.Results()
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
        public var commentDatas: [DescribeMultimodalModerationResultResponseBody.Data.CommentDatas]?

        public var dataId: String?

        public var mainData: DescribeMultimodalModerationResultResponseBody.Data.MainData?

        public var reqId: String?

        public var riskLevel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.mainData?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commentDatas != nil {
                var tmp : [Any] = []
                for k in self.commentDatas! {
                    tmp.append(k.toMap())
                }
                map["CommentDatas"] = tmp
            }
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.mainData != nil {
                map["MainData"] = self.mainData?.toMap()
            }
            if self.reqId != nil {
                map["ReqId"] = self.reqId!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommentDatas"] as? [Any?] {
                var tmp : [DescribeMultimodalModerationResultResponseBody.Data.CommentDatas] = []
                for v in value {
                    if v != nil {
                        var model = DescribeMultimodalModerationResultResponseBody.Data.CommentDatas()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.commentDatas = tmp
            }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["MainData"] as? [String: Any?] {
                var model = DescribeMultimodalModerationResultResponseBody.Data.MainData()
                model.fromMap(value)
                self.mainData = model
            }
            if let value = dict["ReqId"] as? String {
                self.reqId = value
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
        }
    }
    public var code: Int64?

    public var data: DescribeMultimodalModerationResultResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeMultimodalModerationResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeMultimodalModerationResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMultimodalModerationResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeMultimodalModerationResultResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["AccessKeySecret"] as? String {
                self.accessKeySecret = value
            }
            if let value = dict["BucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["Expiration"] as? Int32 {
                self.expiration = value
            }
            if let value = dict["FileNamePrefix"] as? String {
                self.fileNamePrefix = value
            }
            if let value = dict["OssInternalEndPoint"] as? String {
                self.ossInternalEndPoint = value
            }
            if let value = dict["OssInternetEndPoint"] as? String {
                self.ossInternetEndPoint = value
            }
            if let value = dict["SecurityToken"] as? String {
                self.securityToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeUploadTokenResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUploadTokenResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IcpNo"] as? String {
                    self.icpNo = value
                }
                if let value = dict["IcpType"] as? String {
                    self.icpType = value
                }
                if let value = dict["SiteType"] as? String {
                    self.siteType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Confidence"] as? Double {
                    self.confidence = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["ExtraInfo"] as? [String: Any?] {
                var model = DescribeUrlModerationResultResponseBody.Data.ExtraInfo()
                model.fromMap(value)
                self.extraInfo = model
            }
            if let value = dict["ReqId"] as? String {
                self.reqId = value
            }
            if let value = dict["Result"] as? [Any?] {
                var tmp : [DescribeUrlModerationResultResponseBody.Data.Result] = []
                for v in value {
                    if v != nil {
                        var model = DescribeUrlModerationResultResponseBody.Data.Result()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeUrlModerationResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUrlModerationResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = FileModerationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = FileModerationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["ReqId"] as? String {
                self.reqId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ImageAsyncModerationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ImageAsyncModerationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImageBatchModerationRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Confidence"] as? Double {
                    self.confidence = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ImageId"] as? String {
                            self.imageId = value
                        }
                        if let value = dict["LibId"] as? String {
                            self.libId = value
                        }
                        if let value = dict["LibName"] as? String {
                            self.libName = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["H"] as? Int32 {
                                self.h = value
                            }
                            if let value = dict["W"] as? Int32 {
                                self.w = value
                            }
                            if let value = dict["X"] as? Int32 {
                                self.x = value
                            }
                            if let value = dict["Y"] as? Int32 {
                                self.y = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Confidence"] as? Double {
                                self.confidence = value
                            }
                            if let value = dict["Label"] as? String {
                                self.label = value
                            }
                            if let value = dict["Name"] as? String {
                                self.name = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Location"] as? [String: Any?] {
                            var model = ImageBatchModerationResponseBody.Data.Results.Ext.LogoData.Location()
                            model.fromMap(value)
                            self.location = model
                        }
                        if let value = dict["Logo"] as? [Any?] {
                            var tmp : [ImageBatchModerationResponseBody.Data.Results.Ext.LogoData.Logo] = []
                            for v in value {
                                if v != nil {
                                    var model = ImageBatchModerationResponseBody.Data.Results.Ext.LogoData.Logo()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["H"] as? Int32 {
                                self.h = value
                            }
                            if let value = dict["W"] as? Int32 {
                                self.w = value
                            }
                            if let value = dict["X"] as? Int32 {
                                self.x = value
                            }
                            if let value = dict["Y"] as? Int32 {
                                self.y = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["FigureId"] as? String {
                            self.figureId = value
                        }
                        if let value = dict["FigureName"] as? String {
                            self.figureName = value
                        }
                        if let value = dict["Location"] as? [Any?] {
                            var tmp : [ImageBatchModerationResponseBody.Data.Results.Ext.PublicFigure.Location] = []
                            for v in value {
                                if v != nil {
                                    var model = ImageBatchModerationResponseBody.Data.Results.Ext.PublicFigure.Location()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["KeyWords"] as? String {
                                self.keyWords = value
                            }
                            if let value = dict["LibId"] as? String {
                                self.libId = value
                            }
                            if let value = dict["LibName"] as? String {
                                self.libName = value
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

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["H"] as? Int32 {
                                    self.h = value
                                }
                                if let value = dict["W"] as? Int32 {
                                    self.w = value
                                }
                                if let value = dict["X"] as? Int32 {
                                    self.x = value
                                }
                                if let value = dict["Y"] as? Int32 {
                                    self.y = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Location"] as? [String: Any?] {
                                var model = ImageBatchModerationResponseBody.Data.Results.Ext.TextInImage.OcrResult.Location()
                                model.fromMap(value)
                                self.location = model
                            }
                            if let value = dict["Text"] as? String {
                                self.text = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["CustomText"] as? [Any?] {
                            var tmp : [ImageBatchModerationResponseBody.Data.Results.Ext.TextInImage.CustomText] = []
                            for v in value {
                                if v != nil {
                                    var model = ImageBatchModerationResponseBody.Data.Results.Ext.TextInImage.CustomText()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.customText = tmp
                        }
                        if let value = dict["OcrResult"] as? [Any?] {
                            var tmp : [ImageBatchModerationResponseBody.Data.Results.Ext.TextInImage.OcrResult] = []
                            for v in value {
                                if v != nil {
                                    var model = ImageBatchModerationResponseBody.Data.Results.Ext.TextInImage.OcrResult()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.ocrResult = tmp
                        }
                        if let value = dict["RiskWord"] as? [String] {
                            self.riskWord = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CustomImage"] as? [Any?] {
                        var tmp : [ImageBatchModerationResponseBody.Data.Results.Ext.CustomImage] = []
                        for v in value {
                            if v != nil {
                                var model = ImageBatchModerationResponseBody.Data.Results.Ext.CustomImage()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.customImage = tmp
                    }
                    if let value = dict["LogoData"] as? [String: Any?] {
                        var model = ImageBatchModerationResponseBody.Data.Results.Ext.LogoData()
                        model.fromMap(value)
                        self.logoData = model
                    }
                    if let value = dict["PublicFigure"] as? [Any?] {
                        var tmp : [ImageBatchModerationResponseBody.Data.Results.Ext.PublicFigure] = []
                        for v in value {
                            if v != nil {
                                var model = ImageBatchModerationResponseBody.Data.Results.Ext.PublicFigure()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.publicFigure = tmp
                    }
                    if let value = dict["TextInImage"] as? [String: Any?] {
                        var model = ImageBatchModerationResponseBody.Data.Results.Ext.TextInImage()
                        model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Confidence"] as? Double {
                        self.confidence = value
                    }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Ext"] as? [String: Any?] {
                    var model = ImageBatchModerationResponseBody.Data.Results.Ext()
                    model.fromMap(value)
                    self.ext = model
                }
                if let value = dict["Result"] as? [Any?] {
                    var tmp : [ImageBatchModerationResponseBody.Data.Results.Result] = []
                    for v in value {
                        if v != nil {
                            var model = ImageBatchModerationResponseBody.Data.Results.Result()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.result = tmp
                }
                if let value = dict["RiskLevel"] as? String {
                    self.riskLevel = value
                }
                if let value = dict["Service"] as? String {
                    self.service = value
                }
            }
        }
        public var dataId: String?

        public var manualTaskId: String?

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
            if self.manualTaskId != nil {
                map["ManualTaskId"] = self.manualTaskId!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["ManualTaskId"] as? String {
                self.manualTaskId = value
            }
            if let value = dict["Result"] as? [Any?] {
                var tmp : [ImageBatchModerationResponseBody.Data.Result] = []
                for v in value {
                    if v != nil {
                        var model = ImageBatchModerationResponseBody.Data.Result()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.result = tmp
            }
            if let value = dict["Results"] as? [Any?] {
                var tmp : [ImageBatchModerationResponseBody.Data.Results] = []
                for v in value {
                    if v != nil {
                        var model = ImageBatchModerationResponseBody.Data.Results()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.results = tmp
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ImageBatchModerationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ImageBatchModerationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
        }
    }
}

public class ImageModerationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Ext : Tea.TeaModel {
            public class AigcData : Tea.TeaModel {
                public class AIGC : Tea.TeaModel {
                    public var contentProducer: String?

                    public var contentPropagator: String?

                    public var label: String?

                    public var produceID: String?

                    public var propagateID: String?

                    public var reservedCode1: String?

                    public var reservedCode2: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.contentProducer != nil {
                            map["ContentProducer"] = self.contentProducer!
                        }
                        if self.contentPropagator != nil {
                            map["ContentPropagator"] = self.contentPropagator!
                        }
                        if self.label != nil {
                            map["Label"] = self.label!
                        }
                        if self.produceID != nil {
                            map["ProduceID"] = self.produceID!
                        }
                        if self.propagateID != nil {
                            map["PropagateID"] = self.propagateID!
                        }
                        if self.reservedCode1 != nil {
                            map["ReservedCode1"] = self.reservedCode1!
                        }
                        if self.reservedCode2 != nil {
                            map["ReservedCode2"] = self.reservedCode2!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ContentProducer"] as? String {
                            self.contentProducer = value
                        }
                        if let value = dict["ContentPropagator"] as? String {
                            self.contentPropagator = value
                        }
                        if let value = dict["Label"] as? String {
                            self.label = value
                        }
                        if let value = dict["ProduceID"] as? String {
                            self.produceID = value
                        }
                        if let value = dict["PropagateID"] as? String {
                            self.propagateID = value
                        }
                        if let value = dict["ReservedCode1"] as? String {
                            self.reservedCode1 = value
                        }
                        if let value = dict["ReservedCode2"] as? String {
                            self.reservedCode2 = value
                        }
                    }
                }
                public var AIGC: ImageModerationResponseBody.Data.Ext.AigcData.AIGC?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.AIGC?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.AIGC != nil {
                        map["AIGC"] = self.AIGC?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AIGC"] as? [String: Any?] {
                        var model = ImageModerationResponseBody.Data.Ext.AigcData.AIGC()
                        model.fromMap(value)
                        self.AIGC = model
                    }
                }
            }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ImageId"] as? String {
                        self.imageId = value
                    }
                    if let value = dict["LibId"] as? String {
                        self.libId = value
                    }
                    if let value = dict["LibName"] as? String {
                        self.libName = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Confidence"] as? Double {
                            self.confidence = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Confidence"] as? Double {
                            self.confidence = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Confidence"] as? Double {
                            self.confidence = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Confidence"] as? Double {
                            self.confidence = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["H"] as? Int32 {
                            self.h = value
                        }
                        if let value = dict["W"] as? Int32 {
                            self.w = value
                        }
                        if let value = dict["X"] as? Int32 {
                            self.x = value
                        }
                        if let value = dict["Y"] as? Int32 {
                            self.y = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Confidence"] as? Double {
                            self.confidence = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Confidence"] as? Double {
                            self.confidence = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Blur"] as? Double {
                            self.blur = value
                        }
                        if let value = dict["Integrity"] as? Double {
                            self.integrity = value
                        }
                        if let value = dict["Pitch"] as? Double {
                            self.pitch = value
                        }
                        if let value = dict["Roll"] as? Double {
                            self.roll = value
                        }
                        if let value = dict["Yaw"] as? Double {
                            self.yaw = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Age"] as? Int32 {
                        self.age = value
                    }
                    if let value = dict["Bang"] as? [String: Any?] {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData.Bang()
                        model.fromMap(value)
                        self.bang = model
                    }
                    if let value = dict["Gender"] as? [String: Any?] {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData.Gender()
                        model.fromMap(value)
                        self.gender = model
                    }
                    if let value = dict["Glasses"] as? String {
                        self.glasses = value
                    }
                    if let value = dict["Hairstyle"] as? [String: Any?] {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData.Hairstyle()
                        model.fromMap(value)
                        self.hairstyle = model
                    }
                    if let value = dict["Hat"] as? [String: Any?] {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData.Hat()
                        model.fromMap(value)
                        self.hat = model
                    }
                    if let value = dict["Location"] as? [String: Any?] {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData.Location()
                        model.fromMap(value)
                        self.location = model
                    }
                    if let value = dict["Mask"] as? [String: Any?] {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData.Mask()
                        model.fromMap(value)
                        self.mask = model
                    }
                    if let value = dict["Mustache"] as? [String: Any?] {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData.Mustache()
                        model.fromMap(value)
                        self.mustache = model
                    }
                    if let value = dict["Quality"] as? [String: Any?] {
                        var model = ImageModerationResponseBody.Data.Ext.FaceData.Quality()
                        model.fromMap(value)
                        self.quality = model
                    }
                    if let value = dict["Smile"] as? Double {
                        self.smile = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["H"] as? Int32 {
                            self.h = value
                        }
                        if let value = dict["W"] as? Int32 {
                            self.w = value
                        }
                        if let value = dict["X"] as? Int32 {
                            self.x = value
                        }
                        if let value = dict["Y"] as? Int32 {
                            self.y = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Confidence"] as? Double {
                            self.confidence = value
                        }
                        if let value = dict["Label"] as? String {
                            self.label = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Location"] as? [String: Any?] {
                        var model = ImageModerationResponseBody.Data.Ext.LogoData.Location()
                        model.fromMap(value)
                        self.location = model
                    }
                    if let value = dict["Logo"] as? [Any?] {
                        var tmp : [ImageModerationResponseBody.Data.Ext.LogoData.Logo] = []
                        for v in value {
                            if v != nil {
                                var model = ImageModerationResponseBody.Data.Ext.LogoData.Logo()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["H"] as? Int32 {
                            self.h = value
                        }
                        if let value = dict["W"] as? Int32 {
                            self.w = value
                        }
                        if let value = dict["X"] as? Int32 {
                            self.x = value
                        }
                        if let value = dict["Y"] as? Int32 {
                            self.y = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Location"] as? [String: Any?] {
                        var model = ImageModerationResponseBody.Data.Ext.OcrResult.Location()
                        model.fromMap(value)
                        self.location = model
                    }
                    if let value = dict["Text"] as? String {
                        self.text = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["H"] as? Int32 {
                            self.h = value
                        }
                        if let value = dict["W"] as? Int32 {
                            self.w = value
                        }
                        if let value = dict["X"] as? Int32 {
                            self.x = value
                        }
                        if let value = dict["Y"] as? Int32 {
                            self.y = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FigureId"] as? String {
                        self.figureId = value
                    }
                    if let value = dict["FigureName"] as? String {
                        self.figureName = value
                    }
                    if let value = dict["Location"] as? [Any?] {
                        var tmp : [ImageModerationResponseBody.Data.Ext.PublicFigure.Location] = []
                        for v in value {
                            if v != nil {
                                var model = ImageModerationResponseBody.Data.Ext.PublicFigure.Location()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Classification"] as? String {
                        self.classification = value
                    }
                    if let value = dict["Confidence"] as? Double {
                        self.confidence = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["KeyWords"] as? String {
                            self.keyWords = value
                        }
                        if let value = dict["LibId"] as? String {
                            self.libId = value
                        }
                        if let value = dict["LibName"] as? String {
                            self.libName = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["H"] as? Int32 {
                                self.h = value
                            }
                            if let value = dict["W"] as? Int32 {
                                self.w = value
                            }
                            if let value = dict["X"] as? Int32 {
                                self.x = value
                            }
                            if let value = dict["Y"] as? Int32 {
                                self.y = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Location"] as? [String: Any?] {
                            var model = ImageModerationResponseBody.Data.Ext.TextInImage.OcrResult.Location()
                            model.fromMap(value)
                            self.location = model
                        }
                        if let value = dict["Text"] as? String {
                            self.text = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CustomText"] as? [Any?] {
                        var tmp : [ImageModerationResponseBody.Data.Ext.TextInImage.CustomText] = []
                        for v in value {
                            if v != nil {
                                var model = ImageModerationResponseBody.Data.Ext.TextInImage.CustomText()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.customText = tmp
                    }
                    if let value = dict["OcrResult"] as? [Any?] {
                        var tmp : [ImageModerationResponseBody.Data.Ext.TextInImage.OcrResult] = []
                        for v in value {
                            if v != nil {
                                var model = ImageModerationResponseBody.Data.Ext.TextInImage.OcrResult()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.ocrResult = tmp
                    }
                    if let value = dict["RiskWord"] as? [String] {
                        self.riskWord = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["OutputText"] as? String {
                        self.outputText = value
                    }
                }
            }
            public var aigcData: ImageModerationResponseBody.Data.Ext.AigcData?

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
                try self.aigcData?.validate()
                try self.textInImage?.validate()
                try self.vlContent?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aigcData != nil {
                    map["AigcData"] = self.aigcData?.toMap()
                }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AigcData"] as? [String: Any?] {
                    var model = ImageModerationResponseBody.Data.Ext.AigcData()
                    model.fromMap(value)
                    self.aigcData = model
                }
                if let value = dict["CustomImage"] as? [Any?] {
                    var tmp : [ImageModerationResponseBody.Data.Ext.CustomImage] = []
                    for v in value {
                        if v != nil {
                            var model = ImageModerationResponseBody.Data.Ext.CustomImage()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.customImage = tmp
                }
                if let value = dict["FaceData"] as? [Any?] {
                    var tmp : [ImageModerationResponseBody.Data.Ext.FaceData] = []
                    for v in value {
                        if v != nil {
                            var model = ImageModerationResponseBody.Data.Ext.FaceData()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.faceData = tmp
                }
                if let value = dict["LogoData"] as? [Any?] {
                    var tmp : [ImageModerationResponseBody.Data.Ext.LogoData] = []
                    for v in value {
                        if v != nil {
                            var model = ImageModerationResponseBody.Data.Ext.LogoData()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.logoData = tmp
                }
                if let value = dict["OcrResult"] as? [Any?] {
                    var tmp : [ImageModerationResponseBody.Data.Ext.OcrResult] = []
                    for v in value {
                        if v != nil {
                            var model = ImageModerationResponseBody.Data.Ext.OcrResult()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.ocrResult = tmp
                }
                if let value = dict["PublicFigure"] as? [Any?] {
                    var tmp : [ImageModerationResponseBody.Data.Ext.PublicFigure] = []
                    for v in value {
                        if v != nil {
                            var model = ImageModerationResponseBody.Data.Ext.PublicFigure()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.publicFigure = tmp
                }
                if let value = dict["Recognition"] as? [Any?] {
                    var tmp : [ImageModerationResponseBody.Data.Ext.Recognition] = []
                    for v in value {
                        if v != nil {
                            var model = ImageModerationResponseBody.Data.Ext.Recognition()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.recognition = tmp
                }
                if let value = dict["TextInImage"] as? [String: Any?] {
                    var model = ImageModerationResponseBody.Data.Ext.TextInImage()
                    model.fromMap(value)
                    self.textInImage = model
                }
                if let value = dict["VlContent"] as? [String: Any?] {
                    var model = ImageModerationResponseBody.Data.Ext.VlContent()
                    model.fromMap(value)
                    self.vlContent = model
                }
            }
        }
        public class Result : Tea.TeaModel {
            public var confidence: Double?

            public var description_: String?

            public var label: String?

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
                if self.confidence != nil {
                    map["Confidence"] = self.confidence!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Confidence"] as? Double {
                    self.confidence = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["RiskLevel"] as? String {
                    self.riskLevel = value
                }
            }
        }
        public var accountId: String?

        public var dataId: String?

        public var ext: ImageModerationResponseBody.Data.Ext?

        public var manualTaskId: String?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.ext != nil {
                map["Ext"] = self.ext?.toMap()
            }
            if self.manualTaskId != nil {
                map["ManualTaskId"] = self.manualTaskId!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["Ext"] as? [String: Any?] {
                var model = ImageModerationResponseBody.Data.Ext()
                model.fromMap(value)
                self.ext = model
            }
            if let value = dict["ManualTaskId"] as? String {
                self.manualTaskId = value
            }
            if let value = dict["Result"] as? [Any?] {
                var tmp : [ImageModerationResponseBody.Data.Result] = []
                for v in value {
                    if v != nil {
                        var model = ImageModerationResponseBody.Data.Result()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.result = tmp
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ImageModerationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ImageModerationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImageQueueModerationRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
        }
    }
}

public class ImageQueueModerationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var confidence: Double?

            public var description_: String?

            public var label: String?

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
                if self.confidence != nil {
                    map["Confidence"] = self.confidence!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Confidence"] as? Double {
                    self.confidence = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["RiskLevel"] as? String {
                    self.riskLevel = value
                }
            }
        }
        public var dataId: String?

        public var frame: String?

        public var frameNum: Int32?

        public var result: [ImageQueueModerationResponseBody.Data.Result]?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["Frame"] as? String {
                self.frame = value
            }
            if let value = dict["FrameNum"] as? Int32 {
                self.frameNum = value
            }
            if let value = dict["Result"] as? [Any?] {
                var tmp : [ImageQueueModerationResponseBody.Data.Result] = []
                for v in value {
                    if v != nil {
                        var model = ImageQueueModerationResponseBody.Data.Result()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.result = tmp
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
        }
    }
    public var code: Int32?

    public var data: ImageQueueModerationResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ImageQueueModerationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ImageQueueModerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImageQueueModerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ImageQueueModerationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ManualCallbackRequest : Tea.TeaModel {
    public var channel: String?

    public var checksum: String?

    public var code: String?

    public var data: String?

    public var msg: String?

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
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.checksum != nil {
            map["Checksum"] = self.checksum!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.reqId != nil {
            map["ReqId"] = self.reqId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Channel"] as? String {
            self.channel = value
        }
        if let value = dict["Checksum"] as? String {
            self.checksum = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
        }
    }
}

public class ManualCallbackResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ManualCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ManualCallbackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ManualCallbackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ManualModerationRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
        }
    }
}

public class ManualModerationResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: Int32?

    public var data: ManualModerationResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ManualModerationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ManualModerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ManualModerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ManualModerationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ManualModerationResultRequest : Tea.TeaModel {
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
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
        }
    }
}

public class ManualModerationResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
            }
        }
        public var dataId: String?

        public var result: [ManualModerationResultResponseBody.Data.Result]?

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
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
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
            if let value = dict["Result"] as? [Any?] {
                var tmp : [ManualModerationResultResponseBody.Data.Result] = []
                for v in value {
                    if v != nil {
                        var model = ManualModerationResultResponseBody.Data.Result()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.result = tmp
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: Int32?

    public var data: ManualModerationResultResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ManualModerationResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ManualModerationResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ManualModerationResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ManualModerationResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MultiModalAgentRequest : Tea.TeaModel {
    public var appID: String?

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
        if self.appID != nil {
            map["AppID"] = self.appID!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppID"] as? String {
            self.appID = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
        }
    }
}

public class MultiModalAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var description_: String?

            public var label: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var agentDetail: [String: Any]?

            public var contentLength: Int64?

            public var promptLength: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentDetail != nil {
                    map["AgentDetail"] = self.agentDetail!
                }
                if self.contentLength != nil {
                    map["ContentLength"] = self.contentLength!
                }
                if self.promptLength != nil {
                    map["PromptLength"] = self.promptLength!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentDetail"] as? [String: Any] {
                    self.agentDetail = value
                }
                if let value = dict["ContentLength"] as? Int64 {
                    self.contentLength = value
                }
                if let value = dict["PromptLength"] as? Int64 {
                    self.promptLength = value
                }
            }
        }
        public var dataId: String?

        public var result: [MultiModalAgentResponseBody.Data.Result]?

        public var riskLevel: String?

        public var usage: MultiModalAgentResponseBody.Data.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.usage?.validate()
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
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.usage != nil {
                map["Usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["Result"] as? [Any?] {
                var tmp : [MultiModalAgentResponseBody.Data.Result] = []
                for v in value {
                    if v != nil {
                        var model = MultiModalAgentResponseBody.Data.Result()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.result = tmp
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
            if let value = dict["Usage"] as? [String: Any?] {
                var model = MultiModalAgentResponseBody.Data.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var code: String?

    public var data: MultiModalAgentResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = MultiModalAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class MultiModalAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MultiModalAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = MultiModalAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MultiModalGuardRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
        }
    }
}

public class MultiModalGuardResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Detail : Tea.TeaModel {
            public class Result : Tea.TeaModel {
                public var confidence: Double?

                public var description_: String?

                public var ext: Any?

                public var label: String?

                public var level: String?

                public override init() {
                    super.init()
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
                    if self.ext != nil {
                        map["Ext"] = self.ext!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.level != nil {
                        map["Level"] = self.level!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Confidence"] as? Double {
                        self.confidence = value
                    }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["Ext"] as? Any {
                        self.ext = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["Level"] as? String {
                        self.level = value
                    }
                }
            }
            public var level: String?

            public var result: [MultiModalGuardResponseBody.Data.Detail.Result]?

            public var suggestion: String?

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
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.result != nil {
                    var tmp : [Any] = []
                    for k in self.result! {
                        tmp.append(k.toMap())
                    }
                    map["Result"] = tmp
                }
                if self.suggestion != nil {
                    map["Suggestion"] = self.suggestion!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Level"] as? String {
                    self.level = value
                }
                if let value = dict["Result"] as? [Any?] {
                    var tmp : [MultiModalGuardResponseBody.Data.Detail.Result] = []
                    for v in value {
                        if v != nil {
                            var model = MultiModalGuardResponseBody.Data.Detail.Result()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.result = tmp
                }
                if let value = dict["Suggestion"] as? String {
                    self.suggestion = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var dataId: String?

        public var detail: [MultiModalGuardResponseBody.Data.Detail]?

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
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.detail != nil {
                var tmp : [Any] = []
                for k in self.detail! {
                    tmp.append(k.toMap())
                }
                map["Detail"] = tmp
            }
            if self.suggestion != nil {
                map["Suggestion"] = self.suggestion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["Detail"] as? [Any?] {
                var tmp : [MultiModalGuardResponseBody.Data.Detail] = []
                for v in value {
                    if v != nil {
                        var model = MultiModalGuardResponseBody.Data.Detail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.detail = tmp
            }
            if let value = dict["Suggestion"] as? String {
                self.suggestion = value
            }
        }
    }
    public var code: Int32?

    public var data: MultiModalGuardResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = MultiModalGuardResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class MultiModalGuardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MultiModalGuardResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = MultiModalGuardResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MultiModalGuardForBase64Request : Tea.TeaModel {
    public var imageBase64Str: String?

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
        if self.imageBase64Str != nil {
            map["ImageBase64Str"] = self.imageBase64Str!
        }
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.serviceParameters != nil {
            map["ServiceParameters"] = self.serviceParameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageBase64Str"] as? String {
            self.imageBase64Str = value
        }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
        }
    }
}

public class MultiModalGuardForBase64ResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Detail : Tea.TeaModel {
            public class Result : Tea.TeaModel {
                public var confidence: Double?

                public var description_: String?

                public var ext: Any?

                public var label: String?

                public var level: String?

                public override init() {
                    super.init()
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
                    if self.ext != nil {
                        map["Ext"] = self.ext!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.level != nil {
                        map["Level"] = self.level!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Confidence"] as? Double {
                        self.confidence = value
                    }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["Ext"] as? Any {
                        self.ext = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["Level"] as? String {
                        self.level = value
                    }
                }
            }
            public var level: String?

            public var result: [MultiModalGuardForBase64ResponseBody.Data.Detail.Result]?

            public var suggestion: String?

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
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.result != nil {
                    var tmp : [Any] = []
                    for k in self.result! {
                        tmp.append(k.toMap())
                    }
                    map["Result"] = tmp
                }
                if self.suggestion != nil {
                    map["Suggestion"] = self.suggestion!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Level"] as? String {
                    self.level = value
                }
                if let value = dict["Result"] as? [Any?] {
                    var tmp : [MultiModalGuardForBase64ResponseBody.Data.Detail.Result] = []
                    for v in value {
                        if v != nil {
                            var model = MultiModalGuardForBase64ResponseBody.Data.Detail.Result()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.result = tmp
                }
                if let value = dict["Suggestion"] as? String {
                    self.suggestion = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var dataId: String?

        public var detail: [MultiModalGuardForBase64ResponseBody.Data.Detail]?

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
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.detail != nil {
                var tmp : [Any] = []
                for k in self.detail! {
                    tmp.append(k.toMap())
                }
                map["Detail"] = tmp
            }
            if self.suggestion != nil {
                map["Suggestion"] = self.suggestion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["Detail"] as? [Any?] {
                var tmp : [MultiModalGuardForBase64ResponseBody.Data.Detail] = []
                for v in value {
                    if v != nil {
                        var model = MultiModalGuardForBase64ResponseBody.Data.Detail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.detail = tmp
            }
            if let value = dict["Suggestion"] as? String {
                self.suggestion = value
            }
        }
    }
    public var code: Int32?

    public var data: MultiModalGuardForBase64ResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = MultiModalGuardForBase64ResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class MultiModalGuardForBase64Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MultiModalGuardForBase64ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = MultiModalGuardForBase64ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MultimodalAsyncModerationRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
        }
    }
}

public class MultimodalAsyncModerationResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["ReqId"] as? String {
                self.reqId = value
            }
        }
    }
    public var code: Int32?

    public var data: MultimodalAsyncModerationResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = MultimodalAsyncModerationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class MultimodalAsyncModerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MultimodalAsyncModerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = MultimodalAsyncModerationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
        }
    }
}

public class TextModerationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Ext : Tea.TeaModel {
            public class LlmContent : Tea.TeaModel {
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
                        map["outputText"] = self.outputText!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["outputText"] as? String {
                        self.outputText = value
                    }
                }
            }
            public var llmContent: TextModerationResponseBody.Data.Ext.LlmContent?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.llmContent?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.llmContent != nil {
                    map["llmContent"] = self.llmContent?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["llmContent"] as? [String: Any?] {
                    var model = TextModerationResponseBody.Data.Ext.LlmContent()
                    model.fromMap(value)
                    self.llmContent = model
                }
            }
        }
        public var accountId: String?

        public var dataId: String?

        public var descriptions: String?

        public var deviceId: String?

        public var ext: TextModerationResponseBody.Data.Ext?

        public var labels: String?

        public var manualTaskId: String?

        public var reason: String?

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
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            if self.dataId != nil {
                map["dataId"] = self.dataId!
            }
            if self.descriptions != nil {
                map["descriptions"] = self.descriptions!
            }
            if self.deviceId != nil {
                map["deviceId"] = self.deviceId!
            }
            if self.ext != nil {
                map["ext"] = self.ext?.toMap()
            }
            if self.labels != nil {
                map["labels"] = self.labels!
            }
            if self.manualTaskId != nil {
                map["manualTaskId"] = self.manualTaskId!
            }
            if self.reason != nil {
                map["reason"] = self.reason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["accountId"] as? String {
                self.accountId = value
            }
            if let value = dict["dataId"] as? String {
                self.dataId = value
            }
            if let value = dict["descriptions"] as? String {
                self.descriptions = value
            }
            if let value = dict["deviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["ext"] as? [String: Any?] {
                var model = TextModerationResponseBody.Data.Ext()
                model.fromMap(value)
                self.ext = model
            }
            if let value = dict["labels"] as? String {
                self.labels = value
            }
            if let value = dict["manualTaskId"] as? String {
                self.manualTaskId = value
            }
            if let value = dict["reason"] as? String {
                self.reason = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = TextModerationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TextModerationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Answer"] as? String {
                    self.answer = value
                }
                if let value = dict["HitLabel"] as? String {
                    self.hitLabel = value
                }
                if let value = dict["HitLibName"] as? String {
                    self.hitLibName = value
                }
            }
        }
        public class AttackResult : Tea.TeaModel {
            public var attackLevel: String?

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
                if self.attackLevel != nil {
                    map["AttackLevel"] = self.attackLevel!
                }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttackLevel"] as? String {
                    self.attackLevel = value
                }
                if let value = dict["Confidence"] as? Double {
                    self.confidence = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
            }
        }
        public class Ext : Tea.TeaModel {
            public class LlmContent : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["OutputText"] as? String {
                        self.outputText = value
                    }
                }
            }
            public var llmContent: TextModerationPlusResponseBody.Data.Ext.LlmContent?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.llmContent?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.llmContent != nil {
                    map["LlmContent"] = self.llmContent?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LlmContent"] as? [String: Any?] {
                    var model = TextModerationPlusResponseBody.Data.Ext.LlmContent()
                    model.fromMap(value)
                    self.llmContent = model
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["KeyWords"] as? String {
                        self.keyWords = value
                    }
                    if let value = dict["LibName"] as? String {
                        self.libName = value
                    }
                }
            }
            public class RiskPositions : Tea.TeaModel {
                public var endPos: Int32?

                public var riskWord: String?

                public var startPos: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.endPos != nil {
                        map["EndPos"] = self.endPos!
                    }
                    if self.riskWord != nil {
                        map["RiskWord"] = self.riskWord!
                    }
                    if self.startPos != nil {
                        map["StartPos"] = self.startPos!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EndPos"] as? Int32 {
                        self.endPos = value
                    }
                    if let value = dict["RiskWord"] as? String {
                        self.riskWord = value
                    }
                    if let value = dict["StartPos"] as? Int32 {
                        self.startPos = value
                    }
                }
            }
            public var confidence: Double?

            public var customizedHit: [TextModerationPlusResponseBody.Data.Result.CustomizedHit]?

            public var description_: String?

            public var label: String?

            public var riskPositions: [TextModerationPlusResponseBody.Data.Result.RiskPositions]?

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
                if self.riskPositions != nil {
                    var tmp : [Any] = []
                    for k in self.riskPositions! {
                        tmp.append(k.toMap())
                    }
                    map["RiskPositions"] = tmp
                }
                if self.riskWords != nil {
                    map["RiskWords"] = self.riskWords!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Confidence"] as? Double {
                    self.confidence = value
                }
                if let value = dict["CustomizedHit"] as? [Any?] {
                    var tmp : [TextModerationPlusResponseBody.Data.Result.CustomizedHit] = []
                    for v in value {
                        if v != nil {
                            var model = TextModerationPlusResponseBody.Data.Result.CustomizedHit()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.customizedHit = tmp
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["RiskPositions"] as? [Any?] {
                    var tmp : [TextModerationPlusResponseBody.Data.Result.RiskPositions] = []
                    for v in value {
                        if v != nil {
                            var model = TextModerationPlusResponseBody.Data.Result.RiskPositions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.riskPositions = tmp
                }
                if let value = dict["RiskWords"] as? String {
                    self.riskWords = value
                }
            }
        }
        public class SensitiveResult : Tea.TeaModel {
            public var description_: String?

            public var label: String?

            public var sensitiveData: [String]?

            public var sensitiveLevel: String?

            public override init() {
                super.init()
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
                if self.sensitiveData != nil {
                    map["SensitiveData"] = self.sensitiveData!
                }
                if self.sensitiveLevel != nil {
                    map["SensitiveLevel"] = self.sensitiveLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["SensitiveData"] as? [String] {
                    self.sensitiveData = value
                }
                if let value = dict["SensitiveLevel"] as? String {
                    self.sensitiveLevel = value
                }
            }
        }
        public var accountId: String?

        public var advice: [TextModerationPlusResponseBody.Data.Advice]?

        public var attackLevel: String?

        public var attackResult: [TextModerationPlusResponseBody.Data.AttackResult]?

        public var dataId: String?

        public var detectedLanguage: String?

        public var ext: TextModerationPlusResponseBody.Data.Ext?

        public var manualTaskId: String?

        public var result: [TextModerationPlusResponseBody.Data.Result]?

        public var riskLevel: String?

        public var score: Double?

        public var sensitiveLevel: String?

        public var sensitiveResult: [TextModerationPlusResponseBody.Data.SensitiveResult]?

        public var translatedContent: String?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.advice != nil {
                var tmp : [Any] = []
                for k in self.advice! {
                    tmp.append(k.toMap())
                }
                map["Advice"] = tmp
            }
            if self.attackLevel != nil {
                map["AttackLevel"] = self.attackLevel!
            }
            if self.attackResult != nil {
                var tmp : [Any] = []
                for k in self.attackResult! {
                    tmp.append(k.toMap())
                }
                map["AttackResult"] = tmp
            }
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.detectedLanguage != nil {
                map["DetectedLanguage"] = self.detectedLanguage!
            }
            if self.ext != nil {
                map["Ext"] = self.ext?.toMap()
            }
            if self.manualTaskId != nil {
                map["ManualTaskId"] = self.manualTaskId!
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
            if self.sensitiveLevel != nil {
                map["SensitiveLevel"] = self.sensitiveLevel!
            }
            if self.sensitiveResult != nil {
                var tmp : [Any] = []
                for k in self.sensitiveResult! {
                    tmp.append(k.toMap())
                }
                map["SensitiveResult"] = tmp
            }
            if self.translatedContent != nil {
                map["TranslatedContent"] = self.translatedContent!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["Advice"] as? [Any?] {
                var tmp : [TextModerationPlusResponseBody.Data.Advice] = []
                for v in value {
                    if v != nil {
                        var model = TextModerationPlusResponseBody.Data.Advice()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.advice = tmp
            }
            if let value = dict["AttackLevel"] as? String {
                self.attackLevel = value
            }
            if let value = dict["AttackResult"] as? [Any?] {
                var tmp : [TextModerationPlusResponseBody.Data.AttackResult] = []
                for v in value {
                    if v != nil {
                        var model = TextModerationPlusResponseBody.Data.AttackResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.attackResult = tmp
            }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["DetectedLanguage"] as? String {
                self.detectedLanguage = value
            }
            if let value = dict["Ext"] as? [String: Any?] {
                var model = TextModerationPlusResponseBody.Data.Ext()
                model.fromMap(value)
                self.ext = model
            }
            if let value = dict["ManualTaskId"] as? String {
                self.manualTaskId = value
            }
            if let value = dict["Result"] as? [Any?] {
                var tmp : [TextModerationPlusResponseBody.Data.Result] = []
                for v in value {
                    if v != nil {
                        var model = TextModerationPlusResponseBody.Data.Result()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.result = tmp
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
            if let value = dict["Score"] as? Double {
                self.score = value
            }
            if let value = dict["SensitiveLevel"] as? String {
                self.sensitiveLevel = value
            }
            if let value = dict["SensitiveResult"] as? [Any?] {
                var tmp : [TextModerationPlusResponseBody.Data.SensitiveResult] = []
                for v in value {
                    if v != nil {
                        var model = TextModerationPlusResponseBody.Data.SensitiveResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sensitiveResult = tmp
            }
            if let value = dict["TranslatedContent"] as? String {
                self.translatedContent = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = TextModerationPlusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TextModerationPlusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["ReqId"] as? String {
                self.reqId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UrlAsyncModerationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UrlAsyncModerationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = VideoModerationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VideoModerationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VideoModerationCancelResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
        }
    }
}

public class VideoModerationResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AudioResult : Tea.TeaModel {
            public class AudioSummarys : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["LabelSum"] as? Int32 {
                        self.labelSum = value
                    }
                }
            }
            public class SliceDetails : Tea.TeaModel {
                public var descriptions: String?

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
                    if self.descriptions != nil {
                        map["Descriptions"] = self.descriptions!
                    }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Descriptions"] as? String {
                        self.descriptions = value
                    }
                    if let value = dict["EndTime"] as? Int64 {
                        self.endTime = value
                    }
                    if let value = dict["EndTimestamp"] as? Int64 {
                        self.endTimestamp = value
                    }
                    if let value = dict["Extend"] as? String {
                        self.extend = value
                    }
                    if let value = dict["Labels"] as? String {
                        self.labels = value
                    }
                    if let value = dict["RiskLevel"] as? String {
                        self.riskLevel = value
                    }
                    if let value = dict["RiskTips"] as? String {
                        self.riskTips = value
                    }
                    if let value = dict["RiskWords"] as? String {
                        self.riskWords = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                    if let value = dict["StartTime"] as? Int64 {
                        self.startTime = value
                    }
                    if let value = dict["StartTimestamp"] as? Int64 {
                        self.startTimestamp = value
                    }
                    if let value = dict["Text"] as? String {
                        self.text = value
                    }
                    if let value = dict["Url"] as? String {
                        self.url = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AudioSummarys"] as? [Any?] {
                    var tmp : [VideoModerationResultResponseBody.Data.AudioResult.AudioSummarys] = []
                    for v in value {
                        if v != nil {
                            var model = VideoModerationResultResponseBody.Data.AudioResult.AudioSummarys()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.audioSummarys = tmp
                }
                if let value = dict["RiskLevel"] as? String {
                    self.riskLevel = value
                }
                if let value = dict["SliceDetails"] as? [Any?] {
                    var tmp : [VideoModerationResultResponseBody.Data.AudioResult.SliceDetails] = []
                    for v in value {
                        if v != nil {
                            var model = VideoModerationResultResponseBody.Data.AudioResult.SliceDetails()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["LabelSum"] as? Int32 {
                        self.labelSum = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["ImageId"] as? String {
                                self.imageId = value
                            }
                            if let value = dict["LibId"] as? String {
                                self.libId = value
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

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["H"] as? Int32 {
                                    self.h = value
                                }
                                if let value = dict["W"] as? Int32 {
                                    self.w = value
                                }
                                if let value = dict["X"] as? Int32 {
                                    self.x = value
                                }
                                if let value = dict["Y"] as? Int32 {
                                    self.y = value
                                }
                            }
                        }
                        public class Logo : Tea.TeaModel {
                            public var confidence: Int64?

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
                                    map["confidence"] = self.confidence!
                                }
                                if self.label != nil {
                                    map["label"] = self.label!
                                }
                                if self.name != nil {
                                    map["name"] = self.name!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["confidence"] as? Int64 {
                                    self.confidence = value
                                }
                                if let value = dict["label"] as? String {
                                    self.label = value
                                }
                                if let value = dict["name"] as? String {
                                    self.name = value
                                }
                            }
                        }
                        public var location: VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.LogoData.Location?

                        public var logo: [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.LogoData.Logo]?

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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Location"] as? [String: Any?] {
                                var model = VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.LogoData.Location()
                                model.fromMap(value)
                                self.location = model
                            }
                            if let value = dict["Logo"] as? [Any?] {
                                var tmp : [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.LogoData.Logo] = []
                                for v in value {
                                    if v != nil {
                                        var model = VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.LogoData.Logo()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
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

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["H"] as? Int32 {
                                    self.h = value
                                }
                                if let value = dict["W"] as? Int32 {
                                    self.w = value
                                }
                                if let value = dict["X"] as? Int32 {
                                    self.x = value
                                }
                                if let value = dict["Y"] as? Int32 {
                                    self.y = value
                                }
                            }
                        }
                        public var figureId: String?

                        public var figureName: String?

                        public var location: [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.PublicFigure.Location]?

                        public override init() {
                            super.init()
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["FigureId"] as? String {
                                self.figureId = value
                            }
                            if let value = dict["FigureName"] as? String {
                                self.figureName = value
                            }
                            if let value = dict["Location"] as? [Any?] {
                                var tmp : [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.PublicFigure.Location] = []
                                for v in value {
                                    if v != nil {
                                        var model = VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.PublicFigure.Location()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
                                }
                                self.location = tmp
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Confidence"] as? Double {
                                self.confidence = value
                            }
                            if let value = dict["Description"] as? String {
                                self.description_ = value
                            }
                            if let value = dict["Label"] as? String {
                                self.label = value
                            }
                        }
                    }
                    public var customImage: [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.CustomImage]?

                    public var logoData: [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.LogoData]?

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
                        if self.logoData != nil {
                            var tmp : [Any] = []
                            for k in self.logoData! {
                                tmp.append(k.toMap())
                            }
                            map["LogoData"] = tmp
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["CustomImage"] as? [Any?] {
                            var tmp : [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.CustomImage] = []
                            for v in value {
                                if v != nil {
                                    var model = VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.CustomImage()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.customImage = tmp
                        }
                        if let value = dict["LogoData"] as? [Any?] {
                            var tmp : [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.LogoData] = []
                            for v in value {
                                if v != nil {
                                    var model = VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.LogoData()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.logoData = tmp
                        }
                        if let value = dict["PublicFigure"] as? [Any?] {
                            var tmp : [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.PublicFigure] = []
                            for v in value {
                                if v != nil {
                                    var model = VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.PublicFigure()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.publicFigure = tmp
                        }
                        if let value = dict["Result"] as? [Any?] {
                            var tmp : [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.Result] = []
                            for v in value {
                                if v != nil {
                                    var model = VideoModerationResultResponseBody.Data.FrameResult.Frames.Results.Result()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.result = tmp
                        }
                        if let value = dict["Service"] as? String {
                            self.service = value
                        }
                        if let value = dict["TextInImage"] as? [String: Any] {
                            self.textInImage = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Offset"] as? Double {
                        self.offset = value
                    }
                    if let value = dict["Results"] as? [Any?] {
                        var tmp : [VideoModerationResultResponseBody.Data.FrameResult.Frames.Results] = []
                        for v in value {
                            if v != nil {
                                var model = VideoModerationResultResponseBody.Data.FrameResult.Frames.Results()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.results = tmp
                    }
                    if let value = dict["RiskLevel"] as? String {
                        self.riskLevel = value
                    }
                    if let value = dict["TempUrl"] as? String {
                        self.tempUrl = value
                    }
                    if let value = dict["Timestamp"] as? Int64 {
                        self.timestamp = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FrameNum"] as? Int32 {
                    self.frameNum = value
                }
                if let value = dict["FrameSummarys"] as? [Any?] {
                    var tmp : [VideoModerationResultResponseBody.Data.FrameResult.FrameSummarys] = []
                    for v in value {
                        if v != nil {
                            var model = VideoModerationResultResponseBody.Data.FrameResult.FrameSummarys()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.frameSummarys = tmp
                }
                if let value = dict["Frames"] as? [Any?] {
                    var tmp : [VideoModerationResultResponseBody.Data.FrameResult.Frames] = []
                    for v in value {
                        if v != nil {
                            var model = VideoModerationResultResponseBody.Data.FrameResult.Frames()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.frames = tmp
                }
                if let value = dict["RiskLevel"] as? String {
                    self.riskLevel = value
                }
            }
        }
        public var audioResult: VideoModerationResultResponseBody.Data.AudioResult?

        public var dataId: String?

        public var frameResult: VideoModerationResultResponseBody.Data.FrameResult?

        public var liveId: String?

        public var manualTaskId: String?

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
            if self.manualTaskId != nil {
                map["ManualTaskId"] = self.manualTaskId!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AudioResult"] as? [String: Any?] {
                var model = VideoModerationResultResponseBody.Data.AudioResult()
                model.fromMap(value)
                self.audioResult = model
            }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["FrameResult"] as? [String: Any?] {
                var model = VideoModerationResultResponseBody.Data.FrameResult()
                model.fromMap(value)
                self.frameResult = model
            }
            if let value = dict["LiveId"] as? String {
                self.liveId = value
            }
            if let value = dict["ManualTaskId"] as? String {
                self.manualTaskId = value
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = VideoModerationResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VideoModerationResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = VoiceModerationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VoiceModerationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VoiceModerationCancelResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["ServiceParameters"] as? String {
            self.serviceParameters = value
        }
    }
}

public class VoiceModerationResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SliceDetails : Tea.TeaModel {
            public var descriptions: String?

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
                if self.descriptions != nil {
                    map["Descriptions"] = self.descriptions!
                }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Descriptions"] as? String {
                    self.descriptions = value
                }
                if let value = dict["EndTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["EndTimestamp"] as? Int64 {
                    self.endTimestamp = value
                }
                if let value = dict["Extend"] as? String {
                    self.extend = value
                }
                if let value = dict["Labels"] as? String {
                    self.labels = value
                }
                if let value = dict["OriginAlgoResult"] as? [String: Any] {
                    self.originAlgoResult = value
                }
                if let value = dict["RiskLevel"] as? String {
                    self.riskLevel = value
                }
                if let value = dict["RiskTips"] as? String {
                    self.riskTips = value
                }
                if let value = dict["RiskWords"] as? String {
                    self.riskWords = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["StartTimestamp"] as? Int64 {
                    self.startTimestamp = value
                }
                if let value = dict["Text"] as? String {
                    self.text = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
            }
        }
        public var dataId: String?

        public var liveId: String?

        public var manualTaskId: String?

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
            if self.manualTaskId != nil {
                map["ManualTaskId"] = self.manualTaskId!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataId"] as? String {
                self.dataId = value
            }
            if let value = dict["LiveId"] as? String {
                self.liveId = value
            }
            if let value = dict["ManualTaskId"] as? String {
                self.manualTaskId = value
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
            if let value = dict["SliceDetails"] as? [Any?] {
                var tmp : [VoiceModerationResultResponseBody.Data.SliceDetails] = []
                for v in value {
                    if v != nil {
                        var model = VoiceModerationResultResponseBody.Data.SliceDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sliceDetails = tmp
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = VoiceModerationResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VoiceModerationResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
