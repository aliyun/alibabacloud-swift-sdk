import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddAnswerSampleRequest : Tea.TeaModel {
    public var libId: String?

    public var regionId: String?

    public var sampleObject: String?

    public var samples: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sampleObject != nil {
            map["SampleObject"] = self.sampleObject!
        }
        if self.samples != nil {
            map["Samples"] = self.samples!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SampleObject"] as? String {
            self.sampleObject = value
        }
        if let value = dict["Samples"] as? String {
            self.samples = value
        }
    }
}

public class AddAnswerSampleResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var i18nKey: String?

        public var illegalLengthSamples: [String]?

        public var invalidCount: Int32?

        public var libId: String?

        public var progress: Int32?

        public var repeatCount: Int32?

        public var repeatSamples: [String]?

        public var successCount: Int32?

        public var taskId: String?

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
            if self.i18nKey != nil {
                map["I18nKey"] = self.i18nKey!
            }
            if self.illegalLengthSamples != nil {
                map["IllegalLengthSamples"] = self.illegalLengthSamples!
            }
            if self.invalidCount != nil {
                map["InvalidCount"] = self.invalidCount!
            }
            if self.libId != nil {
                map["LibId"] = self.libId!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.repeatCount != nil {
                map["RepeatCount"] = self.repeatCount!
            }
            if self.repeatSamples != nil {
                map["RepeatSamples"] = self.repeatSamples!
            }
            if self.successCount != nil {
                map["SuccessCount"] = self.successCount!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["I18nKey"] as? String {
                self.i18nKey = value
            }
            if let value = dict["IllegalLengthSamples"] as? [String] {
                self.illegalLengthSamples = value
            }
            if let value = dict["InvalidCount"] as? Int32 {
                self.invalidCount = value
            }
            if let value = dict["LibId"] as? String {
                self.libId = value
            }
            if let value = dict["Progress"] as? Int32 {
                self.progress = value
            }
            if let value = dict["RepeatCount"] as? Int32 {
                self.repeatCount = value
            }
            if let value = dict["RepeatSamples"] as? [String] {
                self.repeatSamples = value
            }
            if let value = dict["SuccessCount"] as? Int32 {
                self.successCount = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var libId: String?

    public var requestId: String?

    public var result: AddAnswerSampleResponseBody.Result?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = AddAnswerSampleResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class AddAnswerSampleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddAnswerSampleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddAnswerSampleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddImageLibRequest : Tea.TeaModel {
    public var comment: String?

    public var libName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.libName != nil {
            map["LibName"] = self.libName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["LibName"] as? String {
            self.libName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class AddImageLibResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var httpStatusCode: Int32?

    public var msg: String?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddImageLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddImageLibResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddImageLibResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddImages2LibRequest : Tea.TeaModel {
    public var imgUrl: String?

    public var libId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imgUrl != nil {
            map["ImgUrl"] = self.imgUrl!
        }
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImgUrl"] as? String {
            self.imgUrl = value
        }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class AddImages2LibResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imgId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imgId != nil {
                map["ImgId"] = self.imgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImgId"] as? String {
                self.imgId = value
            }
        }
    }
    public var code: Int32?

    public var data: AddImages2LibResponseBody.Data?

    public var httpStatusCode: Int32?

    public var msg: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = AddImages2LibResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddImages2LibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddImages2LibResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddImages2LibResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddKeywordLibRequest : Tea.TeaModel {
    public var keywords: String?

    public var keywordsObject: String?

    public var libName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.keywordsObject != nil {
            map["KeywordsObject"] = self.keywordsObject!
        }
        if self.libName != nil {
            map["LibName"] = self.libName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keywords"] as? String {
            self.keywords = value
        }
        if let value = dict["KeywordsObject"] as? String {
            self.keywordsObject = value
        }
        if let value = dict["LibName"] as? String {
            self.libName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class AddKeywordLibResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class KeywordsResult : Tea.TeaModel {
            public var i18nKey: String?

            public var illegalLengthKeywords: [String]?

            public var invalidCount: Int32?

            public var invalidKeywords: [String]?

            public var libId: String?

            public var repeatCount: Int32?

            public var repeatKeywords: [String]?

            public var successCount: Int32?

            public var tips: String?

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
                if self.i18nKey != nil {
                    map["I18nKey"] = self.i18nKey!
                }
                if self.illegalLengthKeywords != nil {
                    map["IllegalLengthKeywords"] = self.illegalLengthKeywords!
                }
                if self.invalidCount != nil {
                    map["InvalidCount"] = self.invalidCount!
                }
                if self.invalidKeywords != nil {
                    map["InvalidKeywords"] = self.invalidKeywords!
                }
                if self.libId != nil {
                    map["LibId"] = self.libId!
                }
                if self.repeatCount != nil {
                    map["RepeatCount"] = self.repeatCount!
                }
                if self.repeatKeywords != nil {
                    map["RepeatKeywords"] = self.repeatKeywords!
                }
                if self.successCount != nil {
                    map["SuccessCount"] = self.successCount!
                }
                if self.tips != nil {
                    map["Tips"] = self.tips!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["I18nKey"] as? String {
                    self.i18nKey = value
                }
                if let value = dict["IllegalLengthKeywords"] as? [String] {
                    self.illegalLengthKeywords = value
                }
                if let value = dict["InvalidCount"] as? Int32 {
                    self.invalidCount = value
                }
                if let value = dict["InvalidKeywords"] as? [String] {
                    self.invalidKeywords = value
                }
                if let value = dict["LibId"] as? String {
                    self.libId = value
                }
                if let value = dict["RepeatCount"] as? Int32 {
                    self.repeatCount = value
                }
                if let value = dict["RepeatKeywords"] as? [String] {
                    self.repeatKeywords = value
                }
                if let value = dict["SuccessCount"] as? Int32 {
                    self.successCount = value
                }
                if let value = dict["Tips"] as? String {
                    self.tips = value
                }
                if let value = dict["TotalCount"] as? Int32 {
                    self.totalCount = value
                }
            }
        }
        public var keywordsResult: AddKeywordLibResponseBody.Data.KeywordsResult?

        public var libId: String?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.keywordsResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.keywordsResult != nil {
                map["KeywordsResult"] = self.keywordsResult?.toMap()
            }
            if self.libId != nil {
                map["LibId"] = self.libId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["KeywordsResult"] as? [String: Any?] {
                var model = AddKeywordLibResponseBody.Data.KeywordsResult()
                model.fromMap(value)
                self.keywordsResult = model
            }
            if let value = dict["LibId"] as? String {
                self.libId = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: Int32?

    public var data: AddKeywordLibResponseBody.Data?

    public var msg: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = AddKeywordLibResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddKeywordLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddKeywordLibResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddKeywordLibResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddKeywordsRequest : Tea.TeaModel {
    public var keywords: String?

    public var keywordsObject: String?

    public var libId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.keywordsObject != nil {
            map["KeywordsObject"] = self.keywordsObject!
        }
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keywords"] as? String {
            self.keywords = value
        }
        if let value = dict["KeywordsObject"] as? String {
            self.keywordsObject = value
        }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class AddKeywordsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class KeywordsResult : Tea.TeaModel {
            public var i18nKey: String?

            public var illegalLengthKeywords: [String]?

            public var invalidCount: Int32?

            public var invalidKeywords: [String]?

            public var libId: String?

            public var progress: Int32?

            public var repeatCount: Int32?

            public var repeatKeywords: [String]?

            public var successCount: Int32?

            public var tips: String?

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
                if self.i18nKey != nil {
                    map["I18nKey"] = self.i18nKey!
                }
                if self.illegalLengthKeywords != nil {
                    map["IllegalLengthKeywords"] = self.illegalLengthKeywords!
                }
                if self.invalidCount != nil {
                    map["InvalidCount"] = self.invalidCount!
                }
                if self.invalidKeywords != nil {
                    map["InvalidKeywords"] = self.invalidKeywords!
                }
                if self.libId != nil {
                    map["LibId"] = self.libId!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.repeatCount != nil {
                    map["RepeatCount"] = self.repeatCount!
                }
                if self.repeatKeywords != nil {
                    map["RepeatKeywords"] = self.repeatKeywords!
                }
                if self.successCount != nil {
                    map["SuccessCount"] = self.successCount!
                }
                if self.tips != nil {
                    map["Tips"] = self.tips!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["I18nKey"] as? String {
                    self.i18nKey = value
                }
                if let value = dict["IllegalLengthKeywords"] as? [String] {
                    self.illegalLengthKeywords = value
                }
                if let value = dict["InvalidCount"] as? Int32 {
                    self.invalidCount = value
                }
                if let value = dict["InvalidKeywords"] as? [String] {
                    self.invalidKeywords = value
                }
                if let value = dict["LibId"] as? String {
                    self.libId = value
                }
                if let value = dict["Progress"] as? Int32 {
                    self.progress = value
                }
                if let value = dict["RepeatCount"] as? Int32 {
                    self.repeatCount = value
                }
                if let value = dict["RepeatKeywords"] as? [String] {
                    self.repeatKeywords = value
                }
                if let value = dict["SuccessCount"] as? Int32 {
                    self.successCount = value
                }
                if let value = dict["Tips"] as? String {
                    self.tips = value
                }
                if let value = dict["TotalCount"] as? Int32 {
                    self.totalCount = value
                }
            }
        }
        public var keywordsResult: AddKeywordsResponseBody.Data.KeywordsResult?

        public var libId: String?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.keywordsResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.keywordsResult != nil {
                map["KeywordsResult"] = self.keywordsResult?.toMap()
            }
            if self.libId != nil {
                map["LibId"] = self.libId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["KeywordsResult"] as? [String: Any?] {
                var model = AddKeywordsResponseBody.Data.KeywordsResult()
                model.fromMap(value)
                self.keywordsResult = model
            }
            if let value = dict["LibId"] as? String {
                self.libId = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: Int32?

    public var data: AddKeywordsResponseBody.Data?

    public var msg: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = AddKeywordsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddKeywordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddKeywordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddKeywordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddKeywordsToLibRequest : Tea.TeaModel {
    public var keywords: String?

    public var keywordsObject: String?

    public var libId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.keywordsObject != nil {
            map["KeywordsObject"] = self.keywordsObject!
        }
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keywords"] as? String {
            self.keywords = value
        }
        if let value = dict["KeywordsObject"] as? String {
            self.keywordsObject = value
        }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class AddKeywordsToLibResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class KeywordsResult : Tea.TeaModel {
            public var i18nKey: String?

            public var illegalLengthKeywords: [String]?

            public var invalidCount: Int32?

            public var invalidKeywords: [String]?

            public var libId: String?

            public var progress: Int32?

            public var repeatCount: Int32?

            public var repeatKeywords: [String]?

            public var successCount: Int32?

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
                if self.i18nKey != nil {
                    map["I18nKey"] = self.i18nKey!
                }
                if self.illegalLengthKeywords != nil {
                    map["IllegalLengthKeywords"] = self.illegalLengthKeywords!
                }
                if self.invalidCount != nil {
                    map["InvalidCount"] = self.invalidCount!
                }
                if self.invalidKeywords != nil {
                    map["InvalidKeywords"] = self.invalidKeywords!
                }
                if self.libId != nil {
                    map["LibId"] = self.libId!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.repeatCount != nil {
                    map["RepeatCount"] = self.repeatCount!
                }
                if self.repeatKeywords != nil {
                    map["RepeatKeywords"] = self.repeatKeywords!
                }
                if self.successCount != nil {
                    map["SuccessCount"] = self.successCount!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["I18nKey"] as? String {
                    self.i18nKey = value
                }
                if let value = dict["IllegalLengthKeywords"] as? [String] {
                    self.illegalLengthKeywords = value
                }
                if let value = dict["InvalidCount"] as? Int32 {
                    self.invalidCount = value
                }
                if let value = dict["InvalidKeywords"] as? [String] {
                    self.invalidKeywords = value
                }
                if let value = dict["LibId"] as? String {
                    self.libId = value
                }
                if let value = dict["Progress"] as? Int32 {
                    self.progress = value
                }
                if let value = dict["RepeatCount"] as? Int32 {
                    self.repeatCount = value
                }
                if let value = dict["RepeatKeywords"] as? [String] {
                    self.repeatKeywords = value
                }
                if let value = dict["SuccessCount"] as? Int32 {
                    self.successCount = value
                }
                if let value = dict["TotalCount"] as? Int32 {
                    self.totalCount = value
                }
            }
        }
        public var keywordsResult: AddKeywordsToLibResponseBody.Data.KeywordsResult?

        public var libId: String?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.keywordsResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.keywordsResult != nil {
                map["KeywordsResult"] = self.keywordsResult?.toMap()
            }
            if self.libId != nil {
                map["LibId"] = self.libId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["KeywordsResult"] as? [String: Any?] {
                var model = AddKeywordsToLibResponseBody.Data.KeywordsResult()
                model.fromMap(value)
                self.keywordsResult = model
            }
            if let value = dict["LibId"] as? String {
                self.libId = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var data: AddKeywordsToLibResponseBody.Data?

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
            var model = AddKeywordsToLibResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddKeywordsToLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddKeywordsToLibResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddKeywordsToLibResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelStockOssCheckTaskRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CancelStockOssCheckTaskResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CancelStockOssCheckTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelStockOssCheckTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CancelStockOssCheckTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CopyServiceConfigRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceType: String?

    public var serviceCode: String?

    public var serviceDesc: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.serviceDesc != nil {
            map["ServiceDesc"] = self.serviceDesc!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["ServiceDesc"] as? String {
            self.serviceDesc = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
    }
}

public class CopyServiceConfigResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CopyServiceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CopyServiceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CopyServiceConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatStockOssCheckTaskRequest : Tea.TeaModel {
    public var buckets: String?

    public var callbackId: String?

    public var distinctHistoryTasks: Bool?

    public var endTime: String?

    public var executeDate: Int32?

    public var executeTime: String?

    public var freeze: Bool?

    public var freezeHighRisk1: Bool?

    public var freezeHighRisk2: Bool?

    public var freezeMediumRisk1: Bool?

    public var freezeMediumRisk2: Bool?

    public var freezeRestorePath: String?

    public var freezeType: String?

    public var isInc: Bool?

    public var mediaType: Int32?

    public var prefixFilterType: String?

    public var prefixFilters: String?

    public var priority: Int32?

    public var referer: String?

    public var regionId: String?

    public var scanLimit: Int64?

    public var scanNoFileType: Bool?

    public var scanResourceType: String?

    public var scanService: String?

    public var startTime: String?

    public var taskCycle: Int32?

    public var taskName: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buckets != nil {
            map["Buckets"] = self.buckets!
        }
        if self.callbackId != nil {
            map["CallbackId"] = self.callbackId!
        }
        if self.distinctHistoryTasks != nil {
            map["DistinctHistoryTasks"] = self.distinctHistoryTasks!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.executeDate != nil {
            map["ExecuteDate"] = self.executeDate!
        }
        if self.executeTime != nil {
            map["ExecuteTime"] = self.executeTime!
        }
        if self.freeze != nil {
            map["Freeze"] = self.freeze!
        }
        if self.freezeHighRisk1 != nil {
            map["FreezeHighRisk1"] = self.freezeHighRisk1!
        }
        if self.freezeHighRisk2 != nil {
            map["FreezeHighRisk2"] = self.freezeHighRisk2!
        }
        if self.freezeMediumRisk1 != nil {
            map["FreezeMediumRisk1"] = self.freezeMediumRisk1!
        }
        if self.freezeMediumRisk2 != nil {
            map["FreezeMediumRisk2"] = self.freezeMediumRisk2!
        }
        if self.freezeRestorePath != nil {
            map["FreezeRestorePath"] = self.freezeRestorePath!
        }
        if self.freezeType != nil {
            map["FreezeType"] = self.freezeType!
        }
        if self.isInc != nil {
            map["IsInc"] = self.isInc!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.prefixFilterType != nil {
            map["PrefixFilterType"] = self.prefixFilterType!
        }
        if self.prefixFilters != nil {
            map["PrefixFilters"] = self.prefixFilters!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.referer != nil {
            map["Referer"] = self.referer!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scanLimit != nil {
            map["ScanLimit"] = self.scanLimit!
        }
        if self.scanNoFileType != nil {
            map["ScanNoFileType"] = self.scanNoFileType!
        }
        if self.scanResourceType != nil {
            map["ScanResourceType"] = self.scanResourceType!
        }
        if self.scanService != nil {
            map["ScanService"] = self.scanService!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskCycle != nil {
            map["TaskCycle"] = self.taskCycle!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Buckets"] as? String {
            self.buckets = value
        }
        if let value = dict["CallbackId"] as? String {
            self.callbackId = value
        }
        if let value = dict["DistinctHistoryTasks"] as? Bool {
            self.distinctHistoryTasks = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["ExecuteDate"] as? Int32 {
            self.executeDate = value
        }
        if let value = dict["ExecuteTime"] as? String {
            self.executeTime = value
        }
        if let value = dict["Freeze"] as? Bool {
            self.freeze = value
        }
        if let value = dict["FreezeHighRisk1"] as? Bool {
            self.freezeHighRisk1 = value
        }
        if let value = dict["FreezeHighRisk2"] as? Bool {
            self.freezeHighRisk2 = value
        }
        if let value = dict["FreezeMediumRisk1"] as? Bool {
            self.freezeMediumRisk1 = value
        }
        if let value = dict["FreezeMediumRisk2"] as? Bool {
            self.freezeMediumRisk2 = value
        }
        if let value = dict["FreezeRestorePath"] as? String {
            self.freezeRestorePath = value
        }
        if let value = dict["FreezeType"] as? String {
            self.freezeType = value
        }
        if let value = dict["IsInc"] as? Bool {
            self.isInc = value
        }
        if let value = dict["MediaType"] as? Int32 {
            self.mediaType = value
        }
        if let value = dict["PrefixFilterType"] as? String {
            self.prefixFilterType = value
        }
        if let value = dict["PrefixFilters"] as? String {
            self.prefixFilters = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["Referer"] as? String {
            self.referer = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ScanLimit"] as? Int64 {
            self.scanLimit = value
        }
        if let value = dict["ScanNoFileType"] as? Bool {
            self.scanNoFileType = value
        }
        if let value = dict["ScanResourceType"] as? String {
            self.scanResourceType = value
        }
        if let value = dict["ScanService"] as? String {
            self.scanService = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TaskCycle"] as? Int32 {
            self.taskCycle = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class CreatStockOssCheckTaskResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatStockOssCheckTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatStockOssCheckTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatStockOssCheckTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAnswerLibRequest : Tea.TeaModel {
    public var libName: String?

    public var regionId: String?

    public var sampleBucket: String?

    public var sampleObject: String?

    public var samples: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.libName != nil {
            map["LibName"] = self.libName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sampleBucket != nil {
            map["SampleBucket"] = self.sampleBucket!
        }
        if self.sampleObject != nil {
            map["SampleObject"] = self.sampleObject!
        }
        if self.samples != nil {
            map["Samples"] = self.samples!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LibName"] as? String {
            self.libName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SampleBucket"] as? String {
            self.sampleBucket = value
        }
        if let value = dict["SampleObject"] as? String {
            self.sampleObject = value
        }
        if let value = dict["Samples"] as? String {
            self.samples = value
        }
    }
}

public class CreateAnswerLibResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var i18nKey: String?

        public var illegalLengthSamples: [String]?

        public var invalidCount: Int32?

        public var libId: String?

        public var progress: Int32?

        public var repeatCount: Int32?

        public var repeatSamples: [String]?

        public var successCount: Int32?

        public var taskId: String?

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
            if self.i18nKey != nil {
                map["I18nKey"] = self.i18nKey!
            }
            if self.illegalLengthSamples != nil {
                map["IllegalLengthSamples"] = self.illegalLengthSamples!
            }
            if self.invalidCount != nil {
                map["InvalidCount"] = self.invalidCount!
            }
            if self.libId != nil {
                map["LibId"] = self.libId!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.repeatCount != nil {
                map["RepeatCount"] = self.repeatCount!
            }
            if self.repeatSamples != nil {
                map["RepeatSamples"] = self.repeatSamples!
            }
            if self.successCount != nil {
                map["SuccessCount"] = self.successCount!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["I18nKey"] as? String {
                self.i18nKey = value
            }
            if let value = dict["IllegalLengthSamples"] as? [String] {
                self.illegalLengthSamples = value
            }
            if let value = dict["InvalidCount"] as? Int32 {
                self.invalidCount = value
            }
            if let value = dict["LibId"] as? String {
                self.libId = value
            }
            if let value = dict["Progress"] as? Int32 {
                self.progress = value
            }
            if let value = dict["RepeatCount"] as? Int32 {
                self.repeatCount = value
            }
            if let value = dict["RepeatSamples"] as? [String] {
                self.repeatSamples = value
            }
            if let value = dict["SuccessCount"] as? Int32 {
                self.successCount = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var libId: String?

    public var requestId: String?

    public var result: CreateAnswerLibResponseBody.Result?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = CreateAnswerLibResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateAnswerLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAnswerLibResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAnswerLibResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCallbackRequest : Tea.TeaModel {
    public var cryptType: String?

    public var name: String?

    public var regionId: String?

    public var scope: String?

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
        if self.cryptType != nil {
            map["CryptType"] = self.cryptType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CryptType"] as? String {
            self.cryptType = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class CreateCallbackResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCallbackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateCallbackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOnlineTestRequest : Tea.TeaModel {
    public var dataId: String?

    public var resourceType: String?

    public var serviceCode: String?

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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
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
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class CreateOnlineTestResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var serviceCode: String?

    public var taskId: String?

    public var taskStatus: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class CreateOnlineTestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOnlineTestResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateOnlineTestResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePreCheckRequest : Tea.TeaModel {
    public var buckets: String?

    public var distinctHistoryTasks: Bool?

    public var endTime: String?

    public var isInc: Bool?

    public var mediaType: Int32?

    public var prefixFilterType: String?

    public var prefixFilters: String?

    public var priority: Int32?

    public var regionId: String?

    public var scanLimit: Int64?

    public var scanNoFileType: Bool?

    public var scanService: String?

    public var startTime: String?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buckets != nil {
            map["Buckets"] = self.buckets!
        }
        if self.distinctHistoryTasks != nil {
            map["DistinctHistoryTasks"] = self.distinctHistoryTasks!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.isInc != nil {
            map["IsInc"] = self.isInc!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.prefixFilterType != nil {
            map["PrefixFilterType"] = self.prefixFilterType!
        }
        if self.prefixFilters != nil {
            map["PrefixFilters"] = self.prefixFilters!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scanLimit != nil {
            map["ScanLimit"] = self.scanLimit!
        }
        if self.scanNoFileType != nil {
            map["ScanNoFileType"] = self.scanNoFileType!
        }
        if self.scanService != nil {
            map["ScanService"] = self.scanService!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Buckets"] as? String {
            self.buckets = value
        }
        if let value = dict["DistinctHistoryTasks"] as? Bool {
            self.distinctHistoryTasks = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["IsInc"] as? Bool {
            self.isInc = value
        }
        if let value = dict["MediaType"] as? Int32 {
            self.mediaType = value
        }
        if let value = dict["PrefixFilterType"] as? String {
            self.prefixFilterType = value
        }
        if let value = dict["PrefixFilters"] as? String {
            self.prefixFilters = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ScanLimit"] as? Int64 {
            self.scanLimit = value
        }
        if let value = dict["ScanNoFileType"] as? Bool {
            self.scanNoFileType = value
        }
        if let value = dict["ScanService"] as? String {
            self.scanService = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
    }
}

public class CreatePreCheckResponseBody : Tea.TeaModel {
    public var data: [String: Bool]?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Bool] {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePreCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePreCheckResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePreCheckResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAnswerLibRequest : Tea.TeaModel {
    public var libId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteAnswerLibResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteAnswerLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAnswerLibResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAnswerLibResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAnswerSampleRequest : Tea.TeaModel {
    public var ids: String?

    public var libId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ids"] as? String {
            self.ids = value
        }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteAnswerSampleResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteAnswerSampleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAnswerSampleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAnswerSampleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCallbackRequest : Tea.TeaModel {
    public var id: Int64?

    public var regionId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteCallbackResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCallbackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteCallbackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFeatureConfigRequest : Tea.TeaModel {
    public var field: String?

    public var regionId: String?

    public var resourceType: String?

    public var serviceCode: String?

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
        if self.field != nil {
            map["Field"] = self.field!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Field"] as? String {
            self.field = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class DeleteFeatureConfigResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var httpStatusCode: Int32?

    public var msg: String?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteFeatureConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFeatureConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteFeatureConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteImagesFromLibRequest : Tea.TeaModel {
    public var imageIds: String?

    public var libId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageIds != nil {
            map["ImageIds"] = self.imageIds!
        }
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageIds"] as? String {
            self.imageIds = value
        }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteImagesFromLibResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var httpStatusCode: Int32?

    public var msg: String?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteImagesFromLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteImagesFromLibResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteImagesFromLibResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteKeywordRequest : Tea.TeaModel {
    public var keywordIdList: String?

    public var keywordIds: String?

    public var libId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keywordIdList != nil {
            map["KeywordIdList"] = self.keywordIdList!
        }
        if self.keywordIds != nil {
            map["KeywordIds"] = self.keywordIds!
        }
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeywordIdList"] as? String {
            self.keywordIdList = value
        }
        if let value = dict["KeywordIds"] as? String {
            self.keywordIds = value
        }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteKeywordResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteKeywordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteKeywordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteKeywordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteKeywordLibRequest : Tea.TeaModel {
    public var libId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteKeywordLibResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteKeywordLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteKeywordLibResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteKeywordLibResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteOnlineTestRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class DeleteOnlineTestResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteOnlineTestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOnlineTestResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteOnlineTestResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOnlineTestResultRequest : Tea.TeaModel {
    public var resourceType: String?

    public var serviceCode: String?

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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class DescribeOnlineTestResultResponseBody : Tea.TeaModel {
    public class AudioData : Tea.TeaModel {
        public var timeStamp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.timeStamp != nil {
                map["TimeStamp"] = self.timeStamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TimeStamp"] as? String {
                self.timeStamp = value
            }
        }
    }
    public class FrameData : Tea.TeaModel {
        public var timeStamp: String?

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
            if self.timeStamp != nil {
                map["TimeStamp"] = self.timeStamp!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TimeStamp"] as? String {
                self.timeStamp = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public class SummaryList : Tea.TeaModel {
        public var resourceType: String?

        public var riskLevel: String?

        public var riskLevelSummary: [String: Int64]?

        public var sliceCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.riskLevelSummary != nil {
                map["RiskLevelSummary"] = self.riskLevelSummary!
            }
            if self.sliceCount != nil {
                map["SliceCount"] = self.sliceCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
            if let value = dict["RiskLevelSummary"] as? [String: Int64] {
                self.riskLevelSummary = value
            }
            if let value = dict["SliceCount"] as? Int32 {
                self.sliceCount = value
            }
        }
    }
    public var audioData: DescribeOnlineTestResultResponseBody.AudioData?

    public var frameData: DescribeOnlineTestResultResponseBody.FrameData?

    public var moderationTime: String?

    public var requestId: String?

    public var riskLevel: String?

    public var serviceCode: String?

    public var summaryList: [DescribeOnlineTestResultResponseBody.SummaryList]?

    public var taskId: String?

    public var taskStatus: String?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.audioData?.validate()
        try self.frameData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.audioData != nil {
            map["AudioData"] = self.audioData?.toMap()
        }
        if self.frameData != nil {
            map["FrameData"] = self.frameData?.toMap()
        }
        if self.moderationTime != nil {
            map["ModerationTime"] = self.moderationTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.summaryList != nil {
            var tmp : [Any] = []
            for k in self.summaryList! {
                tmp.append(k.toMap())
            }
            map["SummaryList"] = tmp
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AudioData"] as? [String: Any?] {
            var model = DescribeOnlineTestResultResponseBody.AudioData()
            model.fromMap(value)
            self.audioData = model
        }
        if let value = dict["FrameData"] as? [String: Any?] {
            var model = DescribeOnlineTestResultResponseBody.FrameData()
            model.fromMap(value)
            self.frameData = model
        }
        if let value = dict["ModerationTime"] as? String {
            self.moderationTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RiskLevel"] as? String {
            self.riskLevel = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["SummaryList"] as? [Any?] {
            var tmp : [DescribeOnlineTestResultResponseBody.SummaryList] = []
            for v in value {
                if v != nil {
                    var model = DescribeOnlineTestResultResponseBody.SummaryList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.summaryList = tmp
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class DescribeOnlineTestResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOnlineTestResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeOnlineTestResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportAnswerSampleRequest : Tea.TeaModel {
    public var libId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ExportAnswerSampleResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExportAnswerSampleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportAnswerSampleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExportAnswerSampleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportCipStatsRequest : Tea.TeaModel {
    public var byMonth: Bool?

    public var endDate: String?

    public var exportType: String?

    public var label: String?

    public var regionId: String?

    public var resourceType: String?

    public var serviceCode: String?

    public var startDate: String?

    public var subUid: String?

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
        if self.byMonth != nil {
            map["ByMonth"] = self.byMonth!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.exportType != nil {
            map["ExportType"] = self.exportType!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.subUid != nil {
            map["SubUid"] = self.subUid!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ByMonth"] as? Bool {
            self.byMonth = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["ExportType"] as? String {
            self.exportType = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["SubUid"] as? String {
            self.subUid = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ExportCipStatsResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

    public var httpStatusCode: Int32?

    public var msg: String?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ExportCipStatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportCipStatsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExportCipStatsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportKeywordRequest : Tea.TeaModel {
    public var libId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ExportKeywordResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ExportKeywordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportKeywordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExportKeywordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportOssCheckStatRequest : Tea.TeaModel {
    public var byMonth: Bool?

    public var endDate: String?

    public var parentTaskId: String?

    public var regionId: String?

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
        if self.byMonth != nil {
            map["ByMonth"] = self.byMonth!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.parentTaskId != nil {
            map["ParentTaskId"] = self.parentTaskId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ByMonth"] as? Bool {
            self.byMonth = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["ParentTaskId"] as? String {
            self.parentTaskId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class ExportOssCheckStatResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExportOssCheckStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportOssCheckStatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExportOssCheckStatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportResultRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var pageSize: Int32?

    public var query: String?

    public var regionId: String?

    public var sort: [String: String]?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? [String: String] {
            self.sort = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class ExportResultShrinkRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var pageSize: Int32?

    public var query: String?

    public var regionId: String?

    public var sortShrink: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortShrink != nil {
            map["Sort"] = self.sortShrink!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? String {
            self.sortShrink = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class ExportResultResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ExportResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExportResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportScanResultRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var pageSize: Int32?

    public var query: [String: String]?

    public var regionId: String?

    public var resourceType: String?

    public var sort: [String: String]?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? [String: String] {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Sort"] as? [String: String] {
            self.sort = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class ExportScanResultShrinkRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var pageSize: Int32?

    public var queryShrink: String?

    public var regionId: String?

    public var resourceType: String?

    public var sortShrink: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryShrink != nil {
            map["Query"] = self.queryShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.sortShrink != nil {
            map["Sort"] = self.sortShrink!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.queryShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Sort"] as? String {
            self.sortShrink = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class ExportScanResultResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

    public var httpStatusCode: Int32?

    public var msg: String?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ExportScanResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportScanResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExportScanResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportTextScanResultRequest : Tea.TeaModel {
    public var endDate: String?

    public var query: [String: String]?

    public var regionId: String?

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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["Query"] as? [String: String] {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class ExportTextScanResultShrinkRequest : Tea.TeaModel {
    public var endDate: String?

    public var queryShrink: String?

    public var regionId: String?

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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.queryShrink != nil {
            map["Query"] = self.queryShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["Query"] as? String {
            self.queryShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class ExportTextScanResultResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ExportTextScanResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportTextScanResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExportTextScanResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAnswerImportProgressRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetAnswerImportProgressResponseBody : Tea.TeaModel {
    public var i18nKey: String?

    public var illegalLengthSamples: [String]?

    public var invalidCount: Int32?

    public var libId: String?

    public var progress: Int32?

    public var repeatCount: Int32?

    public var repeatSamples: [String]?

    public var requestId: String?

    public var successCount: Int32?

    public var taskId: String?

    public var tips: String?

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
        if self.i18nKey != nil {
            map["I18nKey"] = self.i18nKey!
        }
        if self.illegalLengthSamples != nil {
            map["IllegalLengthSamples"] = self.illegalLengthSamples!
        }
        if self.invalidCount != nil {
            map["InvalidCount"] = self.invalidCount!
        }
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.repeatCount != nil {
            map["RepeatCount"] = self.repeatCount!
        }
        if self.repeatSamples != nil {
            map["RepeatSamples"] = self.repeatSamples!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successCount != nil {
            map["SuccessCount"] = self.successCount!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.tips != nil {
            map["Tips"] = self.tips!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["I18nKey"] as? String {
            self.i18nKey = value
        }
        if let value = dict["IllegalLengthSamples"] as? [String] {
            self.illegalLengthSamples = value
        }
        if let value = dict["InvalidCount"] as? Int32 {
            self.invalidCount = value
        }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["Progress"] as? Int32 {
            self.progress = value
        }
        if let value = dict["RepeatCount"] as? Int32 {
            self.repeatCount = value
        }
        if let value = dict["RepeatSamples"] as? [String] {
            self.repeatSamples = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SuccessCount"] as? Int32 {
            self.successCount = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["Tips"] as? String {
            self.tips = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class GetAnswerImportProgressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAnswerImportProgressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAnswerImportProgressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBackupBucketsListRequest : Tea.TeaModel {
    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetBackupBucketsListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bucket: String?

        public var region: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var data: [GetBackupBucketsListResponseBody.Data]?

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
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetBackupBucketsListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetBackupBucketsListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetBackupBucketsListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBackupBucketsListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBackupBucketsListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBackupConfigRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceType: String?

    public var serviceCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
    }
}

public class GetBackupConfigResponseBody : Tea.TeaModel {
    public var backupMode: Int32?

    public var bucket: String?

    public var enable: Bool?

    public var enableBackup: Bool?

    public var enableBackupVoice: Bool?

    public var expireSeconds: Int32?

    public var gmtModified: String?

    public var path: String?

    public var pathVoice: String?

    public var region: String?

    public var requestId: String?

    public var resourceType: String?

    public var serviceCode: String?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupMode != nil {
            map["BackupMode"] = self.backupMode!
        }
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.enableBackup != nil {
            map["EnableBackup"] = self.enableBackup!
        }
        if self.enableBackupVoice != nil {
            map["EnableBackupVoice"] = self.enableBackupVoice!
        }
        if self.expireSeconds != nil {
            map["ExpireSeconds"] = self.expireSeconds!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.pathVoice != nil {
            map["PathVoice"] = self.pathVoice!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupMode"] as? Int32 {
            self.backupMode = value
        }
        if let value = dict["Bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["EnableBackup"] as? Bool {
            self.enableBackup = value
        }
        if let value = dict["EnableBackupVoice"] as? Bool {
            self.enableBackupVoice = value
        }
        if let value = dict["ExpireSeconds"] as? Int32 {
            self.expireSeconds = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["PathVoice"] as? String {
            self.pathVoice = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["Uid"] as? String {
            self.uid = value
        }
    }
}

public class GetBackupConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBackupConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBackupConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBackupStatusRequest : Tea.TeaModel {
    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetBackupStatusResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetBackupStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBackupStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBackupStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBucketsListRequest : Tea.TeaModel {
    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetBucketsListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bucket: String?

        public var region: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var data: [GetBucketsListResponseBody.Data]?

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
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetBucketsListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetBucketsListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetBucketsListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBucketsListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBucketsListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCipStatsRequest : Tea.TeaModel {
    public var byMonth: Bool?

    public var endDate: String?

    public var label: String?

    public var regionId: String?

    public var resourceType: String?

    public var serviceCode: String?

    public var startDate: String?

    public var subUid: String?

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
        if self.byMonth != nil {
            map["ByMonth"] = self.byMonth!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.subUid != nil {
            map["SubUid"] = self.subUid!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ByMonth"] as? Bool {
            self.byMonth = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["SubUid"] as? String {
            self.subUid = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class GetCipStatsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class LabelStatChart : Tea.TeaModel {
            public class ImageTreeChar : Tea.TeaModel {
                public var description_: String?

                public var name: String?

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
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                }
            }
            public class TextTreeChart : Tea.TeaModel {
                public var description_: String?

                public var name: String?

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
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                }
            }
            public class TreeChart : Tea.TeaModel {
                public var description_: String?

                public var name: String?

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
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                }
            }
            public class VoiceTreeChart : Tea.TeaModel {
                public var description_: String?

                public var name: String?

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
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                }
            }
            public class Y : Tea.TeaModel {
                public var data: [Int64]?

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
                    if self.data != nil {
                        map["Data"] = self.data!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Data"] as? [Int64] {
                        self.data = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                }
            }
            public var imageTreeChar: [GetCipStatsResponseBody.Data.LabelStatChart.ImageTreeChar]?

            public var serviceCode: String?

            public var textTreeChart: [GetCipStatsResponseBody.Data.LabelStatChart.TextTreeChart]?

            public var totalCount: Int64?

            public var treeChart: [GetCipStatsResponseBody.Data.LabelStatChart.TreeChart]?

            public var voiceTreeChart: [GetCipStatsResponseBody.Data.LabelStatChart.VoiceTreeChart]?

            public var x: [String]?

            public var y: [GetCipStatsResponseBody.Data.LabelStatChart.Y]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.imageTreeChar != nil {
                    var tmp : [Any] = []
                    for k in self.imageTreeChar! {
                        tmp.append(k.toMap())
                    }
                    map["ImageTreeChar"] = tmp
                }
                if self.serviceCode != nil {
                    map["ServiceCode"] = self.serviceCode!
                }
                if self.textTreeChart != nil {
                    var tmp : [Any] = []
                    for k in self.textTreeChart! {
                        tmp.append(k.toMap())
                    }
                    map["TextTreeChart"] = tmp
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.treeChart != nil {
                    var tmp : [Any] = []
                    for k in self.treeChart! {
                        tmp.append(k.toMap())
                    }
                    map["TreeChart"] = tmp
                }
                if self.voiceTreeChart != nil {
                    var tmp : [Any] = []
                    for k in self.voiceTreeChart! {
                        tmp.append(k.toMap())
                    }
                    map["VoiceTreeChart"] = tmp
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    var tmp : [Any] = []
                    for k in self.y! {
                        tmp.append(k.toMap())
                    }
                    map["Y"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ImageTreeChar"] as? [Any?] {
                    var tmp : [GetCipStatsResponseBody.Data.LabelStatChart.ImageTreeChar] = []
                    for v in value {
                        if v != nil {
                            var model = GetCipStatsResponseBody.Data.LabelStatChart.ImageTreeChar()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.imageTreeChar = tmp
                }
                if let value = dict["ServiceCode"] as? String {
                    self.serviceCode = value
                }
                if let value = dict["TextTreeChart"] as? [Any?] {
                    var tmp : [GetCipStatsResponseBody.Data.LabelStatChart.TextTreeChart] = []
                    for v in value {
                        if v != nil {
                            var model = GetCipStatsResponseBody.Data.LabelStatChart.TextTreeChart()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.textTreeChart = tmp
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
                if let value = dict["TreeChart"] as? [Any?] {
                    var tmp : [GetCipStatsResponseBody.Data.LabelStatChart.TreeChart] = []
                    for v in value {
                        if v != nil {
                            var model = GetCipStatsResponseBody.Data.LabelStatChart.TreeChart()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.treeChart = tmp
                }
                if let value = dict["VoiceTreeChart"] as? [Any?] {
                    var tmp : [GetCipStatsResponseBody.Data.LabelStatChart.VoiceTreeChart] = []
                    for v in value {
                        if v != nil {
                            var model = GetCipStatsResponseBody.Data.LabelStatChart.VoiceTreeChart()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.voiceTreeChart = tmp
                }
                if let value = dict["X"] as? [String] {
                    self.x = value
                }
                if let value = dict["Y"] as? [Any?] {
                    var tmp : [GetCipStatsResponseBody.Data.LabelStatChart.Y] = []
                    for v in value {
                        if v != nil {
                            var model = GetCipStatsResponseBody.Data.LabelStatChart.Y()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.y = tmp
                }
            }
        }
        public class Y : Tea.TeaModel {
            public var data: [Int64]?

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
                if self.data != nil {
                    map["Data"] = self.data!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Data"] as? [Int64] {
                    self.data = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public class Z : Tea.TeaModel {
            public var data: [Int64]?

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
                if self.data != nil {
                    map["Data"] = self.data!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Data"] as? [Int64] {
                    self.data = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var labelStatChart: [GetCipStatsResponseBody.Data.LabelStatChart]?

        public var totalStat: [String: [String: Any]]?

        public var uids: [String]?

        public var x: [String]?

        public var y: [GetCipStatsResponseBody.Data.Y]?

        public var z: [GetCipStatsResponseBody.Data.Z]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.labelStatChart != nil {
                var tmp : [Any] = []
                for k in self.labelStatChart! {
                    tmp.append(k.toMap())
                }
                map["LabelStatChart"] = tmp
            }
            if self.totalStat != nil {
                map["TotalStat"] = self.totalStat!
            }
            if self.uids != nil {
                map["Uids"] = self.uids!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                var tmp : [Any] = []
                for k in self.y! {
                    tmp.append(k.toMap())
                }
                map["Y"] = tmp
            }
            if self.z != nil {
                var tmp : [Any] = []
                for k in self.z! {
                    tmp.append(k.toMap())
                }
                map["Z"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LabelStatChart"] as? [Any?] {
                var tmp : [GetCipStatsResponseBody.Data.LabelStatChart] = []
                for v in value {
                    if v != nil {
                        var model = GetCipStatsResponseBody.Data.LabelStatChart()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labelStatChart = tmp
            }
            if let value = dict["TotalStat"] as? [String: [String: Any]] {
                self.totalStat = value
            }
            if let value = dict["Uids"] as? [String] {
                self.uids = value
            }
            if let value = dict["X"] as? [String] {
                self.x = value
            }
            if let value = dict["Y"] as? [Any?] {
                var tmp : [GetCipStatsResponseBody.Data.Y] = []
                for v in value {
                    if v != nil {
                        var model = GetCipStatsResponseBody.Data.Y()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.y = tmp
            }
            if let value = dict["Z"] as? [Any?] {
                var tmp : [GetCipStatsResponseBody.Data.Z] = []
                for v in value {
                    if v != nil {
                        var model = GetCipStatsResponseBody.Data.Z()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.z = tmp
            }
        }
    }
    public var code: Int32?

    public var data: GetCipStatsResponseBody.Data?

    public var httpStatusCode: Int32?

    public var msg: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetCipStatsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetCipStatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCipStatsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetCipStatsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExecuteTimeRequest : Tea.TeaModel {
    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetExecuteTimeResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetExecuteTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExecuteTimeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetExecuteTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFeatureConfigRequest : Tea.TeaModel {
    public var query: String?

    public var regionId: String?

    public var resourceType: String?

    public var serviceCode: String?

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
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class GetFeatureConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var featureConf: [[String: Any]]?

        public var resourceType: String?

        public var serviceCode: String?

        public var type: String?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.featureConf != nil {
                map["FeatureConf"] = self.featureConf!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.serviceCode != nil {
                map["ServiceCode"] = self.serviceCode!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FeatureConf"] as? [[String: Any]] {
                self.featureConf = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["ServiceCode"] as? String {
                self.serviceCode = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
            }
        }
    }
    public var code: Int32?

    public var data: GetFeatureConfigResponseBody.Data?

    public var httpStatusCode: Int32?

    public var msg: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetFeatureConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetFeatureConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFeatureConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetFeatureConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetImageSceneLabelConfRequest : Tea.TeaModel {
    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetImageSceneLabelConfResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: [[String: Any]]?

    public var httpStatusCode: Int32?

    public var msg: String?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [[String: Any]] {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetImageSceneLabelConfResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageSceneLabelConfResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetImageSceneLabelConfResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetImageSceneLabelListConfRequest : Tea.TeaModel {
    public var imageServiceCode: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageServiceCode != nil {
            map["ImageServiceCode"] = self.imageServiceCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageServiceCode"] as? String {
            self.imageServiceCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetImageSceneLabelListConfResponseBody : Tea.TeaModel {
    public var data: [Any]?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any] {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetImageSceneLabelListConfResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageSceneLabelListConfResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetImageSceneLabelListConfResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobNameListRequest : Tea.TeaModel {
    public var endDate: String?

    public var query: String?

    public var regionId: String?

    public var sort: [String: String]?

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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? [String: String] {
            self.sort = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class GetJobNameListShrinkRequest : Tea.TeaModel {
    public var endDate: String?

    public var query: String?

    public var regionId: String?

    public var sortShrink: String?

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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortShrink != nil {
            map["Sort"] = self.sortShrink!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? String {
            self.sortShrink = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class GetJobNameListResponseBody : Tea.TeaModel {
    public var data: [String]?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String] {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetJobNameListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobNameListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetJobNameListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetKeywordImportResultRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetKeywordImportResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var i18nKey: String?

        public var illegalLengthKeywords: [String]?

        public var invalidCount: Int32?

        public var invalidKeywords: [String]?

        public var libId: String?

        public var progress: Int32?

        public var repeatCount: Int32?

        public var repeatKeywords: [String]?

        public var successCount: Int32?

        public var tips: String?

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
            if self.i18nKey != nil {
                map["I18nKey"] = self.i18nKey!
            }
            if self.illegalLengthKeywords != nil {
                map["IllegalLengthKeywords"] = self.illegalLengthKeywords!
            }
            if self.invalidCount != nil {
                map["InvalidCount"] = self.invalidCount!
            }
            if self.invalidKeywords != nil {
                map["InvalidKeywords"] = self.invalidKeywords!
            }
            if self.libId != nil {
                map["LibId"] = self.libId!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.repeatCount != nil {
                map["RepeatCount"] = self.repeatCount!
            }
            if self.repeatKeywords != nil {
                map["RepeatKeywords"] = self.repeatKeywords!
            }
            if self.successCount != nil {
                map["SuccessCount"] = self.successCount!
            }
            if self.tips != nil {
                map["Tips"] = self.tips!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["I18nKey"] as? String {
                self.i18nKey = value
            }
            if let value = dict["IllegalLengthKeywords"] as? [String] {
                self.illegalLengthKeywords = value
            }
            if let value = dict["InvalidCount"] as? Int32 {
                self.invalidCount = value
            }
            if let value = dict["InvalidKeywords"] as? [String] {
                self.invalidKeywords = value
            }
            if let value = dict["LibId"] as? String {
                self.libId = value
            }
            if let value = dict["Progress"] as? Int32 {
                self.progress = value
            }
            if let value = dict["RepeatCount"] as? Int32 {
                self.repeatCount = value
            }
            if let value = dict["RepeatKeywords"] as? [String] {
                self.repeatKeywords = value
            }
            if let value = dict["SuccessCount"] as? Int32 {
                self.successCount = value
            }
            if let value = dict["Tips"] as? String {
                self.tips = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: Int32?

    public var data: GetKeywordImportResultResponseBody.Data?

    public var msg: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetKeywordImportResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetKeywordImportResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetKeywordImportResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetKeywordImportResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetKeywordLibRequest : Tea.TeaModel {
    public var libId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetKeywordLibResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gmtModified: String?

        public var keywordCount: String?

        public var libId: String?

        public var libName: String?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.keywordCount != nil {
                map["KeywordCount"] = self.keywordCount!
            }
            if self.libId != nil {
                map["LibId"] = self.libId!
            }
            if self.libName != nil {
                map["LibName"] = self.libName!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["KeywordCount"] as? String {
                self.keywordCount = value
            }
            if let value = dict["LibId"] as? String {
                self.libId = value
            }
            if let value = dict["LibName"] as? String {
                self.libName = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
            }
        }
    }
    public var code: Int32?

    public var data: GetKeywordLibResponseBody.Data?

    public var msg: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetKeywordLibResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetKeywordLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetKeywordLibResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetKeywordLibResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOssCheckFreezeResultRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var finishNum: Int64?

    public var pageSize: Int32?

    public var query: String?

    public var regionId: String?

    public var sort: [String: String]?

    public var startDate: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.finishNum != nil {
            map["FinishNum"] = self.finishNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["FinishNum"] as? Int64 {
            self.finishNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? [String: String] {
            self.sort = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class GetOssCheckFreezeResultShrinkRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var finishNum: Int64?

    public var pageSize: Int32?

    public var query: String?

    public var regionId: String?

    public var sortShrink: String?

    public var startDate: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.finishNum != nil {
            map["FinishNum"] = self.finishNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortShrink != nil {
            map["Sort"] = self.sortShrink!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["FinishNum"] as? Int64 {
            self.finishNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? String {
            self.sortShrink = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class GetOssCheckFreezeResultResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class LabelDetails : Tea.TeaModel {
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
        public var bucket: String?

        public var code: String?

        public var contentType: String?

        public var copyFrom: String?

        public var feedback: String?

        public var freeze: Bool?

        public var freezeStatus: String?

        public var freezeType: String?

        public var imageUrl: String?

        public var isCopy: Bool?

        public var jobName: String?

        public var labelDetails: [GetOssCheckFreezeResultResponseBody.Items.LabelDetails]?

        public var labels: [String]?

        public var labels2: [String]?

        public var manualFreezeAction: String?

        public var manualOperateTime: String?

        public var manualOperator: String?

        public var md5: String?

        public var msg: String?

        public var object: String?

        public var requestId: String?

        public var riskLevel: String?

        public var riskLevel0: String?

        public var riskLevel2: String?

        public var scanResult: String?

        public var serviceCode: String?

        public var serviceName: String?

        public var sysDisposalStatus: String?

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
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.contentType != nil {
                map["ContentType"] = self.contentType!
            }
            if self.copyFrom != nil {
                map["CopyFrom"] = self.copyFrom!
            }
            if self.feedback != nil {
                map["Feedback"] = self.feedback!
            }
            if self.freeze != nil {
                map["Freeze"] = self.freeze!
            }
            if self.freezeStatus != nil {
                map["FreezeStatus"] = self.freezeStatus!
            }
            if self.freezeType != nil {
                map["FreezeType"] = self.freezeType!
            }
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.isCopy != nil {
                map["IsCopy"] = self.isCopy!
            }
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.labelDetails != nil {
                var tmp : [Any] = []
                for k in self.labelDetails! {
                    tmp.append(k.toMap())
                }
                map["LabelDetails"] = tmp
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.labels2 != nil {
                map["Labels2"] = self.labels2!
            }
            if self.manualFreezeAction != nil {
                map["ManualFreezeAction"] = self.manualFreezeAction!
            }
            if self.manualOperateTime != nil {
                map["ManualOperateTime"] = self.manualOperateTime!
            }
            if self.manualOperator != nil {
                map["ManualOperator"] = self.manualOperator!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.msg != nil {
                map["Msg"] = self.msg!
            }
            if self.object != nil {
                map["Object"] = self.object!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.riskLevel0 != nil {
                map["RiskLevel0"] = self.riskLevel0!
            }
            if self.riskLevel2 != nil {
                map["RiskLevel2"] = self.riskLevel2!
            }
            if self.scanResult != nil {
                map["ScanResult"] = self.scanResult!
            }
            if self.serviceCode != nil {
                map["ServiceCode"] = self.serviceCode!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.sysDisposalStatus != nil {
                map["SysDisposalStatus"] = self.sysDisposalStatus!
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
            if let value = dict["Bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["ContentType"] as? String {
                self.contentType = value
            }
            if let value = dict["CopyFrom"] as? String {
                self.copyFrom = value
            }
            if let value = dict["Feedback"] as? String {
                self.feedback = value
            }
            if let value = dict["Freeze"] as? Bool {
                self.freeze = value
            }
            if let value = dict["FreezeStatus"] as? String {
                self.freezeStatus = value
            }
            if let value = dict["FreezeType"] as? String {
                self.freezeType = value
            }
            if let value = dict["ImageUrl"] as? String {
                self.imageUrl = value
            }
            if let value = dict["IsCopy"] as? Bool {
                self.isCopy = value
            }
            if let value = dict["JobName"] as? String {
                self.jobName = value
            }
            if let value = dict["LabelDetails"] as? [Any?] {
                var tmp : [GetOssCheckFreezeResultResponseBody.Items.LabelDetails] = []
                for v in value {
                    if v != nil {
                        var model = GetOssCheckFreezeResultResponseBody.Items.LabelDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labelDetails = tmp
            }
            if let value = dict["Labels"] as? [String] {
                self.labels = value
            }
            if let value = dict["Labels2"] as? [String] {
                self.labels2 = value
            }
            if let value = dict["ManualFreezeAction"] as? String {
                self.manualFreezeAction = value
            }
            if let value = dict["ManualOperateTime"] as? String {
                self.manualOperateTime = value
            }
            if let value = dict["ManualOperator"] as? String {
                self.manualOperator = value
            }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["Msg"] as? String {
                self.msg = value
            }
            if let value = dict["Object"] as? String {
                self.object = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
            if let value = dict["RiskLevel0"] as? String {
                self.riskLevel0 = value
            }
            if let value = dict["RiskLevel2"] as? String {
                self.riskLevel2 = value
            }
            if let value = dict["ScanResult"] as? String {
                self.scanResult = value
            }
            if let value = dict["ServiceCode"] as? String {
                self.serviceCode = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["SysDisposalStatus"] as? String {
                self.sysDisposalStatus = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [GetOssCheckFreezeResultResponseBody.Items]?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
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
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [GetOssCheckFreezeResultResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = GetOssCheckFreezeResultResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class GetOssCheckFreezeResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOssCheckFreezeResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetOssCheckFreezeResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOssCheckResultDetailRequest : Tea.TeaModel {
    public var bucket: String?

    public var mediaType: Int32?

    public var object: String?

    public var parentTaskId: String?

    public var queryRequestId: String?

    public var regionId: String?

    public var serviceCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.object != nil {
            map["Object"] = self.object!
        }
        if self.parentTaskId != nil {
            map["ParentTaskId"] = self.parentTaskId!
        }
        if self.queryRequestId != nil {
            map["QueryRequestId"] = self.queryRequestId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["MediaType"] as? Int32 {
            self.mediaType = value
        }
        if let value = dict["Object"] as? String {
            self.object = value
        }
        if let value = dict["ParentTaskId"] as? String {
            self.parentTaskId = value
        }
        if let value = dict["QueryRequestId"] as? String {
            self.queryRequestId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
    }
}

public class GetOssCheckResultDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class LabelDetails : Tea.TeaModel {
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
        public class LabelDetails2 : Tea.TeaModel {
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
        public class ScanServiceInfos : Tea.TeaModel {
            public var copyFrom: String?

            public var isCopy: Bool?

            public var serviceCode: String?

            public var serviceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.copyFrom != nil {
                    map["CopyFrom"] = self.copyFrom!
                }
                if self.isCopy != nil {
                    map["IsCopy"] = self.isCopy!
                }
                if self.serviceCode != nil {
                    map["ServiceCode"] = self.serviceCode!
                }
                if self.serviceName != nil {
                    map["ServiceName"] = self.serviceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CopyFrom"] as? String {
                    self.copyFrom = value
                }
                if let value = dict["IsCopy"] as? Bool {
                    self.isCopy = value
                }
                if let value = dict["ServiceCode"] as? String {
                    self.serviceCode = value
                }
                if let value = dict["ServiceName"] as? String {
                    self.serviceName = value
                }
            }
        }
        public var bucket: String?

        public var code: String?

        public var contentType: String?

        public var copyFrom: String?

        public var freezeStatus: String?

        public var freezeType: String?

        public var imageUrl: String?

        public var isCopy: Bool?

        public var jobName: String?

        public var labelDetails: [GetOssCheckResultDetailResponseBody.Data.LabelDetails]?

        public var labelDetails2: [GetOssCheckResultDetailResponseBody.Data.LabelDetails2]?

        public var labels: [String]?

        public var labels2: [String]?

        public var manualFreezeAction: String?

        public var manualOperateTime: String?

        public var manualOperator: String?

        public var md5: String?

        public var msg: String?

        public var object: String?

        public var riskLevel: String?

        public var riskLevel0: String?

        public var riskLevel2: String?

        public var scanResult: String?

        public var scanServiceInfos: [GetOssCheckResultDetailResponseBody.Data.ScanServiceInfos]?

        public var serviceCode: String?

        public var serviceName: String?

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
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.contentType != nil {
                map["ContentType"] = self.contentType!
            }
            if self.copyFrom != nil {
                map["CopyFrom"] = self.copyFrom!
            }
            if self.freezeStatus != nil {
                map["FreezeStatus"] = self.freezeStatus!
            }
            if self.freezeType != nil {
                map["FreezeType"] = self.freezeType!
            }
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.isCopy != nil {
                map["IsCopy"] = self.isCopy!
            }
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.labelDetails != nil {
                var tmp : [Any] = []
                for k in self.labelDetails! {
                    tmp.append(k.toMap())
                }
                map["LabelDetails"] = tmp
            }
            if self.labelDetails2 != nil {
                var tmp : [Any] = []
                for k in self.labelDetails2! {
                    tmp.append(k.toMap())
                }
                map["LabelDetails2"] = tmp
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.labels2 != nil {
                map["Labels2"] = self.labels2!
            }
            if self.manualFreezeAction != nil {
                map["ManualFreezeAction"] = self.manualFreezeAction!
            }
            if self.manualOperateTime != nil {
                map["ManualOperateTime"] = self.manualOperateTime!
            }
            if self.manualOperator != nil {
                map["ManualOperator"] = self.manualOperator!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.msg != nil {
                map["Msg"] = self.msg!
            }
            if self.object != nil {
                map["Object"] = self.object!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.riskLevel0 != nil {
                map["RiskLevel0"] = self.riskLevel0!
            }
            if self.riskLevel2 != nil {
                map["RiskLevel2"] = self.riskLevel2!
            }
            if self.scanResult != nil {
                map["ScanResult"] = self.scanResult!
            }
            if self.scanServiceInfos != nil {
                var tmp : [Any] = []
                for k in self.scanServiceInfos! {
                    tmp.append(k.toMap())
                }
                map["ScanServiceInfos"] = tmp
            }
            if self.serviceCode != nil {
                map["ServiceCode"] = self.serviceCode!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
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
            if let value = dict["Bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["ContentType"] as? String {
                self.contentType = value
            }
            if let value = dict["CopyFrom"] as? String {
                self.copyFrom = value
            }
            if let value = dict["FreezeStatus"] as? String {
                self.freezeStatus = value
            }
            if let value = dict["FreezeType"] as? String {
                self.freezeType = value
            }
            if let value = dict["ImageUrl"] as? String {
                self.imageUrl = value
            }
            if let value = dict["IsCopy"] as? Bool {
                self.isCopy = value
            }
            if let value = dict["JobName"] as? String {
                self.jobName = value
            }
            if let value = dict["LabelDetails"] as? [Any?] {
                var tmp : [GetOssCheckResultDetailResponseBody.Data.LabelDetails] = []
                for v in value {
                    if v != nil {
                        var model = GetOssCheckResultDetailResponseBody.Data.LabelDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labelDetails = tmp
            }
            if let value = dict["LabelDetails2"] as? [Any?] {
                var tmp : [GetOssCheckResultDetailResponseBody.Data.LabelDetails2] = []
                for v in value {
                    if v != nil {
                        var model = GetOssCheckResultDetailResponseBody.Data.LabelDetails2()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labelDetails2 = tmp
            }
            if let value = dict["Labels"] as? [String] {
                self.labels = value
            }
            if let value = dict["Labels2"] as? [String] {
                self.labels2 = value
            }
            if let value = dict["ManualFreezeAction"] as? String {
                self.manualFreezeAction = value
            }
            if let value = dict["ManualOperateTime"] as? String {
                self.manualOperateTime = value
            }
            if let value = dict["ManualOperator"] as? String {
                self.manualOperator = value
            }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["Msg"] as? String {
                self.msg = value
            }
            if let value = dict["Object"] as? String {
                self.object = value
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
            if let value = dict["RiskLevel0"] as? String {
                self.riskLevel0 = value
            }
            if let value = dict["RiskLevel2"] as? String {
                self.riskLevel2 = value
            }
            if let value = dict["ScanResult"] as? String {
                self.scanResult = value
            }
            if let value = dict["ScanServiceInfos"] as? [Any?] {
                var tmp : [GetOssCheckResultDetailResponseBody.Data.ScanServiceInfos] = []
                for v in value {
                    if v != nil {
                        var model = GetOssCheckResultDetailResponseBody.Data.ScanServiceInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.scanServiceInfos = tmp
            }
            if let value = dict["ServiceCode"] as? String {
                self.serviceCode = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
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

    public var data: GetOssCheckResultDetailResponseBody.Data?

    public var msg: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetOssCheckResultDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetOssCheckResultDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOssCheckResultDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetOssCheckResultDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOssCheckStatRequest : Tea.TeaModel {
    public var byMonth: Bool?

    public var endDate: String?

    public var parentTaskId: String?

    public var regionId: String?

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
        if self.byMonth != nil {
            map["ByMonth"] = self.byMonth!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.parentTaskId != nil {
            map["ParentTaskId"] = self.parentTaskId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ByMonth"] as? Bool {
            self.byMonth = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["ParentTaskId"] as? String {
            self.parentTaskId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class GetOssCheckStatResponseBody : Tea.TeaModel {
    public class BarChart : Tea.TeaModel {
        public class Y : Tea.TeaModel {
            public var data: [Int64]?

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
                if self.data != nil {
                    map["Data"] = self.data!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Data"] as? [Int64] {
                    self.data = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var x: [String]?

        public var y: [GetOssCheckStatResponseBody.BarChart.Y]?

        public override init() {
            super.init()
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
                map["X"] = self.x!
            }
            if self.y != nil {
                var tmp : [Any] = []
                for k in self.y! {
                    tmp.append(k.toMap())
                }
                map["Y"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["X"] as? [String] {
                self.x = value
            }
            if let value = dict["Y"] as? [Any?] {
                var tmp : [GetOssCheckStatResponseBody.BarChart.Y] = []
                for v in value {
                    if v != nil {
                        var model = GetOssCheckStatResponseBody.BarChart.Y()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.y = tmp
            }
        }
    }
    public var barChart: GetOssCheckStatResponseBody.BarChart?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.barChart?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.barChart != nil {
            map["BarChart"] = self.barChart?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BarChart"] as? [String: Any?] {
            var model = GetOssCheckStatResponseBody.BarChart()
            model.fromMap(value)
            self.barChart = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetOssCheckStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOssCheckStatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetOssCheckStatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOssCheckStatusRequest : Tea.TeaModel {
    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetOssCheckStatusResponseBody : Tea.TeaModel {
    public var bid: String?

    public var buy: Bool?

    public var commodityCode: String?

    public var indebt: Bool?

    public var ramStatus: String?

    public var requestId: String?

    public var slsStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.buy != nil {
            map["Buy"] = self.buy!
        }
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.indebt != nil {
            map["Indebt"] = self.indebt!
        }
        if self.ramStatus != nil {
            map["RamStatus"] = self.ramStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slsStatus != nil {
            map["SlsStatus"] = self.slsStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["Buy"] as? Bool {
            self.buy = value
        }
        if let value = dict["CommodityCode"] as? String {
            self.commodityCode = value
        }
        if let value = dict["Indebt"] as? Bool {
            self.indebt = value
        }
        if let value = dict["RamStatus"] as? String {
            self.ramStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SlsStatus"] as? String {
            self.slsStatus = value
        }
    }
}

public class GetOssCheckStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOssCheckStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetOssCheckStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOssCheckTaskInfoRequest : Tea.TeaModel {
    public var parentTaskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parentTaskId != nil {
            map["ParentTaskId"] = self.parentTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ParentTaskId"] as? String {
            self.parentTaskId = value
        }
    }
}

public class GetOssCheckTaskInfoResponseBody : Tea.TeaModel {
    public class Config : Tea.TeaModel {
        public class ScanServiceInfos : Tea.TeaModel {
            public var copyFrom: String?

            public var isCopy: Bool?

            public var serviceCode: String?

            public var serviceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.copyFrom != nil {
                    map["CopyFrom"] = self.copyFrom!
                }
                if self.isCopy != nil {
                    map["IsCopy"] = self.isCopy!
                }
                if self.serviceCode != nil {
                    map["ServiceCode"] = self.serviceCode!
                }
                if self.serviceName != nil {
                    map["ServiceName"] = self.serviceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CopyFrom"] as? String {
                    self.copyFrom = value
                }
                if let value = dict["IsCopy"] as? Bool {
                    self.isCopy = value
                }
                if let value = dict["ServiceCode"] as? String {
                    self.serviceCode = value
                }
                if let value = dict["ServiceName"] as? String {
                    self.serviceName = value
                }
            }
        }
        public class UserFreezeConfig : Tea.TeaModel {
            public var freezeRestorePath: String?

            public var freezeType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.freezeRestorePath != nil {
                    map["FreezeRestorePath"] = self.freezeRestorePath!
                }
                if self.freezeType != nil {
                    map["FreezeType"] = self.freezeType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FreezeRestorePath"] as? String {
                    self.freezeRestorePath = value
                }
                if let value = dict["FreezeType"] as? String {
                    self.freezeType = value
                }
            }
        }
        public var callbackId: Int64?

        public var distinctHistoryTasks: Bool?

        public var endTime: String?

        public var executeDate: Int32?

        public var executeTime: String?

        public var freeze: Bool?

        public var freezeHighRisk1: Bool?

        public var freezeHighRisk2: Bool?

        public var freezeMediumRisk1: Bool?

        public var freezeMediumRisk2: Bool?

        public var freezeRestorePath: String?

        public var freezeType: String?

        public var prefixFilterType: String?

        public var prefixFilters: [String]?

        public var priority: Int32?

        public var referer: String?

        public var scanLimit: Int64?

        public var scanNoFileType: Bool?

        public var scanResourceType: Int32?

        public var scanService: [String]?

        public var scanServiceInfos: [GetOssCheckTaskInfoResponseBody.Config.ScanServiceInfos]?

        public var startTime: String?

        public var taskCycle: Int32?

        public var userFreezeConfig: GetOssCheckTaskInfoResponseBody.Config.UserFreezeConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.userFreezeConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callbackId != nil {
                map["CallbackId"] = self.callbackId!
            }
            if self.distinctHistoryTasks != nil {
                map["DistinctHistoryTasks"] = self.distinctHistoryTasks!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.executeDate != nil {
                map["ExecuteDate"] = self.executeDate!
            }
            if self.executeTime != nil {
                map["ExecuteTime"] = self.executeTime!
            }
            if self.freeze != nil {
                map["Freeze"] = self.freeze!
            }
            if self.freezeHighRisk1 != nil {
                map["FreezeHighRisk1"] = self.freezeHighRisk1!
            }
            if self.freezeHighRisk2 != nil {
                map["FreezeHighRisk2"] = self.freezeHighRisk2!
            }
            if self.freezeMediumRisk1 != nil {
                map["FreezeMediumRisk1"] = self.freezeMediumRisk1!
            }
            if self.freezeMediumRisk2 != nil {
                map["FreezeMediumRisk2"] = self.freezeMediumRisk2!
            }
            if self.freezeRestorePath != nil {
                map["FreezeRestorePath"] = self.freezeRestorePath!
            }
            if self.freezeType != nil {
                map["FreezeType"] = self.freezeType!
            }
            if self.prefixFilterType != nil {
                map["PrefixFilterType"] = self.prefixFilterType!
            }
            if self.prefixFilters != nil {
                map["PrefixFilters"] = self.prefixFilters!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.referer != nil {
                map["Referer"] = self.referer!
            }
            if self.scanLimit != nil {
                map["ScanLimit"] = self.scanLimit!
            }
            if self.scanNoFileType != nil {
                map["ScanNoFileType"] = self.scanNoFileType!
            }
            if self.scanResourceType != nil {
                map["ScanResourceType"] = self.scanResourceType!
            }
            if self.scanService != nil {
                map["ScanService"] = self.scanService!
            }
            if self.scanServiceInfos != nil {
                var tmp : [Any] = []
                for k in self.scanServiceInfos! {
                    tmp.append(k.toMap())
                }
                map["ScanServiceInfos"] = tmp
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.taskCycle != nil {
                map["TaskCycle"] = self.taskCycle!
            }
            if self.userFreezeConfig != nil {
                map["UserFreezeConfig"] = self.userFreezeConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CallbackId"] as? Int64 {
                self.callbackId = value
            }
            if let value = dict["DistinctHistoryTasks"] as? Bool {
                self.distinctHistoryTasks = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ExecuteDate"] as? Int32 {
                self.executeDate = value
            }
            if let value = dict["ExecuteTime"] as? String {
                self.executeTime = value
            }
            if let value = dict["Freeze"] as? Bool {
                self.freeze = value
            }
            if let value = dict["FreezeHighRisk1"] as? Bool {
                self.freezeHighRisk1 = value
            }
            if let value = dict["FreezeHighRisk2"] as? Bool {
                self.freezeHighRisk2 = value
            }
            if let value = dict["FreezeMediumRisk1"] as? Bool {
                self.freezeMediumRisk1 = value
            }
            if let value = dict["FreezeMediumRisk2"] as? Bool {
                self.freezeMediumRisk2 = value
            }
            if let value = dict["FreezeRestorePath"] as? String {
                self.freezeRestorePath = value
            }
            if let value = dict["FreezeType"] as? String {
                self.freezeType = value
            }
            if let value = dict["PrefixFilterType"] as? String {
                self.prefixFilterType = value
            }
            if let value = dict["PrefixFilters"] as? [String] {
                self.prefixFilters = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["Referer"] as? String {
                self.referer = value
            }
            if let value = dict["ScanLimit"] as? Int64 {
                self.scanLimit = value
            }
            if let value = dict["ScanNoFileType"] as? Bool {
                self.scanNoFileType = value
            }
            if let value = dict["ScanResourceType"] as? Int32 {
                self.scanResourceType = value
            }
            if let value = dict["ScanService"] as? [String] {
                self.scanService = value
            }
            if let value = dict["ScanServiceInfos"] as? [Any?] {
                var tmp : [GetOssCheckTaskInfoResponseBody.Config.ScanServiceInfos] = []
                for v in value {
                    if v != nil {
                        var model = GetOssCheckTaskInfoResponseBody.Config.ScanServiceInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.scanServiceInfos = tmp
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["TaskCycle"] as? Int32 {
                self.taskCycle = value
            }
            if let value = dict["UserFreezeConfig"] as? [String: Any?] {
                var model = GetOssCheckTaskInfoResponseBody.Config.UserFreezeConfig()
                model.fromMap(value)
                self.userFreezeConfig = model
            }
        }
    }
    public var buckets: String?

    public var config: GetOssCheckTaskInfoResponseBody.Config?

    public var endTime: String?

    public var finishNum: Int64?

    public var isInc: Bool?

    public var lastExecuteDate: String?

    public var mediaType: Int32?

    public var nextExecuteDate: String?

    public var objectNum: Int64?

    public var requestId: String?

    public var searchNum: Int64?

    public var startTime: String?

    public var status: Int32?

    public var taskId: String?

    public var taskName: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.config?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buckets != nil {
            map["Buckets"] = self.buckets!
        }
        if self.config != nil {
            map["Config"] = self.config?.toMap()
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.finishNum != nil {
            map["FinishNum"] = self.finishNum!
        }
        if self.isInc != nil {
            map["IsInc"] = self.isInc!
        }
        if self.lastExecuteDate != nil {
            map["LastExecuteDate"] = self.lastExecuteDate!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.nextExecuteDate != nil {
            map["NextExecuteDate"] = self.nextExecuteDate!
        }
        if self.objectNum != nil {
            map["ObjectNum"] = self.objectNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.searchNum != nil {
            map["SearchNum"] = self.searchNum!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Buckets"] as? String {
            self.buckets = value
        }
        if let value = dict["Config"] as? [String: Any?] {
            var model = GetOssCheckTaskInfoResponseBody.Config()
            model.fromMap(value)
            self.config = model
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["FinishNum"] as? Int64 {
            self.finishNum = value
        }
        if let value = dict["IsInc"] as? Bool {
            self.isInc = value
        }
        if let value = dict["LastExecuteDate"] as? String {
            self.lastExecuteDate = value
        }
        if let value = dict["MediaType"] as? Int32 {
            self.mediaType = value
        }
        if let value = dict["NextExecuteDate"] as? String {
            self.nextExecuteDate = value
        }
        if let value = dict["ObjectNum"] as? Int64 {
            self.objectNum = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SearchNum"] as? Int64 {
            self.searchNum = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class GetOssCheckTaskInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOssCheckTaskInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetOssCheckTaskInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetScanNumRequest : Tea.TeaModel {
    public var buckets: String?

    public var mediaType: Int32?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buckets != nil {
            map["Buckets"] = self.buckets!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Buckets"] as? String {
            self.buckets = value
        }
        if let value = dict["MediaType"] as? Int32 {
            self.mediaType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetScanNumResponseBody : Tea.TeaModel {
    public var limitNumber: Int64?

    public var requestId: String?

    public var scanNumber: Int64?

    public var sumNumber: Int64?

    public var tag: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.limitNumber != nil {
            map["LimitNumber"] = self.limitNumber!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scanNumber != nil {
            map["ScanNumber"] = self.scanNumber!
        }
        if self.sumNumber != nil {
            map["SumNumber"] = self.sumNumber!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LimitNumber"] as? Int64 {
            self.limitNumber = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScanNumber"] as? Int64 {
            self.scanNumber = value
        }
        if let value = dict["SumNumber"] as? Int64 {
            self.sumNumber = value
        }
        if let value = dict["Tag"] as? Bool {
            self.tag = value
        }
    }
}

public class GetScanNumResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScanNumResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetScanNumResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetScanResultRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var pageSize: Int32?

    public var query: [String: String]?

    public var regionId: String?

    public var resourceType: String?

    public var sort: [String: String]?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? [String: String] {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Sort"] as? [String: String] {
            self.sort = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class GetScanResultShrinkRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var pageSize: Int32?

    public var queryShrink: String?

    public var regionId: String?

    public var resourceType: String?

    public var sortShrink: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryShrink != nil {
            map["Query"] = self.queryShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.sortShrink != nil {
            map["Sort"] = self.sortShrink!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.queryShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Sort"] as? String {
            self.sortShrink = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class GetScanResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Result : Tea.TeaModel {
                public var confidence: String?

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
                    if let value = dict["Confidence"] as? String {
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
            public var accountId: String?

            public var apiLabels: String?

            public var apiRequestTime: String?

            public var apiRiskLevel: String?

            public var apiService: String?

            public var apiTaskId: String?

            public var attackLevel: String?

            public var content: String?

            public var dataId: String?

            public var endTime: String?

            public var extFeedback: String?

            public var extra: [String: Any]?

            public var frameCount: Int64?

            public var gmtCreate: String?

            public var guardFileUrls: [String]?

            public var guardImageUrls: [String]?

            public var imageLabels: [[String: Any]]?

            public var imageService: String?

            public var imageUrl: String?

            public var labels: String?

            public var liveId: String?

            public var maliciousFileLevel: String?

            public var maliciousUrlLevel: String?

            public var manualOnly: Bool?

            public var noLabels: [String]?

            public var offset: Int64?

            public var pageNum: Int64?

            public var requestFrom: String?

            public var requestId: String?

            public var requestTime: String?

            public var resourceType: String?

            public var result: [GetScanResultResponseBody.Data.Items.Result]?

            public var reviewLabels: String?

            public var reviewRiskLevel: String?

            public var reviewTime: String?

            public var reviewUid: String?

            public var reviewed: Bool?

            public var riskLevel: String?

            public var riskTips: String?

            public var riskWords: String?

            public var scanResult: String?

            public var score: Double?

            public var sensitiveLevel: String?

            public var serviceCode: String?

            public var startTime: String?

            public var suggestion: String?

            public var taskId: String?

            public var textLabels: [[String: Any]]?

            public var thumbnail: String?

            public var timeStamp: String?

            public var url: String?

            public var voiceLabels: [[String: Any]]?

            public var voiceScanOpened: Bool?

            public var voiceService: String?

            public override init() {
                super.init()
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
                if self.apiLabels != nil {
                    map["ApiLabels"] = self.apiLabels!
                }
                if self.apiRequestTime != nil {
                    map["ApiRequestTime"] = self.apiRequestTime!
                }
                if self.apiRiskLevel != nil {
                    map["ApiRiskLevel"] = self.apiRiskLevel!
                }
                if self.apiService != nil {
                    map["ApiService"] = self.apiService!
                }
                if self.apiTaskId != nil {
                    map["ApiTaskId"] = self.apiTaskId!
                }
                if self.attackLevel != nil {
                    map["AttackLevel"] = self.attackLevel!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.dataId != nil {
                    map["DataId"] = self.dataId!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.extFeedback != nil {
                    map["ExtFeedback"] = self.extFeedback!
                }
                if self.extra != nil {
                    map["Extra"] = self.extra!
                }
                if self.frameCount != nil {
                    map["FrameCount"] = self.frameCount!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.guardFileUrls != nil {
                    map["GuardFileUrls"] = self.guardFileUrls!
                }
                if self.guardImageUrls != nil {
                    map["GuardImageUrls"] = self.guardImageUrls!
                }
                if self.imageLabels != nil {
                    map["ImageLabels"] = self.imageLabels!
                }
                if self.imageService != nil {
                    map["ImageService"] = self.imageService!
                }
                if self.imageUrl != nil {
                    map["ImageUrl"] = self.imageUrl!
                }
                if self.labels != nil {
                    map["Labels"] = self.labels!
                }
                if self.liveId != nil {
                    map["LiveId"] = self.liveId!
                }
                if self.maliciousFileLevel != nil {
                    map["MaliciousFileLevel"] = self.maliciousFileLevel!
                }
                if self.maliciousUrlLevel != nil {
                    map["MaliciousUrlLevel"] = self.maliciousUrlLevel!
                }
                if self.manualOnly != nil {
                    map["ManualOnly"] = self.manualOnly!
                }
                if self.noLabels != nil {
                    map["NoLabels"] = self.noLabels!
                }
                if self.offset != nil {
                    map["Offset"] = self.offset!
                }
                if self.pageNum != nil {
                    map["PageNum"] = self.pageNum!
                }
                if self.requestFrom != nil {
                    map["RequestFrom"] = self.requestFrom!
                }
                if self.requestId != nil {
                    map["RequestId"] = self.requestId!
                }
                if self.requestTime != nil {
                    map["RequestTime"] = self.requestTime!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.result != nil {
                    var tmp : [Any] = []
                    for k in self.result! {
                        tmp.append(k.toMap())
                    }
                    map["Result"] = tmp
                }
                if self.reviewLabels != nil {
                    map["ReviewLabels"] = self.reviewLabels!
                }
                if self.reviewRiskLevel != nil {
                    map["ReviewRiskLevel"] = self.reviewRiskLevel!
                }
                if self.reviewTime != nil {
                    map["ReviewTime"] = self.reviewTime!
                }
                if self.reviewUid != nil {
                    map["ReviewUid"] = self.reviewUid!
                }
                if self.reviewed != nil {
                    map["Reviewed"] = self.reviewed!
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
                if self.scanResult != nil {
                    map["ScanResult"] = self.scanResult!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.sensitiveLevel != nil {
                    map["SensitiveLevel"] = self.sensitiveLevel!
                }
                if self.serviceCode != nil {
                    map["ServiceCode"] = self.serviceCode!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.suggestion != nil {
                    map["Suggestion"] = self.suggestion!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.textLabels != nil {
                    map["TextLabels"] = self.textLabels!
                }
                if self.thumbnail != nil {
                    map["Thumbnail"] = self.thumbnail!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.voiceLabels != nil {
                    map["VoiceLabels"] = self.voiceLabels!
                }
                if self.voiceScanOpened != nil {
                    map["VoiceScanOpened"] = self.voiceScanOpened!
                }
                if self.voiceService != nil {
                    map["VoiceService"] = self.voiceService!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountId"] as? String {
                    self.accountId = value
                }
                if let value = dict["ApiLabels"] as? String {
                    self.apiLabels = value
                }
                if let value = dict["ApiRequestTime"] as? String {
                    self.apiRequestTime = value
                }
                if let value = dict["ApiRiskLevel"] as? String {
                    self.apiRiskLevel = value
                }
                if let value = dict["ApiService"] as? String {
                    self.apiService = value
                }
                if let value = dict["ApiTaskId"] as? String {
                    self.apiTaskId = value
                }
                if let value = dict["AttackLevel"] as? String {
                    self.attackLevel = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["DataId"] as? String {
                    self.dataId = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["ExtFeedback"] as? String {
                    self.extFeedback = value
                }
                if let value = dict["Extra"] as? [String: Any] {
                    self.extra = value
                }
                if let value = dict["FrameCount"] as? Int64 {
                    self.frameCount = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GuardFileUrls"] as? [String] {
                    self.guardFileUrls = value
                }
                if let value = dict["GuardImageUrls"] as? [String] {
                    self.guardImageUrls = value
                }
                if let value = dict["ImageLabels"] as? [[String: Any]] {
                    self.imageLabels = value
                }
                if let value = dict["ImageService"] as? String {
                    self.imageService = value
                }
                if let value = dict["ImageUrl"] as? String {
                    self.imageUrl = value
                }
                if let value = dict["Labels"] as? String {
                    self.labels = value
                }
                if let value = dict["LiveId"] as? String {
                    self.liveId = value
                }
                if let value = dict["MaliciousFileLevel"] as? String {
                    self.maliciousFileLevel = value
                }
                if let value = dict["MaliciousUrlLevel"] as? String {
                    self.maliciousUrlLevel = value
                }
                if let value = dict["ManualOnly"] as? Bool {
                    self.manualOnly = value
                }
                if let value = dict["NoLabels"] as? [String] {
                    self.noLabels = value
                }
                if let value = dict["Offset"] as? Int64 {
                    self.offset = value
                }
                if let value = dict["PageNum"] as? Int64 {
                    self.pageNum = value
                }
                if let value = dict["RequestFrom"] as? String {
                    self.requestFrom = value
                }
                if let value = dict["RequestId"] as? String {
                    self.requestId = value
                }
                if let value = dict["RequestTime"] as? String {
                    self.requestTime = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["Result"] as? [Any?] {
                    var tmp : [GetScanResultResponseBody.Data.Items.Result] = []
                    for v in value {
                        if v != nil {
                            var model = GetScanResultResponseBody.Data.Items.Result()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.result = tmp
                }
                if let value = dict["ReviewLabels"] as? String {
                    self.reviewLabels = value
                }
                if let value = dict["ReviewRiskLevel"] as? String {
                    self.reviewRiskLevel = value
                }
                if let value = dict["ReviewTime"] as? String {
                    self.reviewTime = value
                }
                if let value = dict["ReviewUid"] as? String {
                    self.reviewUid = value
                }
                if let value = dict["Reviewed"] as? Bool {
                    self.reviewed = value
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
                if let value = dict["ScanResult"] as? String {
                    self.scanResult = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
                if let value = dict["SensitiveLevel"] as? String {
                    self.sensitiveLevel = value
                }
                if let value = dict["ServiceCode"] as? String {
                    self.serviceCode = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Suggestion"] as? String {
                    self.suggestion = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["TextLabels"] as? [[String: Any]] {
                    self.textLabels = value
                }
                if let value = dict["Thumbnail"] as? String {
                    self.thumbnail = value
                }
                if let value = dict["TimeStamp"] as? String {
                    self.timeStamp = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
                if let value = dict["VoiceLabels"] as? [[String: Any]] {
                    self.voiceLabels = value
                }
                if let value = dict["VoiceScanOpened"] as? Bool {
                    self.voiceScanOpened = value
                }
                if let value = dict["VoiceService"] as? String {
                    self.voiceService = value
                }
            }
        }
        public var currentPage: Int32?

        public var items: [GetScanResultResponseBody.Data.Items]?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public override init() {
            super.init()
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
                map["CurrentPage"] = self.currentPage!
            }
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["Items"] as? [Any?] {
                var tmp : [GetScanResultResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = GetScanResultResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: Int32?

    public var data: GetScanResultResponseBody.Data?

    public var httpStatusCode: Int32?

    public var msg: String?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetScanResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetScanResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetScanResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetScanResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceConfRequest : Tea.TeaModel {
    public var byDefault: Bool?

    public var regionId: String?

    public var resourceType: String?

    public var scene: String?

    public var serviceCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.byDefault != nil {
            map["ByDefault"] = self.byDefault!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ByDefault"] as? Bool {
            self.byDefault = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Scene"] as? String {
            self.scene = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
    }
}

public class GetServiceConfResponseBody : Tea.TeaModel {
    public var classify: String?

    public var code: Int32?

    public var customServiceConf: [String: Any]?

    public var gmtModified: String?

    public var msg: String?

    public var option: [String: Any]?

    public var requestId: String?

    public var resourceType: String?

    public var serviceCode: String?

    public var serviceType: String?

    public var success: Bool?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.classify != nil {
            map["Classify"] = self.classify!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.customServiceConf != nil {
            map["CustomServiceConf"] = self.customServiceConf!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.option != nil {
            map["Option"] = self.option!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Classify"] as? String {
            self.classify = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["CustomServiceConf"] as? [String: Any] {
            self.customServiceConf = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["Option"] as? [String: Any] {
            self.option = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Uid"] as? String {
            self.uid = value
        }
    }
}

public class GetServiceConfResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceConfResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetServiceConfResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceConfigRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceType: String?

    public var serviceCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
    }
}

public class GetServiceConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CustomServiceConf : Tea.TeaModel {
            public class ManualMachineConfig : Tea.TeaModel {
                public var auditRiskLevels: [String]?

                public var callbackId: Int64?

                public var enable: Bool?

                public var manualService: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.auditRiskLevels != nil {
                        map["AuditRiskLevels"] = self.auditRiskLevels!
                    }
                    if self.callbackId != nil {
                        map["CallbackId"] = self.callbackId!
                    }
                    if self.enable != nil {
                        map["Enable"] = self.enable!
                    }
                    if self.manualService != nil {
                        map["ManualService"] = self.manualService!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AuditRiskLevels"] as? [String] {
                        self.auditRiskLevels = value
                    }
                    if let value = dict["CallbackId"] as? Int64 {
                        self.callbackId = value
                    }
                    if let value = dict["Enable"] as? Bool {
                        self.enable = value
                    }
                    if let value = dict["ManualService"] as? String {
                        self.manualService = value
                    }
                }
            }
            public var keywordFilterLibs: [String]?

            public var keywordHitLibs: [String]?

            public var manualMachineConfig: GetServiceConfigResponseBody.Data.CustomServiceConf.ManualMachineConfig?

            public var similarTextHitLibs: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.manualMachineConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.keywordFilterLibs != nil {
                    map["KeywordFilterLibs"] = self.keywordFilterLibs!
                }
                if self.keywordHitLibs != nil {
                    map["KeywordHitLibs"] = self.keywordHitLibs!
                }
                if self.manualMachineConfig != nil {
                    map["ManualMachineConfig"] = self.manualMachineConfig?.toMap()
                }
                if self.similarTextHitLibs != nil {
                    map["SimilarTextHitLibs"] = self.similarTextHitLibs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["KeywordFilterLibs"] as? [String] {
                    self.keywordFilterLibs = value
                }
                if let value = dict["KeywordHitLibs"] as? [String] {
                    self.keywordHitLibs = value
                }
                if let value = dict["ManualMachineConfig"] as? [String: Any?] {
                    var model = GetServiceConfigResponseBody.Data.CustomServiceConf.ManualMachineConfig()
                    model.fromMap(value)
                    self.manualMachineConfig = model
                }
                if let value = dict["SimilarTextHitLibs"] as? [String] {
                    self.similarTextHitLibs = value
                }
            }
        }
        public var customServiceConf: GetServiceConfigResponseBody.Data.CustomServiceConf?

        public var gmtModified: String?

        public var resourceType: String?

        public var serviceCode: String?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.customServiceConf?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customServiceConf != nil {
                map["CustomServiceConf"] = self.customServiceConf?.toMap()
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.serviceCode != nil {
                map["ServiceCode"] = self.serviceCode!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomServiceConf"] as? [String: Any?] {
                var model = GetServiceConfigResponseBody.Data.CustomServiceConf()
                model.fromMap(value)
                self.customServiceConf = model
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["ServiceCode"] as? String {
                self.serviceCode = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
            }
        }
    }
    public var code: Int32?

    public var data: GetServiceConfigResponseBody.Data?

    public var msg: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetServiceConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetServiceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetServiceConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceLabelConfigRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceType: String?

    public var serviceCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
    }
}

public class GetServiceLabelConfigResponseBody : Tea.TeaModel {
    public var data: [Any]?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any] {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetServiceLabelConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceLabelConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetServiceLabelConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetStockOssCheckTasksListRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endTime: String?

    public var isInc: Bool?

    public var mediaType: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var sort: [String: String]?

    public var startTime: String?

    public var taskType: String?

    public override init() {
        super.init()
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
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.isInc != nil {
            map["IsInc"] = self.isInc!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["IsInc"] as? Bool {
            self.isInc = value
        }
        if let value = dict["MediaType"] as? Int32 {
            self.mediaType = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? [String: String] {
            self.sort = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class GetStockOssCheckTasksListShrinkRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endTime: String?

    public var isInc: Bool?

    public var mediaType: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var sortShrink: String?

    public var startTime: String?

    public var taskType: String?

    public override init() {
        super.init()
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
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.isInc != nil {
            map["IsInc"] = self.isInc!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortShrink != nil {
            map["Sort"] = self.sortShrink!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["IsInc"] as? Bool {
            self.isInc = value
        }
        if let value = dict["MediaType"] as? Int32 {
            self.mediaType = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? String {
            self.sortShrink = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class GetStockOssCheckTasksListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public class ScanServiceInfos : Tea.TeaModel {
                public var copyFrom: String?

                public var isCopy: Bool?

                public var serviceCode: String?

                public var serviceName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.copyFrom != nil {
                        map["CopyFrom"] = self.copyFrom!
                    }
                    if self.isCopy != nil {
                        map["IsCopy"] = self.isCopy!
                    }
                    if self.serviceCode != nil {
                        map["ServiceCode"] = self.serviceCode!
                    }
                    if self.serviceName != nil {
                        map["ServiceName"] = self.serviceName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CopyFrom"] as? String {
                        self.copyFrom = value
                    }
                    if let value = dict["IsCopy"] as? Bool {
                        self.isCopy = value
                    }
                    if let value = dict["ServiceCode"] as? String {
                        self.serviceCode = value
                    }
                    if let value = dict["ServiceName"] as? String {
                        self.serviceName = value
                    }
                }
            }
            public class UserFreezeConfig : Tea.TeaModel {
                public var freezeRestorePath: String?

                public var freezeType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.freezeRestorePath != nil {
                        map["FreezeRestorePath"] = self.freezeRestorePath!
                    }
                    if self.freezeType != nil {
                        map["FreezeType"] = self.freezeType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FreezeRestorePath"] as? String {
                        self.freezeRestorePath = value
                    }
                    if let value = dict["FreezeType"] as? String {
                        self.freezeType = value
                    }
                }
            }
            public var callbackId: Int64?

            public var distinctHistoryTasks: Bool?

            public var endTime: String?

            public var executeDate: Int32?

            public var executeTime: String?

            public var freeze: Bool?

            public var freezeHighRisk1: Bool?

            public var freezeHighRisk2: Bool?

            public var freezeMediumRisk1: Bool?

            public var freezeMediumRisk2: Bool?

            public var freezeRestorePath: String?

            public var freezeType: String?

            public var prefixFilterType: String?

            public var prefixFilters: [String]?

            public var priority: Int32?

            public var referer: String?

            public var scanLimit: Int64?

            public var scanNoFileType: Bool?

            public var scanResourceType: Int32?

            public var scanService: [String]?

            public var scanServiceInfos: [GetStockOssCheckTasksListResponseBody.Items.Config.ScanServiceInfos]?

            public var startTime: String?

            public var taskCycle: Int32?

            public var userFreezeConfig: GetStockOssCheckTasksListResponseBody.Items.Config.UserFreezeConfig?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.userFreezeConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callbackId != nil {
                    map["CallbackId"] = self.callbackId!
                }
                if self.distinctHistoryTasks != nil {
                    map["DistinctHistoryTasks"] = self.distinctHistoryTasks!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.executeDate != nil {
                    map["ExecuteDate"] = self.executeDate!
                }
                if self.executeTime != nil {
                    map["ExecuteTime"] = self.executeTime!
                }
                if self.freeze != nil {
                    map["Freeze"] = self.freeze!
                }
                if self.freezeHighRisk1 != nil {
                    map["FreezeHighRisk1"] = self.freezeHighRisk1!
                }
                if self.freezeHighRisk2 != nil {
                    map["FreezeHighRisk2"] = self.freezeHighRisk2!
                }
                if self.freezeMediumRisk1 != nil {
                    map["FreezeMediumRisk1"] = self.freezeMediumRisk1!
                }
                if self.freezeMediumRisk2 != nil {
                    map["FreezeMediumRisk2"] = self.freezeMediumRisk2!
                }
                if self.freezeRestorePath != nil {
                    map["FreezeRestorePath"] = self.freezeRestorePath!
                }
                if self.freezeType != nil {
                    map["FreezeType"] = self.freezeType!
                }
                if self.prefixFilterType != nil {
                    map["PrefixFilterType"] = self.prefixFilterType!
                }
                if self.prefixFilters != nil {
                    map["PrefixFilters"] = self.prefixFilters!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.referer != nil {
                    map["Referer"] = self.referer!
                }
                if self.scanLimit != nil {
                    map["ScanLimit"] = self.scanLimit!
                }
                if self.scanNoFileType != nil {
                    map["ScanNoFileType"] = self.scanNoFileType!
                }
                if self.scanResourceType != nil {
                    map["ScanResourceType"] = self.scanResourceType!
                }
                if self.scanService != nil {
                    map["ScanService"] = self.scanService!
                }
                if self.scanServiceInfos != nil {
                    var tmp : [Any] = []
                    for k in self.scanServiceInfos! {
                        tmp.append(k.toMap())
                    }
                    map["ScanServiceInfos"] = tmp
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.taskCycle != nil {
                    map["TaskCycle"] = self.taskCycle!
                }
                if self.userFreezeConfig != nil {
                    map["UserFreezeConfig"] = self.userFreezeConfig?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CallbackId"] as? Int64 {
                    self.callbackId = value
                }
                if let value = dict["DistinctHistoryTasks"] as? Bool {
                    self.distinctHistoryTasks = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["ExecuteDate"] as? Int32 {
                    self.executeDate = value
                }
                if let value = dict["ExecuteTime"] as? String {
                    self.executeTime = value
                }
                if let value = dict["Freeze"] as? Bool {
                    self.freeze = value
                }
                if let value = dict["FreezeHighRisk1"] as? Bool {
                    self.freezeHighRisk1 = value
                }
                if let value = dict["FreezeHighRisk2"] as? Bool {
                    self.freezeHighRisk2 = value
                }
                if let value = dict["FreezeMediumRisk1"] as? Bool {
                    self.freezeMediumRisk1 = value
                }
                if let value = dict["FreezeMediumRisk2"] as? Bool {
                    self.freezeMediumRisk2 = value
                }
                if let value = dict["FreezeRestorePath"] as? String {
                    self.freezeRestorePath = value
                }
                if let value = dict["FreezeType"] as? String {
                    self.freezeType = value
                }
                if let value = dict["PrefixFilterType"] as? String {
                    self.prefixFilterType = value
                }
                if let value = dict["PrefixFilters"] as? [String] {
                    self.prefixFilters = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
                if let value = dict["Referer"] as? String {
                    self.referer = value
                }
                if let value = dict["ScanLimit"] as? Int64 {
                    self.scanLimit = value
                }
                if let value = dict["ScanNoFileType"] as? Bool {
                    self.scanNoFileType = value
                }
                if let value = dict["ScanResourceType"] as? Int32 {
                    self.scanResourceType = value
                }
                if let value = dict["ScanService"] as? [String] {
                    self.scanService = value
                }
                if let value = dict["ScanServiceInfos"] as? [Any?] {
                    var tmp : [GetStockOssCheckTasksListResponseBody.Items.Config.ScanServiceInfos] = []
                    for v in value {
                        if v != nil {
                            var model = GetStockOssCheckTasksListResponseBody.Items.Config.ScanServiceInfos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.scanServiceInfos = tmp
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["TaskCycle"] as? Int32 {
                    self.taskCycle = value
                }
                if let value = dict["UserFreezeConfig"] as? [String: Any?] {
                    var model = GetStockOssCheckTasksListResponseBody.Items.Config.UserFreezeConfig()
                    model.fromMap(value)
                    self.userFreezeConfig = model
                }
            }
        }
        public var buckets: String?

        public var config: GetStockOssCheckTasksListResponseBody.Items.Config?

        public var endTime: String?

        public var finishNum: Int64?

        public var isInc: Bool?

        public var lastExecuteDate: String?

        public var mediaType: Int32?

        public var nextExecuteDate: String?

        public var objectNum: Int64?

        public var searchNum: Int64?

        public var startTime: String?

        public var status: Int32?

        public var taskId: String?

        public var taskName: String?

        public var taskType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.config?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buckets != nil {
                map["Buckets"] = self.buckets!
            }
            if self.config != nil {
                map["Config"] = self.config?.toMap()
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.finishNum != nil {
                map["FinishNum"] = self.finishNum!
            }
            if self.isInc != nil {
                map["IsInc"] = self.isInc!
            }
            if self.lastExecuteDate != nil {
                map["LastExecuteDate"] = self.lastExecuteDate!
            }
            if self.mediaType != nil {
                map["MediaType"] = self.mediaType!
            }
            if self.nextExecuteDate != nil {
                map["NextExecuteDate"] = self.nextExecuteDate!
            }
            if self.objectNum != nil {
                map["ObjectNum"] = self.objectNum!
            }
            if self.searchNum != nil {
                map["SearchNum"] = self.searchNum!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Buckets"] as? String {
                self.buckets = value
            }
            if let value = dict["Config"] as? [String: Any?] {
                var model = GetStockOssCheckTasksListResponseBody.Items.Config()
                model.fromMap(value)
                self.config = model
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["FinishNum"] as? Int64 {
                self.finishNum = value
            }
            if let value = dict["IsInc"] as? Bool {
                self.isInc = value
            }
            if let value = dict["LastExecuteDate"] as? String {
                self.lastExecuteDate = value
            }
            if let value = dict["MediaType"] as? Int32 {
                self.mediaType = value
            }
            if let value = dict["NextExecuteDate"] as? String {
                self.nextExecuteDate = value
            }
            if let value = dict["ObjectNum"] as? Int64 {
                self.objectNum = value
            }
            if let value = dict["SearchNum"] as? Int64 {
                self.searchNum = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [GetStockOssCheckTasksListResponseBody.Items]?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
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
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [GetStockOssCheckTasksListResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = GetStockOssCheckTasksListResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class GetStockOssCheckTasksListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStockOssCheckTasksListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetStockOssCheckTasksListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTextScanResultRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var pageSize: Int32?

    public var query: [String: String]?

    public var regionId: String?

    public var sort: [String: String]?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? [String: String] {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? [String: String] {
            self.sort = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class GetTextScanResultShrinkRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var pageSize: Int32?

    public var queryShrink: String?

    public var regionId: String?

    public var sortShrink: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryShrink != nil {
            map["Query"] = self.queryShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortShrink != nil {
            map["Sort"] = self.sortShrink!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.queryShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? String {
            self.sortShrink = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class GetTextScanResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
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
            public var bailianRequestId: String?

            public var content: String?

            public var extFeedback: String?

            public var extra: [String: Any]?

            public var gmtCreate: String?

            public var labels: String?

            public var requestId: String?

            public var requestTime: String?

            public var result: [GetTextScanResultResponseBody.Data.Items.Result]?

            public var riskLevel: String?

            public var scanResult: String?

            public var score: Double?

            public var serviceCode: String?

            public var suggestion: String?

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
                if self.bailianRequestId != nil {
                    map["BailianRequestId"] = self.bailianRequestId!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.extFeedback != nil {
                    map["ExtFeedback"] = self.extFeedback!
                }
                if self.extra != nil {
                    map["Extra"] = self.extra!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.labels != nil {
                    map["Labels"] = self.labels!
                }
                if self.requestId != nil {
                    map["RequestId"] = self.requestId!
                }
                if self.requestTime != nil {
                    map["RequestTime"] = self.requestTime!
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
                if self.scanResult != nil {
                    map["ScanResult"] = self.scanResult!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.serviceCode != nil {
                    map["ServiceCode"] = self.serviceCode!
                }
                if self.suggestion != nil {
                    map["Suggestion"] = self.suggestion!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BailianRequestId"] as? String {
                    self.bailianRequestId = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["ExtFeedback"] as? String {
                    self.extFeedback = value
                }
                if let value = dict["Extra"] as? [String: Any] {
                    self.extra = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["Labels"] as? String {
                    self.labels = value
                }
                if let value = dict["RequestId"] as? String {
                    self.requestId = value
                }
                if let value = dict["RequestTime"] as? String {
                    self.requestTime = value
                }
                if let value = dict["Result"] as? [Any?] {
                    var tmp : [GetTextScanResultResponseBody.Data.Items.Result] = []
                    for v in value {
                        if v != nil {
                            var model = GetTextScanResultResponseBody.Data.Items.Result()
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
                if let value = dict["ScanResult"] as? String {
                    self.scanResult = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
                if let value = dict["ServiceCode"] as? String {
                    self.serviceCode = value
                }
                if let value = dict["Suggestion"] as? String {
                    self.suggestion = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
            }
        }
        public var currentPage: Int32?

        public var items: [GetTextScanResultResponseBody.Data.Items]?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public override init() {
            super.init()
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
                map["CurrentPage"] = self.currentPage!
            }
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["Items"] as? [Any?] {
                var tmp : [GetTextScanResultResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = GetTextScanResultResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: Int32?

    public var data: GetTextScanResultResponseBody.Data?

    public var msg: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetTextScanResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTextScanResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTextScanResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTextScanResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUploadInfoRequest : Tea.TeaModel {
    public var name: String?

    public var regionId: String?

    public var resourceType: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class GetUploadInfoResponseBody : Tea.TeaModel {
    public var accessId: String?

    public var code: Int32?

    public var expire: Int64?

    public var folder: String?

    public var host: String?

    public var httpStatusCode: Int32?

    public var key: String?

    public var msg: String?

    public var name: String?

    public var policy: String?

    public var requestId: String?

    public var signature: String?

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
        if self.accessId != nil {
            map["AccessId"] = self.accessId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.expire != nil {
            map["Expire"] = self.expire!
        }
        if self.folder != nil {
            map["Folder"] = self.folder!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessId"] as? String {
            self.accessId = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Expire"] as? Int64 {
            self.expire = value
        }
        if let value = dict["Folder"] as? String {
            self.folder = value
        }
        if let value = dict["Host"] as? String {
            self.host = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Signature"] as? String {
            self.signature = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetUploadInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUploadInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUploadInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUploadLinkRequest : Tea.TeaModel {
    public var uploadUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.uploadUrl != nil {
            map["UploadUrl"] = self.uploadUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UploadUrl"] as? String {
            self.uploadUrl = value
        }
    }
}

public class GetUploadLinkResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetUploadLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUploadLinkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUploadLinkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserBuyStatusRequest : Tea.TeaModel {
    public var commodityCode: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommodityCode"] as? String {
            self.commodityCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetUserBuyStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bid: Int64?

        public var buy: Bool?

        public var indebt: Bool?

        public var instanceId: String?

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
            if self.bid != nil {
                map["Bid"] = self.bid!
            }
            if self.buy != nil {
                map["Buy"] = self.buy!
            }
            if self.indebt != nil {
                map["Indebt"] = self.indebt!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bid"] as? Int64 {
                self.bid = value
            }
            if let value = dict["Buy"] as? Bool {
                self.buy = value
            }
            if let value = dict["Indebt"] as? Bool {
                self.indebt = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Tag"] as? String {
                self.tag = value
            }
        }
    }
    public var code: Int32?

    public var data: GetUserBuyStatusResponseBody.Data?

    public var msg: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetUserBuyStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetUserBuyStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserBuyStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserBuyStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAnswerLibRequest : Tea.TeaModel {
    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListAnswerLibResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var answerCount: Int32?

        public var gmtModified: String?

        public var libId: String?

        public var libName: String?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answerCount != nil {
                map["AnswerCount"] = self.answerCount!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.libId != nil {
                map["LibId"] = self.libId!
            }
            if self.libName != nil {
                map["LibName"] = self.libName!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AnswerCount"] as? Int32 {
                self.answerCount = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["LibId"] as? String {
                self.libId = value
            }
            if let value = dict["LibName"] as? String {
                self.libName = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
            }
        }
    }
    public var data: [ListAnswerLibResponseBody.Data]?

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
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListAnswerLibResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListAnswerLibResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAnswerLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAnswerLibResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAnswerLibResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCallbackRequest : Tea.TeaModel {
    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListCallbackResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cryptType: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var name: String?

        public var scope: String?

        public var seed: String?

        public var uid: String?

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
            if self.cryptType != nil {
                map["CryptType"] = self.cryptType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            if self.seed != nil {
                map["Seed"] = self.seed!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CryptType"] as? String {
                self.cryptType = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Scope"] as? String {
                self.scope = value
            }
            if let value = dict["Seed"] as? String {
                self.seed = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var data: [ListCallbackResponseBody.Data]?

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
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListCallbackResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListCallbackResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCallbackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListCallbackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListImageLibRequest : Tea.TeaModel {
    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListImageLibResponseBody : Tea.TeaModel {
    public class LibList : Tea.TeaModel {
        public var comment: String?

        public var freeInspection: Int32?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var imageNum: Int64?

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
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.freeInspection != nil {
                map["FreeInspection"] = self.freeInspection!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.imageNum != nil {
                map["ImageNum"] = self.imageNum!
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
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["FreeInspection"] as? Int32 {
                self.freeInspection = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["ImageNum"] as? Int64 {
                self.imageNum = value
            }
            if let value = dict["LibId"] as? String {
                self.libId = value
            }
            if let value = dict["LibName"] as? String {
                self.libName = value
            }
        }
    }
    public var code: Int32?

    public var httpStatusCode: Int32?

    public var libList: [ListImageLibResponseBody.LibList]?

    public var msg: String?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.libList != nil {
            var tmp : [Any] = []
            for k in self.libList! {
                tmp.append(k.toMap())
            }
            map["LibList"] = tmp
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["LibList"] as? [Any?] {
            var tmp : [ListImageLibResponseBody.LibList] = []
            for v in value {
                if v != nil {
                    var model = ListImageLibResponseBody.LibList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.libList = tmp
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListImageLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListImageLibResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListImageLibResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListImagesFromLibRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var imgId: String?

    public var libId: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var sort: [String: String]?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.imgId != nil {
            map["ImgId"] = self.imgId!
        }
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["ImgId"] as? String {
            self.imgId = value
        }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? [String: String] {
            self.sort = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class ListImagesFromLibShrinkRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var imgId: String?

    public var libId: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var sortShrink: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.imgId != nil {
            map["ImgId"] = self.imgId!
        }
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortShrink != nil {
            map["Sort"] = self.sortShrink!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["ImgId"] as? String {
            self.imgId = value
        }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? String {
            self.sortShrink = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class ListImagesFromLibResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var gmtCreate: String?

        public var imageId: String?

        public var imageUrl: String?

        public var thumbnailUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.thumbnailUrl != nil {
                map["ThumbnailUrl"] = self.thumbnailUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageUrl"] as? String {
                self.imageUrl = value
            }
            if let value = dict["ThumbnailUrl"] as? String {
                self.thumbnailUrl = value
            }
        }
    }
    public var code: Int32?

    public var currentPage: Int32?

    public var httpStatusCode: Int32?

    public var items: [ListImagesFromLibResponseBody.Items]?

    public var msg: String?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListImagesFromLibResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListImagesFromLibResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListImagesFromLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListImagesFromLibResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListImagesFromLibResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKeywordLibsRequest : Tea.TeaModel {
    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListKeywordLibsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gmtModified: String?

        public var keywordCount: String?

        public var libId: String?

        public var libName: String?

        public var serviceCodes: String?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.keywordCount != nil {
                map["KeywordCount"] = self.keywordCount!
            }
            if self.libId != nil {
                map["LibId"] = self.libId!
            }
            if self.libName != nil {
                map["LibName"] = self.libName!
            }
            if self.serviceCodes != nil {
                map["ServiceCodes"] = self.serviceCodes!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["KeywordCount"] as? String {
                self.keywordCount = value
            }
            if let value = dict["LibId"] as? String {
                self.libId = value
            }
            if let value = dict["LibName"] as? String {
                self.libName = value
            }
            if let value = dict["ServiceCodes"] as? String {
                self.serviceCodes = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
            }
        }
    }
    public var code: Int32?

    public var data: [ListKeywordLibsResponseBody.Data]?

    public var msg: String?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListKeywordLibsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListKeywordLibsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListKeywordLibsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKeywordLibsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListKeywordLibsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKeywordsRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var libId: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var sort: [String: String]?

    public var word: String?

    public override init() {
        super.init()
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
            map["CurrentPage"] = self.currentPage!
        }
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.word != nil {
            map["Word"] = self.word!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? [String: String] {
            self.sort = value
        }
        if let value = dict["Word"] as? String {
            self.word = value
        }
    }
}

public class ListKeywordsShrinkRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var libId: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var sortShrink: String?

    public var word: String?

    public override init() {
        super.init()
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
            map["CurrentPage"] = self.currentPage!
        }
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortShrink != nil {
            map["Sort"] = self.sortShrink!
        }
        if self.word != nil {
            map["Word"] = self.word!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? String {
            self.sortShrink = value
        }
        if let value = dict["Word"] as? String {
            self.word = value
        }
    }
}

public class ListKeywordsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var keywordLibId: String?

            public var keywordMd5Id: Int64?

            public var word: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.keywordLibId != nil {
                    map["KeywordLibId"] = self.keywordLibId!
                }
                if self.keywordMd5Id != nil {
                    map["KeywordMd5Id"] = self.keywordMd5Id!
                }
                if self.word != nil {
                    map["Word"] = self.word!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["KeywordLibId"] as? String {
                    self.keywordLibId = value
                }
                if let value = dict["KeywordMd5Id"] as? Int64 {
                    self.keywordMd5Id = value
                }
                if let value = dict["Word"] as? String {
                    self.word = value
                }
            }
        }
        public var currentPage: Int32?

        public var items: [ListKeywordsResponseBody.Data.Items]?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["Items"] as? [Any?] {
                var tmp : [ListKeywordsResponseBody.Data.Items] = []
                for v in value {
                    if v != nil {
                        var model = ListKeywordsResponseBody.Data.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: Int32?

    public var data: ListKeywordsResponseBody.Data?

    public var msg: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListKeywordsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListKeywordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKeywordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListKeywordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOssCheckResultRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var finishNum: Int64?

    public var pageSize: Int32?

    public var query: String?

    public var regionId: String?

    public var sort: [String: String]?

    public var startDate: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.finishNum != nil {
            map["FinishNum"] = self.finishNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["FinishNum"] as? Int64 {
            self.finishNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? [String: String] {
            self.sort = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class ListOssCheckResultShrinkRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var finishNum: Int64?

    public var pageSize: Int32?

    public var query: String?

    public var regionId: String?

    public var sortShrink: String?

    public var startDate: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.finishNum != nil {
            map["FinishNum"] = self.finishNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortShrink != nil {
            map["Sort"] = self.sortShrink!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["FinishNum"] as? Int64 {
            self.finishNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? String {
            self.sortShrink = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class ListOssCheckResultResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var bucket: String?

        public var code: String?

        public var contentType: String?

        public var copyFrom: String?

        public var freezeStatus: String?

        public var freezeType: String?

        public var imageUrl: String?

        public var isCopy: Bool?

        public var jobName: String?

        public var labels: [String]?

        public var labels2: [String]?

        public var md5: String?

        public var msg: String?

        public var object: String?

        public var riskLevel: String?

        public var riskLevel0: String?

        public var riskLevel2: String?

        public var scanResult: String?

        public var serviceCode: String?

        public var serviceName: String?

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
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.contentType != nil {
                map["ContentType"] = self.contentType!
            }
            if self.copyFrom != nil {
                map["CopyFrom"] = self.copyFrom!
            }
            if self.freezeStatus != nil {
                map["FreezeStatus"] = self.freezeStatus!
            }
            if self.freezeType != nil {
                map["FreezeType"] = self.freezeType!
            }
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.isCopy != nil {
                map["IsCopy"] = self.isCopy!
            }
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.labels2 != nil {
                map["Labels2"] = self.labels2!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.msg != nil {
                map["Msg"] = self.msg!
            }
            if self.object != nil {
                map["Object"] = self.object!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.riskLevel0 != nil {
                map["RiskLevel0"] = self.riskLevel0!
            }
            if self.riskLevel2 != nil {
                map["RiskLevel2"] = self.riskLevel2!
            }
            if self.scanResult != nil {
                map["ScanResult"] = self.scanResult!
            }
            if self.serviceCode != nil {
                map["ServiceCode"] = self.serviceCode!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
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
            if let value = dict["Bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["ContentType"] as? String {
                self.contentType = value
            }
            if let value = dict["CopyFrom"] as? String {
                self.copyFrom = value
            }
            if let value = dict["FreezeStatus"] as? String {
                self.freezeStatus = value
            }
            if let value = dict["FreezeType"] as? String {
                self.freezeType = value
            }
            if let value = dict["ImageUrl"] as? String {
                self.imageUrl = value
            }
            if let value = dict["IsCopy"] as? Bool {
                self.isCopy = value
            }
            if let value = dict["JobName"] as? String {
                self.jobName = value
            }
            if let value = dict["Labels"] as? [String] {
                self.labels = value
            }
            if let value = dict["Labels2"] as? [String] {
                self.labels2 = value
            }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["Msg"] as? String {
                self.msg = value
            }
            if let value = dict["Object"] as? String {
                self.object = value
            }
            if let value = dict["RiskLevel"] as? String {
                self.riskLevel = value
            }
            if let value = dict["RiskLevel0"] as? String {
                self.riskLevel0 = value
            }
            if let value = dict["RiskLevel2"] as? String {
                self.riskLevel2 = value
            }
            if let value = dict["ScanResult"] as? String {
                self.scanResult = value
            }
            if let value = dict["ServiceCode"] as? String {
                self.serviceCode = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [ListOssCheckResultResponseBody.Items]?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
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
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListOssCheckResultResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListOssCheckResultResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListOssCheckResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOssCheckResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListOssCheckResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceConfigsRequest : Tea.TeaModel {
    public var classify: String?

    public var regionId: String?

    public var resourceType: String?

    public var useStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.classify != nil {
            map["Classify"] = self.classify!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.useStatus != nil {
            map["UseStatus"] = self.useStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Classify"] as? String {
            self.classify = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["UseStatus"] as? String {
            self.useStatus = value
        }
    }
}

public class ListServiceConfigsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CustomServiceConf : Tea.TeaModel {
            public class Rules : Tea.TeaModel {
                public class ImageScanRule : Tea.TeaModel {
                    public var services: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.services != nil {
                            map["Services"] = self.services!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Services"] as? [String] {
                            self.services = value
                        }
                    }
                }
                public class TextScanRule : Tea.TeaModel {
                    public var services: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.services != nil {
                            map["Services"] = self.services!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Services"] as? [String] {
                            self.services = value
                        }
                    }
                }
                public var imageScanRule: ListServiceConfigsResponseBody.Data.CustomServiceConf.Rules.ImageScanRule?

                public var index: Int32?

                public var textScanRule: ListServiceConfigsResponseBody.Data.CustomServiceConf.Rules.TextScanRule?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.imageScanRule?.validate()
                    try self.textScanRule?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.imageScanRule != nil {
                        map["ImageScanRule"] = self.imageScanRule?.toMap()
                    }
                    if self.index != nil {
                        map["Index"] = self.index!
                    }
                    if self.textScanRule != nil {
                        map["TextScanRule"] = self.textScanRule?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ImageScanRule"] as? [String: Any?] {
                        var model = ListServiceConfigsResponseBody.Data.CustomServiceConf.Rules.ImageScanRule()
                        model.fromMap(value)
                        self.imageScanRule = model
                    }
                    if let value = dict["Index"] as? Int32 {
                        self.index = value
                    }
                    if let value = dict["TextScanRule"] as? [String: Any?] {
                        var model = ListServiceConfigsResponseBody.Data.CustomServiceConf.Rules.TextScanRule()
                        model.fromMap(value)
                        self.textScanRule = model
                    }
                }
            }
            public var audioService: String?

            public var imageService: [String]?

            public var keywordFilterLibs: [String]?

            public var keywordHitLibs: [String]?

            public var rules: [ListServiceConfigsResponseBody.Data.CustomServiceConf.Rules]?

            public var similarTextHitLibs: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audioService != nil {
                    map["AudioService"] = self.audioService!
                }
                if self.imageService != nil {
                    map["ImageService"] = self.imageService!
                }
                if self.keywordFilterLibs != nil {
                    map["KeywordFilterLibs"] = self.keywordFilterLibs!
                }
                if self.keywordHitLibs != nil {
                    map["KeywordHitLibs"] = self.keywordHitLibs!
                }
                if self.rules != nil {
                    var tmp : [Any] = []
                    for k in self.rules! {
                        tmp.append(k.toMap())
                    }
                    map["Rules"] = tmp
                }
                if self.similarTextHitLibs != nil {
                    map["SimilarTextHitLibs"] = self.similarTextHitLibs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AudioService"] as? String {
                    self.audioService = value
                }
                if let value = dict["ImageService"] as? [String] {
                    self.imageService = value
                }
                if let value = dict["KeywordFilterLibs"] as? [String] {
                    self.keywordFilterLibs = value
                }
                if let value = dict["KeywordHitLibs"] as? [String] {
                    self.keywordHitLibs = value
                }
                if let value = dict["Rules"] as? [Any?] {
                    var tmp : [ListServiceConfigsResponseBody.Data.CustomServiceConf.Rules] = []
                    for v in value {
                        if v != nil {
                            var model = ListServiceConfigsResponseBody.Data.CustomServiceConf.Rules()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.rules = tmp
                }
                if let value = dict["SimilarTextHitLibs"] as? [String] {
                    self.similarTextHitLibs = value
                }
            }
        }
        public var classify: String?

        public var copyFrom: String?

        public var customServiceConf: ListServiceConfigsResponseBody.Data.CustomServiceConf?

        public var gmtModified: String?

        public var option: [String: Any]?

        public var resourceType: String?

        public var serviceCode: String?

        public var serviceDesc: String?

        public var serviceName: String?

        public var serviceType: String?

        public var uid: String?

        public var useStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.customServiceConf?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.classify != nil {
                map["Classify"] = self.classify!
            }
            if self.copyFrom != nil {
                map["CopyFrom"] = self.copyFrom!
            }
            if self.customServiceConf != nil {
                map["CustomServiceConf"] = self.customServiceConf?.toMap()
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.option != nil {
                map["Option"] = self.option!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.serviceCode != nil {
                map["ServiceCode"] = self.serviceCode!
            }
            if self.serviceDesc != nil {
                map["ServiceDesc"] = self.serviceDesc!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            if self.useStatus != nil {
                map["UseStatus"] = self.useStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Classify"] as? String {
                self.classify = value
            }
            if let value = dict["CopyFrom"] as? String {
                self.copyFrom = value
            }
            if let value = dict["CustomServiceConf"] as? [String: Any?] {
                var model = ListServiceConfigsResponseBody.Data.CustomServiceConf()
                model.fromMap(value)
                self.customServiceConf = model
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Option"] as? [String: Any] {
                self.option = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["ServiceCode"] as? String {
                self.serviceCode = value
            }
            if let value = dict["ServiceDesc"] as? String {
                self.serviceDesc = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["ServiceType"] as? String {
                self.serviceType = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
            }
            if let value = dict["UseStatus"] as? String {
                self.useStatus = value
            }
        }
    }
    public var code: Int32?

    public var data: [ListServiceConfigsResponseBody.Data]?

    public var msg: String?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListServiceConfigsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListServiceConfigsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListServiceConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListServiceConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LlmStreamChatRequest : Tea.TeaModel {
    public var messages: Any?

    public var temperature: Double?

    public var topP: Double?

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
        if self.messages != nil {
            map["Messages"] = self.messages!
        }
        if self.temperature != nil {
            map["Temperature"] = self.temperature!
        }
        if self.topP != nil {
            map["TopP"] = self.topP!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Messages"] as? Any {
            self.messages = value
        }
        if let value = dict["Temperature"] as? Double {
            self.temperature = value
        }
        if let value = dict["TopP"] as? Double {
            self.topP = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class LlmStreamChatResponseBody : Tea.TeaModel {
    public class Choices : Tea.TeaModel {
        public class Delta : Tea.TeaModel {
            public var content: String?

            public var role: String?

            public override init() {
                super.init()
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
                if self.role != nil {
                    map["Role"] = self.role!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["Role"] as? String {
                    self.role = value
                }
            }
        }
        public var delta: LlmStreamChatResponseBody.Choices.Delta?

        public var finishReason: String?

        public var index: Int64?

        public var logprobs: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.delta?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.delta != nil {
                map["Delta"] = self.delta?.toMap()
            }
            if self.finishReason != nil {
                map["FinishReason"] = self.finishReason!
            }
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.logprobs != nil {
                map["Logprobs"] = self.logprobs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Delta"] as? [String: Any?] {
                var model = LlmStreamChatResponseBody.Choices.Delta()
                model.fromMap(value)
                self.delta = model
            }
            if let value = dict["FinishReason"] as? String {
                self.finishReason = value
            }
            if let value = dict["Index"] as? Int64 {
                self.index = value
            }
            if let value = dict["Logprobs"] as? String {
                self.logprobs = value
            }
        }
    }
    public class Error : Tea.TeaModel {
        public var code: String?

        public var message: String?

        public var param: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.param != nil {
                map["Param"] = self.param!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Param"] as? String {
                self.param = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var choices: [LlmStreamChatResponseBody.Choices]?

    public var created: Int64?

    public var error: LlmStreamChatResponseBody.Error?

    public var id: String?

    public var model: String?

    public var object: String?

    public var requestId: String?

    public var systemFingerprint: String?

    public var usage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.error?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.choices != nil {
            var tmp : [Any] = []
            for k in self.choices! {
                tmp.append(k.toMap())
            }
            map["Choices"] = tmp
        }
        if self.created != nil {
            map["Created"] = self.created!
        }
        if self.error != nil {
            map["Error"] = self.error?.toMap()
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.object != nil {
            map["Object"] = self.object!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.systemFingerprint != nil {
            map["SystemFingerprint"] = self.systemFingerprint!
        }
        if self.usage != nil {
            map["Usage"] = self.usage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Choices"] as? [Any?] {
            var tmp : [LlmStreamChatResponseBody.Choices] = []
            for v in value {
                if v != nil {
                    var model = LlmStreamChatResponseBody.Choices()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.choices = tmp
        }
        if let value = dict["Created"] as? Int64 {
            self.created = value
        }
        if let value = dict["Error"] as? [String: Any?] {
            var model = LlmStreamChatResponseBody.Error()
            model.fromMap(value)
            self.error = model
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["Object"] as? String {
            self.object = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SystemFingerprint"] as? String {
            self.systemFingerprint = value
        }
        if let value = dict["Usage"] as? String {
            self.usage = value
        }
    }
}

public class LlmStreamChatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LlmStreamChatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = LlmStreamChatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAnswerLibRequest : Tea.TeaModel {
    public var libId: String?

    public var libName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.libName != nil {
            map["LibName"] = self.libName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["LibName"] as? String {
            self.libName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyAnswerLibResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyAnswerLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAnswerLibResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyAnswerLibResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyCallbackRequest : Tea.TeaModel {
    public var cryptType: String?

    public var id: Int64?

    public var name: String?

    public var regionId: String?

    public var scope: String?

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
        if self.cryptType != nil {
            map["CryptType"] = self.cryptType!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CryptType"] as? String {
            self.cryptType = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class ModifyCallbackResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCallbackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyCallbackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyFeatureConfigRequest : Tea.TeaModel {
    public var config: String?

    public var description_: String?

    public var field: String?

    public var regionId: String?

    public var resourceType: String?

    public var serviceCode: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.field != nil {
            map["Field"] = self.field!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Field"] as? String {
            self.field = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ModifyFeatureConfigResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var httpStatusCode: Int32?

    public var msg: String?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyFeatureConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFeatureConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyFeatureConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyServiceInfoRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceType: String?

    public var serviceCode: String?

    public var serviceDesc: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.serviceDesc != nil {
            map["ServiceDesc"] = self.serviceDesc!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["ServiceDesc"] as? String {
            self.serviceDesc = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
    }
}

public class ModifyServiceInfoResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyServiceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyServiceInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyServiceInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OssCheckResultListRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var finishNum: Int64?

    public var pageSize: Int32?

    public var query: String?

    public var regionId: String?

    public var sort: [String: String]?

    public var startDate: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.finishNum != nil {
            map["FinishNum"] = self.finishNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["FinishNum"] as? Int64 {
            self.finishNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? [String: String] {
            self.sort = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class OssCheckResultListShrinkRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var finishNum: Int64?

    public var pageSize: Int32?

    public var query: String?

    public var regionId: String?

    public var sortShrink: String?

    public var startDate: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.finishNum != nil {
            map["FinishNum"] = self.finishNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortShrink != nil {
            map["Sort"] = self.sortShrink!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["FinishNum"] as? Int64 {
            self.finishNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? String {
            self.sortShrink = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class OssCheckResultListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var bucket: String?

        public var code: String?

        public var contentType: String?

        public var copyFrom: String?

        public var imageUrl: String?

        public var isCopy: Bool?

        public var jobName: String?

        public var labels: [String]?

        public var labels2: [String]?

        public var md5: String?

        public var msg: String?

        public var object: String?

        public var scanResult: String?

        public var serviceCode: String?

        public var serviceName: String?

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
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.contentType != nil {
                map["ContentType"] = self.contentType!
            }
            if self.copyFrom != nil {
                map["CopyFrom"] = self.copyFrom!
            }
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.isCopy != nil {
                map["IsCopy"] = self.isCopy!
            }
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.labels2 != nil {
                map["Labels2"] = self.labels2!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.msg != nil {
                map["Msg"] = self.msg!
            }
            if self.object != nil {
                map["Object"] = self.object!
            }
            if self.scanResult != nil {
                map["ScanResult"] = self.scanResult!
            }
            if self.serviceCode != nil {
                map["ServiceCode"] = self.serviceCode!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
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
            if let value = dict["Bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["ContentType"] as? String {
                self.contentType = value
            }
            if let value = dict["CopyFrom"] as? String {
                self.copyFrom = value
            }
            if let value = dict["ImageUrl"] as? String {
                self.imageUrl = value
            }
            if let value = dict["IsCopy"] as? Bool {
                self.isCopy = value
            }
            if let value = dict["JobName"] as? String {
                self.jobName = value
            }
            if let value = dict["Labels"] as? [String] {
                self.labels = value
            }
            if let value = dict["Labels2"] as? [String] {
                self.labels2 = value
            }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["Msg"] as? String {
                self.msg = value
            }
            if let value = dict["Object"] as? String {
                self.object = value
            }
            if let value = dict["ScanResult"] as? String {
                self.scanResult = value
            }
            if let value = dict["ServiceCode"] as? String {
                self.serviceCode = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var authStatus: String?

    public var currentPage: Int32?

    public var items: [OssCheckResultListResponseBody.Items]?

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
        if self.authStatus != nil {
            map["AuthStatus"] = self.authStatus!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if let value = dict["AuthStatus"] as? String {
            self.authStatus = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [OssCheckResultListResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = OssCheckResultListResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
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

public class OssCheckResultListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OssCheckResultListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OssCheckResultListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAnswerSampleByPageRequest : Tea.TeaModel {
    public var answer: String?

    public var currentPage: Int32?

    public var libId: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var sort: [String: String]?

    public override init() {
        super.init()
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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Answer"] as? String {
            self.answer = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? [String: String] {
            self.sort = value
        }
    }
}

public class QueryAnswerSampleByPageShrinkRequest : Tea.TeaModel {
    public var answer: String?

    public var currentPage: Int32?

    public var libId: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var sortShrink: String?

    public override init() {
        super.init()
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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortShrink != nil {
            map["Sort"] = self.sortShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Answer"] as? String {
            self.answer = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? String {
            self.sortShrink = value
        }
    }
}

public class QueryAnswerSampleByPageResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var answer: String?

        public var gmtCreate: String?

        public var id: Int64?

        public var libId: String?

        public var uid: String?

        public override init() {
            super.init()
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
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.libId != nil {
                map["LibId"] = self.libId!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Answer"] as? String {
                self.answer = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["LibId"] as? String {
                self.libId = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [QueryAnswerSampleByPageResponseBody.Items]?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
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
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [QueryAnswerSampleByPageResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = QueryAnswerSampleByPageResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class QueryAnswerSampleByPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAnswerSampleByPageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryAnswerSampleByPageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCallbackRequest : Tea.TeaModel {
    public var checkForOss: Bool?

    public var id: Int64?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkForOss != nil {
            map["CheckForOss"] = self.checkForOss!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckForOss"] as? Bool {
            self.checkForOss = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class QueryCallbackResponseBody : Tea.TeaModel {
    public var cryptType: String?

    public var existsOssCheckTask: Bool?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var id: Int64?

    public var name: String?

    public var requestId: String?

    public var scope: String?

    public var seed: String?

    public var uid: String?

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
        if self.cryptType != nil {
            map["CryptType"] = self.cryptType!
        }
        if self.existsOssCheckTask != nil {
            map["ExistsOssCheckTask"] = self.existsOssCheckTask!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.seed != nil {
            map["Seed"] = self.seed!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CryptType"] as? String {
            self.cryptType = value
        }
        if let value = dict["ExistsOssCheckTask"] as? Bool {
            self.existsOssCheckTask = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["Seed"] as? String {
            self.seed = value
        }
        if let value = dict["Uid"] as? String {
            self.uid = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class QueryCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCallbackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryCallbackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCallbackByPageRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public override init() {
        super.init()
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
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class QueryCallbackByPageResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var cryptType: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var name: String?

        public var scope: String?

        public var seed: String?

        public var uid: String?

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
            if self.cryptType != nil {
                map["CryptType"] = self.cryptType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            if self.seed != nil {
                map["Seed"] = self.seed!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CryptType"] as? String {
                self.cryptType = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Scope"] as? String {
                self.scope = value
            }
            if let value = dict["Seed"] as? String {
                self.seed = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [QueryCallbackByPageResponseBody.Items]?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
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
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [QueryCallbackByPageResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = QueryCallbackByPageResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class QueryCallbackByPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCallbackByPageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryCallbackByPageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopOnlineTestRequest : Tea.TeaModel {
    public var resourceType: String?

    public var serviceCode: String?

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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class StopOnlineTestResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var serviceCode: String?

    public var taskId: String?

    public var taskStatus: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class StopOnlineTestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopOnlineTestResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopOnlineTestResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateBackupConfigRequest : Tea.TeaModel {
    public var backupConfig: String?

    public var regionId: String?

    public var resourceType: String?

    public var serviceCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupConfig != nil {
            map["BackupConfig"] = self.backupConfig!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupConfig"] as? String {
            self.backupConfig = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
    }
}

public class UpdateBackupConfigResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateBackupConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBackupConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateBackupConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateImageLibRequest : Tea.TeaModel {
    public var comment: String?

    public var freeInspection: Int32?

    public var libId: String?

    public var libName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.freeInspection != nil {
            map["FreeInspection"] = self.freeInspection!
        }
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.libName != nil {
            map["LibName"] = self.libName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["FreeInspection"] as? Int32 {
            self.freeInspection = value
        }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["LibName"] as? String {
            self.libName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateImageLibResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var httpStatusCode: Int32?

    public var msg: String?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateImageLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateImageLibResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateImageLibResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateImageLibFreeInspectionRequest : Tea.TeaModel {
    public var config: [String: Int32]?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? [String: Int32] {
            self.config = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateImageLibFreeInspectionShrinkRequest : Tea.TeaModel {
    public var configShrink: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configShrink != nil {
            map["Config"] = self.configShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.configShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateImageLibFreeInspectionResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var httpStatusCode: Int32?

    public var msg: String?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateImageLibFreeInspectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateImageLibFreeInspectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateImageLibFreeInspectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateKeywordLibRequest : Tea.TeaModel {
    public var libId: String?

    public var libName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.libId != nil {
            map["LibId"] = self.libId!
        }
        if self.libName != nil {
            map["LibName"] = self.libName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LibId"] as? String {
            self.libId = value
        }
        if let value = dict["LibName"] as? String {
            self.libName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateKeywordLibResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var msg: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateKeywordLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateKeywordLibResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateKeywordLibResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateOssCheckResultsBatchFeedbackRequest : Tea.TeaModel {
    public var feedback: String?

    public var items: String?

    public var parentTaskId: String?

    public override init() {
        super.init()
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
        if self.items != nil {
            map["Items"] = self.items!
        }
        if self.parentTaskId != nil {
            map["ParentTaskId"] = self.parentTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Feedback"] as? String {
            self.feedback = value
        }
        if let value = dict["Items"] as? String {
            self.items = value
        }
        if let value = dict["ParentTaskId"] as? String {
            self.parentTaskId = value
        }
    }
}

public class UpdateOssCheckResultsBatchFeedbackResponseBody : Tea.TeaModel {
    public var invalidCount: Int32?

    public var repeatCount: Int32?

    public var requestId: String?

    public var successCount: Int32?

    public var tips: String?

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
        if self.invalidCount != nil {
            map["InvalidCount"] = self.invalidCount!
        }
        if self.repeatCount != nil {
            map["RepeatCount"] = self.repeatCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successCount != nil {
            map["SuccessCount"] = self.successCount!
        }
        if self.tips != nil {
            map["Tips"] = self.tips!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InvalidCount"] as? Int32 {
            self.invalidCount = value
        }
        if let value = dict["RepeatCount"] as? Int32 {
            self.repeatCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SuccessCount"] as? Int32 {
            self.successCount = value
        }
        if let value = dict["Tips"] as? String {
            self.tips = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class UpdateOssCheckResultsBatchFeedbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOssCheckResultsBatchFeedbackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateOssCheckResultsBatchFeedbackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateOssCheckResultsFeedBackRequest : Tea.TeaModel {
    public var feedback: String?

    public var queryRequestId: String?

    public var regionId: String?

    public var serviceCode: String?

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
        if self.feedback != nil {
            map["Feedback"] = self.feedback!
        }
        if self.queryRequestId != nil {
            map["QueryRequestId"] = self.queryRequestId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Feedback"] as? String {
            self.feedback = value
        }
        if let value = dict["QueryRequestId"] as? String {
            self.queryRequestId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class UpdateOssCheckResultsFeedBackResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateOssCheckResultsFeedBackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOssCheckResultsFeedBackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateOssCheckResultsFeedBackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateOssCheckResultsFreezeRequest : Tea.TeaModel {
    public var endDate: String?

    public var freezeItems: String?

    public var freezeRestorePath: String?

    public var freezeType: String?

    public var regionId: String?

    public var startDate: String?

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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.freezeItems != nil {
            map["FreezeItems"] = self.freezeItems!
        }
        if self.freezeRestorePath != nil {
            map["FreezeRestorePath"] = self.freezeRestorePath!
        }
        if self.freezeType != nil {
            map["FreezeType"] = self.freezeType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["FreezeItems"] as? String {
            self.freezeItems = value
        }
        if let value = dict["FreezeRestorePath"] as? String {
            self.freezeRestorePath = value
        }
        if let value = dict["FreezeType"] as? String {
            self.freezeType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class UpdateOssCheckResultsFreezeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var invalidCount: Int32?

        public var repeatCount: Int32?

        public var successCount: Int32?

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
            if self.invalidCount != nil {
                map["InvalidCount"] = self.invalidCount!
            }
            if self.repeatCount != nil {
                map["RepeatCount"] = self.repeatCount!
            }
            if self.successCount != nil {
                map["SuccessCount"] = self.successCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InvalidCount"] as? Int32 {
                self.invalidCount = value
            }
            if let value = dict["RepeatCount"] as? Int32 {
                self.repeatCount = value
            }
            if let value = dict["SuccessCount"] as? Int32 {
                self.successCount = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var data: UpdateOssCheckResultsFreezeResponseBody.Data?

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
            var model = UpdateOssCheckResultsFreezeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateOssCheckResultsFreezeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOssCheckResultsFreezeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateOssCheckResultsFreezeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateOssCheckResultsUnfreezeRequest : Tea.TeaModel {
    public var endDate: String?

    public var freezeItems: String?

    public var regionId: String?

    public var startDate: String?

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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.freezeItems != nil {
            map["FreezeItems"] = self.freezeItems!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["FreezeItems"] as? String {
            self.freezeItems = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class UpdateOssCheckResultsUnfreezeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var invalidCount: Int32?

        public var repeatCount: Int32?

        public var successCount: Int32?

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
            if self.invalidCount != nil {
                map["InvalidCount"] = self.invalidCount!
            }
            if self.repeatCount != nil {
                map["RepeatCount"] = self.repeatCount!
            }
            if self.successCount != nil {
                map["SuccessCount"] = self.successCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InvalidCount"] as? Int32 {
                self.invalidCount = value
            }
            if let value = dict["RepeatCount"] as? Int32 {
                self.repeatCount = value
            }
            if let value = dict["SuccessCount"] as? Int32 {
                self.successCount = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var data: UpdateOssCheckResultsUnfreezeResponseBody.Data?

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
            var model = UpdateOssCheckResultsUnfreezeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateOssCheckResultsUnfreezeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOssCheckResultsUnfreezeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateOssCheckResultsUnfreezeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateScanResultFeedbackRequest : Tea.TeaModel {
    public var feedback: String?

    public var labels: String?

    public var queryRequestId: String?

    public var regionId: String?

    public var resourceType: String?

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
        if self.feedback != nil {
            map["Feedback"] = self.feedback!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.queryRequestId != nil {
            map["QueryRequestId"] = self.queryRequestId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Feedback"] as? String {
            self.feedback = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["QueryRequestId"] as? String {
            self.queryRequestId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["RiskLevel"] as? String {
            self.riskLevel = value
        }
    }
}

public class UpdateScanResultFeedbackResponseBody : Tea.TeaModel {
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateScanResultFeedbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateScanResultFeedbackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateScanResultFeedbackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceConfigRequest : Tea.TeaModel {
    public var fileConfig: String?

    public var keywordFilterLibs: String?

    public var keywordHitLibs: String?

    public var manualMachineConfig: String?

    public var regionId: String?

    public var resourceType: String?

    public var scene: String?

    public var sceneConfig: String?

    public var serviceCode: String?

    public var serviceConfig: String?

    public var videoConfig: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileConfig != nil {
            map["FileConfig"] = self.fileConfig!
        }
        if self.keywordFilterLibs != nil {
            map["KeywordFilterLibs"] = self.keywordFilterLibs!
        }
        if self.keywordHitLibs != nil {
            map["KeywordHitLibs"] = self.keywordHitLibs!
        }
        if self.manualMachineConfig != nil {
            map["ManualMachineConfig"] = self.manualMachineConfig!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sceneConfig != nil {
            map["SceneConfig"] = self.sceneConfig!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.serviceConfig != nil {
            map["ServiceConfig"] = self.serviceConfig!
        }
        if self.videoConfig != nil {
            map["VideoConfig"] = self.videoConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileConfig"] as? String {
            self.fileConfig = value
        }
        if let value = dict["KeywordFilterLibs"] as? String {
            self.keywordFilterLibs = value
        }
        if let value = dict["KeywordHitLibs"] as? String {
            self.keywordHitLibs = value
        }
        if let value = dict["ManualMachineConfig"] as? String {
            self.manualMachineConfig = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Scene"] as? String {
            self.scene = value
        }
        if let value = dict["SceneConfig"] as? String {
            self.sceneConfig = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["ServiceConfig"] as? String {
            self.serviceConfig = value
        }
        if let value = dict["VideoConfig"] as? String {
            self.videoConfig = value
        }
    }
}

public class UpdateServiceConfigResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

    public var httpStatusCode: Int32?

    public var msg: String?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateServiceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateServiceConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
