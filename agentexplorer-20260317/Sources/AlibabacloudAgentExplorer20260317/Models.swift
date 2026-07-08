import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Category : Tea.TeaModel {
    public class Children : Tea.TeaModel {
        public var code: String?

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
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.name != nil {
                map["name"] = self.name!
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
        }
    }
    public var children: [Category.Children]?

    public var code: String?

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
        if self.children != nil {
            var tmp : [Any] = []
            for k in self.children! {
                tmp.append(k.toMap())
            }
            map["children"] = tmp
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["children"] as? [Any?] {
            var tmp : [Category.Children] = []
            for v in value {
                if v != nil {
                    var model = Category.Children()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.children = tmp
        }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class Skill : Tea.TeaModel {
    public var categoryCode: String?

    public var categoryName: String?

    public var categoryNameEn: String?

    public var createdAt: String?

    public var description_: String?

    public var descriptionEn: String?

    public var displayName: String?

    public var githubPath: String?

    public var installCount: Int32?

    public var likeCount: Int32?

    public var nameEn: String?

    public var skillName: String?

    public var subCategoryCode: String?

    public var subCategoryName: String?

    public var subCategoryNameEn: String?

    public var updatedAt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryCode != nil {
            map["categoryCode"] = self.categoryCode!
        }
        if self.categoryName != nil {
            map["categoryName"] = self.categoryName!
        }
        if self.categoryNameEn != nil {
            map["categoryNameEn"] = self.categoryNameEn!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.descriptionEn != nil {
            map["descriptionEn"] = self.descriptionEn!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.githubPath != nil {
            map["githubPath"] = self.githubPath!
        }
        if self.installCount != nil {
            map["installCount"] = self.installCount!
        }
        if self.likeCount != nil {
            map["likeCount"] = self.likeCount!
        }
        if self.nameEn != nil {
            map["nameEn"] = self.nameEn!
        }
        if self.skillName != nil {
            map["skillName"] = self.skillName!
        }
        if self.subCategoryCode != nil {
            map["subCategoryCode"] = self.subCategoryCode!
        }
        if self.subCategoryName != nil {
            map["subCategoryName"] = self.subCategoryName!
        }
        if self.subCategoryNameEn != nil {
            map["subCategoryNameEn"] = self.subCategoryNameEn!
        }
        if self.updatedAt != nil {
            map["updatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["categoryCode"] as? String {
            self.categoryCode = value
        }
        if let value = dict["categoryName"] as? String {
            self.categoryName = value
        }
        if let value = dict["categoryNameEn"] as? String {
            self.categoryNameEn = value
        }
        if let value = dict["createdAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["descriptionEn"] as? String {
            self.descriptionEn = value
        }
        if let value = dict["displayName"] as? String {
            self.displayName = value
        }
        if let value = dict["githubPath"] as? String {
            self.githubPath = value
        }
        if let value = dict["installCount"] as? Int32 {
            self.installCount = value
        }
        if let value = dict["likeCount"] as? Int32 {
            self.likeCount = value
        }
        if let value = dict["nameEn"] as? String {
            self.nameEn = value
        }
        if let value = dict["skillName"] as? String {
            self.skillName = value
        }
        if let value = dict["subCategoryCode"] as? String {
            self.subCategoryCode = value
        }
        if let value = dict["subCategoryName"] as? String {
            self.subCategoryName = value
        }
        if let value = dict["subCategoryNameEn"] as? String {
            self.subCategoryNameEn = value
        }
        if let value = dict["updatedAt"] as? String {
            self.updatedAt = value
        }
    }
}

public class GetSkillContentRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetSkillContentResponseBody : Tea.TeaModel {
    public var content: String?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetSkillContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSkillContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSkillContentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCategoriesRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class ListCategoriesResponseBody : Tea.TeaModel {
    public var data: [Category]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [Category] = []
            for v in value {
                if v != nil {
                    var model = Category()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListCategoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCategoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListCategoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchSkillsRequest : Tea.TeaModel {
    public var categoryCode: String?

    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var searchMode: String?

    public var skip: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryCode != nil {
            map["categoryCode"] = self.categoryCode!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.searchMode != nil {
            map["searchMode"] = self.searchMode!
        }
        if self.skip != nil {
            map["skip"] = self.skip!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["categoryCode"] as? String {
            self.categoryCode = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["searchMode"] as? String {
            self.searchMode = value
        }
        if let value = dict["skip"] as? Int32 {
            self.skip = value
        }
    }
}

public class SearchSkillsResponseBody : Tea.TeaModel {
    public var data: [Skill]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [Skill] = []
            for v in value {
                if v != nil {
                    var model = Skill()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class SearchSkillsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchSkillsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchSkillsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
