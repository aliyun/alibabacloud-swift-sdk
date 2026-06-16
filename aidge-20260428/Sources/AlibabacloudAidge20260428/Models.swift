import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AssetOptimizeLiteRequest : Tea.TeaModel {
    public var glossary: String?

    public var includingProductArea: Bool?

    public var needTrans: Bool?

    public var productUrl: String?

    public var sourceLanguage: String?

    public var sourcePlatform: String?

    public var targetLanguage: String?

    public var targetPlatform: String?

    public var translatingBrandInTheProduct: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.glossary != nil {
            map["Glossary"] = self.glossary!
        }
        if self.includingProductArea != nil {
            map["IncludingProductArea"] = self.includingProductArea!
        }
        if self.needTrans != nil {
            map["NeedTrans"] = self.needTrans!
        }
        if self.productUrl != nil {
            map["ProductUrl"] = self.productUrl!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.sourcePlatform != nil {
            map["SourcePlatform"] = self.sourcePlatform!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        if self.targetPlatform != nil {
            map["TargetPlatform"] = self.targetPlatform!
        }
        if self.translatingBrandInTheProduct != nil {
            map["TranslatingBrandInTheProduct"] = self.translatingBrandInTheProduct!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Glossary"] as? String {
            self.glossary = value
        }
        if let value = dict["IncludingProductArea"] as? Bool {
            self.includingProductArea = value
        }
        if let value = dict["NeedTrans"] as? Bool {
            self.needTrans = value
        }
        if let value = dict["ProductUrl"] as? String {
            self.productUrl = value
        }
        if let value = dict["SourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["SourcePlatform"] as? String {
            self.sourcePlatform = value
        }
        if let value = dict["TargetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["TargetPlatform"] as? String {
            self.targetPlatform = value
        }
        if let value = dict["TranslatingBrandInTheProduct"] as? Bool {
            self.translatingBrandInTheProduct = value
        }
    }
}

public class AssetOptimizeLiteResponseBody : Tea.TeaModel {
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
    public var code: String?

    public var data: AssetOptimizeLiteResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = AssetOptimizeLiteResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AssetOptimizeLiteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssetOptimizeLiteResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AssetOptimizeLiteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AssetOptimizeProRequest : Tea.TeaModel {
    public var columnNameList: [String]?

    public var glossary: String?

    public var includingProductArea: Bool?

    public var languageModel: String?

    public var needTrans: Bool?

    public var productUrl: String?

    public var sourceLanguage: String?

    public var sourcePlatform: String?

    public var targetLanguage: String?

    public var targetPlatform: String?

    public var threshold: Double?

    public var translatingBrandInTheProduct: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnNameList != nil {
            map["ColumnNameList"] = self.columnNameList!
        }
        if self.glossary != nil {
            map["Glossary"] = self.glossary!
        }
        if self.includingProductArea != nil {
            map["IncludingProductArea"] = self.includingProductArea!
        }
        if self.languageModel != nil {
            map["LanguageModel"] = self.languageModel!
        }
        if self.needTrans != nil {
            map["NeedTrans"] = self.needTrans!
        }
        if self.productUrl != nil {
            map["ProductUrl"] = self.productUrl!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.sourcePlatform != nil {
            map["SourcePlatform"] = self.sourcePlatform!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        if self.targetPlatform != nil {
            map["TargetPlatform"] = self.targetPlatform!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        if self.translatingBrandInTheProduct != nil {
            map["TranslatingBrandInTheProduct"] = self.translatingBrandInTheProduct!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColumnNameList"] as? [String] {
            self.columnNameList = value
        }
        if let value = dict["Glossary"] as? String {
            self.glossary = value
        }
        if let value = dict["IncludingProductArea"] as? Bool {
            self.includingProductArea = value
        }
        if let value = dict["LanguageModel"] as? String {
            self.languageModel = value
        }
        if let value = dict["NeedTrans"] as? Bool {
            self.needTrans = value
        }
        if let value = dict["ProductUrl"] as? String {
            self.productUrl = value
        }
        if let value = dict["SourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["SourcePlatform"] as? String {
            self.sourcePlatform = value
        }
        if let value = dict["TargetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["TargetPlatform"] as? String {
            self.targetPlatform = value
        }
        if let value = dict["Threshold"] as? Double {
            self.threshold = value
        }
        if let value = dict["TranslatingBrandInTheProduct"] as? Bool {
            self.translatingBrandInTheProduct = value
        }
    }
}

public class AssetOptimizeProShrinkRequest : Tea.TeaModel {
    public var columnNameListShrink: String?

    public var glossary: String?

    public var includingProductArea: Bool?

    public var languageModel: String?

    public var needTrans: Bool?

    public var productUrl: String?

    public var sourceLanguage: String?

    public var sourcePlatform: String?

    public var targetLanguage: String?

    public var targetPlatform: String?

    public var threshold: Double?

    public var translatingBrandInTheProduct: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnNameListShrink != nil {
            map["ColumnNameList"] = self.columnNameListShrink!
        }
        if self.glossary != nil {
            map["Glossary"] = self.glossary!
        }
        if self.includingProductArea != nil {
            map["IncludingProductArea"] = self.includingProductArea!
        }
        if self.languageModel != nil {
            map["LanguageModel"] = self.languageModel!
        }
        if self.needTrans != nil {
            map["NeedTrans"] = self.needTrans!
        }
        if self.productUrl != nil {
            map["ProductUrl"] = self.productUrl!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.sourcePlatform != nil {
            map["SourcePlatform"] = self.sourcePlatform!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        if self.targetPlatform != nil {
            map["TargetPlatform"] = self.targetPlatform!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        if self.translatingBrandInTheProduct != nil {
            map["TranslatingBrandInTheProduct"] = self.translatingBrandInTheProduct!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColumnNameList"] as? String {
            self.columnNameListShrink = value
        }
        if let value = dict["Glossary"] as? String {
            self.glossary = value
        }
        if let value = dict["IncludingProductArea"] as? Bool {
            self.includingProductArea = value
        }
        if let value = dict["LanguageModel"] as? String {
            self.languageModel = value
        }
        if let value = dict["NeedTrans"] as? Bool {
            self.needTrans = value
        }
        if let value = dict["ProductUrl"] as? String {
            self.productUrl = value
        }
        if let value = dict["SourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["SourcePlatform"] as? String {
            self.sourcePlatform = value
        }
        if let value = dict["TargetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["TargetPlatform"] as? String {
            self.targetPlatform = value
        }
        if let value = dict["Threshold"] as? Double {
            self.threshold = value
        }
        if let value = dict["TranslatingBrandInTheProduct"] as? Bool {
            self.translatingBrandInTheProduct = value
        }
    }
}

public class AssetOptimizeProResponseBody : Tea.TeaModel {
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
    public var code: String?

    public var data: AssetOptimizeProResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = AssetOptimizeProResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AssetOptimizeProResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssetOptimizeProResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AssetOptimizeProResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CategoryAttributeMatchRequest : Tea.TeaModel {
    public var description_: String?

    public var imageUrl: [String]?

    public var itemSpec: String?

    public var sku: String?

    public var sourceCategory: String?

    public var sourcePlatform: String?

    public var targetPlatform: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.itemSpec != nil {
            map["ItemSpec"] = self.itemSpec!
        }
        if self.sku != nil {
            map["Sku"] = self.sku!
        }
        if self.sourceCategory != nil {
            map["SourceCategory"] = self.sourceCategory!
        }
        if self.sourcePlatform != nil {
            map["SourcePlatform"] = self.sourcePlatform!
        }
        if self.targetPlatform != nil {
            map["TargetPlatform"] = self.targetPlatform!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ImageUrl"] as? [String] {
            self.imageUrl = value
        }
        if let value = dict["ItemSpec"] as? String {
            self.itemSpec = value
        }
        if let value = dict["Sku"] as? String {
            self.sku = value
        }
        if let value = dict["SourceCategory"] as? String {
            self.sourceCategory = value
        }
        if let value = dict["SourcePlatform"] as? String {
            self.sourcePlatform = value
        }
        if let value = dict["TargetPlatform"] as? String {
            self.targetPlatform = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class CategoryAttributeMatchShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var imageUrlShrink: String?

    public var itemSpec: String?

    public var sku: String?

    public var sourceCategory: String?

    public var sourcePlatform: String?

    public var targetPlatform: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.imageUrlShrink != nil {
            map["ImageUrl"] = self.imageUrlShrink!
        }
        if self.itemSpec != nil {
            map["ItemSpec"] = self.itemSpec!
        }
        if self.sku != nil {
            map["Sku"] = self.sku!
        }
        if self.sourceCategory != nil {
            map["SourceCategory"] = self.sourceCategory!
        }
        if self.sourcePlatform != nil {
            map["SourcePlatform"] = self.sourcePlatform!
        }
        if self.targetPlatform != nil {
            map["TargetPlatform"] = self.targetPlatform!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrlShrink = value
        }
        if let value = dict["ItemSpec"] as? String {
            self.itemSpec = value
        }
        if let value = dict["Sku"] as? String {
            self.sku = value
        }
        if let value = dict["SourceCategory"] as? String {
            self.sourceCategory = value
        }
        if let value = dict["SourcePlatform"] as? String {
            self.sourcePlatform = value
        }
        if let value = dict["TargetPlatform"] as? String {
            self.targetPlatform = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class CategoryAttributeMatchResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Attributes : Tea.TeaModel {
            public var attrId: Int32?

            public var confidence: Int32?

            public var inputType: String?

            public var matched: Bool?

            public var name: String?

            public var nameEn: String?

            public var reason: String?

            public var selectedValues: [String]?

            public var selectedVids: [Int32]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attrId != nil {
                    map["AttrId"] = self.attrId!
                }
                if self.confidence != nil {
                    map["Confidence"] = self.confidence!
                }
                if self.inputType != nil {
                    map["InputType"] = self.inputType!
                }
                if self.matched != nil {
                    map["Matched"] = self.matched!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nameEn != nil {
                    map["NameEn"] = self.nameEn!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.selectedValues != nil {
                    map["SelectedValues"] = self.selectedValues!
                }
                if self.selectedVids != nil {
                    map["SelectedVids"] = self.selectedVids!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttrId"] as? Int32 {
                    self.attrId = value
                }
                if let value = dict["Confidence"] as? Int32 {
                    self.confidence = value
                }
                if let value = dict["InputType"] as? String {
                    self.inputType = value
                }
                if let value = dict["Matched"] as? Bool {
                    self.matched = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NameEn"] as? String {
                    self.nameEn = value
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
                }
                if let value = dict["SelectedValues"] as? [String] {
                    self.selectedValues = value
                }
                if let value = dict["SelectedVids"] as? [Int32] {
                    self.selectedVids = value
                }
            }
        }
        public class UsageMap : Tea.TeaModel {
            public var processingCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.processingCount != nil {
                    map["ProcessingCount"] = self.processingCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ProcessingCount"] as? Int32 {
                    self.processingCount = value
                }
            }
        }
        public var attributes: [CategoryAttributeMatchResponseBody.Data.Attributes]?

        public var categoryId: Int32?

        public var categoryName: String?

        public var categoryPath: String?

        public var filledCount: Int32?

        public var matched: Bool?

        public var totalAttributes: Int32?

        public var usageMap: CategoryAttributeMatchResponseBody.Data.UsageMap?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.usageMap?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributes != nil {
                var tmp : [Any] = []
                for k in self.attributes! {
                    tmp.append(k.toMap())
                }
                map["Attributes"] = tmp
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.categoryPath != nil {
                map["CategoryPath"] = self.categoryPath!
            }
            if self.filledCount != nil {
                map["FilledCount"] = self.filledCount!
            }
            if self.matched != nil {
                map["Matched"] = self.matched!
            }
            if self.totalAttributes != nil {
                map["TotalAttributes"] = self.totalAttributes!
            }
            if self.usageMap != nil {
                map["UsageMap"] = self.usageMap?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? [Any?] {
                var tmp : [CategoryAttributeMatchResponseBody.Data.Attributes] = []
                for v in value {
                    if v != nil {
                        var model = CategoryAttributeMatchResponseBody.Data.Attributes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.attributes = tmp
            }
            if let value = dict["CategoryId"] as? Int32 {
                self.categoryId = value
            }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
            if let value = dict["CategoryPath"] as? String {
                self.categoryPath = value
            }
            if let value = dict["FilledCount"] as? Int32 {
                self.filledCount = value
            }
            if let value = dict["Matched"] as? Bool {
                self.matched = value
            }
            if let value = dict["TotalAttributes"] as? Int32 {
                self.totalAttributes = value
            }
            if let value = dict["UsageMap"] as? [String: Any?] {
                var model = CategoryAttributeMatchResponseBody.Data.UsageMap()
                model.fromMap(value)
                self.usageMap = model
            }
        }
    }
    public var code: String?

    public var data: CategoryAttributeMatchResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CategoryAttributeMatchResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CategoryAttributeMatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CategoryAttributeMatchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CategoryAttributeMatchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CategoryMatchRequest : Tea.TeaModel {
    public var description_: String?

    public var itemSpec: String?

    public var sku: String?

    public var sourceCategory: String?

    public var sourcePlatform: String?

    public var targetPlatform: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.itemSpec != nil {
            map["ItemSpec"] = self.itemSpec!
        }
        if self.sku != nil {
            map["Sku"] = self.sku!
        }
        if self.sourceCategory != nil {
            map["SourceCategory"] = self.sourceCategory!
        }
        if self.sourcePlatform != nil {
            map["SourcePlatform"] = self.sourcePlatform!
        }
        if self.targetPlatform != nil {
            map["TargetPlatform"] = self.targetPlatform!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ItemSpec"] as? String {
            self.itemSpec = value
        }
        if let value = dict["Sku"] as? String {
            self.sku = value
        }
        if let value = dict["SourceCategory"] as? String {
            self.sourceCategory = value
        }
        if let value = dict["SourcePlatform"] as? String {
            self.sourcePlatform = value
        }
        if let value = dict["TargetPlatform"] as? String {
            self.targetPlatform = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class CategoryMatchResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var categoryId: String?

        public var categoryName: String?

        public var categoryPath: String?

        public var confidence: Int32?

        public var matchSuccessful: Bool?

        public var reason: String?

        public var usageMap: [String: Int32]?

        public override init() {
            super.init()
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
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.categoryPath != nil {
                map["CategoryPath"] = self.categoryPath!
            }
            if self.confidence != nil {
                map["Confidence"] = self.confidence!
            }
            if self.matchSuccessful != nil {
                map["MatchSuccessful"] = self.matchSuccessful!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.usageMap != nil {
                map["UsageMap"] = self.usageMap!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? String {
                self.categoryId = value
            }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
            if let value = dict["CategoryPath"] as? String {
                self.categoryPath = value
            }
            if let value = dict["Confidence"] as? Int32 {
                self.confidence = value
            }
            if let value = dict["MatchSuccessful"] as? Bool {
                self.matchSuccessful = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["UsageMap"] as? [String: Int32] {
                self.usageMap = value
            }
        }
    }
    public var code: String?

    public var data: CategoryMatchResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CategoryMatchResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CategoryMatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CategoryMatchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CategoryMatchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DocumentTranslateRequest : Tea.TeaModel {
    public var fileType: String?

    public var glossary: String?

    public var targetLanguage: String?

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
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.glossary != nil {
            map["Glossary"] = self.glossary!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
        if let value = dict["Glossary"] as? String {
            self.glossary = value
        }
        if let value = dict["TargetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class DocumentTranslateResponseBody : Tea.TeaModel {
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
    public var code: String?

    public var data: DocumentTranslateResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DocumentTranslateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DocumentTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DocumentTranslateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DocumentTranslateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImageCroppingRequest : Tea.TeaModel {
    public var imageUrl: String?

    public var targetHeight: Int32?

    public var targetWidth: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.targetHeight != nil {
            map["TargetHeight"] = self.targetHeight!
        }
        if self.targetWidth != nil {
            map["TargetWidth"] = self.targetWidth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["TargetHeight"] as? Int32 {
            self.targetHeight = value
        }
        if let value = dict["TargetWidth"] as? Int32 {
            self.targetWidth = value
        }
    }
}

public class ImageCroppingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var height: Int32?

        public var imageUrl: String?

        public var usageMap: [String: Int64]?

        public var width: Int32?

        public override init() {
            super.init()
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
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.usageMap != nil {
                map["UsageMap"] = self.usageMap!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Height"] as? Int32 {
                self.height = value
            }
            if let value = dict["ImageUrl"] as? String {
                self.imageUrl = value
            }
            if let value = dict["UsageMap"] as? [String: Int64] {
                self.usageMap = value
            }
            if let value = dict["Width"] as? Int32 {
                self.width = value
            }
        }
    }
    public var code: String?

    public var data: ImageCroppingResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ImageCroppingResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ImageCroppingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImageCroppingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ImageCroppingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImageMattingRequest : Tea.TeaModel {
    public var backGroundType: String?

    public var bgColor: String?

    public var imageUrl: String?

    public var targetHeight: Int32?

    public var targetWidth: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backGroundType != nil {
            map["BackGroundType"] = self.backGroundType!
        }
        if self.bgColor != nil {
            map["BgColor"] = self.bgColor!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.targetHeight != nil {
            map["TargetHeight"] = self.targetHeight!
        }
        if self.targetWidth != nil {
            map["TargetWidth"] = self.targetWidth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackGroundType"] as? String {
            self.backGroundType = value
        }
        if let value = dict["BgColor"] as? String {
            self.bgColor = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["TargetHeight"] as? Int32 {
            self.targetHeight = value
        }
        if let value = dict["TargetWidth"] as? Int32 {
            self.targetWidth = value
        }
    }
}

public class ImageMattingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var height: Int32?

        public var imageUrl: String?

        public var score: Double?

        public var usageMap: [String: Int64]?

        public var width: Int32?

        public override init() {
            super.init()
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
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.usageMap != nil {
                map["UsageMap"] = self.usageMap!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Height"] as? Int32 {
                self.height = value
            }
            if let value = dict["ImageUrl"] as? String {
                self.imageUrl = value
            }
            if let value = dict["Score"] as? Double {
                self.score = value
            }
            if let value = dict["UsageMap"] as? [String: Int64] {
                self.usageMap = value
            }
            if let value = dict["Width"] as? Int32 {
                self.width = value
            }
        }
    }
    public var code: String?

    public var data: ImageMattingResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ImageMattingResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ImageMattingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImageMattingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ImageMattingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImageRecognitionRequest : Tea.TeaModel {
    public var imageUrl: String?

    public var nonObjectDetectElements: [Int32]?

    public var objectDetectElements: [Int32]?

    public var returnBorderPixel: Int32?

    public var returnCharacter: Int32?

    public var returnCharacterProp: Int32?

    public var returnProductNum: Int32?

    public var returnProductProp: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.nonObjectDetectElements != nil {
            map["NonObjectDetectElements"] = self.nonObjectDetectElements!
        }
        if self.objectDetectElements != nil {
            map["ObjectDetectElements"] = self.objectDetectElements!
        }
        if self.returnBorderPixel != nil {
            map["ReturnBorderPixel"] = self.returnBorderPixel!
        }
        if self.returnCharacter != nil {
            map["ReturnCharacter"] = self.returnCharacter!
        }
        if self.returnCharacterProp != nil {
            map["ReturnCharacterProp"] = self.returnCharacterProp!
        }
        if self.returnProductNum != nil {
            map["ReturnProductNum"] = self.returnProductNum!
        }
        if self.returnProductProp != nil {
            map["ReturnProductProp"] = self.returnProductProp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["NonObjectDetectElements"] as? [Int32] {
            self.nonObjectDetectElements = value
        }
        if let value = dict["ObjectDetectElements"] as? [Int32] {
            self.objectDetectElements = value
        }
        if let value = dict["ReturnBorderPixel"] as? Int32 {
            self.returnBorderPixel = value
        }
        if let value = dict["ReturnCharacter"] as? Int32 {
            self.returnCharacter = value
        }
        if let value = dict["ReturnCharacterProp"] as? Int32 {
            self.returnCharacterProp = value
        }
        if let value = dict["ReturnProductNum"] as? Int32 {
            self.returnProductNum = value
        }
        if let value = dict["ReturnProductProp"] as? Int32 {
            self.returnProductProp = value
        }
    }
}

public class ImageRecognitionShrinkRequest : Tea.TeaModel {
    public var imageUrl: String?

    public var nonObjectDetectElementsShrink: String?

    public var objectDetectElementsShrink: String?

    public var returnBorderPixel: Int32?

    public var returnCharacter: Int32?

    public var returnCharacterProp: Int32?

    public var returnProductNum: Int32?

    public var returnProductProp: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.nonObjectDetectElementsShrink != nil {
            map["NonObjectDetectElements"] = self.nonObjectDetectElementsShrink!
        }
        if self.objectDetectElementsShrink != nil {
            map["ObjectDetectElements"] = self.objectDetectElementsShrink!
        }
        if self.returnBorderPixel != nil {
            map["ReturnBorderPixel"] = self.returnBorderPixel!
        }
        if self.returnCharacter != nil {
            map["ReturnCharacter"] = self.returnCharacter!
        }
        if self.returnCharacterProp != nil {
            map["ReturnCharacterProp"] = self.returnCharacterProp!
        }
        if self.returnProductNum != nil {
            map["ReturnProductNum"] = self.returnProductNum!
        }
        if self.returnProductProp != nil {
            map["ReturnProductProp"] = self.returnProductProp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["NonObjectDetectElements"] as? String {
            self.nonObjectDetectElementsShrink = value
        }
        if let value = dict["ObjectDetectElements"] as? String {
            self.objectDetectElementsShrink = value
        }
        if let value = dict["ReturnBorderPixel"] as? Int32 {
            self.returnBorderPixel = value
        }
        if let value = dict["ReturnCharacter"] as? Int32 {
            self.returnCharacter = value
        }
        if let value = dict["ReturnCharacterProp"] as? Int32 {
            self.returnCharacterProp = value
        }
        if let value = dict["ReturnProductNum"] as? Int32 {
            self.returnProductNum = value
        }
        if let value = dict["ReturnProductProp"] as? Int32 {
            self.returnProductProp = value
        }
    }
}

public class ImageRecognitionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var borderPixel: String?

        public var noobjCharacter: Bool?

        public var noobjLogo: Bool?

        public var noobjNpx: Bool?

        public var noobjWatermark: Bool?

        public var objCharacter: Bool?

        public var objLogo: Bool?

        public var objNpx: Bool?

        public var objWatermark: Bool?

        public var pdNum: Int32?

        public var pdProp: String?

        public var recText: [String]?

        public var textProp: String?

        public var usageMap: [String: Int64]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.borderPixel != nil {
                map["BorderPixel"] = self.borderPixel!
            }
            if self.noobjCharacter != nil {
                map["NoobjCharacter"] = self.noobjCharacter!
            }
            if self.noobjLogo != nil {
                map["NoobjLogo"] = self.noobjLogo!
            }
            if self.noobjNpx != nil {
                map["NoobjNpx"] = self.noobjNpx!
            }
            if self.noobjWatermark != nil {
                map["NoobjWatermark"] = self.noobjWatermark!
            }
            if self.objCharacter != nil {
                map["ObjCharacter"] = self.objCharacter!
            }
            if self.objLogo != nil {
                map["ObjLogo"] = self.objLogo!
            }
            if self.objNpx != nil {
                map["ObjNpx"] = self.objNpx!
            }
            if self.objWatermark != nil {
                map["ObjWatermark"] = self.objWatermark!
            }
            if self.pdNum != nil {
                map["PdNum"] = self.pdNum!
            }
            if self.pdProp != nil {
                map["PdProp"] = self.pdProp!
            }
            if self.recText != nil {
                map["RecText"] = self.recText!
            }
            if self.textProp != nil {
                map["TextProp"] = self.textProp!
            }
            if self.usageMap != nil {
                map["UsageMap"] = self.usageMap!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BorderPixel"] as? String {
                self.borderPixel = value
            }
            if let value = dict["NoobjCharacter"] as? Bool {
                self.noobjCharacter = value
            }
            if let value = dict["NoobjLogo"] as? Bool {
                self.noobjLogo = value
            }
            if let value = dict["NoobjNpx"] as? Bool {
                self.noobjNpx = value
            }
            if let value = dict["NoobjWatermark"] as? Bool {
                self.noobjWatermark = value
            }
            if let value = dict["ObjCharacter"] as? Bool {
                self.objCharacter = value
            }
            if let value = dict["ObjLogo"] as? Bool {
                self.objLogo = value
            }
            if let value = dict["ObjNpx"] as? Bool {
                self.objNpx = value
            }
            if let value = dict["ObjWatermark"] as? Bool {
                self.objWatermark = value
            }
            if let value = dict["PdNum"] as? Int32 {
                self.pdNum = value
            }
            if let value = dict["PdProp"] as? String {
                self.pdProp = value
            }
            if let value = dict["RecText"] as? [String] {
                self.recText = value
            }
            if let value = dict["TextProp"] as? String {
                self.textProp = value
            }
            if let value = dict["UsageMap"] as? [String: Int64] {
                self.usageMap = value
            }
        }
    }
    public var code: String?

    public var data: ImageRecognitionResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ImageRecognitionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ImageRecognitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImageRecognitionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ImageRecognitionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImageRemoveRequest : Tea.TeaModel {
    public var imageUrl: String?

    public var mask: String?

    public var nonObjectRemoveElements: [Int32]?

    public var objectRemoveElements: [Int32]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.nonObjectRemoveElements != nil {
            map["NonObjectRemoveElements"] = self.nonObjectRemoveElements!
        }
        if self.objectRemoveElements != nil {
            map["ObjectRemoveElements"] = self.objectRemoveElements!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["NonObjectRemoveElements"] as? [Int32] {
            self.nonObjectRemoveElements = value
        }
        if let value = dict["ObjectRemoveElements"] as? [Int32] {
            self.objectRemoveElements = value
        }
    }
}

public class ImageRemoveShrinkRequest : Tea.TeaModel {
    public var imageUrl: String?

    public var mask: String?

    public var nonObjectRemoveElementsShrink: String?

    public var objectRemoveElementsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.nonObjectRemoveElementsShrink != nil {
            map["NonObjectRemoveElements"] = self.nonObjectRemoveElementsShrink!
        }
        if self.objectRemoveElementsShrink != nil {
            map["ObjectRemoveElements"] = self.objectRemoveElementsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["NonObjectRemoveElements"] as? String {
            self.nonObjectRemoveElementsShrink = value
        }
        if let value = dict["ObjectRemoveElements"] as? String {
            self.objectRemoveElementsShrink = value
        }
    }
}

public class ImageRemoveResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var height: Int32?

        public var imageUrl: String?

        public var usageMap: [String: Int64]?

        public var width: Int32?

        public override init() {
            super.init()
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
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.usageMap != nil {
                map["UsageMap"] = self.usageMap!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Height"] as? Int32 {
                self.height = value
            }
            if let value = dict["ImageUrl"] as? String {
                self.imageUrl = value
            }
            if let value = dict["UsageMap"] as? [String: Int64] {
                self.usageMap = value
            }
            if let value = dict["Width"] as? Int32 {
                self.width = value
            }
        }
    }
    public var code: String?

    public var data: ImageRemoveResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ImageRemoveResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ImageRemoveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImageRemoveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ImageRemoveResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImageTranslationProRequest : Tea.TeaModel {
    public var glossary: String?

    public var imageUrl: String?

    public var includingProductArea: Bool?

    public var sourceLanguage: String?

    public var targetLanguage: String?

    public var translatingBrandInTheProduct: Bool?

    public var useImageEditor: Bool?

    public var callType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.glossary != nil {
            map["Glossary"] = self.glossary!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.includingProductArea != nil {
            map["IncludingProductArea"] = self.includingProductArea!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        if self.translatingBrandInTheProduct != nil {
            map["TranslatingBrandInTheProduct"] = self.translatingBrandInTheProduct!
        }
        if self.useImageEditor != nil {
            map["UseImageEditor"] = self.useImageEditor!
        }
        if self.callType != nil {
            map["callType"] = self.callType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Glossary"] as? String {
            self.glossary = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["IncludingProductArea"] as? Bool {
            self.includingProductArea = value
        }
        if let value = dict["SourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["TargetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["TranslatingBrandInTheProduct"] as? Bool {
            self.translatingBrandInTheProduct = value
        }
        if let value = dict["UseImageEditor"] as? Bool {
            self.useImageEditor = value
        }
        if let value = dict["callType"] as? String {
            self.callType = value
        }
    }
}

public class ImageTranslationProResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class GenFiles : Tea.TeaModel {
            public class EditInfo : Tea.TeaModel {
                public class GoodsRects : Tea.TeaModel {
                    public var degree: Int32?

                    public var height: Int32?

                    public var left_: Int32?

                    public var top: Int32?

                    public var width: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.degree != nil {
                            map["Degree"] = self.degree!
                        }
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.left_ != nil {
                            map["Left"] = self.left_!
                        }
                        if self.top != nil {
                            map["Top"] = self.top!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Degree"] as? Int32 {
                            self.degree = value
                        }
                        if let value = dict["Height"] as? Int32 {
                            self.height = value
                        }
                        if let value = dict["Left"] as? Int32 {
                            self.left_ = value
                        }
                        if let value = dict["Top"] as? Int32 {
                            self.top = value
                        }
                        if let value = dict["Width"] as? Int32 {
                            self.width = value
                        }
                    }
                }
                public class TextAreas : Tea.TeaModel {
                    public class Texts : Tea.TeaModel {
                        public class ImageRect : Tea.TeaModel {
                            public var degree: Int32?

                            public var height: Int32?

                            public var left_: Int32?

                            public var top: Int32?

                            public var width: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.degree != nil {
                                    map["Degree"] = self.degree!
                                }
                                if self.height != nil {
                                    map["Height"] = self.height!
                                }
                                if self.left_ != nil {
                                    map["Left"] = self.left_!
                                }
                                if self.top != nil {
                                    map["Top"] = self.top!
                                }
                                if self.width != nil {
                                    map["Width"] = self.width!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Degree"] as? Int32 {
                                    self.degree = value
                                }
                                if let value = dict["Height"] as? Int32 {
                                    self.height = value
                                }
                                if let value = dict["Left"] as? Int32 {
                                    self.left_ = value
                                }
                                if let value = dict["Top"] as? Int32 {
                                    self.top = value
                                }
                                if let value = dict["Width"] as? Int32 {
                                    self.width = value
                                }
                            }
                        }
                        public class TextRect : Tea.TeaModel {
                            public var degree: Int32?

                            public var height: Int32?

                            public var left_: Int32?

                            public var top: Int32?

                            public var width: Int32?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.degree != nil {
                                    map["Degree"] = self.degree!
                                }
                                if self.height != nil {
                                    map["Height"] = self.height!
                                }
                                if self.left_ != nil {
                                    map["Left"] = self.left_!
                                }
                                if self.top != nil {
                                    map["Top"] = self.top!
                                }
                                if self.width != nil {
                                    map["Width"] = self.width!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Degree"] as? Int32 {
                                    self.degree = value
                                }
                                if let value = dict["Height"] as? Int32 {
                                    self.height = value
                                }
                                if let value = dict["Left"] as? Int32 {
                                    self.left_ = value
                                }
                                if let value = dict["Top"] as? Int32 {
                                    self.top = value
                                }
                                if let value = dict["Width"] as? Int32 {
                                    self.width = value
                                }
                            }
                        }
                        public var color: String?

                        public var fontsize: Int32?

                        public var horizontalLayout: String?

                        public var imageRect: ImageTranslationProResponseBody.Data.GenFiles.EditInfo.TextAreas.Texts.ImageRect?

                        public var language: String?

                        public var lineCount: Int32?

                        public var ovisErrMsg: String?

                        public var textRect: ImageTranslationProResponseBody.Data.GenFiles.EditInfo.TextAreas.Texts.TextRect?

                        public var valid: Bool?

                        public var value: String?

                        public var verticalLayout: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.imageRect?.validate()
                            try self.textRect?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.color != nil {
                                map["Color"] = self.color!
                            }
                            if self.fontsize != nil {
                                map["Fontsize"] = self.fontsize!
                            }
                            if self.horizontalLayout != nil {
                                map["HorizontalLayout"] = self.horizontalLayout!
                            }
                            if self.imageRect != nil {
                                map["ImageRect"] = self.imageRect?.toMap()
                            }
                            if self.language != nil {
                                map["Language"] = self.language!
                            }
                            if self.lineCount != nil {
                                map["LineCount"] = self.lineCount!
                            }
                            if self.ovisErrMsg != nil {
                                map["OvisErrMsg"] = self.ovisErrMsg!
                            }
                            if self.textRect != nil {
                                map["TextRect"] = self.textRect?.toMap()
                            }
                            if self.valid != nil {
                                map["Valid"] = self.valid!
                            }
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            if self.verticalLayout != nil {
                                map["VerticalLayout"] = self.verticalLayout!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Color"] as? String {
                                self.color = value
                            }
                            if let value = dict["Fontsize"] as? Int32 {
                                self.fontsize = value
                            }
                            if let value = dict["HorizontalLayout"] as? String {
                                self.horizontalLayout = value
                            }
                            if let value = dict["ImageRect"] as? [String: Any?] {
                                var model = ImageTranslationProResponseBody.Data.GenFiles.EditInfo.TextAreas.Texts.ImageRect()
                                model.fromMap(value)
                                self.imageRect = model
                            }
                            if let value = dict["Language"] as? String {
                                self.language = value
                            }
                            if let value = dict["LineCount"] as? Int32 {
                                self.lineCount = value
                            }
                            if let value = dict["OvisErrMsg"] as? String {
                                self.ovisErrMsg = value
                            }
                            if let value = dict["TextRect"] as? [String: Any?] {
                                var model = ImageTranslationProResponseBody.Data.GenFiles.EditInfo.TextAreas.Texts.TextRect()
                                model.fromMap(value)
                                self.textRect = model
                            }
                            if let value = dict["Valid"] as? Bool {
                                self.valid = value
                            }
                            if let value = dict["Value"] as? String {
                                self.value = value
                            }
                            if let value = dict["VerticalLayout"] as? String {
                                self.verticalLayout = value
                            }
                        }
                    }
                    public var color: String?

                    public var content: String?

                    public var fontsize: Int32?

                    public var horizontalLayout: String?

                    public var lineCount: Int32?

                    public var texts: [ImageTranslationProResponseBody.Data.GenFiles.EditInfo.TextAreas.Texts]?

                    public var verticalLayout: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.color != nil {
                            map["Color"] = self.color!
                        }
                        if self.content != nil {
                            map["Content"] = self.content!
                        }
                        if self.fontsize != nil {
                            map["Fontsize"] = self.fontsize!
                        }
                        if self.horizontalLayout != nil {
                            map["HorizontalLayout"] = self.horizontalLayout!
                        }
                        if self.lineCount != nil {
                            map["LineCount"] = self.lineCount!
                        }
                        if self.texts != nil {
                            var tmp : [Any] = []
                            for k in self.texts! {
                                tmp.append(k.toMap())
                            }
                            map["Texts"] = tmp
                        }
                        if self.verticalLayout != nil {
                            map["VerticalLayout"] = self.verticalLayout!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Color"] as? String {
                            self.color = value
                        }
                        if let value = dict["Content"] as? String {
                            self.content = value
                        }
                        if let value = dict["Fontsize"] as? Int32 {
                            self.fontsize = value
                        }
                        if let value = dict["HorizontalLayout"] as? String {
                            self.horizontalLayout = value
                        }
                        if let value = dict["LineCount"] as? Int32 {
                            self.lineCount = value
                        }
                        if let value = dict["Texts"] as? [Any?] {
                            var tmp : [ImageTranslationProResponseBody.Data.GenFiles.EditInfo.TextAreas.Texts] = []
                            for v in value {
                                if v != nil {
                                    var model = ImageTranslationProResponseBody.Data.GenFiles.EditInfo.TextAreas.Texts()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.texts = tmp
                        }
                        if let value = dict["VerticalLayout"] as? String {
                            self.verticalLayout = value
                        }
                    }
                }
                public var font: [String]?

                public var goodsRects: ImageTranslationProResponseBody.Data.GenFiles.EditInfo.GoodsRects?

                public var languages: [String]?

                public var repairedUrl: String?

                public var resultImageIds: [String]?

                public var textAreas: [ImageTranslationProResponseBody.Data.GenFiles.EditInfo.TextAreas]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.goodsRects?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.font != nil {
                        map["Font"] = self.font!
                    }
                    if self.goodsRects != nil {
                        map["GoodsRects"] = self.goodsRects?.toMap()
                    }
                    if self.languages != nil {
                        map["Languages"] = self.languages!
                    }
                    if self.repairedUrl != nil {
                        map["RepairedUrl"] = self.repairedUrl!
                    }
                    if self.resultImageIds != nil {
                        map["ResultImageIds"] = self.resultImageIds!
                    }
                    if self.textAreas != nil {
                        var tmp : [Any] = []
                        for k in self.textAreas! {
                            tmp.append(k.toMap())
                        }
                        map["TextAreas"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Font"] as? [String] {
                        self.font = value
                    }
                    if let value = dict["GoodsRects"] as? [String: Any?] {
                        var model = ImageTranslationProResponseBody.Data.GenFiles.EditInfo.GoodsRects()
                        model.fromMap(value)
                        self.goodsRects = model
                    }
                    if let value = dict["Languages"] as? [String] {
                        self.languages = value
                    }
                    if let value = dict["RepairedUrl"] as? String {
                        self.repairedUrl = value
                    }
                    if let value = dict["ResultImageIds"] as? [String] {
                        self.resultImageIds = value
                    }
                    if let value = dict["TextAreas"] as? [Any?] {
                        var tmp : [ImageTranslationProResponseBody.Data.GenFiles.EditInfo.TextAreas] = []
                        for v in value {
                            if v != nil {
                                var model = ImageTranslationProResponseBody.Data.GenFiles.EditInfo.TextAreas()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.textAreas = tmp
                    }
                }
            }
            public class ResultList : Tea.TeaModel {
                public var fileUrl: String?

                public var language: String?

                public override init() {
                    super.init()
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
                        map["FileUrl"] = self.fileUrl!
                    }
                    if self.language != nil {
                        map["Language"] = self.language!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FileUrl"] as? String {
                        self.fileUrl = value
                    }
                    if let value = dict["Language"] as? String {
                        self.language = value
                    }
                }
            }
            public var editInfo: ImageTranslationProResponseBody.Data.GenFiles.EditInfo?

            public var resultList: [ImageTranslationProResponseBody.Data.GenFiles.ResultList]?

            public var srcImage: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.editInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.editInfo != nil {
                    map["EditInfo"] = self.editInfo?.toMap()
                }
                if self.resultList != nil {
                    var tmp : [Any] = []
                    for k in self.resultList! {
                        tmp.append(k.toMap())
                    }
                    map["ResultList"] = tmp
                }
                if self.srcImage != nil {
                    map["SrcImage"] = self.srcImage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EditInfo"] as? [String: Any?] {
                    var model = ImageTranslationProResponseBody.Data.GenFiles.EditInfo()
                    model.fromMap(value)
                    self.editInfo = model
                }
                if let value = dict["ResultList"] as? [Any?] {
                    var tmp : [ImageTranslationProResponseBody.Data.GenFiles.ResultList] = []
                    for v in value {
                        if v != nil {
                            var model = ImageTranslationProResponseBody.Data.GenFiles.ResultList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.resultList = tmp
                }
                if let value = dict["SrcImage"] as? String {
                    self.srcImage = value
                }
            }
        }
        public class ResultList : Tea.TeaModel {
            public var fileUrl: String?

            public var language: String?

            public override init() {
                super.init()
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
                    map["FileUrl"] = self.fileUrl!
                }
                if self.language != nil {
                    map["Language"] = self.language!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileUrl"] as? String {
                    self.fileUrl = value
                }
                if let value = dict["Language"] as? String {
                    self.language = value
                }
            }
        }
        public var genFiles: [ImageTranslationProResponseBody.Data.GenFiles]?

        public var resultList: [ImageTranslationProResponseBody.Data.ResultList]?

        public var taskId: String?

        public var usageMap: [String: Int64]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.genFiles != nil {
                var tmp : [Any] = []
                for k in self.genFiles! {
                    tmp.append(k.toMap())
                }
                map["GenFiles"] = tmp
            }
            if self.resultList != nil {
                var tmp : [Any] = []
                for k in self.resultList! {
                    tmp.append(k.toMap())
                }
                map["ResultList"] = tmp
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.usageMap != nil {
                map["UsageMap"] = self.usageMap!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GenFiles"] as? [Any?] {
                var tmp : [ImageTranslationProResponseBody.Data.GenFiles] = []
                for v in value {
                    if v != nil {
                        var model = ImageTranslationProResponseBody.Data.GenFiles()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.genFiles = tmp
            }
            if let value = dict["ResultList"] as? [Any?] {
                var tmp : [ImageTranslationProResponseBody.Data.ResultList] = []
                for v in value {
                    if v != nil {
                        var model = ImageTranslationProResponseBody.Data.ResultList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.resultList = tmp
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["UsageMap"] as? [String: Int64] {
                self.usageMap = value
            }
        }
    }
    public var code: String?

    public var data: ImageTranslationProResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ImageTranslationProResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ImageTranslationProResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImageTranslationProResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ImageTranslationProResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImageTranslationStandardRequest : Tea.TeaModel {
    public var glossary: String?

    public var imageUrl: String?

    public var includingProductArea: Bool?

    public var sourceLanguage: String?

    public var targetLanguage: String?

    public var translatingBrandInTheProduct: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.glossary != nil {
            map["Glossary"] = self.glossary!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.includingProductArea != nil {
            map["IncludingProductArea"] = self.includingProductArea!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        if self.translatingBrandInTheProduct != nil {
            map["TranslatingBrandInTheProduct"] = self.translatingBrandInTheProduct!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Glossary"] as? String {
            self.glossary = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["IncludingProductArea"] as? Bool {
            self.includingProductArea = value
        }
        if let value = dict["SourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["TargetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["TranslatingBrandInTheProduct"] as? Bool {
            self.translatingBrandInTheProduct = value
        }
    }
}

public class ImageTranslationStandardResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imageUrl: String?

        public var usageMap: [String: Int64]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.usageMap != nil {
                map["UsageMap"] = self.usageMap!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageUrl"] as? String {
                self.imageUrl = value
            }
            if let value = dict["UsageMap"] as? [String: Int64] {
                self.usageMap = value
            }
        }
    }
    public var code: String?

    public var data: ImageTranslationStandardResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ImageTranslationStandardResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ImageTranslationStandardResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImageTranslationStandardResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ImageTranslationStandardResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LanguageDetectRequest : Tea.TeaModel {
    public var sourceText: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceText != nil {
            map["SourceText"] = self.sourceText!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SourceText"] as? String {
            self.sourceText = value
        }
    }
}

public class LanguageDetectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var detectedLanguage: String?

        public var usageMap: [String: Int64]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detectedLanguage != nil {
                map["DetectedLanguage"] = self.detectedLanguage!
            }
            if self.usageMap != nil {
                map["UsageMap"] = self.usageMap!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DetectedLanguage"] as? String {
                self.detectedLanguage = value
            }
            if let value = dict["UsageMap"] as? [String: Int64] {
                self.usageMap = value
            }
        }
    }
    public var code: String?

    public var data: LanguageDetectResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = LanguageDetectResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class LanguageDetectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LanguageDetectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = LanguageDetectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PackageWeightSizeCheckRequest : Tea.TeaModel {
    public var annotatedImageUrl: String?

    public var rawImageUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.annotatedImageUrl != nil {
            map["AnnotatedImageUrl"] = self.annotatedImageUrl!
        }
        if self.rawImageUrl != nil {
            map["RawImageUrl"] = self.rawImageUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AnnotatedImageUrl"] as? String {
            self.annotatedImageUrl = value
        }
        if let value = dict["RawImageUrl"] as? String {
            self.rawImageUrl = value
        }
    }
}

public class PackageWeightSizeCheckResponseBody : Tea.TeaModel {
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
    public var code: String?

    public var data: PackageWeightSizeCheckResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = PackageWeightSizeCheckResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PackageWeightSizeCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PackageWeightSizeCheckResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PackageWeightSizeCheckResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAsyncTaskResultRequest : Tea.TeaModel {
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

public class QueryAsyncTaskResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: String?

        public var status: String?

        public var taskId: String?

        public var usageMap: [String: Int64]?

        public override init() {
            super.init()
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
                map["Result"] = self.result!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.usageMap != nil {
                map["UsageMap"] = self.usageMap!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["UsageMap"] as? [String: Int64] {
                self.usageMap = value
            }
        }
    }
    public var code: String?

    public var data: QueryAsyncTaskResultResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryAsyncTaskResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryAsyncTaskResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAsyncTaskResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryAsyncTaskResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SizeChartDetectRequest : Tea.TeaModel {
    public var imageUrl: String?

    public var threshold: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["Threshold"] as? Double {
            self.threshold = value
        }
    }
}

public class SizeChartDetectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var isSizeChart: Bool?

        public var usageMap: [String: Int64]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isSizeChart != nil {
                map["IsSizeChart"] = self.isSizeChart!
            }
            if self.usageMap != nil {
                map["UsageMap"] = self.usageMap!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsSizeChart"] as? Bool {
                self.isSizeChart = value
            }
            if let value = dict["UsageMap"] as? [String: Int64] {
                self.usageMap = value
            }
        }
    }
    public var code: String?

    public var data: SizeChartDetectResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SizeChartDetectResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SizeChartDetectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SizeChartDetectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SizeChartDetectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SizeChartExtractRequest : Tea.TeaModel {
    public var columnNameList: [String]?

    public var imageUrl: String?

    public var languageModel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnNameList != nil {
            map["ColumnNameList"] = self.columnNameList!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.languageModel != nil {
            map["LanguageModel"] = self.languageModel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColumnNameList"] as? [String] {
            self.columnNameList = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["LanguageModel"] as? String {
            self.languageModel = value
        }
    }
}

public class SizeChartExtractShrinkRequest : Tea.TeaModel {
    public var columnNameListShrink: String?

    public var imageUrl: String?

    public var languageModel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnNameListShrink != nil {
            map["ColumnNameList"] = self.columnNameListShrink!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.languageModel != nil {
            map["LanguageModel"] = self.languageModel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColumnNameList"] as? String {
            self.columnNameListShrink = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["LanguageModel"] as? String {
            self.languageModel = value
        }
    }
}

public class SizeChartExtractResponseBody : Tea.TeaModel {
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
    public var code: String?

    public var data: SizeChartExtractResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SizeChartExtractResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SizeChartExtractResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SizeChartExtractResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SizeChartExtractResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TextCorrectRequest : Tea.TeaModel {
    public var sourceLanguage: String?

    public var sourceText: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.sourceText != nil {
            map["SourceText"] = self.sourceText!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["SourceText"] as? String {
            self.sourceText = value
        }
    }
}

public class TextCorrectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var correctedText: String?

        public var usageMap: [String: Int64]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.correctedText != nil {
                map["CorrectedText"] = self.correctedText!
            }
            if self.usageMap != nil {
                map["UsageMap"] = self.usageMap!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CorrectedText"] as? String {
                self.correctedText = value
            }
            if let value = dict["UsageMap"] as? [String: Int64] {
                self.usageMap = value
            }
        }
    }
    public var code: String?

    public var data: TextCorrectResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = TextCorrectResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class TextCorrectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TextCorrectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TextCorrectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TextTranslateRequest : Tea.TeaModel {
    public var formatType: String?

    public var glossary: String?

    public var sourceLanguage: String?

    public var sourceTextList: [String]?

    public var targetLanguage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.glossary != nil {
            map["Glossary"] = self.glossary!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.sourceTextList != nil {
            map["SourceTextList"] = self.sourceTextList!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FormatType"] as? String {
            self.formatType = value
        }
        if let value = dict["Glossary"] as? String {
            self.glossary = value
        }
        if let value = dict["SourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["SourceTextList"] as? [String] {
            self.sourceTextList = value
        }
        if let value = dict["TargetLanguage"] as? String {
            self.targetLanguage = value
        }
    }
}

public class TextTranslateShrinkRequest : Tea.TeaModel {
    public var formatType: String?

    public var glossary: String?

    public var sourceLanguage: String?

    public var sourceTextListShrink: String?

    public var targetLanguage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.glossary != nil {
            map["Glossary"] = self.glossary!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.sourceTextListShrink != nil {
            map["SourceTextList"] = self.sourceTextListShrink!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FormatType"] as? String {
            self.formatType = value
        }
        if let value = dict["Glossary"] as? String {
            self.glossary = value
        }
        if let value = dict["SourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["SourceTextList"] as? String {
            self.sourceTextListShrink = value
        }
        if let value = dict["TargetLanguage"] as? String {
            self.targetLanguage = value
        }
    }
}

public class TextTranslateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Translations : Tea.TeaModel {
            public var characters: Int64?

            public var detectedLanguage: String?

            public var translatedText: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.characters != nil {
                    map["Characters"] = self.characters!
                }
                if self.detectedLanguage != nil {
                    map["DetectedLanguage"] = self.detectedLanguage!
                }
                if self.translatedText != nil {
                    map["TranslatedText"] = self.translatedText!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Characters"] as? Int64 {
                    self.characters = value
                }
                if let value = dict["DetectedLanguage"] as? String {
                    self.detectedLanguage = value
                }
                if let value = dict["TranslatedText"] as? String {
                    self.translatedText = value
                }
            }
        }
        public var translations: [TextTranslateResponseBody.Data.Translations]?

        public var usageMap: [String: Int64]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.translations != nil {
                var tmp : [Any] = []
                for k in self.translations! {
                    tmp.append(k.toMap())
                }
                map["Translations"] = tmp
            }
            if self.usageMap != nil {
                map["UsageMap"] = self.usageMap!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Translations"] as? [Any?] {
                var tmp : [TextTranslateResponseBody.Data.Translations] = []
                for v in value {
                    if v != nil {
                        var model = TextTranslateResponseBody.Data.Translations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.translations = tmp
            }
            if let value = dict["UsageMap"] as? [String: Int64] {
                self.usageMap = value
            }
        }
    }
    public var code: String?

    public var data: TextTranslateResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = TextTranslateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class TextTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TextTranslateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TextTranslateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class VisionFlowRequest : Tea.TeaModel {
    public var ability: [Int32]?

    public var backGroundType: String?

    public var glossary: String?

    public var imageUrl: String?

    public var includingProductArea: Bool?

    public var isFilter: Bool?

    public var mask: String?

    public var nonobjectDetectElements: [Int32]?

    public var nonobjectRemoveElements: [Int32]?

    public var objectDetectElements: [Int32]?

    public var objectRemoveElements: [Int32]?

    public var sourceLanguage: String?

    public var targetHeight: Int32?

    public var targetLanguage: String?

    public var targetWidth: Int32?

    public var translatingBrandInTheProduct: Bool?

    public var upscaleFactor: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ability != nil {
            map["Ability"] = self.ability!
        }
        if self.backGroundType != nil {
            map["BackGroundType"] = self.backGroundType!
        }
        if self.glossary != nil {
            map["Glossary"] = self.glossary!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.includingProductArea != nil {
            map["IncludingProductArea"] = self.includingProductArea!
        }
        if self.isFilter != nil {
            map["IsFilter"] = self.isFilter!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.nonobjectDetectElements != nil {
            map["NonobjectDetectElements"] = self.nonobjectDetectElements!
        }
        if self.nonobjectRemoveElements != nil {
            map["NonobjectRemoveElements"] = self.nonobjectRemoveElements!
        }
        if self.objectDetectElements != nil {
            map["ObjectDetectElements"] = self.objectDetectElements!
        }
        if self.objectRemoveElements != nil {
            map["ObjectRemoveElements"] = self.objectRemoveElements!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.targetHeight != nil {
            map["TargetHeight"] = self.targetHeight!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        if self.targetWidth != nil {
            map["TargetWidth"] = self.targetWidth!
        }
        if self.translatingBrandInTheProduct != nil {
            map["TranslatingBrandInTheProduct"] = self.translatingBrandInTheProduct!
        }
        if self.upscaleFactor != nil {
            map["UpscaleFactor"] = self.upscaleFactor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ability"] as? [Int32] {
            self.ability = value
        }
        if let value = dict["BackGroundType"] as? String {
            self.backGroundType = value
        }
        if let value = dict["Glossary"] as? String {
            self.glossary = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["IncludingProductArea"] as? Bool {
            self.includingProductArea = value
        }
        if let value = dict["IsFilter"] as? Bool {
            self.isFilter = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["NonobjectDetectElements"] as? [Int32] {
            self.nonobjectDetectElements = value
        }
        if let value = dict["NonobjectRemoveElements"] as? [Int32] {
            self.nonobjectRemoveElements = value
        }
        if let value = dict["ObjectDetectElements"] as? [Int32] {
            self.objectDetectElements = value
        }
        if let value = dict["ObjectRemoveElements"] as? [Int32] {
            self.objectRemoveElements = value
        }
        if let value = dict["SourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["TargetHeight"] as? Int32 {
            self.targetHeight = value
        }
        if let value = dict["TargetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["TargetWidth"] as? Int32 {
            self.targetWidth = value
        }
        if let value = dict["TranslatingBrandInTheProduct"] as? Bool {
            self.translatingBrandInTheProduct = value
        }
        if let value = dict["UpscaleFactor"] as? Int32 {
            self.upscaleFactor = value
        }
    }
}

public class VisionFlowShrinkRequest : Tea.TeaModel {
    public var abilityShrink: String?

    public var backGroundType: String?

    public var glossary: String?

    public var imageUrl: String?

    public var includingProductArea: Bool?

    public var isFilter: Bool?

    public var mask: String?

    public var nonobjectDetectElementsShrink: String?

    public var nonobjectRemoveElementsShrink: String?

    public var objectDetectElementsShrink: String?

    public var objectRemoveElementsShrink: String?

    public var sourceLanguage: String?

    public var targetHeight: Int32?

    public var targetLanguage: String?

    public var targetWidth: Int32?

    public var translatingBrandInTheProduct: Bool?

    public var upscaleFactor: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.abilityShrink != nil {
            map["Ability"] = self.abilityShrink!
        }
        if self.backGroundType != nil {
            map["BackGroundType"] = self.backGroundType!
        }
        if self.glossary != nil {
            map["Glossary"] = self.glossary!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.includingProductArea != nil {
            map["IncludingProductArea"] = self.includingProductArea!
        }
        if self.isFilter != nil {
            map["IsFilter"] = self.isFilter!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.nonobjectDetectElementsShrink != nil {
            map["NonobjectDetectElements"] = self.nonobjectDetectElementsShrink!
        }
        if self.nonobjectRemoveElementsShrink != nil {
            map["NonobjectRemoveElements"] = self.nonobjectRemoveElementsShrink!
        }
        if self.objectDetectElementsShrink != nil {
            map["ObjectDetectElements"] = self.objectDetectElementsShrink!
        }
        if self.objectRemoveElementsShrink != nil {
            map["ObjectRemoveElements"] = self.objectRemoveElementsShrink!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.targetHeight != nil {
            map["TargetHeight"] = self.targetHeight!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        if self.targetWidth != nil {
            map["TargetWidth"] = self.targetWidth!
        }
        if self.translatingBrandInTheProduct != nil {
            map["TranslatingBrandInTheProduct"] = self.translatingBrandInTheProduct!
        }
        if self.upscaleFactor != nil {
            map["UpscaleFactor"] = self.upscaleFactor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ability"] as? String {
            self.abilityShrink = value
        }
        if let value = dict["BackGroundType"] as? String {
            self.backGroundType = value
        }
        if let value = dict["Glossary"] as? String {
            self.glossary = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["IncludingProductArea"] as? Bool {
            self.includingProductArea = value
        }
        if let value = dict["IsFilter"] as? Bool {
            self.isFilter = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["NonobjectDetectElements"] as? String {
            self.nonobjectDetectElementsShrink = value
        }
        if let value = dict["NonobjectRemoveElements"] as? String {
            self.nonobjectRemoveElementsShrink = value
        }
        if let value = dict["ObjectDetectElements"] as? String {
            self.objectDetectElementsShrink = value
        }
        if let value = dict["ObjectRemoveElements"] as? String {
            self.objectRemoveElementsShrink = value
        }
        if let value = dict["SourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["TargetHeight"] as? Int32 {
            self.targetHeight = value
        }
        if let value = dict["TargetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["TargetWidth"] as? Int32 {
            self.targetWidth = value
        }
        if let value = dict["TranslatingBrandInTheProduct"] as? Bool {
            self.translatingBrandInTheProduct = value
        }
        if let value = dict["UpscaleFactor"] as? Int32 {
            self.upscaleFactor = value
        }
    }
}

public class VisionFlowResponseBody : Tea.TeaModel {
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
    public var code: String?

    public var data: VisionFlowResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = VisionFlowResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class VisionFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VisionFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = VisionFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
