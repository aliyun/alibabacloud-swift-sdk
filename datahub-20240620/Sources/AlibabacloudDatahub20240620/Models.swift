import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetProjectRequest : Tea.TeaModel {
    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
    }
}

public class GetProjectResponseBody : Tea.TeaModel {
    public var comment: String?

    public var createTime: String?

    public var creator: String?

    public var projectName: String?

    public var requestId: String?

    public var storage: Int64?

    public var success: Bool?

    public var updateTime: String?

    public var vpcWhitelist: String?

    public override init() {
        super.init()
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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.storage != nil {
            map["Storage"] = self.storage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.vpcWhitelist != nil {
            map["VpcWhitelist"] = self.vpcWhitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Storage"] as? Int64 {
            self.storage = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["VpcWhitelist"] as? String {
            self.vpcWhitelist = value
        }
    }
}

public class GetProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProjectsRequest : Tea.TeaModel {
    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pure: Bool?

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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pure != nil {
            map["Pure"] = self.pure!
        }
        if self.skip != nil {
            map["Skip"] = self.skip!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Pure"] as? Bool {
            self.pure = value
        }
        if let value = dict["Skip"] as? Int32 {
            self.skip = value
        }
    }
}

public class ListProjectsResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public class Project : Tea.TeaModel {
            public var comment: String?

            public var createTime: Int64?

            public var creator: String?

            public var projectName: String?

            public var updateTime: Int64?

            public override init() {
                super.init()
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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.projectName != nil {
                    map["ProjectName"] = self.projectName!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Comment"] as? String {
                    self.comment = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["ProjectName"] as? String {
                    self.projectName = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
            }
        }
        public var project: [ListProjectsResponseBody.List.Project]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.project != nil {
                var tmp : [Any] = []
                for k in self.project! {
                    tmp.append(k.toMap())
                }
                map["Project"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Project"] as? [Any?] {
                var tmp : [ListProjectsResponseBody.List.Project] = []
                for v in value {
                    if v != nil {
                        var model = ListProjectsResponseBody.List.Project()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.project = tmp
            }
        }
    }
    public var list: ListProjectsResponseBody.List?

    public var maxResults: Int32?

    public var nextToken: String?

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
        try self.list?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.list != nil {
            map["List"] = self.list?.toMap()
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["List"] as? [String: Any?] {
            var model = ListProjectsResponseBody.List()
            model.fromMap(value)
            self.list = model
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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

public class ListProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListProjectsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
