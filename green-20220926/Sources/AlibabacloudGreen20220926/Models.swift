import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("LibName") {
            self.libName = dict["LibName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddImageLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImgUrl") {
            self.imgUrl = dict["ImgUrl"] as! String
        }
        if dict.keys.contains("LibId") {
            self.libId = dict["LibId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImgId") {
                self.imgId = dict["ImgId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = AddImages2LibResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddImages2LibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keywords") {
            self.keywords = dict["Keywords"] as! String
        }
        if dict.keys.contains("KeywordsObject") {
            self.keywordsObject = dict["KeywordsObject"] as! String
        }
        if dict.keys.contains("LibName") {
            self.libName = dict["LibName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("I18nKey") {
                    self.i18nKey = dict["I18nKey"] as! String
                }
                if dict.keys.contains("IllegalLengthKeywords") {
                    self.illegalLengthKeywords = dict["IllegalLengthKeywords"] as! [String]
                }
                if dict.keys.contains("InvalidCount") {
                    self.invalidCount = dict["InvalidCount"] as! Int32
                }
                if dict.keys.contains("InvalidKeywords") {
                    self.invalidKeywords = dict["InvalidKeywords"] as! [String]
                }
                if dict.keys.contains("LibId") {
                    self.libId = dict["LibId"] as! String
                }
                if dict.keys.contains("RepeatCount") {
                    self.repeatCount = dict["RepeatCount"] as! Int32
                }
                if dict.keys.contains("RepeatKeywords") {
                    self.repeatKeywords = dict["RepeatKeywords"] as! [String]
                }
                if dict.keys.contains("SuccessCount") {
                    self.successCount = dict["SuccessCount"] as! Int32
                }
                if dict.keys.contains("Tips") {
                    self.tips = dict["Tips"] as! String
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("KeywordsResult") {
                var model = AddKeywordLibResponseBody.Data.KeywordsResult()
                model.fromMap(dict["KeywordsResult"] as! [String: Any])
                self.keywordsResult = model
            }
            if dict.keys.contains("LibId") {
                self.libId = dict["LibId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = AddKeywordLibResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddKeywordLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keywords") {
            self.keywords = dict["Keywords"] as! String
        }
        if dict.keys.contains("KeywordsObject") {
            self.keywordsObject = dict["KeywordsObject"] as! String
        }
        if dict.keys.contains("LibId") {
            self.libId = dict["LibId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("I18nKey") {
                    self.i18nKey = dict["I18nKey"] as! String
                }
                if dict.keys.contains("IllegalLengthKeywords") {
                    self.illegalLengthKeywords = dict["IllegalLengthKeywords"] as! [String]
                }
                if dict.keys.contains("InvalidCount") {
                    self.invalidCount = dict["InvalidCount"] as! Int32
                }
                if dict.keys.contains("InvalidKeywords") {
                    self.invalidKeywords = dict["InvalidKeywords"] as! [String]
                }
                if dict.keys.contains("LibId") {
                    self.libId = dict["LibId"] as! String
                }
                if dict.keys.contains("Progress") {
                    self.progress = dict["Progress"] as! Int32
                }
                if dict.keys.contains("RepeatCount") {
                    self.repeatCount = dict["RepeatCount"] as! Int32
                }
                if dict.keys.contains("RepeatKeywords") {
                    self.repeatKeywords = dict["RepeatKeywords"] as! [String]
                }
                if dict.keys.contains("SuccessCount") {
                    self.successCount = dict["SuccessCount"] as! Int32
                }
                if dict.keys.contains("Tips") {
                    self.tips = dict["Tips"] as! String
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("KeywordsResult") {
                var model = AddKeywordsResponseBody.Data.KeywordsResult()
                model.fromMap(dict["KeywordsResult"] as! [String: Any])
                self.keywordsResult = model
            }
            if dict.keys.contains("LibId") {
                self.libId = dict["LibId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = AddKeywordsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddKeywordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keywords") {
            self.keywords = dict["Keywords"] as! String
        }
        if dict.keys.contains("KeywordsObject") {
            self.keywordsObject = dict["KeywordsObject"] as! String
        }
        if dict.keys.contains("LibId") {
            self.libId = dict["LibId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("I18nKey") {
                    self.i18nKey = dict["I18nKey"] as! String
                }
                if dict.keys.contains("IllegalLengthKeywords") {
                    self.illegalLengthKeywords = dict["IllegalLengthKeywords"] as! [String]
                }
                if dict.keys.contains("InvalidCount") {
                    self.invalidCount = dict["InvalidCount"] as! Int32
                }
                if dict.keys.contains("InvalidKeywords") {
                    self.invalidKeywords = dict["InvalidKeywords"] as! [String]
                }
                if dict.keys.contains("LibId") {
                    self.libId = dict["LibId"] as! String
                }
                if dict.keys.contains("Progress") {
                    self.progress = dict["Progress"] as! Int32
                }
                if dict.keys.contains("RepeatCount") {
                    self.repeatCount = dict["RepeatCount"] as! Int32
                }
                if dict.keys.contains("RepeatKeywords") {
                    self.repeatKeywords = dict["RepeatKeywords"] as! [String]
                }
                if dict.keys.contains("SuccessCount") {
                    self.successCount = dict["SuccessCount"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("KeywordsResult") {
                var model = AddKeywordsToLibResponseBody.Data.KeywordsResult()
                model.fromMap(dict["KeywordsResult"] as! [String: Any])
                self.keywordsResult = model
            }
            if dict.keys.contains("LibId") {
                self.libId = dict["LibId"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = AddKeywordsToLibResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddKeywordsToLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelStockOssCheckTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
        }
        if dict.keys.contains("ServiceDesc") {
            self.serviceDesc = dict["ServiceDesc"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CopyServiceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public var freezeType: String?

    public var isInc: Bool?

    public var mediaType: Int32?

    public var prefixFilterType: String?

    public var prefixFilters: String?

    public var priority: Int32?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Buckets") {
            self.buckets = dict["Buckets"] as! String
        }
        if dict.keys.contains("CallbackId") {
            self.callbackId = dict["CallbackId"] as! String
        }
        if dict.keys.contains("DistinctHistoryTasks") {
            self.distinctHistoryTasks = dict["DistinctHistoryTasks"] as! Bool
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ExecuteDate") {
            self.executeDate = dict["ExecuteDate"] as! Int32
        }
        if dict.keys.contains("ExecuteTime") {
            self.executeTime = dict["ExecuteTime"] as! String
        }
        if dict.keys.contains("Freeze") {
            self.freeze = dict["Freeze"] as! Bool
        }
        if dict.keys.contains("FreezeHighRisk1") {
            self.freezeHighRisk1 = dict["FreezeHighRisk1"] as! Bool
        }
        if dict.keys.contains("FreezeHighRisk2") {
            self.freezeHighRisk2 = dict["FreezeHighRisk2"] as! Bool
        }
        if dict.keys.contains("FreezeMediumRisk1") {
            self.freezeMediumRisk1 = dict["FreezeMediumRisk1"] as! Bool
        }
        if dict.keys.contains("FreezeMediumRisk2") {
            self.freezeMediumRisk2 = dict["FreezeMediumRisk2"] as! Bool
        }
        if dict.keys.contains("FreezeType") {
            self.freezeType = dict["FreezeType"] as! String
        }
        if dict.keys.contains("IsInc") {
            self.isInc = dict["IsInc"] as! Bool
        }
        if dict.keys.contains("MediaType") {
            self.mediaType = dict["MediaType"] as! Int32
        }
        if dict.keys.contains("PrefixFilterType") {
            self.prefixFilterType = dict["PrefixFilterType"] as! String
        }
        if dict.keys.contains("PrefixFilters") {
            self.prefixFilters = dict["PrefixFilters"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ScanLimit") {
            self.scanLimit = dict["ScanLimit"] as! Int64
        }
        if dict.keys.contains("ScanNoFileType") {
            self.scanNoFileType = dict["ScanNoFileType"] as! Bool
        }
        if dict.keys.contains("ScanResourceType") {
            self.scanResourceType = dict["ScanResourceType"] as! String
        }
        if dict.keys.contains("ScanService") {
            self.scanService = dict["ScanService"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskCycle") {
            self.taskCycle = dict["TaskCycle"] as! Int32
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreatStockOssCheckTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Buckets") {
            self.buckets = dict["Buckets"] as! String
        }
        if dict.keys.contains("DistinctHistoryTasks") {
            self.distinctHistoryTasks = dict["DistinctHistoryTasks"] as! Bool
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("IsInc") {
            self.isInc = dict["IsInc"] as! Bool
        }
        if dict.keys.contains("MediaType") {
            self.mediaType = dict["MediaType"] as! Int32
        }
        if dict.keys.contains("PrefixFilterType") {
            self.prefixFilterType = dict["PrefixFilterType"] as! String
        }
        if dict.keys.contains("PrefixFilters") {
            self.prefixFilters = dict["PrefixFilters"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ScanLimit") {
            self.scanLimit = dict["ScanLimit"] as! Int64
        }
        if dict.keys.contains("ScanNoFileType") {
            self.scanNoFileType = dict["ScanNoFileType"] as! Bool
        }
        if dict.keys.contains("ScanService") {
            self.scanService = dict["ScanService"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [String: Bool]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreatePreCheckResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageIds") {
            self.imageIds = dict["ImageIds"] as! String
        }
        if dict.keys.contains("LibId") {
            self.libId = dict["LibId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteImagesFromLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteKeywordRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeywordIds") {
            self.keywordIds = dict["KeywordIds"] as! String
        }
        if dict.keys.contains("LibId") {
            self.libId = dict["LibId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteKeywordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LibId") {
            self.libId = dict["LibId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteKeywordLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportCipStatsRequest : Tea.TeaModel {
    public var byMonth: Bool?

    public var endDate: String?

    public var label: String?

    public var regionId: String?

    public var resourceType: String?

    public var startDate: String?

    public var subUid: String?

    public override init() {
        super.init()
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
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.subUid != nil {
            map["SubUid"] = self.subUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ByMonth") {
            self.byMonth = dict["ByMonth"] as! Bool
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("SubUid") {
            self.subUid = dict["SubUid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ExportCipStatsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LibId") {
            self.libId = dict["LibId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ExportKeywordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ByMonth") {
            self.byMonth = dict["ByMonth"] as! Bool
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("ParentTaskId") {
            self.parentTaskId = dict["ParentTaskId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ExportOssCheckStatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! [String: String]
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sortShrink = dict["Sort"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ExportResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! [String: String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! [String: String]
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.queryShrink = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sortShrink = dict["Sort"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ExportScanResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! [String: String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("Query") {
            self.queryShrink = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ExportTextScanResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bucket") {
                self.bucket = dict["Bucket"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [GetBackupBucketsListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetBackupBucketsListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetBackupBucketsListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupMode") {
            self.backupMode = dict["BackupMode"] as! Int32
        }
        if dict.keys.contains("Bucket") {
            self.bucket = dict["Bucket"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("EnableBackup") {
            self.enableBackup = dict["EnableBackup"] as! Bool
        }
        if dict.keys.contains("EnableBackupVoice") {
            self.enableBackupVoice = dict["EnableBackupVoice"] as! Bool
        }
        if dict.keys.contains("ExpireSeconds") {
            self.expireSeconds = dict["ExpireSeconds"] as! Int32
        }
        if dict.keys.contains("GmtModified") {
            self.gmtModified = dict["GmtModified"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("PathVoice") {
            self.pathVoice = dict["PathVoice"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetBackupConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetBackupStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bucket") {
                self.bucket = dict["Bucket"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [GetBucketsListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetBucketsListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetBucketsListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public var startDate: String?

    public var subUid: String?

    public override init() {
        super.init()
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
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.subUid != nil {
            map["SubUid"] = self.subUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ByMonth") {
            self.byMonth = dict["ByMonth"] as! Bool
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("SubUid") {
            self.subUid = dict["SubUid"] as! String
        }
    }
}

public class GetCipStatsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class LabelStatChart : Tea.TeaModel {
            public class TreeChart : Tea.TeaModel {
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public class VoiceTreeChart : Tea.TeaModel {
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Data") {
                        self.data = dict["Data"] as! [Int64]
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public var serviceCode: String?

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
                if self.serviceCode != nil {
                    map["ServiceCode"] = self.serviceCode!
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ServiceCode") {
                    self.serviceCode = dict["ServiceCode"] as! String
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
                if dict.keys.contains("TreeChart") {
                    var tmp : [GetCipStatsResponseBody.Data.LabelStatChart.TreeChart] = []
                    for v in dict["TreeChart"] as! [Any] {
                        var model = GetCipStatsResponseBody.Data.LabelStatChart.TreeChart()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.treeChart = tmp
                }
                if dict.keys.contains("VoiceTreeChart") {
                    var tmp : [GetCipStatsResponseBody.Data.LabelStatChart.VoiceTreeChart] = []
                    for v in dict["VoiceTreeChart"] as! [Any] {
                        var model = GetCipStatsResponseBody.Data.LabelStatChart.VoiceTreeChart()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.voiceTreeChart = tmp
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! [String]
                }
                if dict.keys.contains("Y") {
                    var tmp : [GetCipStatsResponseBody.Data.LabelStatChart.Y] = []
                    for v in dict["Y"] as! [Any] {
                        var model = GetCipStatsResponseBody.Data.LabelStatChart.Y()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Data") {
                    self.data = dict["Data"] as! [Int64]
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Data") {
                    self.data = dict["Data"] as! [Int64]
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var labelStatChart: [GetCipStatsResponseBody.Data.LabelStatChart]?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LabelStatChart") {
                var tmp : [GetCipStatsResponseBody.Data.LabelStatChart] = []
                for v in dict["LabelStatChart"] as! [Any] {
                    var model = GetCipStatsResponseBody.Data.LabelStatChart()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.labelStatChart = tmp
            }
            if dict.keys.contains("Uids") {
                self.uids = dict["Uids"] as! [String]
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! [String]
            }
            if dict.keys.contains("Y") {
                var tmp : [GetCipStatsResponseBody.Data.Y] = []
                for v in dict["Y"] as! [Any] {
                    var model = GetCipStatsResponseBody.Data.Y()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.y = tmp
            }
            if dict.keys.contains("Z") {
                var tmp : [GetCipStatsResponseBody.Data.Z] = []
                for v in dict["Z"] as! [Any] {
                    var model = GetCipStatsResponseBody.Data.Z()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetCipStatsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCipStatsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetExecuteTimeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageServiceCode") {
            self.imageServiceCode = dict["ImageServiceCode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [Any]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetImageSceneLabelListConfResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! [String: String]
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sortShrink = dict["Sort"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetJobNameListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("I18nKey") {
                self.i18nKey = dict["I18nKey"] as! String
            }
            if dict.keys.contains("IllegalLengthKeywords") {
                self.illegalLengthKeywords = dict["IllegalLengthKeywords"] as! [String]
            }
            if dict.keys.contains("InvalidCount") {
                self.invalidCount = dict["InvalidCount"] as! Int32
            }
            if dict.keys.contains("InvalidKeywords") {
                self.invalidKeywords = dict["InvalidKeywords"] as! [String]
            }
            if dict.keys.contains("LibId") {
                self.libId = dict["LibId"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! Int32
            }
            if dict.keys.contains("RepeatCount") {
                self.repeatCount = dict["RepeatCount"] as! Int32
            }
            if dict.keys.contains("RepeatKeywords") {
                self.repeatKeywords = dict["RepeatKeywords"] as! [String]
            }
            if dict.keys.contains("SuccessCount") {
                self.successCount = dict["SuccessCount"] as! Int32
            }
            if dict.keys.contains("Tips") {
                self.tips = dict["Tips"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetKeywordImportResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetKeywordImportResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ByMonth") {
            self.byMonth = dict["ByMonth"] as! Bool
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("ParentTaskId") {
            self.parentTaskId = dict["ParentTaskId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Data") {
                    self.data = dict["Data"] as! [Int64]
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("X") {
                self.x = dict["X"] as! [String]
            }
            if dict.keys.contains("Y") {
                var tmp : [GetOssCheckStatResponseBody.BarChart.Y] = []
                for v in dict["Y"] as! [Any] {
                    var model = GetOssCheckStatResponseBody.BarChart.Y()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BarChart") {
            var model = GetOssCheckStatResponseBody.BarChart()
            model.fromMap(dict["BarChart"] as! [String: Any])
            self.barChart = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOssCheckStatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bid") {
            self.bid = dict["Bid"] as! String
        }
        if dict.keys.contains("Buy") {
            self.buy = dict["Buy"] as! Bool
        }
        if dict.keys.contains("CommodityCode") {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("Indebt") {
            self.indebt = dict["Indebt"] as! Bool
        }
        if dict.keys.contains("RamStatus") {
            self.ramStatus = dict["RamStatus"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SlsStatus") {
            self.slsStatus = dict["SlsStatus"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOssCheckStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Buckets") {
            self.buckets = dict["Buckets"] as! String
        }
        if dict.keys.contains("MediaType") {
            self.mediaType = dict["MediaType"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LimitNumber") {
            self.limitNumber = dict["LimitNumber"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScanNumber") {
            self.scanNumber = dict["ScanNumber"] as! Int64
        }
        if dict.keys.contains("SumNumber") {
            self.sumNumber = dict["SumNumber"] as! Int64
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetScanNumResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! [String: String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! [String: String]
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.queryShrink = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sortShrink = dict["Sort"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class GetScanResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Result : Tea.TeaModel {
                public var confidence: String?

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
                        self.confidence = dict["Confidence"] as! String
                    }
                    if dict.keys.contains("Label") {
                        self.label = dict["Label"] as! String
                    }
                }
            }
            public var content: String?

            public var dataId: String?

            public var endTime: String?

            public var extFeedback: String?

            public var extra: [String: Any]?

            public var frameCount: Int64?

            public var gmtCreate: String?

            public var imageLabels: [[String: Any]]?

            public var imageService: String?

            public var imageUrl: String?

            public var labels: String?

            public var noLabels: [String]?

            public var offset: Int64?

            public var pageNum: Int64?

            public var requestId: String?

            public var requestTime: String?

            public var result: [GetScanResultResponseBody.Data.Items.Result]?

            public var riskTips: String?

            public var riskWords: String?

            public var scanResult: String?

            public var score: Double?

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
                if self.noLabels != nil {
                    map["NoLabels"] = self.noLabels!
                }
                if self.offset != nil {
                    map["Offset"] = self.offset!
                }
                if self.pageNum != nil {
                    map["PageNum"] = self.pageNum!
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("DataId") {
                    self.dataId = dict["DataId"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("ExtFeedback") {
                    self.extFeedback = dict["ExtFeedback"] as! String
                }
                if dict.keys.contains("Extra") {
                    self.extra = dict["Extra"] as! [String: Any]
                }
                if dict.keys.contains("FrameCount") {
                    self.frameCount = dict["FrameCount"] as! Int64
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("ImageLabels") {
                    self.imageLabels = dict["ImageLabels"] as! [[String: Any]]
                }
                if dict.keys.contains("ImageService") {
                    self.imageService = dict["ImageService"] as! String
                }
                if dict.keys.contains("ImageUrl") {
                    self.imageUrl = dict["ImageUrl"] as! String
                }
                if dict.keys.contains("Labels") {
                    self.labels = dict["Labels"] as! String
                }
                if dict.keys.contains("NoLabels") {
                    self.noLabels = dict["NoLabels"] as! [String]
                }
                if dict.keys.contains("Offset") {
                    self.offset = dict["Offset"] as! Int64
                }
                if dict.keys.contains("PageNum") {
                    self.pageNum = dict["PageNum"] as! Int64
                }
                if dict.keys.contains("RequestId") {
                    self.requestId = dict["RequestId"] as! String
                }
                if dict.keys.contains("RequestTime") {
                    self.requestTime = dict["RequestTime"] as! String
                }
                if dict.keys.contains("Result") {
                    var tmp : [GetScanResultResponseBody.Data.Items.Result] = []
                    for v in dict["Result"] as! [Any] {
                        var model = GetScanResultResponseBody.Data.Items.Result()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.result = tmp
                }
                if dict.keys.contains("RiskTips") {
                    self.riskTips = dict["RiskTips"] as! String
                }
                if dict.keys.contains("RiskWords") {
                    self.riskWords = dict["RiskWords"] as! String
                }
                if dict.keys.contains("ScanResult") {
                    self.scanResult = dict["ScanResult"] as! String
                }
                if dict.keys.contains("Score") {
                    self.score = dict["Score"] as! Double
                }
                if dict.keys.contains("ServiceCode") {
                    self.serviceCode = dict["ServiceCode"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Suggestion") {
                    self.suggestion = dict["Suggestion"] as! String
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("TextLabels") {
                    self.textLabels = dict["TextLabels"] as! [[String: Any]]
                }
                if dict.keys.contains("Thumbnail") {
                    self.thumbnail = dict["Thumbnail"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("VoiceLabels") {
                    self.voiceLabels = dict["VoiceLabels"] as! [[String: Any]]
                }
                if dict.keys.contains("VoiceScanOpened") {
                    self.voiceScanOpened = dict["VoiceScanOpened"] as! Bool
                }
                if dict.keys.contains("VoiceService") {
                    self.voiceService = dict["VoiceService"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("Items") {
                var tmp : [GetScanResultResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = GetScanResultResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetScanResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetScanResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ByDefault") {
            self.byDefault = dict["ByDefault"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
        }
    }
}

public class GetServiceConfResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var customServiceConf: [String: Any]?

    public var gmtModified: String?

    public var msg: String?

    public var option: [String: Any]?

    public var requestId: String?

    public var resourceType: String?

    public var serviceCode: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("CustomServiceConf") {
            self.customServiceConf = dict["CustomServiceConf"] as! [String: Any]
        }
        if dict.keys.contains("GmtModified") {
            self.gmtModified = dict["GmtModified"] as! String
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("Option") {
            self.option = dict["Option"] as! [String: Any]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetServiceConfResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
        }
    }
}

public class GetServiceConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CustomServiceConf : Tea.TeaModel {
            public var keywordFilterLibs: [String]?

            public var keywordHitLibs: [String]?

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
                if self.keywordFilterLibs != nil {
                    map["KeywordFilterLibs"] = self.keywordFilterLibs!
                }
                if self.keywordHitLibs != nil {
                    map["KeywordHitLibs"] = self.keywordHitLibs!
                }
                if self.similarTextHitLibs != nil {
                    map["SimilarTextHitLibs"] = self.similarTextHitLibs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("KeywordFilterLibs") {
                    self.keywordFilterLibs = dict["KeywordFilterLibs"] as! [String]
                }
                if dict.keys.contains("KeywordHitLibs") {
                    self.keywordHitLibs = dict["KeywordHitLibs"] as! [String]
                }
                if dict.keys.contains("SimilarTextHitLibs") {
                    self.similarTextHitLibs = dict["SimilarTextHitLibs"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomServiceConf") {
                var model = GetServiceConfigResponseBody.Data.CustomServiceConf()
                model.fromMap(dict["CustomServiceConf"] as! [String: Any])
                self.customServiceConf = model
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("ServiceCode") {
                self.serviceCode = dict["ServiceCode"] as! String
            }
            if dict.keys.contains("Uid") {
                self.uid = dict["Uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetServiceConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetServiceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [Any]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetServiceLabelConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("IsInc") {
            self.isInc = dict["IsInc"] as! Bool
        }
        if dict.keys.contains("MediaType") {
            self.mediaType = dict["MediaType"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! [String: String]
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("IsInc") {
            self.isInc = dict["IsInc"] as! Bool
        }
        if dict.keys.contains("MediaType") {
            self.mediaType = dict["MediaType"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sortShrink = dict["Sort"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CopyFrom") {
                        self.copyFrom = dict["CopyFrom"] as! String
                    }
                    if dict.keys.contains("IsCopy") {
                        self.isCopy = dict["IsCopy"] as! Bool
                    }
                    if dict.keys.contains("ServiceCode") {
                        self.serviceCode = dict["ServiceCode"] as! String
                    }
                    if dict.keys.contains("ServiceName") {
                        self.serviceName = dict["ServiceName"] as! String
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

            public var freezeType: String?

            public var prefixFilterType: String?

            public var prefixFilters: [String]?

            public var priority: Int32?

            public var scanLimit: Int64?

            public var scanNoFileType: Bool?

            public var scanResourceType: Int32?

            public var scanService: [String]?

            public var scanServiceInfos: [GetStockOssCheckTasksListResponseBody.Items.Config.ScanServiceInfos]?

            public var startTime: String?

            public var taskCycle: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CallbackId") {
                    self.callbackId = dict["CallbackId"] as! Int64
                }
                if dict.keys.contains("DistinctHistoryTasks") {
                    self.distinctHistoryTasks = dict["DistinctHistoryTasks"] as! Bool
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("ExecuteDate") {
                    self.executeDate = dict["ExecuteDate"] as! Int32
                }
                if dict.keys.contains("ExecuteTime") {
                    self.executeTime = dict["ExecuteTime"] as! String
                }
                if dict.keys.contains("Freeze") {
                    self.freeze = dict["Freeze"] as! Bool
                }
                if dict.keys.contains("FreezeHighRisk1") {
                    self.freezeHighRisk1 = dict["FreezeHighRisk1"] as! Bool
                }
                if dict.keys.contains("FreezeHighRisk2") {
                    self.freezeHighRisk2 = dict["FreezeHighRisk2"] as! Bool
                }
                if dict.keys.contains("FreezeMediumRisk1") {
                    self.freezeMediumRisk1 = dict["FreezeMediumRisk1"] as! Bool
                }
                if dict.keys.contains("FreezeMediumRisk2") {
                    self.freezeMediumRisk2 = dict["FreezeMediumRisk2"] as! Bool
                }
                if dict.keys.contains("FreezeType") {
                    self.freezeType = dict["FreezeType"] as! String
                }
                if dict.keys.contains("PrefixFilterType") {
                    self.prefixFilterType = dict["PrefixFilterType"] as! String
                }
                if dict.keys.contains("PrefixFilters") {
                    self.prefixFilters = dict["PrefixFilters"] as! [String]
                }
                if dict.keys.contains("Priority") {
                    self.priority = dict["Priority"] as! Int32
                }
                if dict.keys.contains("ScanLimit") {
                    self.scanLimit = dict["ScanLimit"] as! Int64
                }
                if dict.keys.contains("ScanNoFileType") {
                    self.scanNoFileType = dict["ScanNoFileType"] as! Bool
                }
                if dict.keys.contains("ScanResourceType") {
                    self.scanResourceType = dict["ScanResourceType"] as! Int32
                }
                if dict.keys.contains("ScanService") {
                    self.scanService = dict["ScanService"] as! [String]
                }
                if dict.keys.contains("ScanServiceInfos") {
                    var tmp : [GetStockOssCheckTasksListResponseBody.Items.Config.ScanServiceInfos] = []
                    for v in dict["ScanServiceInfos"] as! [Any] {
                        var model = GetStockOssCheckTasksListResponseBody.Items.Config.ScanServiceInfos()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.scanServiceInfos = tmp
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("TaskCycle") {
                    self.taskCycle = dict["TaskCycle"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Buckets") {
                self.buckets = dict["Buckets"] as! String
            }
            if dict.keys.contains("Config") {
                var model = GetStockOssCheckTasksListResponseBody.Items.Config()
                model.fromMap(dict["Config"] as! [String: Any])
                self.config = model
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("FinishNum") {
                self.finishNum = dict["FinishNum"] as! Int64
            }
            if dict.keys.contains("IsInc") {
                self.isInc = dict["IsInc"] as! Bool
            }
            if dict.keys.contains("LastExecuteDate") {
                self.lastExecuteDate = dict["LastExecuteDate"] as! String
            }
            if dict.keys.contains("MediaType") {
                self.mediaType = dict["MediaType"] as! Int32
            }
            if dict.keys.contains("NextExecuteDate") {
                self.nextExecuteDate = dict["NextExecuteDate"] as! String
            }
            if dict.keys.contains("ObjectNum") {
                self.objectNum = dict["ObjectNum"] as! Int64
            }
            if dict.keys.contains("SearchNum") {
                self.searchNum = dict["SearchNum"] as! Int64
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") {
            var tmp : [GetStockOssCheckTasksListResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = GetStockOssCheckTasksListResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetStockOssCheckTasksListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! [String: String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! [String: String]
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.queryShrink = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sortShrink = dict["Sort"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class GetTextScanResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
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
            public var content: String?

            public var extFeedback: String?

            public var extra: [String: Any]?

            public var gmtCreate: String?

            public var labels: String?

            public var requestId: String?

            public var requestTime: String?

            public var result: [GetTextScanResultResponseBody.Data.Items.Result]?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("ExtFeedback") {
                    self.extFeedback = dict["ExtFeedback"] as! String
                }
                if dict.keys.contains("Extra") {
                    self.extra = dict["Extra"] as! [String: Any]
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("Labels") {
                    self.labels = dict["Labels"] as! String
                }
                if dict.keys.contains("RequestId") {
                    self.requestId = dict["RequestId"] as! String
                }
                if dict.keys.contains("RequestTime") {
                    self.requestTime = dict["RequestTime"] as! String
                }
                if dict.keys.contains("Result") {
                    var tmp : [GetTextScanResultResponseBody.Data.Items.Result] = []
                    for v in dict["Result"] as! [Any] {
                        var model = GetTextScanResultResponseBody.Data.Items.Result()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.result = tmp
                }
                if dict.keys.contains("ScanResult") {
                    self.scanResult = dict["ScanResult"] as! String
                }
                if dict.keys.contains("Score") {
                    self.score = dict["Score"] as! Double
                }
                if dict.keys.contains("ServiceCode") {
                    self.serviceCode = dict["ServiceCode"] as! String
                }
                if dict.keys.contains("Suggestion") {
                    self.suggestion = dict["Suggestion"] as! String
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("Items") {
                var tmp : [GetTextScanResultResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = GetTextScanResultResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetTextScanResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetTextScanResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessId") {
            self.accessId = dict["AccessId"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Expire") {
            self.expire = dict["Expire"] as! Int64
        }
        if dict.keys.contains("Folder") {
            self.folder = dict["Folder"] as! String
        }
        if dict.keys.contains("Host") {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Policy") {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Signature") {
            self.signature = dict["Signature"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetUploadInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserBuyStatusRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetUserBuyStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bid: Int64?

        public var buy: Bool?

        public var indebt: Bool?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bid") {
                self.bid = dict["Bid"] as! Int64
            }
            if dict.keys.contains("Buy") {
                self.buy = dict["Buy"] as! Bool
            }
            if dict.keys.contains("Indebt") {
                self.indebt = dict["Indebt"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetUserBuyStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetUserBuyStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("FreeInspection") {
                self.freeInspection = dict["FreeInspection"] as! Int32
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("ImageNum") {
                self.imageNum = dict["ImageNum"] as! Int64
            }
            if dict.keys.contains("LibId") {
                self.libId = dict["LibId"] as! String
            }
            if dict.keys.contains("LibName") {
                self.libName = dict["LibName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("LibList") {
            var tmp : [ListImageLibResponseBody.LibList] = []
            for v in dict["LibList"] as! [Any] {
                var model = ListImageLibResponseBody.LibList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.libList = tmp
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListImageLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("ImgId") {
            self.imgId = dict["ImgId"] as! String
        }
        if dict.keys.contains("LibId") {
            self.libId = dict["LibId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! [String: String]
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("ImgId") {
            self.imgId = dict["ImgId"] as! String
        }
        if dict.keys.contains("LibId") {
            self.libId = dict["LibId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sortShrink = dict["Sort"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageUrl") {
                self.imageUrl = dict["ImageUrl"] as! String
            }
            if dict.keys.contains("ThumbnailUrl") {
                self.thumbnailUrl = dict["ThumbnailUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Items") {
            var tmp : [ListImagesFromLibResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = ListImagesFromLibResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListImagesFromLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListKeywordLibsResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("KeywordCount") {
                self.keywordCount = dict["KeywordCount"] as! String
            }
            if dict.keys.contains("LibId") {
                self.libId = dict["LibId"] as! String
            }
            if dict.keys.contains("LibName") {
                self.libName = dict["LibName"] as! String
            }
            if dict.keys.contains("Uid") {
                self.uid = dict["Uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [ListKeywordLibsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListKeywordLibsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListKeywordLibsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("LibId") {
            self.libId = dict["LibId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! [String: String]
        }
        if dict.keys.contains("Word") {
            self.word = dict["Word"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("LibId") {
            self.libId = dict["LibId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sortShrink = dict["Sort"] as! String
        }
        if dict.keys.contains("Word") {
            self.word = dict["Word"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("KeywordLibId") {
                    self.keywordLibId = dict["KeywordLibId"] as! String
                }
                if dict.keys.contains("KeywordMd5Id") {
                    self.keywordMd5Id = dict["KeywordMd5Id"] as! Int64
                }
                if dict.keys.contains("Word") {
                    self.word = dict["Word"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("Items") {
                var tmp : [ListKeywordsResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListKeywordsResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListKeywordsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListKeywordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("FinishNum") {
            self.finishNum = dict["FinishNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! [String: String]
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("FinishNum") {
            self.finishNum = dict["FinishNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sortShrink = dict["Sort"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bucket") {
                self.bucket = dict["Bucket"] as! String
            }
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("ContentType") {
                self.contentType = dict["ContentType"] as! String
            }
            if dict.keys.contains("CopyFrom") {
                self.copyFrom = dict["CopyFrom"] as! String
            }
            if dict.keys.contains("FreezeStatus") {
                self.freezeStatus = dict["FreezeStatus"] as! String
            }
            if dict.keys.contains("FreezeType") {
                self.freezeType = dict["FreezeType"] as! String
            }
            if dict.keys.contains("ImageUrl") {
                self.imageUrl = dict["ImageUrl"] as! String
            }
            if dict.keys.contains("IsCopy") {
                self.isCopy = dict["IsCopy"] as! Bool
            }
            if dict.keys.contains("JobName") {
                self.jobName = dict["JobName"] as! String
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [String]
            }
            if dict.keys.contains("Labels2") {
                self.labels2 = dict["Labels2"] as! [String]
            }
            if dict.keys.contains("Md5") {
                self.md5 = dict["Md5"] as! String
            }
            if dict.keys.contains("Msg") {
                self.msg = dict["Msg"] as! String
            }
            if dict.keys.contains("Object") {
                self.object = dict["Object"] as! String
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! String
            }
            if dict.keys.contains("RiskLevel0") {
                self.riskLevel0 = dict["RiskLevel0"] as! String
            }
            if dict.keys.contains("RiskLevel2") {
                self.riskLevel2 = dict["RiskLevel2"] as! String
            }
            if dict.keys.contains("ScanResult") {
                self.scanResult = dict["ScanResult"] as! String
            }
            if dict.keys.contains("ServiceCode") {
                self.serviceCode = dict["ServiceCode"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") {
            var tmp : [ListOssCheckResultResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = ListOssCheckResultResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListOssCheckResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Classify") {
            self.classify = dict["Classify"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("UseStatus") {
            self.useStatus = dict["UseStatus"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Services") {
                            self.services = dict["Services"] as! [String]
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Services") {
                            self.services = dict["Services"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ImageScanRule") {
                        var model = ListServiceConfigsResponseBody.Data.CustomServiceConf.Rules.ImageScanRule()
                        model.fromMap(dict["ImageScanRule"] as! [String: Any])
                        self.imageScanRule = model
                    }
                    if dict.keys.contains("Index") {
                        self.index = dict["Index"] as! Int32
                    }
                    if dict.keys.contains("TextScanRule") {
                        var model = ListServiceConfigsResponseBody.Data.CustomServiceConf.Rules.TextScanRule()
                        model.fromMap(dict["TextScanRule"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AudioService") {
                    self.audioService = dict["AudioService"] as! String
                }
                if dict.keys.contains("ImageService") {
                    self.imageService = dict["ImageService"] as! [String]
                }
                if dict.keys.contains("KeywordFilterLibs") {
                    self.keywordFilterLibs = dict["KeywordFilterLibs"] as! [String]
                }
                if dict.keys.contains("KeywordHitLibs") {
                    self.keywordHitLibs = dict["KeywordHitLibs"] as! [String]
                }
                if dict.keys.contains("Rules") {
                    var tmp : [ListServiceConfigsResponseBody.Data.CustomServiceConf.Rules] = []
                    for v in dict["Rules"] as! [Any] {
                        var model = ListServiceConfigsResponseBody.Data.CustomServiceConf.Rules()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.rules = tmp
                }
                if dict.keys.contains("SimilarTextHitLibs") {
                    self.similarTextHitLibs = dict["SimilarTextHitLibs"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Classify") {
                self.classify = dict["Classify"] as! String
            }
            if dict.keys.contains("CopyFrom") {
                self.copyFrom = dict["CopyFrom"] as! String
            }
            if dict.keys.contains("CustomServiceConf") {
                var model = ListServiceConfigsResponseBody.Data.CustomServiceConf()
                model.fromMap(dict["CustomServiceConf"] as! [String: Any])
                self.customServiceConf = model
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Option") {
                self.option = dict["Option"] as! [String: Any]
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("ServiceCode") {
                self.serviceCode = dict["ServiceCode"] as! String
            }
            if dict.keys.contains("ServiceDesc") {
                self.serviceDesc = dict["ServiceDesc"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("ServiceType") {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Uid") {
                self.uid = dict["Uid"] as! String
            }
            if dict.keys.contains("UseStatus") {
                self.useStatus = dict["UseStatus"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [ListServiceConfigsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListServiceConfigsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServiceConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
        }
        if dict.keys.contains("ServiceDesc") {
            self.serviceDesc = dict["ServiceDesc"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyServiceInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupConfig") {
            self.backupConfig = dict["BackupConfig"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateBackupConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("FreeInspection") {
            self.freeInspection = dict["FreeInspection"] as! Int32
        }
        if dict.keys.contains("LibId") {
            self.libId = dict["LibId"] as! String
        }
        if dict.keys.contains("LibName") {
            self.libName = dict["LibName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateImageLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! [String: Int32]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.configShrink = dict["Config"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateImageLibFreeInspectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LibId") {
            self.libId = dict["LibId"] as! String
        }
        if dict.keys.contains("LibName") {
            self.libName = dict["LibName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateKeywordLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateScanResultFeedbackRequest : Tea.TeaModel {
    public var feedback: String?

    public var queryRequestId: String?

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
        if self.feedback != nil {
            map["Feedback"] = self.feedback!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Feedback") {
            self.feedback = dict["Feedback"] as! String
        }
        if dict.keys.contains("QueryRequestId") {
            self.queryRequestId = dict["QueryRequestId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateScanResultFeedbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateServiceConfigRequest : Tea.TeaModel {
    public var fileConfig: String?

    public var keywordFilterLibs: String?

    public var keywordHitLibs: String?

    public var regionId: String?

    public var resourceType: String?

    public var scene: String?

    public var sceneConfig: String?

    public var serviceCode: String?

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
        if self.videoConfig != nil {
            map["VideoConfig"] = self.videoConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileConfig") {
            self.fileConfig = dict["FileConfig"] as! String
        }
        if dict.keys.contains("KeywordFilterLibs") {
            self.keywordFilterLibs = dict["KeywordFilterLibs"] as! String
        }
        if dict.keys.contains("KeywordHitLibs") {
            self.keywordHitLibs = dict["KeywordHitLibs"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SceneConfig") {
            self.sceneConfig = dict["SceneConfig"] as! String
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
        }
        if dict.keys.contains("VideoConfig") {
            self.videoConfig = dict["VideoConfig"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateServiceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
