import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BuildProjectRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class BuildProjectResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BuildProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BuildProjectResponseBody?

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
            var model = BuildProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProjectRequest : Tea.TeaModel {
    public var gender: String?

    public var height: Double?

    public var intro: String?

    public var method: String?

    public var mode: String?

    public var title: String?

    public var type: String?

    public var weight: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gender != nil {
            map["Gender"] = self.gender!
        }
        if self.height != nil {
            map["Height"] = self.height!
        }
        if self.intro != nil {
            map["Intro"] = self.intro!
        }
        if self.method != nil {
            map["Method"] = self.method!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.weight != nil {
            map["Weight"] = self.weight!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Gender") {
            self.gender = dict["Gender"] as! String
        }
        if dict.keys.contains("Height") {
            self.height = dict["Height"] as! Double
        }
        if dict.keys.contains("Intro") {
            self.intro = dict["Intro"] as! String
        }
        if dict.keys.contains("Method") {
            self.method = dict["Method"] as! String
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Weight") {
            self.weight = dict["Weight"] as! Double
        }
    }
}

public class CreateProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Dataset : Tea.TeaModel {
            public class Policy : Tea.TeaModel {
                public var accessId: String?

                public var dir: String?

                public var expire: String?

                public var host: String?

                public var policy: String?

                public var signature: String?

                public override init() {
                    super.init()
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
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expire != nil {
                        map["Expire"] = self.expire!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy!
                    }
                    if self.signature != nil {
                        map["Signature"] = self.signature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessId") {
                        self.accessId = dict["AccessId"] as! String
                    }
                    if dict.keys.contains("Dir") {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expire") {
                        self.expire = dict["Expire"] as! String
                    }
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Policy") {
                        self.policy = dict["Policy"] as! String
                    }
                    if dict.keys.contains("Signature") {
                        self.signature = dict["Signature"] as! String
                    }
                }
            }
            public var createTime: String?

            public var id: Int64?

            public var modifiedTime: String?

            public var ossKey: String?

            public var policy: CreateProjectResponseBody.Data.Dataset.Policy?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.policy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("ModifiedTime") {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OssKey") {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Policy") {
                    var model = CreateProjectResponseBody.Data.Dataset.Policy()
                    model.fromMap(dict["Policy"] as! [String: Any])
                    self.policy = model
                }
            }
        }
        public class Source : Tea.TeaModel {
            public class Policy : Tea.TeaModel {
                public var accessId: String?

                public var dir: String?

                public var expire: String?

                public var host: String?

                public var policy: String?

                public var signature: String?

                public override init() {
                    super.init()
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
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expire != nil {
                        map["Expire"] = self.expire!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy!
                    }
                    if self.signature != nil {
                        map["Signature"] = self.signature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessId") {
                        self.accessId = dict["AccessId"] as! String
                    }
                    if dict.keys.contains("Dir") {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expire") {
                        self.expire = dict["Expire"] as! String
                    }
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Policy") {
                        self.policy = dict["Policy"] as! String
                    }
                    if dict.keys.contains("Signature") {
                        self.signature = dict["Signature"] as! String
                    }
                }
            }
            public var ossKey: String?

            public var policy: CreateProjectResponseBody.Data.Source.Policy?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.policy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OssKey") {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Policy") {
                    var model = CreateProjectResponseBody.Data.Source.Policy()
                    model.fromMap(dict["Policy"] as! [String: Any])
                    self.policy = model
                }
            }
        }
        public var createMode: String?

        public var createTime: String?

        public var dataset: CreateProjectResponseBody.Data.Dataset?

        public var id: Int64?

        public var intro: String?

        public var method: String?

        public var modifiedTime: String?

        public var source: CreateProjectResponseBody.Data.Source?

        public var status: String?

        public var title: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataset?.validate()
            try self.source?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createMode != nil {
                map["CreateMode"] = self.createMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.method != nil {
                map["Method"] = self.method!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.source != nil {
                map["Source"] = self.source?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateMode") {
                self.createMode = dict["CreateMode"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Dataset") {
                var model = CreateProjectResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Intro") {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("Method") {
                self.method = dict["Method"] as! String
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Source") {
                var model = CreateProjectResponseBody.Data.Source()
                model.fromMap(dict["Source"] as! [String: Any])
                self.source = model
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateProjectResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateProjectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProjectResponseBody?

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
            var model = CreateProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSourcePolicyRequest : Tea.TeaModel {
    public var ossKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ossKey != nil {
            map["OssKey"] = self.ossKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OssKey") {
            self.ossKey = dict["OssKey"] as! String
        }
    }
}

public class CreateSourcePolicyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessId: String?

        public var dir: String?

        public var expire: String?

        public var host: String?

        public var policy: String?

        public var signature: String?

        public override init() {
            super.init()
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
            if self.dir != nil {
                map["Dir"] = self.dir!
            }
            if self.expire != nil {
                map["Expire"] = self.expire!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessId") {
                self.accessId = dict["AccessId"] as! String
            }
            if dict.keys.contains("Dir") {
                self.dir = dict["Dir"] as! String
            }
            if dict.keys.contains("Expire") {
                self.expire = dict["Expire"] as! String
            }
            if dict.keys.contains("Host") {
                self.host = dict["Host"] as! String
            }
            if dict.keys.contains("Policy") {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("Signature") {
                self.signature = dict["Signature"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateSourcePolicyResponseBody.Data?

    public var errorName: String?

    public var httpCode: Int32?

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
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateSourcePolicyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorName") {
            self.errorName = dict["ErrorName"] as! String
        }
        if dict.keys.contains("HttpCode") {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateSourcePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSourcePolicyResponseBody?

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
            var model = CreateSourcePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProjectRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class DeleteProjectResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProjectResponseBody?

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
            var model = DeleteProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSourceFileRequest : Tea.TeaModel {
    public var fileId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileId") {
            self.fileId = dict["FileId"] as! String
        }
    }
}

public class DeleteSourceFileResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteSourceFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSourceFileResponseBody?

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
            var model = DeleteSourceFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectDatasetRequest : Tea.TeaModel {
    public var ossKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ossKey != nil {
            map["OssKey"] = self.ossKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OssKey") {
            self.ossKey = dict["OssKey"] as! String
        }
    }
}

public class GetProjectDatasetResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Dataset : Tea.TeaModel {
            public var coverUrl: String?

            public var createTime: String?

            public var id: Int64?

            public var modelUrl: String?

            public var modifiedTime: String?

            public var ossKey: String?

            public var poseUrl: String?

            public var previewUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.coverUrl != nil {
                    map["CoverUrl"] = self.coverUrl!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.modelUrl != nil {
                    map["ModelUrl"] = self.modelUrl!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.poseUrl != nil {
                    map["PoseUrl"] = self.poseUrl!
                }
                if self.previewUrl != nil {
                    map["PreviewUrl"] = self.previewUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CoverUrl") {
                    self.coverUrl = dict["CoverUrl"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("ModelUrl") {
                    self.modelUrl = dict["ModelUrl"] as! String
                }
                if dict.keys.contains("ModifiedTime") {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OssKey") {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("PoseUrl") {
                    self.poseUrl = dict["PoseUrl"] as! String
                }
                if dict.keys.contains("PreviewUrl") {
                    self.previewUrl = dict["PreviewUrl"] as! String
                }
            }
        }
        public var createMode: String?

        public var createTime: String?

        public var dataset: GetProjectDatasetResponseBody.Data.Dataset?

        public var id: Int64?

        public var intro: String?

        public var modifiedTime: String?

        public var status: String?

        public var title: String?

        public var type: String?

        public var bizUsage: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataset?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createMode != nil {
                map["CreateMode"] = self.createMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.bizUsage != nil {
                map["bizUsage"] = self.bizUsage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateMode") {
                self.createMode = dict["CreateMode"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Dataset") {
                var model = GetProjectDatasetResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Intro") {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("bizUsage") {
                self.bizUsage = dict["bizUsage"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetProjectDatasetResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetProjectDatasetResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetProjectDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectDatasetResponseBody?

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
            var model = GetProjectDatasetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectRequest : Tea.TeaModel {
    public var current: Int32?

    public var size: Int32?

    public var status: String?

    public var title: String?

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
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Dataset : Tea.TeaModel {
            public var coverUrl: String?

            public var modelUrl: String?

            public var ossKey: String?

            public var poseUrl: String?

            public var previewUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.coverUrl != nil {
                    map["CoverUrl"] = self.coverUrl!
                }
                if self.modelUrl != nil {
                    map["ModelUrl"] = self.modelUrl!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.poseUrl != nil {
                    map["PoseUrl"] = self.poseUrl!
                }
                if self.previewUrl != nil {
                    map["PreviewUrl"] = self.previewUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CoverUrl") {
                    self.coverUrl = dict["CoverUrl"] as! String
                }
                if dict.keys.contains("ModelUrl") {
                    self.modelUrl = dict["ModelUrl"] as! String
                }
                if dict.keys.contains("OssKey") {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("PoseUrl") {
                    self.poseUrl = dict["PoseUrl"] as! String
                }
                if dict.keys.contains("PreviewUrl") {
                    self.previewUrl = dict["PreviewUrl"] as! String
                }
            }
        }
        public class User : Tea.TeaModel {
            public var aliyunUid: String?

            public var createTime: String?

            public var modifiedTime: String?

            public var nickname: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliyunUid != nil {
                    map["AliyunUid"] = self.aliyunUid!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.nickname != nil {
                    map["Nickname"] = self.nickname!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AliyunUid") {
                    self.aliyunUid = dict["AliyunUid"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("ModifiedTime") {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("Nickname") {
                    self.nickname = dict["Nickname"] as! String
                }
            }
        }
        public var createTime: String?

        public var dataset: ListProjectResponseBody.Data.Dataset?

        public var ext: String?

        public var id: String?

        public var intro: String?

        public var modifiedTime: String?

        public var status: String?

        public var title: String?

        public var type: String?

        public var user: ListProjectResponseBody.Data.User?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataset?.validate()
            try self.user?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.user != nil {
                map["User"] = self.user?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Dataset") {
                var model = ListProjectResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Ext") {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("User") {
                var model = ListProjectResponseBody.Data.User()
                model.fromMap(dict["User"] as! [String: Any])
                self.user = model
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [ListProjectResponseBody.Data]?

    public var message: String?

    public var pages: Int32?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pages != nil {
            map["Pages"] = self.pages!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [ListProjectResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Pages") {
            self.pages = dict["Pages"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectResponseBody?

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
            var model = ListProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSourceFileRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class ListSourceFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PicList : Tea.TeaModel {
            public var createTime: String?

            public var fileName: String?

            public var id: Int64?

            public var modifiedTime: String?

            public var ossKey: String?

            public var type: String?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("FileName") {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("ModifiedTime") {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OssKey") {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public class VideoList : Tea.TeaModel {
            public var createTime: String?

            public var fileName: String?

            public var id: Int64?

            public var modifiedTime: String?

            public var ossKey: String?

            public var type: String?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("FileName") {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("ModifiedTime") {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OssKey") {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var picList: [ListSourceFileResponseBody.Data.PicList]?

        public var videoList: [ListSourceFileResponseBody.Data.VideoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.picList != nil {
                var tmp : [Any] = []
                for k in self.picList! {
                    tmp.append(k.toMap())
                }
                map["PicList"] = tmp
            }
            if self.videoList != nil {
                var tmp : [Any] = []
                for k in self.videoList! {
                    tmp.append(k.toMap())
                }
                map["VideoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PicList") {
                self.picList = dict["PicList"] as! [ListSourceFileResponseBody.Data.PicList]
            }
            if dict.keys.contains("VideoList") {
                self.videoList = dict["VideoList"] as! [ListSourceFileResponseBody.Data.VideoList]
            }
        }
    }
    public var code: String?

    public var data: ListSourceFileResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListSourceFileResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListSourceFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSourceFileResponseBody?

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
            var model = ListSourceFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryBuildBreakpointRequest : Tea.TeaModel {
    public var projectId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
    }
}

public class QueryBuildBreakpointResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var algorithm: String?

        public var jobId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Algorithm") {
                self.algorithm = dict["Algorithm"] as! String
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
        }
    }
    public var code: String?

    public var data: [QueryBuildBreakpointResponseBody.Data]?

    public var errorName: String?

    public var httpCode: Int32?

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
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [QueryBuildBreakpointResponseBody.Data]
        }
        if dict.keys.contains("ErrorName") {
            self.errorName = dict["ErrorName"] as! String
        }
        if dict.keys.contains("HttpCode") {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryBuildBreakpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBuildBreakpointResponseBody?

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
            var model = QueryBuildBreakpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryProjectBuildDetailRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class QueryProjectBuildDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InstanceDetailResponseList : Tea.TeaModel {
            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var params: String?

            public var status: String?

            public var submitTime: String?

            public var templateId: Int64?

            public override init() {
                super.init()
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
                if self.params != nil {
                    map["Params"] = self.params!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.submitTime != nil {
                    map["SubmitTime"] = self.submitTime!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
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
                if dict.keys.contains("Params") {
                    self.params = dict["Params"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SubmitTime") {
                    self.submitTime = dict["SubmitTime"] as! String
                }
                if dict.keys.contains("TemplateId") {
                    self.templateId = dict["TemplateId"] as! Int64
                }
            }
        }
        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var instanceDetailResponseList: [QueryProjectBuildDetailResponseBody.Data.InstanceDetailResponseList]?

        public var status: String?

        public var title: String?

        public var userId: Int64?

        public override init() {
            super.init()
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
            if self.instanceDetailResponseList != nil {
                var tmp : [Any] = []
                for k in self.instanceDetailResponseList! {
                    tmp.append(k.toMap())
                }
                map["InstanceDetailResponseList"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
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
            if dict.keys.contains("InstanceDetailResponseList") {
                self.instanceDetailResponseList = dict["InstanceDetailResponseList"] as! [QueryProjectBuildDetailResponseBody.Data.InstanceDetailResponseList]
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: QueryProjectBuildDetailResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryProjectBuildDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryProjectBuildDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryProjectBuildDetailResponseBody?

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
            var model = QueryProjectBuildDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryProjectDetailRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class QueryProjectDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BuildDetail : Tea.TeaModel {
            public var completedTime: String?

            public var estimatedDuration: Int64?

            public var runningTime: String?

            public var submitTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completedTime != nil {
                    map["CompletedTime"] = self.completedTime!
                }
                if self.estimatedDuration != nil {
                    map["EstimatedDuration"] = self.estimatedDuration!
                }
                if self.runningTime != nil {
                    map["RunningTime"] = self.runningTime!
                }
                if self.submitTime != nil {
                    map["SubmitTime"] = self.submitTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompletedTime") {
                    self.completedTime = dict["CompletedTime"] as! String
                }
                if dict.keys.contains("EstimatedDuration") {
                    self.estimatedDuration = dict["EstimatedDuration"] as! Int64
                }
                if dict.keys.contains("RunningTime") {
                    self.runningTime = dict["RunningTime"] as! String
                }
                if dict.keys.contains("SubmitTime") {
                    self.submitTime = dict["SubmitTime"] as! String
                }
            }
        }
        public class Dataset : Tea.TeaModel {
            public class Policy : Tea.TeaModel {
                public var accessId: String?

                public var dir: String?

                public var expire: String?

                public var host: String?

                public var policy: String?

                public var signature: String?

                public override init() {
                    super.init()
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
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expire != nil {
                        map["Expire"] = self.expire!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy!
                    }
                    if self.signature != nil {
                        map["Signature"] = self.signature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessId") {
                        self.accessId = dict["AccessId"] as! String
                    }
                    if dict.keys.contains("Dir") {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expire") {
                        self.expire = dict["Expire"] as! String
                    }
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Policy") {
                        self.policy = dict["Policy"] as! String
                    }
                    if dict.keys.contains("Signature") {
                        self.signature = dict["Signature"] as! String
                    }
                }
            }
            public var coverUrl: String?

            public var createTime: String?

            public var deleted: Bool?

            public var id: Int64?

            public var modelUrl: String?

            public var modifiedTime: String?

            public var ossKey: String?

            public var policy: QueryProjectDetailResponseBody.Data.Dataset.Policy?

            public var poseUrl: String?

            public var previewUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.policy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.coverUrl != nil {
                    map["CoverUrl"] = self.coverUrl!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.modelUrl != nil {
                    map["ModelUrl"] = self.modelUrl!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy?.toMap()
                }
                if self.poseUrl != nil {
                    map["PoseUrl"] = self.poseUrl!
                }
                if self.previewUrl != nil {
                    map["PreviewUrl"] = self.previewUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CoverUrl") {
                    self.coverUrl = dict["CoverUrl"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("ModelUrl") {
                    self.modelUrl = dict["ModelUrl"] as! String
                }
                if dict.keys.contains("ModifiedTime") {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OssKey") {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Policy") {
                    var model = QueryProjectDetailResponseBody.Data.Dataset.Policy()
                    model.fromMap(dict["Policy"] as! [String: Any])
                    self.policy = model
                }
                if dict.keys.contains("PoseUrl") {
                    self.poseUrl = dict["PoseUrl"] as! String
                }
                if dict.keys.contains("PreviewUrl") {
                    self.previewUrl = dict["PreviewUrl"] as! String
                }
            }
        }
        public class Source : Tea.TeaModel {
            public class Policy : Tea.TeaModel {
                public var accessId: String?

                public var dir: String?

                public var expire: String?

                public var host: String?

                public var policy: String?

                public var signature: String?

                public override init() {
                    super.init()
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
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expire != nil {
                        map["Expire"] = self.expire!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy!
                    }
                    if self.signature != nil {
                        map["Signature"] = self.signature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessId") {
                        self.accessId = dict["AccessId"] as! String
                    }
                    if dict.keys.contains("Dir") {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expire") {
                        self.expire = dict["Expire"] as! String
                    }
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Policy") {
                        self.policy = dict["Policy"] as! String
                    }
                    if dict.keys.contains("Signature") {
                        self.signature = dict["Signature"] as! String
                    }
                }
            }
            public var createTime: String?

            public var deleted: Bool?

            public var id: Int64?

            public var modifiedTime: String?

            public var ossKey: String?

            public var policy: QueryProjectDetailResponseBody.Data.Source.Policy?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.policy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("ModifiedTime") {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OssKey") {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Policy") {
                    var model = QueryProjectDetailResponseBody.Data.Source.Policy()
                    model.fromMap(dict["Policy"] as! [String: Any])
                    self.policy = model
                }
            }
        }
        public var bizUsage: String?

        public var buildDetail: QueryProjectDetailResponseBody.Data.BuildDetail?

        public var createMode: String?

        public var createTime: String?

        public var dataset: QueryProjectDetailResponseBody.Data.Dataset?

        public var deleted: Bool?

        public var id: Int64?

        public var intro: String?

        public var modifiedTime: String?

        public var source: QueryProjectDetailResponseBody.Data.Source?

        public var status: String?

        public var title: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.buildDetail?.validate()
            try self.dataset?.validate()
            try self.source?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizUsage != nil {
                map["BizUsage"] = self.bizUsage!
            }
            if self.buildDetail != nil {
                map["BuildDetail"] = self.buildDetail?.toMap()
            }
            if self.createMode != nil {
                map["CreateMode"] = self.createMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.source != nil {
                map["Source"] = self.source?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizUsage") {
                self.bizUsage = dict["BizUsage"] as! String
            }
            if dict.keys.contains("BuildDetail") {
                var model = QueryProjectDetailResponseBody.Data.BuildDetail()
                model.fromMap(dict["BuildDetail"] as! [String: Any])
                self.buildDetail = model
            }
            if dict.keys.contains("CreateMode") {
                self.createMode = dict["CreateMode"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Dataset") {
                var model = QueryProjectDetailResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Deleted") {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Intro") {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Source") {
                var model = QueryProjectDetailResponseBody.Data.Source()
                model.fromMap(dict["Source"] as! [String: Any])
                self.source = model
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryProjectDetailResponseBody.Data?

    public var errorName: String?

    public var httpCode: Int32?

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
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryProjectDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorName") {
            self.errorName = dict["ErrorName"] as! String
        }
        if dict.keys.contains("HttpCode") {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryProjectDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryProjectDetailResponseBody?

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
            var model = QueryProjectDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeProductRegionsRequest : Tea.TeaModel {
    public var category: Int32?

    public var imageBase64: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.imageBase64 != nil {
            map["ImageBase64"] = self.imageBase64!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! Int32
        }
        if dict.keys.contains("ImageBase64") {
            self.imageBase64 = dict["ImageBase64"] as! String
        }
    }
}

public class RecognizeProductRegionsResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Any?

    public var message: String?

    public var requestId: String?

    public var resultCode: String?

    public var success: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
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
            self.data = dict["Data"] as! Any
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class RecognizeProductRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeProductRegionsResponseBody?

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
            var model = RecognizeProductRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveSourceRequest : Tea.TeaModel {
    public var projectId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! Int64
        }
    }
}

public class SaveSourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorName: String?

    public var httpCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorName") {
            self.errorName = dict["ErrorName"] as! String
        }
        if dict.keys.contains("HttpCode") {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SaveSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSourceResponseBody?

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
            var model = SaveSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchProductsByImageRequest : Tea.TeaModel {
    public class Region : Tea.TeaModel {
        public var height: Int32?

        public var startX: Int32?

        public var startY: Int32?

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
            if self.startX != nil {
                map["StartX"] = self.startX!
            }
            if self.startY != nil {
                map["StartY"] = self.startY!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Int32
            }
            if dict.keys.contains("StartX") {
                self.startX = dict["StartX"] as! Int32
            }
            if dict.keys.contains("StartY") {
                self.startY = dict["StartY"] as! Int32
            }
            if dict.keys.contains("Width") {
                self.width = dict["Width"] as! Int32
            }
        }
    }
    public var category: Int32?

    public var imageBase64: String?

    public var region: SearchProductsByImageRequest.Region?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.region?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.imageBase64 != nil {
            map["ImageBase64"] = self.imageBase64!
        }
        if self.region != nil {
            map["Region"] = self.region?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! Int32
        }
        if dict.keys.contains("ImageBase64") {
            self.imageBase64 = dict["ImageBase64"] as! String
        }
        if dict.keys.contains("Region") {
            var model = SearchProductsByImageRequest.Region()
            model.fromMap(dict["Region"] as! [String: Any])
            self.region = model
        }
    }
}

public class SearchProductsByImageShrinkRequest : Tea.TeaModel {
    public var category: Int32?

    public var imageBase64: String?

    public var regionShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.imageBase64 != nil {
            map["ImageBase64"] = self.imageBase64!
        }
        if self.regionShrink != nil {
            map["Region"] = self.regionShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! Int32
        }
        if dict.keys.contains("ImageBase64") {
            self.imageBase64 = dict["ImageBase64"] as! String
        }
        if dict.keys.contains("Region") {
            self.regionShrink = dict["Region"] as! String
        }
    }
}

public class SearchProductsByImageResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Any?

    public var message: String?

    public var requestId: String?

    public var resultCode: String?

    public var success: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
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
            self.data = dict["Data"] as! Any
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class SearchProductsByImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchProductsByImageResponseBody?

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
            var model = SearchProductsByImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProjectRequest : Tea.TeaModel {
    public var intro: String?

    public var projectId: String?

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
        if self.intro != nil {
            map["Intro"] = self.intro!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Intro") {
            self.intro = dict["Intro"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class UpdateProjectResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorName: String?

    public var httpCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorName") {
            self.errorName = dict["ErrorName"] as! String
        }
        if dict.keys.contains("HttpCode") {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProjectResponseBody?

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
            var model = UpdateProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
