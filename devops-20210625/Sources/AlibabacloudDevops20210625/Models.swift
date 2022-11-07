import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddRepositoryMemberRequest : Tea.TeaModel {
    public var accessToken: String?

    public var accessLevel: Int32?

    public var aliyunPks: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.accessLevel != nil {
            map["accessLevel"] = self.accessLevel!
        }
        if self.aliyunPks != nil {
            map["aliyunPks"] = self.aliyunPks!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("accessLevel") {
            self.accessLevel = dict["accessLevel"] as! Int32
        }
        if dict.keys.contains("aliyunPks") {
            self.aliyunPks = dict["aliyunPks"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
    }
}

public class AddRepositoryMemberResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accessLevel: Int32?

        public var avatarUrl: String?

        public var email: String?

        public var externUserId: String?

        public var id: Int64?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessLevel != nil {
                map["AccessLevel"] = self.accessLevel!
            }
            if self.avatarUrl != nil {
                map["AvatarUrl"] = self.avatarUrl!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.externUserId != nil {
                map["ExternUserId"] = self.externUserId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessLevel") {
                self.accessLevel = dict["AccessLevel"] as! Int32
            }
            if dict.keys.contains("AvatarUrl") {
                self.avatarUrl = dict["AvatarUrl"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("ExternUserId") {
                self.externUserId = dict["ExternUserId"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [AddRepositoryMemberResponseBody.Result]?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [AddRepositoryMemberResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddRepositoryMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddRepositoryMemberResponseBody?

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
            var model = AddRepositoryMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddWebhookRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var description_: String?

    public var enableSslVerification: Bool?

    public var mergeRequestsEvents: Bool?

    public var noteEvents: Bool?

    public var pushEvents: Bool?

    public var secretToken: String?

    public var tagPushEvents: Bool?

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
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.enableSslVerification != nil {
            map["enableSslVerification"] = self.enableSslVerification!
        }
        if self.mergeRequestsEvents != nil {
            map["mergeRequestsEvents"] = self.mergeRequestsEvents!
        }
        if self.noteEvents != nil {
            map["noteEvents"] = self.noteEvents!
        }
        if self.pushEvents != nil {
            map["pushEvents"] = self.pushEvents!
        }
        if self.secretToken != nil {
            map["secretToken"] = self.secretToken!
        }
        if self.tagPushEvents != nil {
            map["tagPushEvents"] = self.tagPushEvents!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("enableSslVerification") {
            self.enableSslVerification = dict["enableSslVerification"] as! Bool
        }
        if dict.keys.contains("mergeRequestsEvents") {
            self.mergeRequestsEvents = dict["mergeRequestsEvents"] as! Bool
        }
        if dict.keys.contains("noteEvents") {
            self.noteEvents = dict["noteEvents"] as! Bool
        }
        if dict.keys.contains("pushEvents") {
            self.pushEvents = dict["pushEvents"] as! Bool
        }
        if dict.keys.contains("secretToken") {
            self.secretToken = dict["secretToken"] as! String
        }
        if dict.keys.contains("tagPushEvents") {
            self.tagPushEvents = dict["tagPushEvents"] as! Bool
        }
        if dict.keys.contains("url") {
            self.url = dict["url"] as! String
        }
    }
}

public class AddWebhookResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createdAt: String?

        public var description_: String?

        public var enableSslVerification: Bool?

        public var id: Int64?

        public var lastTestResult: String?

        public var mergeRequestsEvents: Bool?

        public var noteEvents: Bool?

        public var pushEvents: Bool?

        public var repositoryId: Int64?

        public var secretToken: String?

        public var tagPushEvents: Bool?

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
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.enableSslVerification != nil {
                map["enableSslVerification"] = self.enableSslVerification!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.lastTestResult != nil {
                map["lastTestResult"] = self.lastTestResult!
            }
            if self.mergeRequestsEvents != nil {
                map["mergeRequestsEvents"] = self.mergeRequestsEvents!
            }
            if self.noteEvents != nil {
                map["noteEvents"] = self.noteEvents!
            }
            if self.pushEvents != nil {
                map["pushEvents"] = self.pushEvents!
            }
            if self.repositoryId != nil {
                map["repositoryId"] = self.repositoryId!
            }
            if self.secretToken != nil {
                map["secretToken"] = self.secretToken!
            }
            if self.tagPushEvents != nil {
                map["tagPushEvents"] = self.tagPushEvents!
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createdAt") {
                self.createdAt = dict["createdAt"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("enableSslVerification") {
                self.enableSslVerification = dict["enableSslVerification"] as! Bool
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("lastTestResult") {
                self.lastTestResult = dict["lastTestResult"] as! String
            }
            if dict.keys.contains("mergeRequestsEvents") {
                self.mergeRequestsEvents = dict["mergeRequestsEvents"] as! Bool
            }
            if dict.keys.contains("noteEvents") {
                self.noteEvents = dict["noteEvents"] as! Bool
            }
            if dict.keys.contains("pushEvents") {
                self.pushEvents = dict["pushEvents"] as! Bool
            }
            if dict.keys.contains("repositoryId") {
                self.repositoryId = dict["repositoryId"] as! Int64
            }
            if dict.keys.contains("secretToken") {
                self.secretToken = dict["secretToken"] as! String
            }
            if dict.keys.contains("tagPushEvents") {
                self.tagPushEvents = dict["tagPushEvents"] as! Bool
            }
            if dict.keys.contains("url") {
                self.url = dict["url"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: AddWebhookResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = AddWebhookResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class AddWebhookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddWebhookResponseBody?

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
            var model = AddWebhookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBranchRequest : Tea.TeaModel {
    public var accessToken: String?

    public var branchName: String?

    public var ref: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.branchName != nil {
            map["branchName"] = self.branchName!
        }
        if self.ref != nil {
            map["ref"] = self.ref!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("branchName") {
            self.branchName = dict["branchName"] as! String
        }
        if dict.keys.contains("ref") {
            self.ref = dict["ref"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
    }
}

public class CreateBranchResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Commit : Tea.TeaModel {
            public var authorEmail: String?

            public var authorName: String?

            public var authoredDate: String?

            public var committedDate: String?

            public var committerEmail: String?

            public var committerName: String?

            public var createdAt: String?

            public var id: String?

            public var message: String?

            public var parentIds: [String]?

            public var shortId: String?

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
                if self.authorEmail != nil {
                    map["authorEmail"] = self.authorEmail!
                }
                if self.authorName != nil {
                    map["authorName"] = self.authorName!
                }
                if self.authoredDate != nil {
                    map["authoredDate"] = self.authoredDate!
                }
                if self.committedDate != nil {
                    map["committedDate"] = self.committedDate!
                }
                if self.committerEmail != nil {
                    map["committerEmail"] = self.committerEmail!
                }
                if self.committerName != nil {
                    map["committerName"] = self.committerName!
                }
                if self.createdAt != nil {
                    map["createdAt"] = self.createdAt!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.message != nil {
                    map["message"] = self.message!
                }
                if self.parentIds != nil {
                    map["parentIds"] = self.parentIds!
                }
                if self.shortId != nil {
                    map["shortId"] = self.shortId!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("authorEmail") {
                    self.authorEmail = dict["authorEmail"] as! String
                }
                if dict.keys.contains("authorName") {
                    self.authorName = dict["authorName"] as! String
                }
                if dict.keys.contains("authoredDate") {
                    self.authoredDate = dict["authoredDate"] as! String
                }
                if dict.keys.contains("committedDate") {
                    self.committedDate = dict["committedDate"] as! String
                }
                if dict.keys.contains("committerEmail") {
                    self.committerEmail = dict["committerEmail"] as! String
                }
                if dict.keys.contains("committerName") {
                    self.committerName = dict["committerName"] as! String
                }
                if dict.keys.contains("createdAt") {
                    self.createdAt = dict["createdAt"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("message") {
                    self.message = dict["message"] as! String
                }
                if dict.keys.contains("parentIds") {
                    self.parentIds = dict["parentIds"] as! [String]
                }
                if dict.keys.contains("shortId") {
                    self.shortId = dict["shortId"] as! String
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
            }
        }
        public var commit: CreateBranchResponseBody.Result.Commit?

        public var name: String?

        public var protected: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.commit?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commit != nil {
                map["commit"] = self.commit?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.protected != nil {
                map["protected"] = self.protected!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("commit") {
                var model = CreateBranchResponseBody.Result.Commit()
                model.fromMap(dict["commit"] as! [String: Any])
                self.commit = model
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("protected") {
                self.protected = dict["protected"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: CreateBranchResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = CreateBranchResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateBranchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBranchResponseBody?

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
            var model = CreateBranchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFileRequest : Tea.TeaModel {
    public var accessToken: String?

    public var branchName: String?

    public var commitMessage: String?

    public var content: String?

    public var encoding: String?

    public var filePath: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.branchName != nil {
            map["branchName"] = self.branchName!
        }
        if self.commitMessage != nil {
            map["commitMessage"] = self.commitMessage!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.encoding != nil {
            map["encoding"] = self.encoding!
        }
        if self.filePath != nil {
            map["filePath"] = self.filePath!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("branchName") {
            self.branchName = dict["branchName"] as! String
        }
        if dict.keys.contains("commitMessage") {
            self.commitMessage = dict["commitMessage"] as! String
        }
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("encoding") {
            self.encoding = dict["encoding"] as! String
        }
        if dict.keys.contains("filePath") {
            self.filePath = dict["filePath"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
    }
}

public class CreateFileResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var branchName: String?

        public var filePath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.branchName != nil {
                map["branchName"] = self.branchName!
            }
            if self.filePath != nil {
                map["filePath"] = self.filePath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("branchName") {
                self.branchName = dict["branchName"] as! String
            }
            if dict.keys.contains("filePath") {
                self.filePath = dict["filePath"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: CreateFileResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = CreateFileResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFileResponseBody?

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
            var model = CreateFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFlowTagRequest : Tea.TeaModel {
    public var color: String?

    public var flowTagGroupId: Int64?

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
        if self.color != nil {
            map["color"] = self.color!
        }
        if self.flowTagGroupId != nil {
            map["flowTagGroupId"] = self.flowTagGroupId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("color") {
            self.color = dict["color"] as! String
        }
        if dict.keys.contains("flowTagGroupId") {
            self.flowTagGroupId = dict["flowTagGroupId"] as! Int64
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class CreateFlowTagResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var id: Int64?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateFlowTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFlowTagResponseBody?

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
            var model = CreateFlowTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFlowTagGroupRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class CreateFlowTagGroupResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var id: Int64?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateFlowTagGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFlowTagGroupResponseBody?

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
            var model = CreateFlowTagGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateHostGroupRequest : Tea.TeaModel {
    public var aliyunRegion: String?

    public var ecsLabelKey: String?

    public var ecsLabelValue: String?

    public var ecsType: String?

    public var envId: String?

    public var machineInfos: String?

    public var name: String?

    public var serviceConnectionId: Int64?

    public var tagIds: String?

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
        if self.aliyunRegion != nil {
            map["aliyunRegion"] = self.aliyunRegion!
        }
        if self.ecsLabelKey != nil {
            map["ecsLabelKey"] = self.ecsLabelKey!
        }
        if self.ecsLabelValue != nil {
            map["ecsLabelValue"] = self.ecsLabelValue!
        }
        if self.ecsType != nil {
            map["ecsType"] = self.ecsType!
        }
        if self.envId != nil {
            map["envId"] = self.envId!
        }
        if self.machineInfos != nil {
            map["machineInfos"] = self.machineInfos!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.serviceConnectionId != nil {
            map["serviceConnectionId"] = self.serviceConnectionId!
        }
        if self.tagIds != nil {
            map["tagIds"] = self.tagIds!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("aliyunRegion") {
            self.aliyunRegion = dict["aliyunRegion"] as! String
        }
        if dict.keys.contains("ecsLabelKey") {
            self.ecsLabelKey = dict["ecsLabelKey"] as! String
        }
        if dict.keys.contains("ecsLabelValue") {
            self.ecsLabelValue = dict["ecsLabelValue"] as! String
        }
        if dict.keys.contains("ecsType") {
            self.ecsType = dict["ecsType"] as! String
        }
        if dict.keys.contains("envId") {
            self.envId = dict["envId"] as! String
        }
        if dict.keys.contains("machineInfos") {
            self.machineInfos = dict["machineInfos"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("serviceConnectionId") {
            self.serviceConnectionId = dict["serviceConnectionId"] as! Int64
        }
        if dict.keys.contains("tagIds") {
            self.tagIds = dict["tagIds"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class CreateHostGroupResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var hostGroupId: Int64?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.hostGroupId != nil {
            map["hostGroupId"] = self.hostGroupId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("hostGroupId") {
            self.hostGroupId = dict["hostGroupId"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateHostGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHostGroupResponseBody?

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
            var model = CreateHostGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateOAuthTokenRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientSecret: String?

    public var code: String?

    public var grantType: String?

    public var login: String?

    public var scope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["clientId"] = self.clientId!
        }
        if self.clientSecret != nil {
            map["clientSecret"] = self.clientSecret!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.grantType != nil {
            map["grantType"] = self.grantType!
        }
        if self.login != nil {
            map["login"] = self.login!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clientId") {
            self.clientId = dict["clientId"] as! String
        }
        if dict.keys.contains("clientSecret") {
            self.clientSecret = dict["clientSecret"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("grantType") {
            self.grantType = dict["grantType"] as! String
        }
        if dict.keys.contains("login") {
            self.login = dict["login"] as! String
        }
        if dict.keys.contains("scope") {
            self.scope = dict["scope"] as! String
        }
    }
}

public class CreateOAuthTokenResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accessToken: String?

        public var id: String?

        public var scope: String?

        public var tokenType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessToken != nil {
                map["accessToken"] = self.accessToken!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.scope != nil {
                map["scope"] = self.scope!
            }
            if self.tokenType != nil {
                map["tokenType"] = self.tokenType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accessToken") {
                self.accessToken = dict["accessToken"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("scope") {
                self.scope = dict["scope"] as! String
            }
            if dict.keys.contains("tokenType") {
                self.tokenType = dict["tokenType"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: CreateOAuthTokenResponseBody.Result?

    public var success: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = CreateOAuthTokenResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! String
        }
    }
}

public class CreateOAuthTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOAuthTokenResponseBody?

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
            var model = CreateOAuthTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePipelineGroupRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class CreatePipelineGroupResponseBody : Tea.TeaModel {
    public class PipelineGroup : Tea.TeaModel {
        public var id: Int64?

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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var pipelineGroup: CreatePipelineGroupResponseBody.PipelineGroup?

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
        try self.pipelineGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.pipelineGroup != nil {
            map["pipelineGroup"] = self.pipelineGroup?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("pipelineGroup") {
            var model = CreatePipelineGroupResponseBody.PipelineGroup()
            model.fromMap(dict["pipelineGroup"] as! [String: Any])
            self.pipelineGroup = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreatePipelineGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePipelineGroupResponseBody?

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
            var model = CreatePipelineGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProjectRequest : Tea.TeaModel {
    public var customCode: String?

    public var name: String?

    public var scope: String?

    public var templateIdentifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customCode != nil {
            map["customCode"] = self.customCode!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.templateIdentifier != nil {
            map["templateIdentifier"] = self.templateIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("customCode") {
            self.customCode = dict["customCode"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("scope") {
            self.scope = dict["scope"] as! String
        }
        if dict.keys.contains("templateIdentifier") {
            self.templateIdentifier = dict["templateIdentifier"] as! String
        }
    }
}

public class CreateProjectResponseBody : Tea.TeaModel {
    public class Project : Tea.TeaModel {
        public var categoryIdentifier: String?

        public var creator: String?

        public var customCode: String?

        public var description_: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var icon: String?

        public var identifier: String?

        public var logicalStatus: String?

        public var modifier: String?

        public var name: String?

        public var organizationIdentifier: String?

        public var scope: String?

        public var statusIdentifier: String?

        public var statusStageIdentifier: String?

        public var typeIdentifier: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryIdentifier != nil {
                map["categoryIdentifier"] = self.categoryIdentifier!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.customCode != nil {
                map["customCode"] = self.customCode!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.icon != nil {
                map["icon"] = self.icon!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.logicalStatus != nil {
                map["logicalStatus"] = self.logicalStatus!
            }
            if self.modifier != nil {
                map["modifier"] = self.modifier!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.organizationIdentifier != nil {
                map["organizationIdentifier"] = self.organizationIdentifier!
            }
            if self.scope != nil {
                map["scope"] = self.scope!
            }
            if self.statusIdentifier != nil {
                map["statusIdentifier"] = self.statusIdentifier!
            }
            if self.statusStageIdentifier != nil {
                map["statusStageIdentifier"] = self.statusStageIdentifier!
            }
            if self.typeIdentifier != nil {
                map["typeIdentifier"] = self.typeIdentifier!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("categoryIdentifier") {
                self.categoryIdentifier = dict["categoryIdentifier"] as! String
            }
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("customCode") {
                self.customCode = dict["customCode"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! Int64
            }
            if dict.keys.contains("icon") {
                self.icon = dict["icon"] as! String
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("logicalStatus") {
                self.logicalStatus = dict["logicalStatus"] as! String
            }
            if dict.keys.contains("modifier") {
                self.modifier = dict["modifier"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("organizationIdentifier") {
                self.organizationIdentifier = dict["organizationIdentifier"] as! String
            }
            if dict.keys.contains("scope") {
                self.scope = dict["scope"] as! String
            }
            if dict.keys.contains("statusIdentifier") {
                self.statusIdentifier = dict["statusIdentifier"] as! String
            }
            if dict.keys.contains("statusStageIdentifier") {
                self.statusStageIdentifier = dict["statusStageIdentifier"] as! String
            }
            if dict.keys.contains("typeIdentifier") {
                self.typeIdentifier = dict["typeIdentifier"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var project: CreateProjectResponseBody.Project?

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
        try self.project?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.project != nil {
            map["project"] = self.project?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("project") {
            var model = CreateProjectResponseBody.Project()
            model.fromMap(dict["project"] as! [String: Any])
            self.project = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

public class CreateRepositoryRequest : Tea.TeaModel {
    public var accessToken: String?

    public var avatarUrl: String?

    public var description_: String?

    public var gitignoreType: String?

    public var importAccount: String?

    public var importDemoProject: Bool?

    public var importRepoType: String?

    public var importToken: String?

    public var importTokenEncrypted: String?

    public var importUrl: String?

    public var initStandardService: Bool?

    public var isCryptoEnabled: Bool?

    public var localImportUrl: String?

    public var name: String?

    public var namespaceId: Int64?

    public var path: String?

    public var readmeType: String?

    public var visibilityLevel: Int32?

    public var createParentPath: Bool?

    public var organizationId: String?

    public var sync: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.avatarUrl != nil {
            map["avatarUrl"] = self.avatarUrl!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.gitignoreType != nil {
            map["gitignoreType"] = self.gitignoreType!
        }
        if self.importAccount != nil {
            map["importAccount"] = self.importAccount!
        }
        if self.importDemoProject != nil {
            map["importDemoProject"] = self.importDemoProject!
        }
        if self.importRepoType != nil {
            map["importRepoType"] = self.importRepoType!
        }
        if self.importToken != nil {
            map["importToken"] = self.importToken!
        }
        if self.importTokenEncrypted != nil {
            map["importTokenEncrypted"] = self.importTokenEncrypted!
        }
        if self.importUrl != nil {
            map["importUrl"] = self.importUrl!
        }
        if self.initStandardService != nil {
            map["initStandardService"] = self.initStandardService!
        }
        if self.isCryptoEnabled != nil {
            map["isCryptoEnabled"] = self.isCryptoEnabled!
        }
        if self.localImportUrl != nil {
            map["localImportUrl"] = self.localImportUrl!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.namespaceId != nil {
            map["namespaceId"] = self.namespaceId!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.readmeType != nil {
            map["readmeType"] = self.readmeType!
        }
        if self.visibilityLevel != nil {
            map["visibilityLevel"] = self.visibilityLevel!
        }
        if self.createParentPath != nil {
            map["createParentPath"] = self.createParentPath!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        if self.sync != nil {
            map["sync"] = self.sync!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("avatarUrl") {
            self.avatarUrl = dict["avatarUrl"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("gitignoreType") {
            self.gitignoreType = dict["gitignoreType"] as! String
        }
        if dict.keys.contains("importAccount") {
            self.importAccount = dict["importAccount"] as! String
        }
        if dict.keys.contains("importDemoProject") {
            self.importDemoProject = dict["importDemoProject"] as! Bool
        }
        if dict.keys.contains("importRepoType") {
            self.importRepoType = dict["importRepoType"] as! String
        }
        if dict.keys.contains("importToken") {
            self.importToken = dict["importToken"] as! String
        }
        if dict.keys.contains("importTokenEncrypted") {
            self.importTokenEncrypted = dict["importTokenEncrypted"] as! String
        }
        if dict.keys.contains("importUrl") {
            self.importUrl = dict["importUrl"] as! String
        }
        if dict.keys.contains("initStandardService") {
            self.initStandardService = dict["initStandardService"] as! Bool
        }
        if dict.keys.contains("isCryptoEnabled") {
            self.isCryptoEnabled = dict["isCryptoEnabled"] as! Bool
        }
        if dict.keys.contains("localImportUrl") {
            self.localImportUrl = dict["localImportUrl"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("namespaceId") {
            self.namespaceId = dict["namespaceId"] as! Int64
        }
        if dict.keys.contains("path") {
            self.path = dict["path"] as! String
        }
        if dict.keys.contains("readmeType") {
            self.readmeType = dict["readmeType"] as! String
        }
        if dict.keys.contains("visibilityLevel") {
            self.visibilityLevel = dict["visibilityLevel"] as! Int32
        }
        if dict.keys.contains("createParentPath") {
            self.createParentPath = dict["createParentPath"] as! Bool
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
        if dict.keys.contains("sync") {
            self.sync = dict["sync"] as! Bool
        }
    }
}

public class CreateRepositoryResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Namespace : Tea.TeaModel {
            public var avatar: String?

            public var createdAt: String?

            public var description_: String?

            public var id: Int64?

            public var name: String?

            public var ownerId: Int64?

            public var path: String?

            public var public_: Bool?

            public var updatedAt: String?

            public var visibilityLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avatar != nil {
                    map["avatar"] = self.avatar!
                }
                if self.createdAt != nil {
                    map["createdAt"] = self.createdAt!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.ownerId != nil {
                    map["ownerId"] = self.ownerId!
                }
                if self.path != nil {
                    map["path"] = self.path!
                }
                if self.public_ != nil {
                    map["public"] = self.public_!
                }
                if self.updatedAt != nil {
                    map["updatedAt"] = self.updatedAt!
                }
                if self.visibilityLevel != nil {
                    map["visibilityLevel"] = self.visibilityLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("avatar") {
                    self.avatar = dict["avatar"] as! String
                }
                if dict.keys.contains("createdAt") {
                    self.createdAt = dict["createdAt"] as! String
                }
                if dict.keys.contains("description") {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("ownerId") {
                    self.ownerId = dict["ownerId"] as! Int64
                }
                if dict.keys.contains("path") {
                    self.path = dict["path"] as! String
                }
                if dict.keys.contains("public") {
                    self.public_ = dict["public"] as! Bool
                }
                if dict.keys.contains("updatedAt") {
                    self.updatedAt = dict["updatedAt"] as! String
                }
                if dict.keys.contains("visibilityLevel") {
                    self.visibilityLevel = dict["visibilityLevel"] as! String
                }
            }
        }
        public var importFromSvn: Bool?

        public var archived: Bool?

        public var avatarUrl: String?

        public var createdAt: String?

        public var creatorId: Int64?

        public var defaultBranch: String?

        public var demoProject: Bool?

        public var description_: String?

        public var httpUrlToRepo: String?

        public var id: Int64?

        public var lastActivityAt: String?

        public var name: String?

        public var nameWithNamespace: String?

        public var namespace: CreateRepositoryResponseBody.Result.Namespace?

        public var path: String?

        public var pathWithNamespace: String?

        public var sshUrlToRepo: String?

        public var visibilityLevel: String?

        public var webUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.namespace?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.importFromSvn != nil {
                map["Import_from_svn"] = self.importFromSvn!
            }
            if self.archived != nil {
                map["archived"] = self.archived!
            }
            if self.avatarUrl != nil {
                map["avatar_url"] = self.avatarUrl!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.creatorId != nil {
                map["creatorId"] = self.creatorId!
            }
            if self.defaultBranch != nil {
                map["defaultBranch"] = self.defaultBranch!
            }
            if self.demoProject != nil {
                map["demoProject"] = self.demoProject!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.httpUrlToRepo != nil {
                map["httpUrlToRepo"] = self.httpUrlToRepo!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.lastActivityAt != nil {
                map["lastActivityAt"] = self.lastActivityAt!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.nameWithNamespace != nil {
                map["nameWithNamespace"] = self.nameWithNamespace!
            }
            if self.namespace != nil {
                map["namespace"] = self.namespace?.toMap()
            }
            if self.path != nil {
                map["path"] = self.path!
            }
            if self.pathWithNamespace != nil {
                map["pathWithNamespace"] = self.pathWithNamespace!
            }
            if self.sshUrlToRepo != nil {
                map["sshUrlToRepo"] = self.sshUrlToRepo!
            }
            if self.visibilityLevel != nil {
                map["visibilityLevel"] = self.visibilityLevel!
            }
            if self.webUrl != nil {
                map["webUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Import_from_svn") {
                self.importFromSvn = dict["Import_from_svn"] as! Bool
            }
            if dict.keys.contains("archived") {
                self.archived = dict["archived"] as! Bool
            }
            if dict.keys.contains("avatar_url") {
                self.avatarUrl = dict["avatar_url"] as! String
            }
            if dict.keys.contains("createdAt") {
                self.createdAt = dict["createdAt"] as! String
            }
            if dict.keys.contains("creatorId") {
                self.creatorId = dict["creatorId"] as! Int64
            }
            if dict.keys.contains("defaultBranch") {
                self.defaultBranch = dict["defaultBranch"] as! String
            }
            if dict.keys.contains("demoProject") {
                self.demoProject = dict["demoProject"] as! Bool
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("httpUrlToRepo") {
                self.httpUrlToRepo = dict["httpUrlToRepo"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("lastActivityAt") {
                self.lastActivityAt = dict["lastActivityAt"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("nameWithNamespace") {
                self.nameWithNamespace = dict["nameWithNamespace"] as! String
            }
            if dict.keys.contains("namespace") {
                var model = CreateRepositoryResponseBody.Result.Namespace()
                model.fromMap(dict["namespace"] as! [String: Any])
                self.namespace = model
            }
            if dict.keys.contains("path") {
                self.path = dict["path"] as! String
            }
            if dict.keys.contains("pathWithNamespace") {
                self.pathWithNamespace = dict["pathWithNamespace"] as! String
            }
            if dict.keys.contains("sshUrlToRepo") {
                self.sshUrlToRepo = dict["sshUrlToRepo"] as! String
            }
            if dict.keys.contains("visibilityLevel") {
                self.visibilityLevel = dict["visibilityLevel"] as! String
            }
            if dict.keys.contains("webUrl") {
                self.webUrl = dict["webUrl"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: CreateRepositoryResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = CreateRepositoryResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRepositoryResponseBody?

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
            var model = CreateRepositoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateResourceMemberRequest : Tea.TeaModel {
    public var accountId: String?

    public var roleName: String?

    public override init() {
        super.init()
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
        if self.roleName != nil {
            map["roleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("roleName") {
            self.roleName = dict["roleName"] as! String
        }
    }
}

public class CreateResourceMemberResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateResourceMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceMemberResponseBody?

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
            var model = CreateResourceMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSprintRequest : Tea.TeaModel {
    public var endDate: String?

    public var name: String?

    public var spaceIdentifier: String?

    public var staffIds: [String]?

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
            map["endDate"] = self.endDate!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.spaceIdentifier != nil {
            map["spaceIdentifier"] = self.spaceIdentifier!
        }
        if self.staffIds != nil {
            map["staffIds"] = self.staffIds!
        }
        if self.startDate != nil {
            map["startDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("endDate") {
            self.endDate = dict["endDate"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("spaceIdentifier") {
            self.spaceIdentifier = dict["spaceIdentifier"] as! String
        }
        if dict.keys.contains("staffIds") {
            self.staffIds = dict["staffIds"] as! [String]
        }
        if dict.keys.contains("startDate") {
            self.startDate = dict["startDate"] as! String
        }
    }
}

public class CreateSprintResponseBody : Tea.TeaModel {
    public class Sprint : Tea.TeaModel {
        public var creator: String?

        public var description_: String?

        public var endDate: Int64?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var identifier: String?

        public var modifier: String?

        public var name: String?

        public var scope: String?

        public var spaceIdentifier: String?

        public var startDate: Int64?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.endDate != nil {
                map["endDate"] = self.endDate!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.modifier != nil {
                map["modifier"] = self.modifier!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.scope != nil {
                map["scope"] = self.scope!
            }
            if self.spaceIdentifier != nil {
                map["spaceIdentifier"] = self.spaceIdentifier!
            }
            if self.startDate != nil {
                map["startDate"] = self.startDate!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("endDate") {
                self.endDate = dict["endDate"] as! Int64
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! Int64
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("modifier") {
                self.modifier = dict["modifier"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("scope") {
                self.scope = dict["scope"] as! String
            }
            if dict.keys.contains("spaceIdentifier") {
                self.spaceIdentifier = dict["spaceIdentifier"] as! String
            }
            if dict.keys.contains("startDate") {
                self.startDate = dict["startDate"] as! Int64
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var requestId: String?

    public var sprint: CreateSprintResponseBody.Sprint?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sprint?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sprint != nil {
            map["sprint"] = self.sprint?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("sprint") {
            var model = CreateSprintResponseBody.Sprint()
            model.fromMap(dict["sprint"] as! [String: Any])
            self.sprint = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateSprintResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSprintResponseBody?

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
            var model = CreateSprintResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSshKeyResponseBody : Tea.TeaModel {
    public class SshKey : Tea.TeaModel {
        public var id: Int64?

        public var publicKey: String?

        public override init() {
            super.init()
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
                map["id"] = self.id!
            }
            if self.publicKey != nil {
                map["publicKey"] = self.publicKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("publicKey") {
                self.publicKey = dict["publicKey"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var sshKey: CreateSshKeyResponseBody.SshKey?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sshKey?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sshKey != nil {
            map["sshKey"] = self.sshKey?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("sshKey") {
            var model = CreateSshKeyResponseBody.SshKey()
            model.fromMap(dict["sshKey"] as! [String: Any])
            self.sshKey = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateSshKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSshKeyResponseBody?

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
            var model = CreateSshKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVariableGroupRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var variables: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.variables != nil {
            map["variables"] = self.variables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("variables") {
            self.variables = dict["variables"] as! String
        }
    }
}

public class CreateVariableGroupResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var success: Bool?

    public var variableGroupId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.variableGroupId != nil {
            map["variableGroupId"] = self.variableGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("variableGroupId") {
            self.variableGroupId = dict["variableGroupId"] as! Int64
        }
    }
}

public class CreateVariableGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVariableGroupResponseBody?

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
            var model = CreateVariableGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWorkitemRequest : Tea.TeaModel {
    public class FieldValueList : Tea.TeaModel {
        public var fieldIdentifier: String?

        public var value: String?

        public var workitemIdentifier: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fieldIdentifier != nil {
                map["fieldIdentifier"] = self.fieldIdentifier!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            if self.workitemIdentifier != nil {
                map["workitemIdentifier"] = self.workitemIdentifier!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fieldIdentifier") {
                self.fieldIdentifier = dict["fieldIdentifier"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
            if dict.keys.contains("workitemIdentifier") {
                self.workitemIdentifier = dict["workitemIdentifier"] as! String
            }
        }
    }
    public var assignedTo: String?

    public var category: String?

    public var description_: String?

    public var descriptionFormat: String?

    public var fieldValueList: [CreateWorkitemRequest.FieldValueList]?

    public var parent: String?

    public var participant: [String]?

    public var space: String?

    public var spaceIdentifier: String?

    public var spaceType: String?

    public var sprint: [String]?

    public var subject: String?

    public var tracker: [String]?

    public var verifier: [String]?

    public var workitemType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assignedTo != nil {
            map["assignedTo"] = self.assignedTo!
        }
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.descriptionFormat != nil {
            map["descriptionFormat"] = self.descriptionFormat!
        }
        if self.fieldValueList != nil {
            var tmp : [Any] = []
            for k in self.fieldValueList! {
                tmp.append(k.toMap())
            }
            map["fieldValueList"] = tmp
        }
        if self.parent != nil {
            map["parent"] = self.parent!
        }
        if self.participant != nil {
            map["participant"] = self.participant!
        }
        if self.space != nil {
            map["space"] = self.space!
        }
        if self.spaceIdentifier != nil {
            map["spaceIdentifier"] = self.spaceIdentifier!
        }
        if self.spaceType != nil {
            map["spaceType"] = self.spaceType!
        }
        if self.sprint != nil {
            map["sprint"] = self.sprint!
        }
        if self.subject != nil {
            map["subject"] = self.subject!
        }
        if self.tracker != nil {
            map["tracker"] = self.tracker!
        }
        if self.verifier != nil {
            map["verifier"] = self.verifier!
        }
        if self.workitemType != nil {
            map["workitemType"] = self.workitemType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("assignedTo") {
            self.assignedTo = dict["assignedTo"] as! String
        }
        if dict.keys.contains("category") {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("descriptionFormat") {
            self.descriptionFormat = dict["descriptionFormat"] as! String
        }
        if dict.keys.contains("fieldValueList") {
            self.fieldValueList = dict["fieldValueList"] as! [CreateWorkitemRequest.FieldValueList]
        }
        if dict.keys.contains("parent") {
            self.parent = dict["parent"] as! String
        }
        if dict.keys.contains("participant") {
            self.participant = dict["participant"] as! [String]
        }
        if dict.keys.contains("space") {
            self.space = dict["space"] as! String
        }
        if dict.keys.contains("spaceIdentifier") {
            self.spaceIdentifier = dict["spaceIdentifier"] as! String
        }
        if dict.keys.contains("spaceType") {
            self.spaceType = dict["spaceType"] as! String
        }
        if dict.keys.contains("sprint") {
            self.sprint = dict["sprint"] as! [String]
        }
        if dict.keys.contains("subject") {
            self.subject = dict["subject"] as! String
        }
        if dict.keys.contains("tracker") {
            self.tracker = dict["tracker"] as! [String]
        }
        if dict.keys.contains("verifier") {
            self.verifier = dict["verifier"] as! [String]
        }
        if dict.keys.contains("workitemType") {
            self.workitemType = dict["workitemType"] as! String
        }
    }
}

public class CreateWorkitemResponseBody : Tea.TeaModel {
    public class Workitem : Tea.TeaModel {
        public var assignedTo: String?

        public var categoryIdentifier: String?

        public var creator: String?

        public var document: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var identifier: String?

        public var logicalStatus: String?

        public var modifier: String?

        public var parentIdentifier: String?

        public var serialNumber: String?

        public var spaceIdentifier: String?

        public var spaceName: String?

        public var spaceType: String?

        public var sprintIdentifier: String?

        public var status: String?

        public var statusIdentifier: String?

        public var statusStageIdentifier: String?

        public var subject: String?

        public var updateStatusAt: Int64?

        public var workitemTypeIdentifier: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assignedTo != nil {
                map["assignedTo"] = self.assignedTo!
            }
            if self.categoryIdentifier != nil {
                map["categoryIdentifier"] = self.categoryIdentifier!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.document != nil {
                map["document"] = self.document!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.logicalStatus != nil {
                map["logicalStatus"] = self.logicalStatus!
            }
            if self.modifier != nil {
                map["modifier"] = self.modifier!
            }
            if self.parentIdentifier != nil {
                map["parentIdentifier"] = self.parentIdentifier!
            }
            if self.serialNumber != nil {
                map["serialNumber"] = self.serialNumber!
            }
            if self.spaceIdentifier != nil {
                map["spaceIdentifier"] = self.spaceIdentifier!
            }
            if self.spaceName != nil {
                map["spaceName"] = self.spaceName!
            }
            if self.spaceType != nil {
                map["spaceType"] = self.spaceType!
            }
            if self.sprintIdentifier != nil {
                map["sprintIdentifier"] = self.sprintIdentifier!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusIdentifier != nil {
                map["statusIdentifier"] = self.statusIdentifier!
            }
            if self.statusStageIdentifier != nil {
                map["statusStageIdentifier"] = self.statusStageIdentifier!
            }
            if self.subject != nil {
                map["subject"] = self.subject!
            }
            if self.updateStatusAt != nil {
                map["updateStatusAt"] = self.updateStatusAt!
            }
            if self.workitemTypeIdentifier != nil {
                map["workitemTypeIdentifier"] = self.workitemTypeIdentifier!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assignedTo") {
                self.assignedTo = dict["assignedTo"] as! String
            }
            if dict.keys.contains("categoryIdentifier") {
                self.categoryIdentifier = dict["categoryIdentifier"] as! String
            }
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("document") {
                self.document = dict["document"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! Int64
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("logicalStatus") {
                self.logicalStatus = dict["logicalStatus"] as! String
            }
            if dict.keys.contains("modifier") {
                self.modifier = dict["modifier"] as! String
            }
            if dict.keys.contains("parentIdentifier") {
                self.parentIdentifier = dict["parentIdentifier"] as! String
            }
            if dict.keys.contains("serialNumber") {
                self.serialNumber = dict["serialNumber"] as! String
            }
            if dict.keys.contains("spaceIdentifier") {
                self.spaceIdentifier = dict["spaceIdentifier"] as! String
            }
            if dict.keys.contains("spaceName") {
                self.spaceName = dict["spaceName"] as! String
            }
            if dict.keys.contains("spaceType") {
                self.spaceType = dict["spaceType"] as! String
            }
            if dict.keys.contains("sprintIdentifier") {
                self.sprintIdentifier = dict["sprintIdentifier"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("statusIdentifier") {
                self.statusIdentifier = dict["statusIdentifier"] as! String
            }
            if dict.keys.contains("statusStageIdentifier") {
                self.statusStageIdentifier = dict["statusStageIdentifier"] as! String
            }
            if dict.keys.contains("subject") {
                self.subject = dict["subject"] as! String
            }
            if dict.keys.contains("updateStatusAt") {
                self.updateStatusAt = dict["updateStatusAt"] as! Int64
            }
            if dict.keys.contains("workitemTypeIdentifier") {
                self.workitemTypeIdentifier = dict["workitemTypeIdentifier"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var requestId: String?

    public var success: Bool?

    public var workitem: CreateWorkitemResponseBody.Workitem?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.workitem?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.workitem != nil {
            map["workitem"] = self.workitem?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("workitem") {
            var model = CreateWorkitemResponseBody.Workitem()
            model.fromMap(dict["workitem"] as! [String: Any])
            self.workitem = model
        }
    }
}

public class CreateWorkitemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkitemResponseBody?

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
            var model = CreateWorkitemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWorkitemCommentRequest : Tea.TeaModel {
    public var content: String?

    public var formatType: String?

    public var parentId: String?

    public var workitemIdentifier: String?

    public override init() {
        super.init()
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
        if self.formatType != nil {
            map["formatType"] = self.formatType!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        if self.workitemIdentifier != nil {
            map["workitemIdentifier"] = self.workitemIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("formatType") {
            self.formatType = dict["formatType"] as! String
        }
        if dict.keys.contains("parentId") {
            self.parentId = dict["parentId"] as! String
        }
        if dict.keys.contains("workitemIdentifier") {
            self.workitemIdentifier = dict["workitemIdentifier"] as! String
        }
    }
}

public class CreateWorkitemCommentResponseBody : Tea.TeaModel {
    public class Comment : Tea.TeaModel {
        public class User : Tea.TeaModel {
            public var account: String?

            public var avatar: String?

            public var displayName: String?

            public var identifier: String?

            public var nickName: String?

            public var realName: String?

            public var targetType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.account != nil {
                    map["account"] = self.account!
                }
                if self.avatar != nil {
                    map["avatar"] = self.avatar!
                }
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                if self.identifier != nil {
                    map["identifier"] = self.identifier!
                }
                if self.nickName != nil {
                    map["nickName"] = self.nickName!
                }
                if self.realName != nil {
                    map["realName"] = self.realName!
                }
                if self.targetType != nil {
                    map["targetType"] = self.targetType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("account") {
                    self.account = dict["account"] as! String
                }
                if dict.keys.contains("avatar") {
                    self.avatar = dict["avatar"] as! String
                }
                if dict.keys.contains("displayName") {
                    self.displayName = dict["displayName"] as! String
                }
                if dict.keys.contains("identifier") {
                    self.identifier = dict["identifier"] as! String
                }
                if dict.keys.contains("nickName") {
                    self.nickName = dict["nickName"] as! String
                }
                if dict.keys.contains("realName") {
                    self.realName = dict["realName"] as! String
                }
                if dict.keys.contains("targetType") {
                    self.targetType = dict["targetType"] as! String
                }
            }
        }
        public var id: Int64?

        public var content: String?

        public var createTime: Int64?

        public var formatType: String?

        public var isTop: Bool?

        public var modifiedTime: Int64?

        public var parentId: Int64?

        public var targetIdentifier: String?

        public var targetType: String?

        public var topTime: Int64?

        public var user: CreateWorkitemCommentResponseBody.Comment.User?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.user?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.formatType != nil {
                map["formatType"] = self.formatType!
            }
            if self.isTop != nil {
                map["isTop"] = self.isTop!
            }
            if self.modifiedTime != nil {
                map["modifiedTime"] = self.modifiedTime!
            }
            if self.parentId != nil {
                map["parentId"] = self.parentId!
            }
            if self.targetIdentifier != nil {
                map["targetIdentifier"] = self.targetIdentifier!
            }
            if self.targetType != nil {
                map["targetType"] = self.targetType!
            }
            if self.topTime != nil {
                map["topTime"] = self.topTime!
            }
            if self.user != nil {
                map["user"] = self.user?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("formatType") {
                self.formatType = dict["formatType"] as! String
            }
            if dict.keys.contains("isTop") {
                self.isTop = dict["isTop"] as! Bool
            }
            if dict.keys.contains("modifiedTime") {
                self.modifiedTime = dict["modifiedTime"] as! Int64
            }
            if dict.keys.contains("parentId") {
                self.parentId = dict["parentId"] as! Int64
            }
            if dict.keys.contains("targetIdentifier") {
                self.targetIdentifier = dict["targetIdentifier"] as! String
            }
            if dict.keys.contains("targetType") {
                self.targetType = dict["targetType"] as! String
            }
            if dict.keys.contains("topTime") {
                self.topTime = dict["topTime"] as! Int64
            }
            if dict.keys.contains("user") {
                var model = CreateWorkitemCommentResponseBody.Comment.User()
                model.fromMap(dict["user"] as! [String: Any])
                self.user = model
            }
        }
    }
    public var comment: CreateWorkitemCommentResponseBody.Comment?

    public var errorCode: String?

    public var errorMsg: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.comment?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["Comment"] = self.comment?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") {
            var model = CreateWorkitemCommentResponseBody.Comment()
            model.fromMap(dict["Comment"] as! [String: Any])
            self.comment = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! String
        }
    }
}

public class CreateWorkitemCommentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkitemCommentResponseBody?

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
            var model = CreateWorkitemCommentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWorkitemEstimateRequest : Tea.TeaModel {
    public var description_: String?

    public var recordUserIdentifier: String?

    public var spentTime: String?

    public var type: String?

    public var workitemIdentifier: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.recordUserIdentifier != nil {
            map["recordUserIdentifier"] = self.recordUserIdentifier!
        }
        if self.spentTime != nil {
            map["spentTime"] = self.spentTime!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.workitemIdentifier != nil {
            map["workitemIdentifier"] = self.workitemIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("recordUserIdentifier") {
            self.recordUserIdentifier = dict["recordUserIdentifier"] as! String
        }
        if dict.keys.contains("spentTime") {
            self.spentTime = dict["spentTime"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("workitemIdentifier") {
            self.workitemIdentifier = dict["workitemIdentifier"] as! String
        }
    }
}

public class CreateWorkitemEstimateResponseBody : Tea.TeaModel {
    public class WorkitemTimeEstimate : Tea.TeaModel {
        public class RecordUser : Tea.TeaModel {
            public var account: String?

            public var avatar: String?

            public var dingTalkId: String?

            public var displayName: String?

            public var displayNickName: String?

            public var displayRealName: String?

            public var email: String?

            public var gender: String?

            public var identifier: String?

            public var isDisabled: Bool?

            public var mobile: String?

            public var nameEn: String?

            public var nickName: String?

            public var nickNamePinyin: String?

            public var realName: String?

            public var realNamePinyin: String?

            public var stamp: String?

            public var tbRoleId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.account != nil {
                    map["account"] = self.account!
                }
                if self.avatar != nil {
                    map["avatar"] = self.avatar!
                }
                if self.dingTalkId != nil {
                    map["dingTalkId"] = self.dingTalkId!
                }
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                if self.displayNickName != nil {
                    map["displayNickName"] = self.displayNickName!
                }
                if self.displayRealName != nil {
                    map["displayRealName"] = self.displayRealName!
                }
                if self.email != nil {
                    map["email"] = self.email!
                }
                if self.gender != nil {
                    map["gender"] = self.gender!
                }
                if self.identifier != nil {
                    map["identifier"] = self.identifier!
                }
                if self.isDisabled != nil {
                    map["isDisabled"] = self.isDisabled!
                }
                if self.mobile != nil {
                    map["mobile"] = self.mobile!
                }
                if self.nameEn != nil {
                    map["nameEn"] = self.nameEn!
                }
                if self.nickName != nil {
                    map["nickName"] = self.nickName!
                }
                if self.nickNamePinyin != nil {
                    map["nickNamePinyin"] = self.nickNamePinyin!
                }
                if self.realName != nil {
                    map["realName"] = self.realName!
                }
                if self.realNamePinyin != nil {
                    map["realNamePinyin"] = self.realNamePinyin!
                }
                if self.stamp != nil {
                    map["stamp"] = self.stamp!
                }
                if self.tbRoleId != nil {
                    map["tbRoleId"] = self.tbRoleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("account") {
                    self.account = dict["account"] as! String
                }
                if dict.keys.contains("avatar") {
                    self.avatar = dict["avatar"] as! String
                }
                if dict.keys.contains("dingTalkId") {
                    self.dingTalkId = dict["dingTalkId"] as! String
                }
                if dict.keys.contains("displayName") {
                    self.displayName = dict["displayName"] as! String
                }
                if dict.keys.contains("displayNickName") {
                    self.displayNickName = dict["displayNickName"] as! String
                }
                if dict.keys.contains("displayRealName") {
                    self.displayRealName = dict["displayRealName"] as! String
                }
                if dict.keys.contains("email") {
                    self.email = dict["email"] as! String
                }
                if dict.keys.contains("gender") {
                    self.gender = dict["gender"] as! String
                }
                if dict.keys.contains("identifier") {
                    self.identifier = dict["identifier"] as! String
                }
                if dict.keys.contains("isDisabled") {
                    self.isDisabled = dict["isDisabled"] as! Bool
                }
                if dict.keys.contains("mobile") {
                    self.mobile = dict["mobile"] as! String
                }
                if dict.keys.contains("nameEn") {
                    self.nameEn = dict["nameEn"] as! String
                }
                if dict.keys.contains("nickName") {
                    self.nickName = dict["nickName"] as! String
                }
                if dict.keys.contains("nickNamePinyin") {
                    self.nickNamePinyin = dict["nickNamePinyin"] as! String
                }
                if dict.keys.contains("realName") {
                    self.realName = dict["realName"] as! String
                }
                if dict.keys.contains("realNamePinyin") {
                    self.realNamePinyin = dict["realNamePinyin"] as! String
                }
                if dict.keys.contains("stamp") {
                    self.stamp = dict["stamp"] as! String
                }
                if dict.keys.contains("tbRoleId") {
                    self.tbRoleId = dict["tbRoleId"] as! String
                }
            }
        }
        public var description_: String?

        public var identifier: String?

        public var recordUser: CreateWorkitemEstimateResponseBody.WorkitemTimeEstimate.RecordUser?

        public var spentTime: Int64?

        public var type: String?

        public var workitemIdentifier: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.recordUser?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.recordUser != nil {
                map["recordUser"] = self.recordUser?.toMap()
            }
            if self.spentTime != nil {
                map["spentTime"] = self.spentTime!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.workitemIdentifier != nil {
                map["workitemIdentifier"] = self.workitemIdentifier!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("recordUser") {
                var model = CreateWorkitemEstimateResponseBody.WorkitemTimeEstimate.RecordUser()
                model.fromMap(dict["recordUser"] as! [String: Any])
                self.recordUser = model
            }
            if dict.keys.contains("spentTime") {
                self.spentTime = dict["spentTime"] as! Int64
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("workitemIdentifier") {
                self.workitemIdentifier = dict["workitemIdentifier"] as! String
            }
        }
    }
    public var workitemTimeEstimate: CreateWorkitemEstimateResponseBody.WorkitemTimeEstimate?

    public var errorCode: String?

    public var errorMsg: String?

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
        try self.workitemTimeEstimate?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.workitemTimeEstimate != nil {
            map["WorkitemTimeEstimate"] = self.workitemTimeEstimate?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WorkitemTimeEstimate") {
            var model = CreateWorkitemEstimateResponseBody.WorkitemTimeEstimate()
            model.fromMap(dict["WorkitemTimeEstimate"] as! [String: Any])
            self.workitemTimeEstimate = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateWorkitemEstimateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkitemEstimateResponseBody?

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
            var model = CreateWorkitemEstimateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWorkitemRecordRequest : Tea.TeaModel {
    public var actualTime: String?

    public var description_: String?

    public var gmtEnd: String?

    public var gmtStart: String?

    public var recordUserIdentifier: String?

    public var type: String?

    public var workitemIdentifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actualTime != nil {
            map["actualTime"] = self.actualTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.gmtEnd != nil {
            map["gmtEnd"] = self.gmtEnd!
        }
        if self.gmtStart != nil {
            map["gmtStart"] = self.gmtStart!
        }
        if self.recordUserIdentifier != nil {
            map["recordUserIdentifier"] = self.recordUserIdentifier!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.workitemIdentifier != nil {
            map["workitemIdentifier"] = self.workitemIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("actualTime") {
            self.actualTime = dict["actualTime"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("gmtEnd") {
            self.gmtEnd = dict["gmtEnd"] as! String
        }
        if dict.keys.contains("gmtStart") {
            self.gmtStart = dict["gmtStart"] as! String
        }
        if dict.keys.contains("recordUserIdentifier") {
            self.recordUserIdentifier = dict["recordUserIdentifier"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("workitemIdentifier") {
            self.workitemIdentifier = dict["workitemIdentifier"] as! String
        }
    }
}

public class CreateWorkitemRecordResponseBody : Tea.TeaModel {
    public class WorkitemTime : Tea.TeaModel {
        public class RecordUser : Tea.TeaModel {
            public var account: String?

            public var avatar: String?

            public var dingTalkId: String?

            public var displayName: String?

            public var displayNickName: String?

            public var displayRealName: String?

            public var email: String?

            public var gender: String?

            public var identifier: String?

            public var isDisabled: Bool?

            public var mobile: String?

            public var nameEn: String?

            public var nickName: String?

            public var nickNamePinyin: String?

            public var realName: String?

            public var realNamePinyin: String?

            public var stamp: String?

            public var tbRoleId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.account != nil {
                    map["account"] = self.account!
                }
                if self.avatar != nil {
                    map["avatar"] = self.avatar!
                }
                if self.dingTalkId != nil {
                    map["dingTalkId"] = self.dingTalkId!
                }
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                if self.displayNickName != nil {
                    map["displayNickName"] = self.displayNickName!
                }
                if self.displayRealName != nil {
                    map["displayRealName"] = self.displayRealName!
                }
                if self.email != nil {
                    map["email"] = self.email!
                }
                if self.gender != nil {
                    map["gender"] = self.gender!
                }
                if self.identifier != nil {
                    map["identifier"] = self.identifier!
                }
                if self.isDisabled != nil {
                    map["isDisabled"] = self.isDisabled!
                }
                if self.mobile != nil {
                    map["mobile"] = self.mobile!
                }
                if self.nameEn != nil {
                    map["nameEn"] = self.nameEn!
                }
                if self.nickName != nil {
                    map["nickName"] = self.nickName!
                }
                if self.nickNamePinyin != nil {
                    map["nickNamePinyin"] = self.nickNamePinyin!
                }
                if self.realName != nil {
                    map["realName"] = self.realName!
                }
                if self.realNamePinyin != nil {
                    map["realNamePinyin"] = self.realNamePinyin!
                }
                if self.stamp != nil {
                    map["stamp"] = self.stamp!
                }
                if self.tbRoleId != nil {
                    map["tbRoleId"] = self.tbRoleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("account") {
                    self.account = dict["account"] as! String
                }
                if dict.keys.contains("avatar") {
                    self.avatar = dict["avatar"] as! String
                }
                if dict.keys.contains("dingTalkId") {
                    self.dingTalkId = dict["dingTalkId"] as! String
                }
                if dict.keys.contains("displayName") {
                    self.displayName = dict["displayName"] as! String
                }
                if dict.keys.contains("displayNickName") {
                    self.displayNickName = dict["displayNickName"] as! String
                }
                if dict.keys.contains("displayRealName") {
                    self.displayRealName = dict["displayRealName"] as! String
                }
                if dict.keys.contains("email") {
                    self.email = dict["email"] as! String
                }
                if dict.keys.contains("gender") {
                    self.gender = dict["gender"] as! String
                }
                if dict.keys.contains("identifier") {
                    self.identifier = dict["identifier"] as! String
                }
                if dict.keys.contains("isDisabled") {
                    self.isDisabled = dict["isDisabled"] as! Bool
                }
                if dict.keys.contains("mobile") {
                    self.mobile = dict["mobile"] as! String
                }
                if dict.keys.contains("nameEn") {
                    self.nameEn = dict["nameEn"] as! String
                }
                if dict.keys.contains("nickName") {
                    self.nickName = dict["nickName"] as! String
                }
                if dict.keys.contains("nickNamePinyin") {
                    self.nickNamePinyin = dict["nickNamePinyin"] as! String
                }
                if dict.keys.contains("realName") {
                    self.realName = dict["realName"] as! String
                }
                if dict.keys.contains("realNamePinyin") {
                    self.realNamePinyin = dict["realNamePinyin"] as! String
                }
                if dict.keys.contains("stamp") {
                    self.stamp = dict["stamp"] as! String
                }
                if dict.keys.contains("tbRoleId") {
                    self.tbRoleId = dict["tbRoleId"] as! String
                }
            }
        }
        public var actualTime: Int64?

        public var description_: String?

        public var gmtEnd: Int64?

        public var gmtStart: Int64?

        public var identifier: String?

        public var recordUser: CreateWorkitemRecordResponseBody.WorkitemTime.RecordUser?

        public var type: String?

        public var workitemIdentifier: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.recordUser?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actualTime != nil {
                map["actualTime"] = self.actualTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.gmtEnd != nil {
                map["gmtEnd"] = self.gmtEnd!
            }
            if self.gmtStart != nil {
                map["gmtStart"] = self.gmtStart!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.recordUser != nil {
                map["recordUser"] = self.recordUser?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.workitemIdentifier != nil {
                map["workitemIdentifier"] = self.workitemIdentifier!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("actualTime") {
                self.actualTime = dict["actualTime"] as! Int64
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("gmtEnd") {
                self.gmtEnd = dict["gmtEnd"] as! Int64
            }
            if dict.keys.contains("gmtStart") {
                self.gmtStart = dict["gmtStart"] as! Int64
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("recordUser") {
                var model = CreateWorkitemRecordResponseBody.WorkitemTime.RecordUser()
                model.fromMap(dict["recordUser"] as! [String: Any])
                self.recordUser = model
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("workitemIdentifier") {
                self.workitemIdentifier = dict["workitemIdentifier"] as! String
            }
        }
    }
    public var workitemTime: CreateWorkitemRecordResponseBody.WorkitemTime?

    public var errorCode: String?

    public var errorMsg: String?

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
        try self.workitemTime?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.workitemTime != nil {
            map["WorkitemTime"] = self.workitemTime?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WorkitemTime") {
            var model = CreateWorkitemRecordResponseBody.WorkitemTime()
            model.fromMap(dict["WorkitemTime"] as! [String: Any])
            self.workitemTime = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateWorkitemRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkitemRecordResponseBody?

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
            var model = CreateWorkitemRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWorkspaceRequest : Tea.TeaModel {
    public var codeUrl: String?

    public var codeVersion: String?

    public var filePath: String?

    public var name: String?

    public var requestFrom: String?

    public var resourceIdentifier: String?

    public var reuse: Bool?

    public var workspaceTemplate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.codeUrl != nil {
            map["codeUrl"] = self.codeUrl!
        }
        if self.codeVersion != nil {
            map["codeVersion"] = self.codeVersion!
        }
        if self.filePath != nil {
            map["filePath"] = self.filePath!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestFrom != nil {
            map["requestFrom"] = self.requestFrom!
        }
        if self.resourceIdentifier != nil {
            map["resourceIdentifier"] = self.resourceIdentifier!
        }
        if self.reuse != nil {
            map["reuse"] = self.reuse!
        }
        if self.workspaceTemplate != nil {
            map["workspaceTemplate"] = self.workspaceTemplate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("codeUrl") {
            self.codeUrl = dict["codeUrl"] as! String
        }
        if dict.keys.contains("codeVersion") {
            self.codeVersion = dict["codeVersion"] as! String
        }
        if dict.keys.contains("filePath") {
            self.filePath = dict["filePath"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("requestFrom") {
            self.requestFrom = dict["requestFrom"] as! String
        }
        if dict.keys.contains("resourceIdentifier") {
            self.resourceIdentifier = dict["resourceIdentifier"] as! String
        }
        if dict.keys.contains("reuse") {
            self.reuse = dict["reuse"] as! Bool
        }
        if dict.keys.contains("workspaceTemplate") {
            self.workspaceTemplate = dict["workspaceTemplate"] as! String
        }
    }
}

public class CreateWorkspaceResponseBody : Tea.TeaModel {
    public class Workspace : Tea.TeaModel {
        public var createTime: String?

        public var creator: String?

        public var id: String?

        public var name: String?

        public var status: String?

        public var template: String?

        public override init() {
            super.init()
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
                map["createTime"] = self.createTime!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.template != nil {
                map["template"] = self.template!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("template") {
                self.template = dict["template"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var success: Bool?

    public var workspace: CreateWorkspaceResponseBody.Workspace?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.workspace?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("workspace") {
            var model = CreateWorkspaceResponseBody.Workspace()
            model.fromMap(dict["workspace"] as! [String: Any])
            self.workspace = model
        }
    }
}

public class CreateWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkspaceResponseBody?

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
            var model = CreateWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBranchRequest : Tea.TeaModel {
    public var accessToken: String?

    public var branchName: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.branchName != nil {
            map["branchName"] = self.branchName!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("branchName") {
            self.branchName = dict["branchName"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
    }
}

public class DeleteBranchResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var branchName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.branchName != nil {
                map["branchName"] = self.branchName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("branchName") {
                self.branchName = dict["branchName"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: DeleteBranchResponseBody.Result?

    public var success: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = DeleteBranchResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! String
        }
    }
}

public class DeleteBranchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBranchResponseBody?

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
            var model = DeleteBranchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFileRequest : Tea.TeaModel {
    public var accessToken: String?

    public var branchName: String?

    public var commitMessage: String?

    public var filePath: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.branchName != nil {
            map["branchName"] = self.branchName!
        }
        if self.commitMessage != nil {
            map["commitMessage"] = self.commitMessage!
        }
        if self.filePath != nil {
            map["filePath"] = self.filePath!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("branchName") {
            self.branchName = dict["branchName"] as! String
        }
        if dict.keys.contains("commitMessage") {
            self.commitMessage = dict["commitMessage"] as! String
        }
        if dict.keys.contains("filePath") {
            self.filePath = dict["filePath"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
    }
}

public class DeleteFileResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var branchName: String?

        public var filePath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.branchName != nil {
                map["branchName"] = self.branchName!
            }
            if self.filePath != nil {
                map["filePath"] = self.filePath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("branchName") {
                self.branchName = dict["branchName"] as! String
            }
            if dict.keys.contains("filePath") {
                self.filePath = dict["filePath"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: DeleteFileResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = DeleteFileResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeleteFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFileResponseBody?

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
            var model = DeleteFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFlowTagResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeleteFlowTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFlowTagResponseBody?

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
            var model = DeleteFlowTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFlowTagGroupResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeleteFlowTagGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFlowTagGroupResponseBody?

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
            var model = DeleteFlowTagGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteHostGroupResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeleteHostGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHostGroupResponseBody?

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
            var model = DeleteHostGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePipelineResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeletePipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePipelineResponseBody?

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
            var model = DeletePipelineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePipelineGroupResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeletePipelineGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePipelineGroupResponseBody?

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
            var model = DeletePipelineGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProjectRequest : Tea.TeaModel {
    public var identifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifier != nil {
            map["identifier"] = self.identifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("identifier") {
            self.identifier = dict["identifier"] as! String
        }
    }
}

public class DeleteProjectResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMsg: String?

    public var requestId: String?

    public var result: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! Bool
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

public class DeleteProtectedBranchRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
    }
}

public class DeleteProtectedBranchResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var result: Bool?

        public override init() {
            super.init()
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
                map["result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("result") {
                self.result = dict["result"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: DeleteProtectedBranchResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = DeleteProtectedBranchResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeleteProtectedBranchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProtectedBranchResponseBody?

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
            var model = DeleteProtectedBranchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRepositoryRequest : Tea.TeaModel {
    public var accessToken: String?

    public var reason: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.reason != nil {
            map["reason"] = self.reason!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("reason") {
            self.reason = dict["reason"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
    }
}

public class DeleteRepositoryResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var result: Bool?

        public override init() {
            super.init()
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
                map["result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("result") {
                self.result = dict["result"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: DeleteRepositoryResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = DeleteRepositoryResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeleteRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRepositoryResponseBody?

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
            var model = DeleteRepositoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteResourceMemberResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeleteResourceMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceMemberResponseBody?

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
            var model = DeleteResourceMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVariableGroupResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeleteVariableGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVariableGroupResponseBody?

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
            var model = DeleteVariableGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWorkitemAllCommentRequest : Tea.TeaModel {
    public var identifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifier != nil {
            map["identifier"] = self.identifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("identifier") {
            self.identifier = dict["identifier"] as! String
        }
    }
}

public class DeleteWorkitemAllCommentResponseBody : Tea.TeaModel {
    public var deleteFlag: Bool?

    public var errorCode: String?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.deleteFlag != nil {
            map["deleteFlag"] = self.deleteFlag!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deleteFlag") {
            self.deleteFlag = dict["deleteFlag"] as! Bool
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! String
        }
    }
}

public class DeleteWorkitemAllCommentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkitemAllCommentResponseBody?

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
            var model = DeleteWorkitemAllCommentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWorkitemCommentRequest : Tea.TeaModel {
    public var commentId: Int64?

    public var identifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commentId != nil {
            map["commentId"] = self.commentId!
        }
        if self.identifier != nil {
            map["identifier"] = self.identifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commentId") {
            self.commentId = dict["commentId"] as! Int64
        }
        if dict.keys.contains("identifier") {
            self.identifier = dict["identifier"] as! String
        }
    }
}

public class DeleteWorkitemCommentResponseBody : Tea.TeaModel {
    public var deleteFlag: Bool?

    public var errorCode: String?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.deleteFlag != nil {
            map["deleteFlag"] = self.deleteFlag!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deleteFlag") {
            self.deleteFlag = dict["deleteFlag"] as! Bool
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! String
        }
    }
}

public class DeleteWorkitemCommentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkitemCommentResponseBody?

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
            var model = DeleteWorkitemCommentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FrozenWorkspaceResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class FrozenWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FrozenWorkspaceResponseBody?

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
            var model = FrozenWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBranchInfoRequest : Tea.TeaModel {
    public var accessToken: String?

    public var branchName: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.branchName != nil {
            map["branchName"] = self.branchName!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("branchName") {
            self.branchName = dict["branchName"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
    }
}

public class GetBranchInfoResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Commit : Tea.TeaModel {
            public class Author : Tea.TeaModel {
                public var avatarUrl: String?

                public var email: String?

                public var externUid: String?

                public var id: Int64?

                public var name: String?

                public var state: String?

                public var tbUserId: String?

                public var username: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.avatarUrl != nil {
                        map["avatarUrl"] = self.avatarUrl!
                    }
                    if self.email != nil {
                        map["email"] = self.email!
                    }
                    if self.externUid != nil {
                        map["externUid"] = self.externUid!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.state != nil {
                        map["state"] = self.state!
                    }
                    if self.tbUserId != nil {
                        map["tbUserId"] = self.tbUserId!
                    }
                    if self.username != nil {
                        map["username"] = self.username!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("avatarUrl") {
                        self.avatarUrl = dict["avatarUrl"] as! String
                    }
                    if dict.keys.contains("email") {
                        self.email = dict["email"] as! String
                    }
                    if dict.keys.contains("externUid") {
                        self.externUid = dict["externUid"] as! String
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("state") {
                        self.state = dict["state"] as! String
                    }
                    if dict.keys.contains("tbUserId") {
                        self.tbUserId = dict["tbUserId"] as! String
                    }
                    if dict.keys.contains("username") {
                        self.username = dict["username"] as! String
                    }
                }
            }
            public class Committer : Tea.TeaModel {
                public var avatarUrl: String?

                public var email: String?

                public var externUid: String?

                public var id: Int64?

                public var name: String?

                public var state: String?

                public var tbUserId: String?

                public var username: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.avatarUrl != nil {
                        map["avatarUrl"] = self.avatarUrl!
                    }
                    if self.email != nil {
                        map["email"] = self.email!
                    }
                    if self.externUid != nil {
                        map["externUid"] = self.externUid!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.state != nil {
                        map["state"] = self.state!
                    }
                    if self.tbUserId != nil {
                        map["tbUserId"] = self.tbUserId!
                    }
                    if self.username != nil {
                        map["username"] = self.username!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("avatarUrl") {
                        self.avatarUrl = dict["avatarUrl"] as! String
                    }
                    if dict.keys.contains("email") {
                        self.email = dict["email"] as! String
                    }
                    if dict.keys.contains("externUid") {
                        self.externUid = dict["externUid"] as! String
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("state") {
                        self.state = dict["state"] as! String
                    }
                    if dict.keys.contains("tbUserId") {
                        self.tbUserId = dict["tbUserId"] as! String
                    }
                    if dict.keys.contains("username") {
                        self.username = dict["username"] as! String
                    }
                }
            }
            public class Signature : Tea.TeaModel {
                public var gpgKeyId: String?

                public var verificationStatus: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.gpgKeyId != nil {
                        map["gpgKeyId"] = self.gpgKeyId!
                    }
                    if self.verificationStatus != nil {
                        map["verificationStatus"] = self.verificationStatus!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("gpgKeyId") {
                        self.gpgKeyId = dict["gpgKeyId"] as! String
                    }
                    if dict.keys.contains("verificationStatus") {
                        self.verificationStatus = dict["verificationStatus"] as! String
                    }
                }
            }
            public var author: GetBranchInfoResponseBody.Result.Commit.Author?

            public var authorEmail: String?

            public var authorName: String?

            public var authoredDate: String?

            public var commentsCount: Int64?

            public var committedDate: String?

            public var committer: GetBranchInfoResponseBody.Result.Commit.Committer?

            public var committerEmail: String?

            public var committerName: String?

            public var createdAt: String?

            public var id: String?

            public var message: String?

            public var parentIds: [String]?

            public var shortId: String?

            public var signature: GetBranchInfoResponseBody.Result.Commit.Signature?

            public var title: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.author?.validate()
                try self.committer?.validate()
                try self.signature?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.author != nil {
                    map["author"] = self.author?.toMap()
                }
                if self.authorEmail != nil {
                    map["authorEmail"] = self.authorEmail!
                }
                if self.authorName != nil {
                    map["authorName"] = self.authorName!
                }
                if self.authoredDate != nil {
                    map["authoredDate"] = self.authoredDate!
                }
                if self.commentsCount != nil {
                    map["commentsCount"] = self.commentsCount!
                }
                if self.committedDate != nil {
                    map["committedDate"] = self.committedDate!
                }
                if self.committer != nil {
                    map["committer"] = self.committer?.toMap()
                }
                if self.committerEmail != nil {
                    map["committerEmail"] = self.committerEmail!
                }
                if self.committerName != nil {
                    map["committerName"] = self.committerName!
                }
                if self.createdAt != nil {
                    map["createdAt"] = self.createdAt!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.message != nil {
                    map["message"] = self.message!
                }
                if self.parentIds != nil {
                    map["parentIds"] = self.parentIds!
                }
                if self.shortId != nil {
                    map["shortId"] = self.shortId!
                }
                if self.signature != nil {
                    map["signature"] = self.signature?.toMap()
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("author") {
                    var model = GetBranchInfoResponseBody.Result.Commit.Author()
                    model.fromMap(dict["author"] as! [String: Any])
                    self.author = model
                }
                if dict.keys.contains("authorEmail") {
                    self.authorEmail = dict["authorEmail"] as! String
                }
                if dict.keys.contains("authorName") {
                    self.authorName = dict["authorName"] as! String
                }
                if dict.keys.contains("authoredDate") {
                    self.authoredDate = dict["authoredDate"] as! String
                }
                if dict.keys.contains("commentsCount") {
                    self.commentsCount = dict["commentsCount"] as! Int64
                }
                if dict.keys.contains("committedDate") {
                    self.committedDate = dict["committedDate"] as! String
                }
                if dict.keys.contains("committer") {
                    var model = GetBranchInfoResponseBody.Result.Commit.Committer()
                    model.fromMap(dict["committer"] as! [String: Any])
                    self.committer = model
                }
                if dict.keys.contains("committerEmail") {
                    self.committerEmail = dict["committerEmail"] as! String
                }
                if dict.keys.contains("committerName") {
                    self.committerName = dict["committerName"] as! String
                }
                if dict.keys.contains("createdAt") {
                    self.createdAt = dict["createdAt"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("message") {
                    self.message = dict["message"] as! String
                }
                if dict.keys.contains("parentIds") {
                    self.parentIds = dict["parentIds"] as! [String]
                }
                if dict.keys.contains("shortId") {
                    self.shortId = dict["shortId"] as! String
                }
                if dict.keys.contains("signature") {
                    var model = GetBranchInfoResponseBody.Result.Commit.Signature()
                    model.fromMap(dict["signature"] as! [String: Any])
                    self.signature = model
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
            }
        }
        public var commit: GetBranchInfoResponseBody.Result.Commit?

        public var name: String?

        public var protected: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.commit?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commit != nil {
                map["commit"] = self.commit?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.protected != nil {
                map["protected"] = self.protected!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("commit") {
                var model = GetBranchInfoResponseBody.Result.Commit()
                model.fromMap(dict["commit"] as! [String: Any])
                self.commit = model
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("protected") {
                self.protected = dict["protected"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: GetBranchInfoResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetBranchInfoResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetBranchInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBranchInfoResponseBody?

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
            var model = GetBranchInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCodeupOrganizationRequest : Tea.TeaModel {
    public var accessToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
    }
}

public class GetCodeupOrganizationResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createdAt: String?

        public var id: Int64?

        public var namespaceId: Int64?

        public var organizationId: String?

        public var path: String?

        public var updatedAt: String?

        public var userRole: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.userRole != nil {
                map["UserRole"] = self.userRole!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("NamespaceId") {
                self.namespaceId = dict["NamespaceId"] as! Int64
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
            if dict.keys.contains("UserRole") {
                self.userRole = dict["UserRole"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: GetCodeupOrganizationResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = GetCodeupOrganizationResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetCodeupOrganizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCodeupOrganizationResponseBody?

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
            var model = GetCodeupOrganizationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCustomFieldOptionRequest : Tea.TeaModel {
    public var spaceIdentifier: String?

    public var spaceType: String?

    public var workitemTypeIdentifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.spaceIdentifier != nil {
            map["spaceIdentifier"] = self.spaceIdentifier!
        }
        if self.spaceType != nil {
            map["spaceType"] = self.spaceType!
        }
        if self.workitemTypeIdentifier != nil {
            map["workitemTypeIdentifier"] = self.workitemTypeIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("spaceIdentifier") {
            self.spaceIdentifier = dict["spaceIdentifier"] as! String
        }
        if dict.keys.contains("spaceType") {
            self.spaceType = dict["spaceType"] as! String
        }
        if dict.keys.contains("workitemTypeIdentifier") {
            self.workitemTypeIdentifier = dict["workitemTypeIdentifier"] as! String
        }
    }
}

public class GetCustomFieldOptionResponseBody : Tea.TeaModel {
    public class Fileds : Tea.TeaModel {
        public var displayValue: String?

        public var fieldIdentifier: String?

        public var identifier: String?

        public var level: Int64?

        public var position: Int64?

        public var value: String?

        public var valueEn: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.displayValue != nil {
                map["displayValue"] = self.displayValue!
            }
            if self.fieldIdentifier != nil {
                map["fieldIdentifier"] = self.fieldIdentifier!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.level != nil {
                map["level"] = self.level!
            }
            if self.position != nil {
                map["position"] = self.position!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            if self.valueEn != nil {
                map["valueEn"] = self.valueEn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("displayValue") {
                self.displayValue = dict["displayValue"] as! String
            }
            if dict.keys.contains("fieldIdentifier") {
                self.fieldIdentifier = dict["fieldIdentifier"] as! String
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("level") {
                self.level = dict["level"] as! Int64
            }
            if dict.keys.contains("position") {
                self.position = dict["position"] as! Int64
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
            if dict.keys.contains("valueEn") {
                self.valueEn = dict["valueEn"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var fileds: [GetCustomFieldOptionResponseBody.Fileds]?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.fileds != nil {
            var tmp : [Any] = []
            for k in self.fileds! {
                tmp.append(k.toMap())
            }
            map["fileds"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("fileds") {
            self.fileds = dict["fileds"] as! [GetCustomFieldOptionResponseBody.Fileds]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetCustomFieldOptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomFieldOptionResponseBody?

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
            var model = GetCustomFieldOptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFileBlobsRequest : Tea.TeaModel {
    public var accessToken: String?

    public var filePath: String?

    public var from: Int64?

    public var organizationId: String?

    public var ref: String?

    public var to: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.filePath != nil {
            map["filePath"] = self.filePath!
        }
        if self.from != nil {
            map["from"] = self.from!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        if self.ref != nil {
            map["ref"] = self.ref!
        }
        if self.to != nil {
            map["to"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("filePath") {
            self.filePath = dict["filePath"] as! String
        }
        if dict.keys.contains("from") {
            self.from = dict["from"] as! Int64
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
        if dict.keys.contains("ref") {
            self.ref = dict["ref"] as! String
        }
        if dict.keys.contains("to") {
            self.to = dict["to"] as! Int64
        }
    }
}

public class GetFileBlobsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var content: String?

        public var totalLines: Int32?

        public override init() {
            super.init()
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
            if self.totalLines != nil {
                map["totalLines"] = self.totalLines!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("totalLines") {
                self.totalLines = dict["totalLines"] as! Int32
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: GetFileBlobsResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetFileBlobsResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetFileBlobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFileBlobsResponseBody?

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
            var model = GetFileBlobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFileLastCommitRequest : Tea.TeaModel {
    public var accessToken: String?

    public var filepath: String?

    public var organizationId: String?

    public var sha: String?

    public var showSignature: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.filepath != nil {
            map["filepath"] = self.filepath!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        if self.sha != nil {
            map["sha"] = self.sha!
        }
        if self.showSignature != nil {
            map["showSignature"] = self.showSignature!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("filepath") {
            self.filepath = dict["filepath"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
        if dict.keys.contains("sha") {
            self.sha = dict["sha"] as! String
        }
        if dict.keys.contains("showSignature") {
            self.showSignature = dict["showSignature"] as! Bool
        }
    }
}

public class GetFileLastCommitResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Signature : Tea.TeaModel {
            public var gpgKeyId: String?

            public var verificationStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.gpgKeyId != nil {
                    map["GpgKeyId"] = self.gpgKeyId!
                }
                if self.verificationStatus != nil {
                    map["VerificationStatus"] = self.verificationStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GpgKeyId") {
                    self.gpgKeyId = dict["GpgKeyId"] as! String
                }
                if dict.keys.contains("VerificationStatus") {
                    self.verificationStatus = dict["VerificationStatus"] as! String
                }
            }
        }
        public var authorDate: String?

        public var authorEmail: String?

        public var authorName: String?

        public var committedDate: String?

        public var committerEmail: String?

        public var committerName: String?

        public var createdAt: String?

        public var id: String?

        public var message: String?

        public var parentIds: [String]?

        public var shortId: String?

        public var signature: GetFileLastCommitResponseBody.Result.Signature?

        public var title: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.signature?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorDate != nil {
                map["AuthorDate"] = self.authorDate!
            }
            if self.authorEmail != nil {
                map["AuthorEmail"] = self.authorEmail!
            }
            if self.authorName != nil {
                map["AuthorName"] = self.authorName!
            }
            if self.committedDate != nil {
                map["CommittedDate"] = self.committedDate!
            }
            if self.committerEmail != nil {
                map["CommitterEmail"] = self.committerEmail!
            }
            if self.committerName != nil {
                map["CommitterName"] = self.committerName!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.parentIds != nil {
                map["ParentIds"] = self.parentIds!
            }
            if self.shortId != nil {
                map["ShortId"] = self.shortId!
            }
            if self.signature != nil {
                map["Signature"] = self.signature?.toMap()
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthorDate") {
                self.authorDate = dict["AuthorDate"] as! String
            }
            if dict.keys.contains("AuthorEmail") {
                self.authorEmail = dict["AuthorEmail"] as! String
            }
            if dict.keys.contains("AuthorName") {
                self.authorName = dict["AuthorName"] as! String
            }
            if dict.keys.contains("CommittedDate") {
                self.committedDate = dict["CommittedDate"] as! String
            }
            if dict.keys.contains("CommitterEmail") {
                self.committerEmail = dict["CommitterEmail"] as! String
            }
            if dict.keys.contains("CommitterName") {
                self.committerName = dict["CommitterName"] as! String
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("ParentIds") {
                self.parentIds = dict["ParentIds"] as! [String]
            }
            if dict.keys.contains("ShortId") {
                self.shortId = dict["ShortId"] as! String
            }
            if dict.keys.contains("Signature") {
                var model = GetFileLastCommitResponseBody.Result.Signature()
                model.fromMap(dict["Signature"] as! [String: Any])
                self.signature = model
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: GetFileLastCommitResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = GetFileLastCommitResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetFileLastCommitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFileLastCommitResponseBody?

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
            var model = GetFileLastCommitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFlowTagGroupResponseBody : Tea.TeaModel {
    public class FlowTagGroup : Tea.TeaModel {
        public class FlowTagList : Tea.TeaModel {
            public var color: String?

            public var creatorAccountId: String?

            public var id: Int64?

            public var modiferAccountId: String?

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
                if self.color != nil {
                    map["color"] = self.color!
                }
                if self.creatorAccountId != nil {
                    map["creatorAccountId"] = self.creatorAccountId!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.modiferAccountId != nil {
                    map["modiferAccountId"] = self.modiferAccountId!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("color") {
                    self.color = dict["color"] as! String
                }
                if dict.keys.contains("creatorAccountId") {
                    self.creatorAccountId = dict["creatorAccountId"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("modiferAccountId") {
                    self.modiferAccountId = dict["modiferAccountId"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
            }
        }
        public var creatorAccountId: String?

        public var flowTagList: [GetFlowTagGroupResponseBody.FlowTagGroup.FlowTagList]?

        public var id: Int64?

        public var modiferAccountId: String?

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
            if self.creatorAccountId != nil {
                map["creatorAccountId"] = self.creatorAccountId!
            }
            if self.flowTagList != nil {
                var tmp : [Any] = []
                for k in self.flowTagList! {
                    tmp.append(k.toMap())
                }
                map["flowTagList"] = tmp
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.modiferAccountId != nil {
                map["modiferAccountId"] = self.modiferAccountId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("creatorAccountId") {
                self.creatorAccountId = dict["creatorAccountId"] as! String
            }
            if dict.keys.contains("flowTagList") {
                self.flowTagList = dict["flowTagList"] as! [GetFlowTagGroupResponseBody.FlowTagGroup.FlowTagList]
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("modiferAccountId") {
                self.modiferAccountId = dict["modiferAccountId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var flowTagGroup: GetFlowTagGroupResponseBody.FlowTagGroup?

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
        try self.flowTagGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.flowTagGroup != nil {
            map["flowTagGroup"] = self.flowTagGroup?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("flowTagGroup") {
            var model = GetFlowTagGroupResponseBody.FlowTagGroup()
            model.fromMap(dict["flowTagGroup"] as! [String: Any])
            self.flowTagGroup = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetFlowTagGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFlowTagGroupResponseBody?

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
            var model = GetFlowTagGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHostGroupResponseBody : Tea.TeaModel {
    public class HostGroup : Tea.TeaModel {
        public class HostInfos : Tea.TeaModel {
            public var aliyunRegionId: String?

            public var createTime: Int64?

            public var creatorAccountId: String?

            public var instanceName: String?

            public var ip: String?

            public var machineSn: String?

            public var modifierAccountId: String?

            public var objectType: String?

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
                if self.aliyunRegionId != nil {
                    map["aliyunRegionId"] = self.aliyunRegionId!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.creatorAccountId != nil {
                    map["creatorAccountId"] = self.creatorAccountId!
                }
                if self.instanceName != nil {
                    map["instanceName"] = self.instanceName!
                }
                if self.ip != nil {
                    map["ip"] = self.ip!
                }
                if self.machineSn != nil {
                    map["machineSn"] = self.machineSn!
                }
                if self.modifierAccountId != nil {
                    map["modifierAccountId"] = self.modifierAccountId!
                }
                if self.objectType != nil {
                    map["objectType"] = self.objectType!
                }
                if self.updateTime != nil {
                    map["updateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("aliyunRegionId") {
                    self.aliyunRegionId = dict["aliyunRegionId"] as! String
                }
                if dict.keys.contains("createTime") {
                    self.createTime = dict["createTime"] as! Int64
                }
                if dict.keys.contains("creatorAccountId") {
                    self.creatorAccountId = dict["creatorAccountId"] as! String
                }
                if dict.keys.contains("instanceName") {
                    self.instanceName = dict["instanceName"] as! String
                }
                if dict.keys.contains("ip") {
                    self.ip = dict["ip"] as! String
                }
                if dict.keys.contains("machineSn") {
                    self.machineSn = dict["machineSn"] as! String
                }
                if dict.keys.contains("modifierAccountId") {
                    self.modifierAccountId = dict["modifierAccountId"] as! String
                }
                if dict.keys.contains("objectType") {
                    self.objectType = dict["objectType"] as! String
                }
                if dict.keys.contains("updateTime") {
                    self.updateTime = dict["updateTime"] as! Int64
                }
            }
        }
        public var aliyunRegion: String?

        public var createTime: Int64?

        public var creatorAccountId: String?

        public var description_: String?

        public var ecsLabelKey: String?

        public var ecsLabelValue: String?

        public var ecsType: String?

        public var hostInfos: [GetHostGroupResponseBody.HostGroup.HostInfos]?

        public var hostNum: Int64?

        public var id: Int64?

        public var modifierAccountId: String?

        public var name: String?

        public var serviceConnectionId: Int64?

        public var type: String?

        public var upateTIme: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunRegion != nil {
                map["aliyunRegion"] = self.aliyunRegion!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.creatorAccountId != nil {
                map["creatorAccountId"] = self.creatorAccountId!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.ecsLabelKey != nil {
                map["ecsLabelKey"] = self.ecsLabelKey!
            }
            if self.ecsLabelValue != nil {
                map["ecsLabelValue"] = self.ecsLabelValue!
            }
            if self.ecsType != nil {
                map["ecsType"] = self.ecsType!
            }
            if self.hostInfos != nil {
                var tmp : [Any] = []
                for k in self.hostInfos! {
                    tmp.append(k.toMap())
                }
                map["hostInfos"] = tmp
            }
            if self.hostNum != nil {
                map["hostNum"] = self.hostNum!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.modifierAccountId != nil {
                map["modifierAccountId"] = self.modifierAccountId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.serviceConnectionId != nil {
                map["serviceConnectionId"] = self.serviceConnectionId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.upateTIme != nil {
                map["upateTIme"] = self.upateTIme!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("aliyunRegion") {
                self.aliyunRegion = dict["aliyunRegion"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("creatorAccountId") {
                self.creatorAccountId = dict["creatorAccountId"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("ecsLabelKey") {
                self.ecsLabelKey = dict["ecsLabelKey"] as! String
            }
            if dict.keys.contains("ecsLabelValue") {
                self.ecsLabelValue = dict["ecsLabelValue"] as! String
            }
            if dict.keys.contains("ecsType") {
                self.ecsType = dict["ecsType"] as! String
            }
            if dict.keys.contains("hostInfos") {
                self.hostInfos = dict["hostInfos"] as! [GetHostGroupResponseBody.HostGroup.HostInfos]
            }
            if dict.keys.contains("hostNum") {
                self.hostNum = dict["hostNum"] as! Int64
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("modifierAccountId") {
                self.modifierAccountId = dict["modifierAccountId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("serviceConnectionId") {
                self.serviceConnectionId = dict["serviceConnectionId"] as! Int64
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("upateTIme") {
                self.upateTIme = dict["upateTIme"] as! Int64
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var hostGroup: GetHostGroupResponseBody.HostGroup?

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
        try self.hostGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.hostGroup != nil {
            map["hostGroup"] = self.hostGroup?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("hostGroup") {
            var model = GetHostGroupResponseBody.HostGroup()
            model.fromMap(dict["hostGroup"] as! [String: Any])
            self.hostGroup = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetHostGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHostGroupResponseBody?

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
            var model = GetHostGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOrganizationMemberResponseBody : Tea.TeaModel {
    public class Member : Tea.TeaModel {
        public class Identities : Tea.TeaModel {
            public var externUid: String?

            public var provider: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.externUid != nil {
                    map["externUid"] = self.externUid!
                }
                if self.provider != nil {
                    map["provider"] = self.provider!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("externUid") {
                    self.externUid = dict["externUid"] as! String
                }
                if dict.keys.contains("provider") {
                    self.provider = dict["provider"] as! String
                }
            }
        }
        public var accountId: String?

        public var birthday: Int64?

        public var deptLists: [String]?

        public var email: String?

        public var hiredDate: Int64?

        public var identities: GetOrganizationMemberResponseBody.Member.Identities?

        public var joinTime: Int64?

        public var lastVisitTime: Int64?

        public var mobile: String?

        public var organizationMemberName: String?

        public var organizationRoleId: String?

        public var organizationRoleName: String?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.identities?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            if self.birthday != nil {
                map["birthday"] = self.birthday!
            }
            if self.deptLists != nil {
                map["deptLists"] = self.deptLists!
            }
            if self.email != nil {
                map["email"] = self.email!
            }
            if self.hiredDate != nil {
                map["hiredDate"] = self.hiredDate!
            }
            if self.identities != nil {
                map["identities"] = self.identities?.toMap()
            }
            if self.joinTime != nil {
                map["joinTime"] = self.joinTime!
            }
            if self.lastVisitTime != nil {
                map["lastVisitTime"] = self.lastVisitTime!
            }
            if self.mobile != nil {
                map["mobile"] = self.mobile!
            }
            if self.organizationMemberName != nil {
                map["organizationMemberName"] = self.organizationMemberName!
            }
            if self.organizationRoleId != nil {
                map["organizationRoleId"] = self.organizationRoleId!
            }
            if self.organizationRoleName != nil {
                map["organizationRoleName"] = self.organizationRoleName!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") {
                self.accountId = dict["accountId"] as! String
            }
            if dict.keys.contains("birthday") {
                self.birthday = dict["birthday"] as! Int64
            }
            if dict.keys.contains("deptLists") {
                self.deptLists = dict["deptLists"] as! [String]
            }
            if dict.keys.contains("email") {
                self.email = dict["email"] as! String
            }
            if dict.keys.contains("hiredDate") {
                self.hiredDate = dict["hiredDate"] as! Int64
            }
            if dict.keys.contains("identities") {
                var model = GetOrganizationMemberResponseBody.Member.Identities()
                model.fromMap(dict["identities"] as! [String: Any])
                self.identities = model
            }
            if dict.keys.contains("joinTime") {
                self.joinTime = dict["joinTime"] as! Int64
            }
            if dict.keys.contains("lastVisitTime") {
                self.lastVisitTime = dict["lastVisitTime"] as! Int64
            }
            if dict.keys.contains("mobile") {
                self.mobile = dict["mobile"] as! String
            }
            if dict.keys.contains("organizationMemberName") {
                self.organizationMemberName = dict["organizationMemberName"] as! String
            }
            if dict.keys.contains("organizationRoleId") {
                self.organizationRoleId = dict["organizationRoleId"] as! String
            }
            if dict.keys.contains("organizationRoleName") {
                self.organizationRoleName = dict["organizationRoleName"] as! String
            }
            if dict.keys.contains("state") {
                self.state = dict["state"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var member: GetOrganizationMemberResponseBody.Member?

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
        try self.member?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.member != nil {
            map["member"] = self.member?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("member") {
            var model = GetOrganizationMemberResponseBody.Member()
            model.fromMap(dict["member"] as! [String: Any])
            self.member = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetOrganizationMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOrganizationMemberResponseBody?

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
            var model = GetOrganizationMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPipelineResponseBody : Tea.TeaModel {
    public class Pipeline : Tea.TeaModel {
        public class PipelineConfig : Tea.TeaModel {
            public class Sources : Tea.TeaModel {
                public class Data : Tea.TeaModel {
                    public var branch: String?

                    public var cloneDepth: Int64?

                    public var credentialId: Int64?

                    public var credentialLabel: String?

                    public var credentialType: String?

                    public var events: [String]?

                    public var isBranchMode: Bool?

                    public var isCloneDepth: Bool?

                    public var isSubmodule: Bool?

                    public var isTrigger: Bool?

                    public var label: String?

                    public var namespace: String?

                    public var repo: String?

                    public var serviceConnectionId: Int64?

                    public var triggerFilter: String?

                    public var webhook: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.branch != nil {
                            map["branch"] = self.branch!
                        }
                        if self.cloneDepth != nil {
                            map["cloneDepth"] = self.cloneDepth!
                        }
                        if self.credentialId != nil {
                            map["credentialId"] = self.credentialId!
                        }
                        if self.credentialLabel != nil {
                            map["credentialLabel"] = self.credentialLabel!
                        }
                        if self.credentialType != nil {
                            map["credentialType"] = self.credentialType!
                        }
                        if self.events != nil {
                            map["events"] = self.events!
                        }
                        if self.isBranchMode != nil {
                            map["isBranchMode"] = self.isBranchMode!
                        }
                        if self.isCloneDepth != nil {
                            map["isCloneDepth"] = self.isCloneDepth!
                        }
                        if self.isSubmodule != nil {
                            map["isSubmodule"] = self.isSubmodule!
                        }
                        if self.isTrigger != nil {
                            map["isTrigger"] = self.isTrigger!
                        }
                        if self.label != nil {
                            map["label"] = self.label!
                        }
                        if self.namespace != nil {
                            map["namespace"] = self.namespace!
                        }
                        if self.repo != nil {
                            map["repo"] = self.repo!
                        }
                        if self.serviceConnectionId != nil {
                            map["serviceConnectionId"] = self.serviceConnectionId!
                        }
                        if self.triggerFilter != nil {
                            map["triggerFilter"] = self.triggerFilter!
                        }
                        if self.webhook != nil {
                            map["webhook"] = self.webhook!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("branch") {
                            self.branch = dict["branch"] as! String
                        }
                        if dict.keys.contains("cloneDepth") {
                            self.cloneDepth = dict["cloneDepth"] as! Int64
                        }
                        if dict.keys.contains("credentialId") {
                            self.credentialId = dict["credentialId"] as! Int64
                        }
                        if dict.keys.contains("credentialLabel") {
                            self.credentialLabel = dict["credentialLabel"] as! String
                        }
                        if dict.keys.contains("credentialType") {
                            self.credentialType = dict["credentialType"] as! String
                        }
                        if dict.keys.contains("events") {
                            self.events = dict["events"] as! [String]
                        }
                        if dict.keys.contains("isBranchMode") {
                            self.isBranchMode = dict["isBranchMode"] as! Bool
                        }
                        if dict.keys.contains("isCloneDepth") {
                            self.isCloneDepth = dict["isCloneDepth"] as! Bool
                        }
                        if dict.keys.contains("isSubmodule") {
                            self.isSubmodule = dict["isSubmodule"] as! Bool
                        }
                        if dict.keys.contains("isTrigger") {
                            self.isTrigger = dict["isTrigger"] as! Bool
                        }
                        if dict.keys.contains("label") {
                            self.label = dict["label"] as! String
                        }
                        if dict.keys.contains("namespace") {
                            self.namespace = dict["namespace"] as! String
                        }
                        if dict.keys.contains("repo") {
                            self.repo = dict["repo"] as! String
                        }
                        if dict.keys.contains("serviceConnectionId") {
                            self.serviceConnectionId = dict["serviceConnectionId"] as! Int64
                        }
                        if dict.keys.contains("triggerFilter") {
                            self.triggerFilter = dict["triggerFilter"] as! String
                        }
                        if dict.keys.contains("webhook") {
                            self.webhook = dict["webhook"] as! String
                        }
                    }
                }
                public var data: GetPipelineResponseBody.Pipeline.PipelineConfig.Sources.Data?

                public var sign: String?

                public var type: String?

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
                        map["data"] = self.data?.toMap()
                    }
                    if self.sign != nil {
                        map["sign"] = self.sign!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("data") {
                        var model = GetPipelineResponseBody.Pipeline.PipelineConfig.Sources.Data()
                        model.fromMap(dict["data"] as! [String: Any])
                        self.data = model
                    }
                    if dict.keys.contains("sign") {
                        self.sign = dict["sign"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public var flow: String?

            public var settings: String?

            public var sources: [GetPipelineResponseBody.Pipeline.PipelineConfig.Sources]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.flow != nil {
                    map["flow"] = self.flow!
                }
                if self.settings != nil {
                    map["settings"] = self.settings!
                }
                if self.sources != nil {
                    var tmp : [Any] = []
                    for k in self.sources! {
                        tmp.append(k.toMap())
                    }
                    map["sources"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("flow") {
                    self.flow = dict["flow"] as! String
                }
                if dict.keys.contains("settings") {
                    self.settings = dict["settings"] as! String
                }
                if dict.keys.contains("sources") {
                    self.sources = dict["sources"] as! [GetPipelineResponseBody.Pipeline.PipelineConfig.Sources]
                }
            }
        }
        public class TagList : Tea.TeaModel {
            public var id: Int64?

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
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
            }
        }
        public var createTime: Int64?

        public var creatorAccountId: String?

        public var envId: Int32?

        public var envName: String?

        public var groupId: Int64?

        public var modifierAccountId: String?

        public var name: String?

        public var pipelineConfig: GetPipelineResponseBody.Pipeline.PipelineConfig?

        public var tagList: [GetPipelineResponseBody.Pipeline.TagList]?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pipelineConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.creatorAccountId != nil {
                map["creatorAccountId"] = self.creatorAccountId!
            }
            if self.envId != nil {
                map["envId"] = self.envId!
            }
            if self.envName != nil {
                map["envName"] = self.envName!
            }
            if self.groupId != nil {
                map["groupId"] = self.groupId!
            }
            if self.modifierAccountId != nil {
                map["modifierAccountId"] = self.modifierAccountId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.pipelineConfig != nil {
                map["pipelineConfig"] = self.pipelineConfig?.toMap()
            }
            if self.tagList != nil {
                var tmp : [Any] = []
                for k in self.tagList! {
                    tmp.append(k.toMap())
                }
                map["tagList"] = tmp
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("creatorAccountId") {
                self.creatorAccountId = dict["creatorAccountId"] as! String
            }
            if dict.keys.contains("envId") {
                self.envId = dict["envId"] as! Int32
            }
            if dict.keys.contains("envName") {
                self.envName = dict["envName"] as! String
            }
            if dict.keys.contains("groupId") {
                self.groupId = dict["groupId"] as! Int64
            }
            if dict.keys.contains("modifierAccountId") {
                self.modifierAccountId = dict["modifierAccountId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("pipelineConfig") {
                var model = GetPipelineResponseBody.Pipeline.PipelineConfig()
                model.fromMap(dict["pipelineConfig"] as! [String: Any])
                self.pipelineConfig = model
            }
            if dict.keys.contains("tagList") {
                self.tagList = dict["tagList"] as! [GetPipelineResponseBody.Pipeline.TagList]
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! Int64
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var pipeline: GetPipelineResponseBody.Pipeline?

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
        try self.pipeline?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.pipeline != nil {
            map["pipeline"] = self.pipeline?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("pipeline") {
            var model = GetPipelineResponseBody.Pipeline()
            model.fromMap(dict["pipeline"] as! [String: Any])
            self.pipeline = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetPipelineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPipelineResponseBody?

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
            var model = GetPipelineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPipelineArtifactUrlRequest : Tea.TeaModel {
    public var fileName: String?

    public var filePath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.filePath != nil {
            map["filePath"] = self.filePath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("filePath") {
            self.filePath = dict["filePath"] as! String
        }
    }
}

public class GetPipelineArtifactUrlResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var fileUrl: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.fileUrl != nil {
            map["fileUrl"] = self.fileUrl!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("fileUrl") {
            self.fileUrl = dict["fileUrl"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetPipelineArtifactUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPipelineArtifactUrlResponseBody?

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
            var model = GetPipelineArtifactUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPipelineEmasArtifactUrlRequest : Tea.TeaModel {
    public var serviceConnectionId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceConnectionId != nil {
            map["serviceConnectionId"] = self.serviceConnectionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("serviceConnectionId") {
            self.serviceConnectionId = dict["serviceConnectionId"] as! Int64
        }
    }
}

public class GetPipelineEmasArtifactUrlResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var fileUrl: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.fileUrl != nil {
            map["fileUrl"] = self.fileUrl!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("fileUrl") {
            self.fileUrl = dict["fileUrl"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetPipelineEmasArtifactUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPipelineEmasArtifactUrlResponseBody?

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
            var model = GetPipelineEmasArtifactUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPipelineGroupResponseBody : Tea.TeaModel {
    public class PipelineGroup : Tea.TeaModel {
        public var createTime: Int64?

        public var id: Int64?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var pipelineGroup: GetPipelineGroupResponseBody.PipelineGroup?

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
        try self.pipelineGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.pipelineGroup != nil {
            map["pipelineGroup"] = self.pipelineGroup?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("pipelineGroup") {
            var model = GetPipelineGroupResponseBody.PipelineGroup()
            model.fromMap(dict["pipelineGroup"] as! [String: Any])
            self.pipelineGroup = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetPipelineGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPipelineGroupResponseBody?

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
            var model = GetPipelineGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPipelineRunResponseBody : Tea.TeaModel {
    public class PipelineRun : Tea.TeaModel {
        public class Sources : Tea.TeaModel {
            public class Data : Tea.TeaModel {
                public var branch: String?

                public var commint: String?

                public var repo: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.branch != nil {
                        map["branch"] = self.branch!
                    }
                    if self.commint != nil {
                        map["commint"] = self.commint!
                    }
                    if self.repo != nil {
                        map["repo"] = self.repo!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("branch") {
                        self.branch = dict["branch"] as! String
                    }
                    if dict.keys.contains("commint") {
                        self.commint = dict["commint"] as! String
                    }
                    if dict.keys.contains("repo") {
                        self.repo = dict["repo"] as! String
                    }
                }
            }
            public var data: GetPipelineRunResponseBody.PipelineRun.Sources.Data?

            public var sign: String?

            public var type: String?

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
                    map["data"] = self.data?.toMap()
                }
                if self.sign != nil {
                    map["sign"] = self.sign!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("data") {
                    var model = GetPipelineRunResponseBody.PipelineRun.Sources.Data()
                    model.fromMap(dict["data"] as! [String: Any])
                    self.data = model
                }
                if dict.keys.contains("sign") {
                    self.sign = dict["sign"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class Stages : Tea.TeaModel {
            public class StageInfo : Tea.TeaModel {
                public class Jobs : Tea.TeaModel {
                    public class Actions : Tea.TeaModel {
                        public var disable: Bool?

                        public var params: [String: Any]?

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
                            if self.disable != nil {
                                map["disable"] = self.disable!
                            }
                            if self.params != nil {
                                map["params"] = self.params!
                            }
                            if self.type != nil {
                                map["type"] = self.type!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("disable") {
                                self.disable = dict["disable"] as! Bool
                            }
                            if dict.keys.contains("params") {
                                self.params = dict["params"] as! [String: Any]
                            }
                            if dict.keys.contains("type") {
                                self.type = dict["type"] as! String
                            }
                        }
                    }
                    public var actions: [GetPipelineRunResponseBody.PipelineRun.Stages.StageInfo.Jobs.Actions]?

                    public var endTime: Int64?

                    public var id: Int64?

                    public var name: String?

                    public var params: String?

                    public var startTime: Int64?

                    public var status: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.actions != nil {
                            var tmp : [Any] = []
                            for k in self.actions! {
                                tmp.append(k.toMap())
                            }
                            map["actions"] = tmp
                        }
                        if self.endTime != nil {
                            map["endTime"] = self.endTime!
                        }
                        if self.id != nil {
                            map["id"] = self.id!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.params != nil {
                            map["params"] = self.params!
                        }
                        if self.startTime != nil {
                            map["startTime"] = self.startTime!
                        }
                        if self.status != nil {
                            map["status"] = self.status!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("actions") {
                            self.actions = dict["actions"] as! [GetPipelineRunResponseBody.PipelineRun.Stages.StageInfo.Jobs.Actions]
                        }
                        if dict.keys.contains("endTime") {
                            self.endTime = dict["endTime"] as! Int64
                        }
                        if dict.keys.contains("id") {
                            self.id = dict["id"] as! Int64
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("params") {
                            self.params = dict["params"] as! String
                        }
                        if dict.keys.contains("startTime") {
                            self.startTime = dict["startTime"] as! Int64
                        }
                        if dict.keys.contains("status") {
                            self.status = dict["status"] as! String
                        }
                    }
                }
                public var endTime: Int64?

                public var jobs: [GetPipelineRunResponseBody.PipelineRun.Stages.StageInfo.Jobs]?

                public var name: String?

                public var startTime: Int64?

                public var status: String?

                public override init() {
                    super.init()
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
                        map["endTime"] = self.endTime!
                    }
                    if self.jobs != nil {
                        var tmp : [Any] = []
                        for k in self.jobs! {
                            tmp.append(k.toMap())
                        }
                        map["jobs"] = tmp
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.startTime != nil {
                        map["startTime"] = self.startTime!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("endTime") {
                        self.endTime = dict["endTime"] as! Int64
                    }
                    if dict.keys.contains("jobs") {
                        self.jobs = dict["jobs"] as! [GetPipelineRunResponseBody.PipelineRun.Stages.StageInfo.Jobs]
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("startTime") {
                        self.startTime = dict["startTime"] as! Int64
                    }
                    if dict.keys.contains("status") {
                        self.status = dict["status"] as! String
                    }
                }
            }
            public var name: String?

            public var stageInfo: GetPipelineRunResponseBody.PipelineRun.Stages.StageInfo?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.stageInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.stageInfo != nil {
                    map["stageInfo"] = self.stageInfo?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("stageInfo") {
                    var model = GetPipelineRunResponseBody.PipelineRun.Stages.StageInfo()
                    model.fromMap(dict["stageInfo"] as! [String: Any])
                    self.stageInfo = model
                }
            }
        }
        public var createTime: Int64?

        public var creatorAccountId: String?

        public var modifierAccountId: String?

        public var pipelineId: Int64?

        public var pipelineRunId: Int64?

        public var sources: [GetPipelineRunResponseBody.PipelineRun.Sources]?

        public var stageGroup: [[String]]?

        public var stages: [GetPipelineRunResponseBody.PipelineRun.Stages]?

        public var status: String?

        public var triggerMode: Int32?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.creatorAccountId != nil {
                map["creatorAccountId"] = self.creatorAccountId!
            }
            if self.modifierAccountId != nil {
                map["modifierAccountId"] = self.modifierAccountId!
            }
            if self.pipelineId != nil {
                map["pipelineId"] = self.pipelineId!
            }
            if self.pipelineRunId != nil {
                map["pipelineRunId"] = self.pipelineRunId!
            }
            if self.sources != nil {
                var tmp : [Any] = []
                for k in self.sources! {
                    tmp.append(k.toMap())
                }
                map["sources"] = tmp
            }
            if self.stageGroup != nil {
                map["stageGroup"] = self.stageGroup!
            }
            if self.stages != nil {
                var tmp : [Any] = []
                for k in self.stages! {
                    tmp.append(k.toMap())
                }
                map["stages"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.triggerMode != nil {
                map["triggerMode"] = self.triggerMode!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("creatorAccountId") {
                self.creatorAccountId = dict["creatorAccountId"] as! String
            }
            if dict.keys.contains("modifierAccountId") {
                self.modifierAccountId = dict["modifierAccountId"] as! String
            }
            if dict.keys.contains("pipelineId") {
                self.pipelineId = dict["pipelineId"] as! Int64
            }
            if dict.keys.contains("pipelineRunId") {
                self.pipelineRunId = dict["pipelineRunId"] as! Int64
            }
            if dict.keys.contains("sources") {
                self.sources = dict["sources"] as! [GetPipelineRunResponseBody.PipelineRun.Sources]
            }
            if dict.keys.contains("stageGroup") {
                self.stageGroup = dict["stageGroup"] as! [[String]]
            }
            if dict.keys.contains("stages") {
                self.stages = dict["stages"] as! [GetPipelineRunResponseBody.PipelineRun.Stages]
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("triggerMode") {
                self.triggerMode = dict["triggerMode"] as! Int32
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! Int64
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var pipelineRun: GetPipelineRunResponseBody.PipelineRun?

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
        try self.pipelineRun?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.pipelineRun != nil {
            map["pipelineRun"] = self.pipelineRun?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("pipelineRun") {
            var model = GetPipelineRunResponseBody.PipelineRun()
            model.fromMap(dict["pipelineRun"] as! [String: Any])
            self.pipelineRun = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetPipelineRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPipelineRunResponseBody?

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
            var model = GetPipelineRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPipelineScanReportUrlRequest : Tea.TeaModel {
    public var reportPath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.reportPath != nil {
            map["reportPath"] = self.reportPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("reportPath") {
            self.reportPath = dict["reportPath"] as! String
        }
    }
}

public class GetPipelineScanReportUrlResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var reportUrl: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.reportUrl != nil {
            map["reportUrl"] = self.reportUrl!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("reportUrl") {
            self.reportUrl = dict["reportUrl"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetPipelineScanReportUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPipelineScanReportUrlResponseBody?

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
            var model = GetPipelineScanReportUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectInfoResponseBody : Tea.TeaModel {
    public class Project : Tea.TeaModel {
        public var category: String?

        public var categoryIdentifier: String?

        public var creator: String?

        public var customCode: String?

        public var description_: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var icon: String?

        public var iconBig: String?

        public var iconGroup: String?

        public var iconSmall: String?

        public var id: String?

        public var identifier: String?

        public var identifierPath: String?

        public var logicalStatus: String?

        public var modifier: String?

        public var name: String?

        public var organizationIdentifier: String?

        public var parentIdentifier: String?

        public var scope: String?

        public var statusIdentifier: String?

        public var statusStageIdentifier: String?

        public var subType: String?

        public var typeIdentifier: String?

        public override init() {
            super.init()
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
                map["category"] = self.category!
            }
            if self.categoryIdentifier != nil {
                map["categoryIdentifier"] = self.categoryIdentifier!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.customCode != nil {
                map["customCode"] = self.customCode!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.icon != nil {
                map["icon"] = self.icon!
            }
            if self.iconBig != nil {
                map["iconBig"] = self.iconBig!
            }
            if self.iconGroup != nil {
                map["iconGroup"] = self.iconGroup!
            }
            if self.iconSmall != nil {
                map["iconSmall"] = self.iconSmall!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.identifierPath != nil {
                map["identifierPath"] = self.identifierPath!
            }
            if self.logicalStatus != nil {
                map["logicalStatus"] = self.logicalStatus!
            }
            if self.modifier != nil {
                map["modifier"] = self.modifier!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.organizationIdentifier != nil {
                map["organizationIdentifier"] = self.organizationIdentifier!
            }
            if self.parentIdentifier != nil {
                map["parentIdentifier"] = self.parentIdentifier!
            }
            if self.scope != nil {
                map["scope"] = self.scope!
            }
            if self.statusIdentifier != nil {
                map["statusIdentifier"] = self.statusIdentifier!
            }
            if self.statusStageIdentifier != nil {
                map["statusStageIdentifier"] = self.statusStageIdentifier!
            }
            if self.subType != nil {
                map["subType"] = self.subType!
            }
            if self.typeIdentifier != nil {
                map["typeIdentifier"] = self.typeIdentifier!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("category") {
                self.category = dict["category"] as! String
            }
            if dict.keys.contains("categoryIdentifier") {
                self.categoryIdentifier = dict["categoryIdentifier"] as! String
            }
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("customCode") {
                self.customCode = dict["customCode"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! Int64
            }
            if dict.keys.contains("icon") {
                self.icon = dict["icon"] as! String
            }
            if dict.keys.contains("iconBig") {
                self.iconBig = dict["iconBig"] as! String
            }
            if dict.keys.contains("iconGroup") {
                self.iconGroup = dict["iconGroup"] as! String
            }
            if dict.keys.contains("iconSmall") {
                self.iconSmall = dict["iconSmall"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("identifierPath") {
                self.identifierPath = dict["identifierPath"] as! String
            }
            if dict.keys.contains("logicalStatus") {
                self.logicalStatus = dict["logicalStatus"] as! String
            }
            if dict.keys.contains("modifier") {
                self.modifier = dict["modifier"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("organizationIdentifier") {
                self.organizationIdentifier = dict["organizationIdentifier"] as! String
            }
            if dict.keys.contains("parentIdentifier") {
                self.parentIdentifier = dict["parentIdentifier"] as! String
            }
            if dict.keys.contains("scope") {
                self.scope = dict["scope"] as! String
            }
            if dict.keys.contains("statusIdentifier") {
                self.statusIdentifier = dict["statusIdentifier"] as! String
            }
            if dict.keys.contains("statusStageIdentifier") {
                self.statusStageIdentifier = dict["statusStageIdentifier"] as! String
            }
            if dict.keys.contains("subType") {
                self.subType = dict["subType"] as! String
            }
            if dict.keys.contains("typeIdentifier") {
                self.typeIdentifier = dict["typeIdentifier"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var project: GetProjectInfoResponseBody.Project?

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
        try self.project?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.project != nil {
            map["project"] = self.project?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("project") {
            var model = GetProjectInfoResponseBody.Project()
            model.fromMap(dict["project"] as! [String: Any])
            self.project = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetProjectInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectInfoResponseBody?

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
            var model = GetProjectInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectMemberRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var repositoryId: Int64?

    public var userAliyunPk: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.repositoryId != nil {
            map["repositoryId"] = self.repositoryId!
        }
        if self.userAliyunPk != nil {
            map["userAliyunPk"] = self.userAliyunPk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("repositoryId") {
            self.repositoryId = dict["repositoryId"] as! Int64
        }
        if dict.keys.contains("userAliyunPk") {
            self.userAliyunPk = dict["userAliyunPk"] as! String
        }
    }
}

public class GetProjectMemberResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accessLevel: Int32?

        public var avatarUrl: String?

        public var externUserId: String?

        public var id: Int64?

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
            if self.accessLevel != nil {
                map["accessLevel"] = self.accessLevel!
            }
            if self.avatarUrl != nil {
                map["avatarUrl"] = self.avatarUrl!
            }
            if self.externUserId != nil {
                map["externUserId"] = self.externUserId!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accessLevel") {
                self.accessLevel = dict["accessLevel"] as! Int32
            }
            if dict.keys.contains("avatarUrl") {
                self.avatarUrl = dict["avatarUrl"] as! String
            }
            if dict.keys.contains("externUserId") {
                self.externUserId = dict["externUserId"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: GetProjectMemberResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = GetProjectMemberResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetProjectMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectMemberResponseBody?

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
            var model = GetProjectMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRepositoryRequest : Tea.TeaModel {
    public var accessToken: String?

    public var identity: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.identity != nil {
            map["identity"] = self.identity!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("identity") {
            self.identity = dict["identity"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
    }
}

public class GetRepositoryResponseBody : Tea.TeaModel {
    public class Repository : Tea.TeaModel {
        public class Namespace : Tea.TeaModel {
            public var avatar: String?

            public var createdAt: String?

            public var description_: String?

            public var id: Int64?

            public var name: String?

            public var ownerId: Int64?

            public var path: String?

            public var updatedAt: String?

            public var visibilityLevel: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avatar != nil {
                    map["avatar"] = self.avatar!
                }
                if self.createdAt != nil {
                    map["createdAt"] = self.createdAt!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.ownerId != nil {
                    map["ownerId"] = self.ownerId!
                }
                if self.path != nil {
                    map["path"] = self.path!
                }
                if self.updatedAt != nil {
                    map["updatedAt"] = self.updatedAt!
                }
                if self.visibilityLevel != nil {
                    map["visibilityLevel"] = self.visibilityLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("avatar") {
                    self.avatar = dict["avatar"] as! String
                }
                if dict.keys.contains("createdAt") {
                    self.createdAt = dict["createdAt"] as! String
                }
                if dict.keys.contains("description") {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("ownerId") {
                    self.ownerId = dict["ownerId"] as! Int64
                }
                if dict.keys.contains("path") {
                    self.path = dict["path"] as! String
                }
                if dict.keys.contains("updatedAt") {
                    self.updatedAt = dict["updatedAt"] as! String
                }
                if dict.keys.contains("visibilityLevel") {
                    self.visibilityLevel = dict["visibilityLevel"] as! Int32
                }
            }
        }
        public var archive: Bool?

        public var avatarUrl: String?

        public var createdAt: String?

        public var creatorId: Int64?

        public var defaultBranch: String?

        public var demoProjectStatus: Bool?

        public var description_: String?

        public var httpUrlToRepository: String?

        public var id: Int64?

        public var lastActivityAt: String?

        public var name: String?

        public var nameWithNamespace: String?

        public var namespace: GetRepositoryResponseBody.Repository.Namespace?

        public var path: String?

        public var pathWithNamespace: String?

        public var sshUrlToRepository: String?

        public var visibilityLevel: Int32?

        public var webUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.namespace?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.archive != nil {
                map["archive"] = self.archive!
            }
            if self.avatarUrl != nil {
                map["avatarUrl"] = self.avatarUrl!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.creatorId != nil {
                map["creatorId"] = self.creatorId!
            }
            if self.defaultBranch != nil {
                map["defaultBranch"] = self.defaultBranch!
            }
            if self.demoProjectStatus != nil {
                map["demoProjectStatus"] = self.demoProjectStatus!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.httpUrlToRepository != nil {
                map["httpUrlToRepository"] = self.httpUrlToRepository!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.lastActivityAt != nil {
                map["lastActivityAt"] = self.lastActivityAt!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.nameWithNamespace != nil {
                map["nameWithNamespace"] = self.nameWithNamespace!
            }
            if self.namespace != nil {
                map["namespace"] = self.namespace?.toMap()
            }
            if self.path != nil {
                map["path"] = self.path!
            }
            if self.pathWithNamespace != nil {
                map["pathWithNamespace"] = self.pathWithNamespace!
            }
            if self.sshUrlToRepository != nil {
                map["sshUrlToRepository"] = self.sshUrlToRepository!
            }
            if self.visibilityLevel != nil {
                map["visibilityLevel"] = self.visibilityLevel!
            }
            if self.webUrl != nil {
                map["webUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("archive") {
                self.archive = dict["archive"] as! Bool
            }
            if dict.keys.contains("avatarUrl") {
                self.avatarUrl = dict["avatarUrl"] as! String
            }
            if dict.keys.contains("createdAt") {
                self.createdAt = dict["createdAt"] as! String
            }
            if dict.keys.contains("creatorId") {
                self.creatorId = dict["creatorId"] as! Int64
            }
            if dict.keys.contains("defaultBranch") {
                self.defaultBranch = dict["defaultBranch"] as! String
            }
            if dict.keys.contains("demoProjectStatus") {
                self.demoProjectStatus = dict["demoProjectStatus"] as! Bool
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("httpUrlToRepository") {
                self.httpUrlToRepository = dict["httpUrlToRepository"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("lastActivityAt") {
                self.lastActivityAt = dict["lastActivityAt"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("nameWithNamespace") {
                self.nameWithNamespace = dict["nameWithNamespace"] as! String
            }
            if dict.keys.contains("namespace") {
                var model = GetRepositoryResponseBody.Repository.Namespace()
                model.fromMap(dict["namespace"] as! [String: Any])
                self.namespace = model
            }
            if dict.keys.contains("path") {
                self.path = dict["path"] as! String
            }
            if dict.keys.contains("pathWithNamespace") {
                self.pathWithNamespace = dict["pathWithNamespace"] as! String
            }
            if dict.keys.contains("sshUrlToRepository") {
                self.sshUrlToRepository = dict["sshUrlToRepository"] as! String
            }
            if dict.keys.contains("visibilityLevel") {
                self.visibilityLevel = dict["visibilityLevel"] as! Int32
            }
            if dict.keys.contains("webUrl") {
                self.webUrl = dict["webUrl"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var repository: GetRepositoryResponseBody.Repository?

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
        try self.repository?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.repository != nil {
            map["repository"] = self.repository?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("repository") {
            var model = GetRepositoryResponseBody.Repository()
            model.fromMap(dict["repository"] as! [String: Any])
            self.repository = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRepositoryResponseBody?

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
            var model = GetRepositoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSprintInfoResponseBody : Tea.TeaModel {
    public class Sprint : Tea.TeaModel {
        public var creator: String?

        public var description_: String?

        public var endDate: Int64?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var identifier: String?

        public var modifier: String?

        public var name: String?

        public var scope: String?

        public var spaceIdentifier: String?

        public var startDate: Int64?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.endDate != nil {
                map["endDate"] = self.endDate!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.modifier != nil {
                map["modifier"] = self.modifier!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.scope != nil {
                map["scope"] = self.scope!
            }
            if self.spaceIdentifier != nil {
                map["spaceIdentifier"] = self.spaceIdentifier!
            }
            if self.startDate != nil {
                map["startDate"] = self.startDate!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("endDate") {
                self.endDate = dict["endDate"] as! Int64
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! Int64
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("modifier") {
                self.modifier = dict["modifier"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("scope") {
                self.scope = dict["scope"] as! String
            }
            if dict.keys.contains("spaceIdentifier") {
                self.spaceIdentifier = dict["spaceIdentifier"] as! String
            }
            if dict.keys.contains("startDate") {
                self.startDate = dict["startDate"] as! Int64
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var sprint: GetSprintInfoResponseBody.Sprint?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sprint?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sprint != nil {
            map["sprint"] = self.sprint?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("sprint") {
            var model = GetSprintInfoResponseBody.Sprint()
            model.fromMap(dict["sprint"] as! [String: Any])
            self.sprint = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetSprintInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSprintInfoResponseBody?

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
            var model = GetSprintInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetVMDeployOrderResponseBody : Tea.TeaModel {
    public class DeployOrder : Tea.TeaModel {
        public class Actions : Tea.TeaModel {
            public var disable: Bool?

            public var params: Any?

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
                if self.disable != nil {
                    map["disable"] = self.disable!
                }
                if self.params != nil {
                    map["params"] = self.params!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("disable") {
                    self.disable = dict["disable"] as! Bool
                }
                if dict.keys.contains("params") {
                    self.params = dict["params"] as! Any
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class DeployMachineInfo : Tea.TeaModel {
            public class DeployMachines : Tea.TeaModel {
                public class Actions : Tea.TeaModel {
                    public var disable: Bool?

                    public var params: Any?

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
                        if self.disable != nil {
                            map["disable"] = self.disable!
                        }
                        if self.params != nil {
                            map["params"] = self.params!
                        }
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("disable") {
                            self.disable = dict["disable"] as! Bool
                        }
                        if dict.keys.contains("params") {
                            self.params = dict["params"] as! Any
                        }
                        if dict.keys.contains("type") {
                            self.type = dict["type"] as! String
                        }
                    }
                }
                public var actions: [GetVMDeployOrderResponseBody.DeployOrder.DeployMachineInfo.DeployMachines.Actions]?

                public var batchNum: Int32?

                public var clientStatus: String?

                public var createTime: Int64?

                public var ip: String?

                public var machineSn: String?

                public var status: String?

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
                    if self.actions != nil {
                        var tmp : [Any] = []
                        for k in self.actions! {
                            tmp.append(k.toMap())
                        }
                        map["actions"] = tmp
                    }
                    if self.batchNum != nil {
                        map["batchNum"] = self.batchNum!
                    }
                    if self.clientStatus != nil {
                        map["clientStatus"] = self.clientStatus!
                    }
                    if self.createTime != nil {
                        map["createTime"] = self.createTime!
                    }
                    if self.ip != nil {
                        map["ip"] = self.ip!
                    }
                    if self.machineSn != nil {
                        map["machineSn"] = self.machineSn!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.updateTime != nil {
                        map["updateTime"] = self.updateTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("actions") {
                        self.actions = dict["actions"] as! [GetVMDeployOrderResponseBody.DeployOrder.DeployMachineInfo.DeployMachines.Actions]
                    }
                    if dict.keys.contains("batchNum") {
                        self.batchNum = dict["batchNum"] as! Int32
                    }
                    if dict.keys.contains("clientStatus") {
                        self.clientStatus = dict["clientStatus"] as! String
                    }
                    if dict.keys.contains("createTime") {
                        self.createTime = dict["createTime"] as! Int64
                    }
                    if dict.keys.contains("ip") {
                        self.ip = dict["ip"] as! String
                    }
                    if dict.keys.contains("machineSn") {
                        self.machineSn = dict["machineSn"] as! String
                    }
                    if dict.keys.contains("status") {
                        self.status = dict["status"] as! String
                    }
                    if dict.keys.contains("updateTime") {
                        self.updateTime = dict["updateTime"] as! Int64
                    }
                }
            }
            public var batchNum: Int32?

            public var deployMachines: [GetVMDeployOrderResponseBody.DeployOrder.DeployMachineInfo.DeployMachines]?

            public var hostGroupId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.batchNum != nil {
                    map["batchNum"] = self.batchNum!
                }
                if self.deployMachines != nil {
                    var tmp : [Any] = []
                    for k in self.deployMachines! {
                        tmp.append(k.toMap())
                    }
                    map["deployMachines"] = tmp
                }
                if self.hostGroupId != nil {
                    map["hostGroupId"] = self.hostGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("batchNum") {
                    self.batchNum = dict["batchNum"] as! Int32
                }
                if dict.keys.contains("deployMachines") {
                    self.deployMachines = dict["deployMachines"] as! [GetVMDeployOrderResponseBody.DeployOrder.DeployMachineInfo.DeployMachines]
                }
                if dict.keys.contains("hostGroupId") {
                    self.hostGroupId = dict["hostGroupId"] as! Int64
                }
            }
        }
        public var actions: [GetVMDeployOrderResponseBody.DeployOrder.Actions]?

        public var createTime: Int64?

        public var creator: String?

        public var currentBatch: Int32?

        public var deployMachineInfo: GetVMDeployOrderResponseBody.DeployOrder.DeployMachineInfo?

        public var deployOrderId: String?

        public var exceptionCode: String?

        public var status: String?

        public var totalBatch: Int32?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.deployMachineInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actions != nil {
                var tmp : [Any] = []
                for k in self.actions! {
                    tmp.append(k.toMap())
                }
                map["actions"] = tmp
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.currentBatch != nil {
                map["currentBatch"] = self.currentBatch!
            }
            if self.deployMachineInfo != nil {
                map["deployMachineInfo"] = self.deployMachineInfo?.toMap()
            }
            if self.deployOrderId != nil {
                map["deployOrderId"] = self.deployOrderId!
            }
            if self.exceptionCode != nil {
                map["exceptionCode"] = self.exceptionCode!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.totalBatch != nil {
                map["totalBatch"] = self.totalBatch!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("actions") {
                self.actions = dict["actions"] as! [GetVMDeployOrderResponseBody.DeployOrder.Actions]
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("currentBatch") {
                self.currentBatch = dict["currentBatch"] as! Int32
            }
            if dict.keys.contains("deployMachineInfo") {
                var model = GetVMDeployOrderResponseBody.DeployOrder.DeployMachineInfo()
                model.fromMap(dict["deployMachineInfo"] as! [String: Any])
                self.deployMachineInfo = model
            }
            if dict.keys.contains("deployOrderId") {
                self.deployOrderId = dict["deployOrderId"] as! String
            }
            if dict.keys.contains("exceptionCode") {
                self.exceptionCode = dict["exceptionCode"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("totalBatch") {
                self.totalBatch = dict["totalBatch"] as! Int32
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! Int64
            }
        }
    }
    public var deployOrder: GetVMDeployOrderResponseBody.DeployOrder?

    public var errorCode: String?

    public var errorMessage: String?

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
        try self.deployOrder?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deployOrder != nil {
            map["deployOrder"] = self.deployOrder?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deployOrder") {
            var model = GetVMDeployOrderResponseBody.DeployOrder()
            model.fromMap(dict["deployOrder"] as! [String: Any])
            self.deployOrder = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetVMDeployOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVMDeployOrderResponseBody?

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
            var model = GetVMDeployOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetVariableGroupResponseBody : Tea.TeaModel {
    public class VariableGroup : Tea.TeaModel {
        public class RelatedPipelines : Tea.TeaModel {
            public var id: Int64?

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
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
            }
        }
        public class Variables : Tea.TeaModel {
            public var isEncrypted: Bool?

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
                if self.isEncrypted != nil {
                    map["isEncrypted"] = self.isEncrypted!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("isEncrypted") {
                    self.isEncrypted = dict["isEncrypted"] as! Bool
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var ccreatorAccountId: String?

        public var createTime: Int64?

        public var description_: String?

        public var id: Int64?

        public var modifierAccountId: String?

        public var name: String?

        public var relatedPipelines: [GetVariableGroupResponseBody.VariableGroup.RelatedPipelines]?

        public var updateTime: Int64?

        public var variables: [GetVariableGroupResponseBody.VariableGroup.Variables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ccreatorAccountId != nil {
                map["ccreatorAccountId"] = self.ccreatorAccountId!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.modifierAccountId != nil {
                map["modifierAccountId"] = self.modifierAccountId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.relatedPipelines != nil {
                var tmp : [Any] = []
                for k in self.relatedPipelines! {
                    tmp.append(k.toMap())
                }
                map["relatedPipelines"] = tmp
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.variables != nil {
                var tmp : [Any] = []
                for k in self.variables! {
                    tmp.append(k.toMap())
                }
                map["variables"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ccreatorAccountId") {
                self.ccreatorAccountId = dict["ccreatorAccountId"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("modifierAccountId") {
                self.modifierAccountId = dict["modifierAccountId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("relatedPipelines") {
                self.relatedPipelines = dict["relatedPipelines"] as! [GetVariableGroupResponseBody.VariableGroup.RelatedPipelines]
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! Int64
            }
            if dict.keys.contains("variables") {
                self.variables = dict["variables"] as! [GetVariableGroupResponseBody.VariableGroup.Variables]
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var success: Bool?

    public var variableGroup: GetVariableGroupResponseBody.VariableGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.variableGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.variableGroup != nil {
            map["variableGroup"] = self.variableGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("variableGroup") {
            var model = GetVariableGroupResponseBody.VariableGroup()
            model.fromMap(dict["variableGroup"] as! [String: Any])
            self.variableGroup = model
        }
    }
}

public class GetVariableGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVariableGroupResponseBody?

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
            var model = GetVariableGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWorkItemActivityResponseBody : Tea.TeaModel {
    public class Activities : Tea.TeaModel {
        public class NewValue : Tea.TeaModel {
            public var displayValue: String?

            public var plainValue: String?

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
                if self.displayValue != nil {
                    map["displayValue"] = self.displayValue!
                }
                if self.plainValue != nil {
                    map["plainValue"] = self.plainValue!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("displayValue") {
                    self.displayValue = dict["displayValue"] as! String
                }
                if dict.keys.contains("plainValue") {
                    self.plainValue = dict["plainValue"] as! String
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
            }
        }
        public class OldValue : Tea.TeaModel {
            public var displayValue: String?

            public var plainValue: String?

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
                if self.displayValue != nil {
                    map["displayValue"] = self.displayValue!
                }
                if self.plainValue != nil {
                    map["plainValue"] = self.plainValue!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("displayValue") {
                    self.displayValue = dict["displayValue"] as! String
                }
                if dict.keys.contains("plainValue") {
                    self.plainValue = dict["plainValue"] as! String
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
            }
        }
        public class Property : Tea.TeaModel {
            public var displayName: String?

            public var propertyIdentifier: String?

            public var propertyName: String?

            public var propertyType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                if self.propertyIdentifier != nil {
                    map["propertyIdentifier"] = self.propertyIdentifier!
                }
                if self.propertyName != nil {
                    map["propertyName"] = self.propertyName!
                }
                if self.propertyType != nil {
                    map["propertyType"] = self.propertyType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("displayName") {
                    self.displayName = dict["displayName"] as! String
                }
                if dict.keys.contains("propertyIdentifier") {
                    self.propertyIdentifier = dict["propertyIdentifier"] as! String
                }
                if dict.keys.contains("propertyName") {
                    self.propertyName = dict["propertyName"] as! String
                }
                if dict.keys.contains("propertyType") {
                    self.propertyType = dict["propertyType"] as! String
                }
            }
        }
        public var actionType: String?

        public var eventId: Int64?

        public var eventTime: Int64?

        public var eventType: String?

        public var newValue: [GetWorkItemActivityResponseBody.Activities.NewValue]?

        public var oldValue: [GetWorkItemActivityResponseBody.Activities.OldValue]?

        public var operator_: String?

        public var parentEventId: Int64?

        public var property: GetWorkItemActivityResponseBody.Activities.Property?

        public var resourceIdentifier: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.property?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionType != nil {
                map["actionType"] = self.actionType!
            }
            if self.eventId != nil {
                map["eventId"] = self.eventId!
            }
            if self.eventTime != nil {
                map["eventTime"] = self.eventTime!
            }
            if self.eventType != nil {
                map["eventType"] = self.eventType!
            }
            if self.newValue != nil {
                var tmp : [Any] = []
                for k in self.newValue! {
                    tmp.append(k.toMap())
                }
                map["newValue"] = tmp
            }
            if self.oldValue != nil {
                var tmp : [Any] = []
                for k in self.oldValue! {
                    tmp.append(k.toMap())
                }
                map["oldValue"] = tmp
            }
            if self.operator_ != nil {
                map["operator"] = self.operator_!
            }
            if self.parentEventId != nil {
                map["parentEventId"] = self.parentEventId!
            }
            if self.property != nil {
                map["property"] = self.property?.toMap()
            }
            if self.resourceIdentifier != nil {
                map["resourceIdentifier"] = self.resourceIdentifier!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("actionType") {
                self.actionType = dict["actionType"] as! String
            }
            if dict.keys.contains("eventId") {
                self.eventId = dict["eventId"] as! Int64
            }
            if dict.keys.contains("eventTime") {
                self.eventTime = dict["eventTime"] as! Int64
            }
            if dict.keys.contains("eventType") {
                self.eventType = dict["eventType"] as! String
            }
            if dict.keys.contains("newValue") {
                self.newValue = dict["newValue"] as! [GetWorkItemActivityResponseBody.Activities.NewValue]
            }
            if dict.keys.contains("oldValue") {
                self.oldValue = dict["oldValue"] as! [GetWorkItemActivityResponseBody.Activities.OldValue]
            }
            if dict.keys.contains("operator") {
                self.operator_ = dict["operator"] as! String
            }
            if dict.keys.contains("parentEventId") {
                self.parentEventId = dict["parentEventId"] as! Int64
            }
            if dict.keys.contains("property") {
                var model = GetWorkItemActivityResponseBody.Activities.Property()
                model.fromMap(dict["property"] as! [String: Any])
                self.property = model
            }
            if dict.keys.contains("resourceIdentifier") {
                self.resourceIdentifier = dict["resourceIdentifier"] as! String
            }
        }
    }
    public var activities: [GetWorkItemActivityResponseBody.Activities]?

    public var errorCode: String?

    public var errorMsg: String?

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
        if self.activities != nil {
            var tmp : [Any] = []
            for k in self.activities! {
                tmp.append(k.toMap())
            }
            map["activities"] = tmp
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("activities") {
            self.activities = dict["activities"] as! [GetWorkItemActivityResponseBody.Activities]
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetWorkItemActivityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkItemActivityResponseBody?

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
            var model = GetWorkItemActivityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWorkItemInfoResponseBody : Tea.TeaModel {
    public class Workitem : Tea.TeaModel {
        public class CustomFields : Tea.TeaModel {
            public class ValueList : Tea.TeaModel {
                public var displayValue: String?

                public var identifier: String?

                public var level: Int64?

                public var value: String?

                public var valueEn: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.displayValue != nil {
                        map["displayValue"] = self.displayValue!
                    }
                    if self.identifier != nil {
                        map["identifier"] = self.identifier!
                    }
                    if self.level != nil {
                        map["level"] = self.level!
                    }
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    if self.valueEn != nil {
                        map["valueEn"] = self.valueEn!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("displayValue") {
                        self.displayValue = dict["displayValue"] as! String
                    }
                    if dict.keys.contains("identifier") {
                        self.identifier = dict["identifier"] as! String
                    }
                    if dict.keys.contains("level") {
                        self.level = dict["level"] as! Int64
                    }
                    if dict.keys.contains("value") {
                        self.value = dict["value"] as! String
                    }
                    if dict.keys.contains("valueEn") {
                        self.valueEn = dict["valueEn"] as! String
                    }
                }
            }
            public var fieldClassName: String?

            public var fieldFormat: String?

            public var fieldIdentifier: String?

            public var level: Int64?

            public var objectValue: String?

            public var position: Int64?

            public var value: String?

            public var valueList: [GetWorkItemInfoResponseBody.Workitem.CustomFields.ValueList]?

            public var workitemIdentifier: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fieldClassName != nil {
                    map["fieldClassName"] = self.fieldClassName!
                }
                if self.fieldFormat != nil {
                    map["fieldFormat"] = self.fieldFormat!
                }
                if self.fieldIdentifier != nil {
                    map["fieldIdentifier"] = self.fieldIdentifier!
                }
                if self.level != nil {
                    map["level"] = self.level!
                }
                if self.objectValue != nil {
                    map["objectValue"] = self.objectValue!
                }
                if self.position != nil {
                    map["position"] = self.position!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                if self.valueList != nil {
                    var tmp : [Any] = []
                    for k in self.valueList! {
                        tmp.append(k.toMap())
                    }
                    map["valueList"] = tmp
                }
                if self.workitemIdentifier != nil {
                    map["workitemIdentifier"] = self.workitemIdentifier!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("fieldClassName") {
                    self.fieldClassName = dict["fieldClassName"] as! String
                }
                if dict.keys.contains("fieldFormat") {
                    self.fieldFormat = dict["fieldFormat"] as! String
                }
                if dict.keys.contains("fieldIdentifier") {
                    self.fieldIdentifier = dict["fieldIdentifier"] as! String
                }
                if dict.keys.contains("level") {
                    self.level = dict["level"] as! Int64
                }
                if dict.keys.contains("objectValue") {
                    self.objectValue = dict["objectValue"] as! String
                }
                if dict.keys.contains("position") {
                    self.position = dict["position"] as! Int64
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
                if dict.keys.contains("valueList") {
                    self.valueList = dict["valueList"] as! [GetWorkItemInfoResponseBody.Workitem.CustomFields.ValueList]
                }
                if dict.keys.contains("workitemIdentifier") {
                    self.workitemIdentifier = dict["workitemIdentifier"] as! String
                }
            }
        }
        public var assignedTo: String?

        public var categoryIdentifier: String?

        public var creator: String?

        public var customFields: [GetWorkItemInfoResponseBody.Workitem.CustomFields]?

        public var document: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var identifier: String?

        public var logicalStatus: String?

        public var modifier: String?

        public var parentIdentifier: String?

        public var participant: [String]?

        public var serialNumber: String?

        public var spaceIdentifier: String?

        public var spaceName: String?

        public var spaceType: String?

        public var sprint: [String]?

        public var status: String?

        public var statusIdentifier: String?

        public var statusStageIdentifier: String?

        public var subject: String?

        public var tag: [String]?

        public var tracker: [String]?

        public var updateStatusAt: Int64?

        public var verifier: [String]?

        public var workitemTypeIdentifier: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assignedTo != nil {
                map["assignedTo"] = self.assignedTo!
            }
            if self.categoryIdentifier != nil {
                map["categoryIdentifier"] = self.categoryIdentifier!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.customFields != nil {
                var tmp : [Any] = []
                for k in self.customFields! {
                    tmp.append(k.toMap())
                }
                map["customFields"] = tmp
            }
            if self.document != nil {
                map["document"] = self.document!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.logicalStatus != nil {
                map["logicalStatus"] = self.logicalStatus!
            }
            if self.modifier != nil {
                map["modifier"] = self.modifier!
            }
            if self.parentIdentifier != nil {
                map["parentIdentifier"] = self.parentIdentifier!
            }
            if self.participant != nil {
                map["participant"] = self.participant!
            }
            if self.serialNumber != nil {
                map["serialNumber"] = self.serialNumber!
            }
            if self.spaceIdentifier != nil {
                map["spaceIdentifier"] = self.spaceIdentifier!
            }
            if self.spaceName != nil {
                map["spaceName"] = self.spaceName!
            }
            if self.spaceType != nil {
                map["spaceType"] = self.spaceType!
            }
            if self.sprint != nil {
                map["sprint"] = self.sprint!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusIdentifier != nil {
                map["statusIdentifier"] = self.statusIdentifier!
            }
            if self.statusStageIdentifier != nil {
                map["statusStageIdentifier"] = self.statusStageIdentifier!
            }
            if self.subject != nil {
                map["subject"] = self.subject!
            }
            if self.tag != nil {
                map["tag"] = self.tag!
            }
            if self.tracker != nil {
                map["tracker"] = self.tracker!
            }
            if self.updateStatusAt != nil {
                map["updateStatusAt"] = self.updateStatusAt!
            }
            if self.verifier != nil {
                map["verifier"] = self.verifier!
            }
            if self.workitemTypeIdentifier != nil {
                map["workitemTypeIdentifier"] = self.workitemTypeIdentifier!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assignedTo") {
                self.assignedTo = dict["assignedTo"] as! String
            }
            if dict.keys.contains("categoryIdentifier") {
                self.categoryIdentifier = dict["categoryIdentifier"] as! String
            }
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("customFields") {
                self.customFields = dict["customFields"] as! [GetWorkItemInfoResponseBody.Workitem.CustomFields]
            }
            if dict.keys.contains("document") {
                self.document = dict["document"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! Int64
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("logicalStatus") {
                self.logicalStatus = dict["logicalStatus"] as! String
            }
            if dict.keys.contains("modifier") {
                self.modifier = dict["modifier"] as! String
            }
            if dict.keys.contains("parentIdentifier") {
                self.parentIdentifier = dict["parentIdentifier"] as! String
            }
            if dict.keys.contains("participant") {
                self.participant = dict["participant"] as! [String]
            }
            if dict.keys.contains("serialNumber") {
                self.serialNumber = dict["serialNumber"] as! String
            }
            if dict.keys.contains("spaceIdentifier") {
                self.spaceIdentifier = dict["spaceIdentifier"] as! String
            }
            if dict.keys.contains("spaceName") {
                self.spaceName = dict["spaceName"] as! String
            }
            if dict.keys.contains("spaceType") {
                self.spaceType = dict["spaceType"] as! String
            }
            if dict.keys.contains("sprint") {
                self.sprint = dict["sprint"] as! [String]
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("statusIdentifier") {
                self.statusIdentifier = dict["statusIdentifier"] as! String
            }
            if dict.keys.contains("statusStageIdentifier") {
                self.statusStageIdentifier = dict["statusStageIdentifier"] as! String
            }
            if dict.keys.contains("subject") {
                self.subject = dict["subject"] as! String
            }
            if dict.keys.contains("tag") {
                self.tag = dict["tag"] as! [String]
            }
            if dict.keys.contains("tracker") {
                self.tracker = dict["tracker"] as! [String]
            }
            if dict.keys.contains("updateStatusAt") {
                self.updateStatusAt = dict["updateStatusAt"] as! Int64
            }
            if dict.keys.contains("verifier") {
                self.verifier = dict["verifier"] as! [String]
            }
            if dict.keys.contains("workitemTypeIdentifier") {
                self.workitemTypeIdentifier = dict["workitemTypeIdentifier"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var success: Bool?

    public var workitem: GetWorkItemInfoResponseBody.Workitem?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.workitem?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.workitem != nil {
            map["workitem"] = self.workitem?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("workitem") {
            var model = GetWorkItemInfoResponseBody.Workitem()
            model.fromMap(dict["workitem"] as! [String: Any])
            self.workitem = model
        }
    }
}

public class GetWorkItemInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkItemInfoResponseBody?

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
            var model = GetWorkItemInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWorkItemWorkFlowInfoRequest : Tea.TeaModel {
    public var configurationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configurationId != nil {
            map["configurationId"] = self.configurationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("configurationId") {
            self.configurationId = dict["configurationId"] as! String
        }
    }
}

public class GetWorkItemWorkFlowInfoResponseBody : Tea.TeaModel {
    public class Workflow : Tea.TeaModel {
        public class Statuses : Tea.TeaModel {
            public var creator: String?

            public var description_: String?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var identifier: String?

            public var modifier: String?

            public var name: String?

            public var resourceType: String?

            public var source: String?

            public var workflowStageIdentifier: String?

            public var workflowStageName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.creator != nil {
                    map["creator"] = self.creator!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["gmtModified"] = self.gmtModified!
                }
                if self.identifier != nil {
                    map["identifier"] = self.identifier!
                }
                if self.modifier != nil {
                    map["modifier"] = self.modifier!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.resourceType != nil {
                    map["resourceType"] = self.resourceType!
                }
                if self.source != nil {
                    map["source"] = self.source!
                }
                if self.workflowStageIdentifier != nil {
                    map["workflowStageIdentifier"] = self.workflowStageIdentifier!
                }
                if self.workflowStageName != nil {
                    map["workflowStageName"] = self.workflowStageName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("creator") {
                    self.creator = dict["creator"] as! String
                }
                if dict.keys.contains("description") {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("gmtCreate") {
                    self.gmtCreate = dict["gmtCreate"] as! Int64
                }
                if dict.keys.contains("gmtModified") {
                    self.gmtModified = dict["gmtModified"] as! Int64
                }
                if dict.keys.contains("identifier") {
                    self.identifier = dict["identifier"] as! String
                }
                if dict.keys.contains("modifier") {
                    self.modifier = dict["modifier"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("resourceType") {
                    self.resourceType = dict["resourceType"] as! String
                }
                if dict.keys.contains("source") {
                    self.source = dict["source"] as! String
                }
                if dict.keys.contains("workflowStageIdentifier") {
                    self.workflowStageIdentifier = dict["workflowStageIdentifier"] as! String
                }
                if dict.keys.contains("workflowStageName") {
                    self.workflowStageName = dict["workflowStageName"] as! String
                }
            }
        }
        public class WorkflowActions : Tea.TeaModel {
            public var id: Int64?

            public var name: String?

            public var nextWorkflowStatusIdentifier: String?

            public var workflowIdentifier: String?

            public var workflowStatusIdentifier: String?

            public override init() {
                super.init()
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
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nextWorkflowStatusIdentifier != nil {
                    map["nextWorkflowStatusIdentifier"] = self.nextWorkflowStatusIdentifier!
                }
                if self.workflowIdentifier != nil {
                    map["workflowIdentifier"] = self.workflowIdentifier!
                }
                if self.workflowStatusIdentifier != nil {
                    map["workflowStatusIdentifier"] = self.workflowStatusIdentifier!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nextWorkflowStatusIdentifier") {
                    self.nextWorkflowStatusIdentifier = dict["nextWorkflowStatusIdentifier"] as! String
                }
                if dict.keys.contains("workflowIdentifier") {
                    self.workflowIdentifier = dict["workflowIdentifier"] as! String
                }
                if dict.keys.contains("workflowStatusIdentifier") {
                    self.workflowStatusIdentifier = dict["workflowStatusIdentifier"] as! String
                }
            }
        }
        public var creator: String?

        public var defaultStatusIdentifier: String?

        public var description_: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var identifier: String?

        public var modifier: String?

        public var name: String?

        public var ownerSpaceIdentifier: String?

        public var ownerSpaceType: String?

        public var resourceType: String?

        public var source: String?

        public var statusOrder: String?

        public var statuses: [GetWorkItemWorkFlowInfoResponseBody.Workflow.Statuses]?

        public var workflowActions: [GetWorkItemWorkFlowInfoResponseBody.Workflow.WorkflowActions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.defaultStatusIdentifier != nil {
                map["defaultStatusIdentifier"] = self.defaultStatusIdentifier!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.modifier != nil {
                map["modifier"] = self.modifier!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.ownerSpaceIdentifier != nil {
                map["ownerSpaceIdentifier"] = self.ownerSpaceIdentifier!
            }
            if self.ownerSpaceType != nil {
                map["ownerSpaceType"] = self.ownerSpaceType!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.statusOrder != nil {
                map["statusOrder"] = self.statusOrder!
            }
            if self.statuses != nil {
                var tmp : [Any] = []
                for k in self.statuses! {
                    tmp.append(k.toMap())
                }
                map["statuses"] = tmp
            }
            if self.workflowActions != nil {
                var tmp : [Any] = []
                for k in self.workflowActions! {
                    tmp.append(k.toMap())
                }
                map["workflowActions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("defaultStatusIdentifier") {
                self.defaultStatusIdentifier = dict["defaultStatusIdentifier"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! Int64
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("modifier") {
                self.modifier = dict["modifier"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("ownerSpaceIdentifier") {
                self.ownerSpaceIdentifier = dict["ownerSpaceIdentifier"] as! String
            }
            if dict.keys.contains("ownerSpaceType") {
                self.ownerSpaceType = dict["ownerSpaceType"] as! String
            }
            if dict.keys.contains("resourceType") {
                self.resourceType = dict["resourceType"] as! String
            }
            if dict.keys.contains("source") {
                self.source = dict["source"] as! String
            }
            if dict.keys.contains("statusOrder") {
                self.statusOrder = dict["statusOrder"] as! String
            }
            if dict.keys.contains("statuses") {
                self.statuses = dict["statuses"] as! [GetWorkItemWorkFlowInfoResponseBody.Workflow.Statuses]
            }
            if dict.keys.contains("workflowActions") {
                self.workflowActions = dict["workflowActions"] as! [GetWorkItemWorkFlowInfoResponseBody.Workflow.WorkflowActions]
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var success: Bool?

    public var workflow: GetWorkItemWorkFlowInfoResponseBody.Workflow?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.workflow?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.workflow != nil {
            map["workflow"] = self.workflow?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("workflow") {
            var model = GetWorkItemWorkFlowInfoResponseBody.Workflow()
            model.fromMap(dict["workflow"] as! [String: Any])
            self.workflow = model
        }
    }
}

public class GetWorkItemWorkFlowInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkItemWorkFlowInfoResponseBody?

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
            var model = GetWorkItemWorkFlowInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWorkitemCommentListResponseBody : Tea.TeaModel {
    public class CommentList : Tea.TeaModel {
        public var content: String?

        public var createTime: Int64?

        public var formatType: String?

        public var id: Int64?

        public var isTop: Bool?

        public var modifiedTime: Int64?

        public var parentId: Int64?

        public var targetIdentifier: String?

        public var targetType: String?

        public var topTime: Int64?

        public override init() {
            super.init()
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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.formatType != nil {
                map["formatType"] = self.formatType!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.isTop != nil {
                map["isTop"] = self.isTop!
            }
            if self.modifiedTime != nil {
                map["modifiedTime"] = self.modifiedTime!
            }
            if self.parentId != nil {
                map["parentId"] = self.parentId!
            }
            if self.targetIdentifier != nil {
                map["targetIdentifier"] = self.targetIdentifier!
            }
            if self.targetType != nil {
                map["targetType"] = self.targetType!
            }
            if self.topTime != nil {
                map["topTime"] = self.topTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("formatType") {
                self.formatType = dict["formatType"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("isTop") {
                self.isTop = dict["isTop"] as! Bool
            }
            if dict.keys.contains("modifiedTime") {
                self.modifiedTime = dict["modifiedTime"] as! Int64
            }
            if dict.keys.contains("parentId") {
                self.parentId = dict["parentId"] as! Int64
            }
            if dict.keys.contains("targetIdentifier") {
                self.targetIdentifier = dict["targetIdentifier"] as! String
            }
            if dict.keys.contains("targetType") {
                self.targetType = dict["targetType"] as! String
            }
            if dict.keys.contains("topTime") {
                self.topTime = dict["topTime"] as! Int64
            }
        }
    }
    public var commentList: [GetWorkitemCommentListResponseBody.CommentList]?

    public var errorCode: String?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.commentList != nil {
            var tmp : [Any] = []
            for k in self.commentList! {
                tmp.append(k.toMap())
            }
            map["commentList"] = tmp
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commentList") {
            self.commentList = dict["commentList"] as! [GetWorkitemCommentListResponseBody.CommentList]
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! String
        }
    }
}

public class GetWorkitemCommentListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkitemCommentListResponseBody?

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
            var model = GetWorkitemCommentListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWorkitemRelationsRequest : Tea.TeaModel {
    public var relationType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.relationType != nil {
            map["relationType"] = self.relationType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("relationType") {
            self.relationType = dict["relationType"] as! String
        }
    }
}

public class GetWorkitemRelationsResponseBody : Tea.TeaModel {
    public class RelationList : Tea.TeaModel {
        public var assignedTo: String?

        public var categoryIdentifier: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var identifier: String?

        public var spaceIdentifier: String?

        public var subject: String?

        public var workitemTypeIdentifier: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assignedTo != nil {
                map["assignedTo"] = self.assignedTo!
            }
            if self.categoryIdentifier != nil {
                map["categoryIdentifier"] = self.categoryIdentifier!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.spaceIdentifier != nil {
                map["spaceIdentifier"] = self.spaceIdentifier!
            }
            if self.subject != nil {
                map["subject"] = self.subject!
            }
            if self.workitemTypeIdentifier != nil {
                map["workitemTypeIdentifier"] = self.workitemTypeIdentifier!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assignedTo") {
                self.assignedTo = dict["assignedTo"] as! String
            }
            if dict.keys.contains("categoryIdentifier") {
                self.categoryIdentifier = dict["categoryIdentifier"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! String
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("spaceIdentifier") {
                self.spaceIdentifier = dict["spaceIdentifier"] as! String
            }
            if dict.keys.contains("subject") {
                self.subject = dict["subject"] as! String
            }
            if dict.keys.contains("workitemTypeIdentifier") {
                self.workitemTypeIdentifier = dict["workitemTypeIdentifier"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var relationList: [GetWorkitemRelationsResponseBody.RelationList]?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.relationList != nil {
            var tmp : [Any] = []
            for k in self.relationList! {
                tmp.append(k.toMap())
            }
            map["relationList"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("relationList") {
            self.relationList = dict["relationList"] as! [GetWorkitemRelationsResponseBody.RelationList]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetWorkitemRelationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkitemRelationsResponseBody?

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
            var model = GetWorkitemRelationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWorkitemTimeTypeListResponseBody : Tea.TeaModel {
    public class TimeType : Tea.TeaModel {
        public var description_: String?

        public var displayName: String?

        public var identifier: String?

        public var name: String?

        public var position: Int64?

        public override init() {
            super.init()
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
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.position != nil {
                map["position"] = self.position!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("displayName") {
                self.displayName = dict["displayName"] as! String
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("position") {
                self.position = dict["position"] as! Int64
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var requestId: String?

    public var success: String?

    public var timeType: [GetWorkitemTimeTypeListResponseBody.TimeType]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.timeType != nil {
            var tmp : [Any] = []
            for k in self.timeType! {
                tmp.append(k.toMap())
            }
            map["timeType"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! String
        }
        if dict.keys.contains("timeType") {
            self.timeType = dict["timeType"] as! [GetWorkitemTimeTypeListResponseBody.TimeType]
        }
    }
}

public class GetWorkitemTimeTypeListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkitemTimeTypeListResponseBody?

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
            var model = GetWorkitemTimeTypeListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWorkspaceResponseBody : Tea.TeaModel {
    public class Workspace : Tea.TeaModel {
        public var codeUrl: String?

        public var codeVersion: String?

        public var createTime: String?

        public var id: String?

        public var name: String?

        public var spec: String?

        public var status: String?

        public var template: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeUrl != nil {
                map["codeUrl"] = self.codeUrl!
            }
            if self.codeVersion != nil {
                map["codeVersion"] = self.codeVersion!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.spec != nil {
                map["spec"] = self.spec!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.template != nil {
                map["template"] = self.template!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("codeUrl") {
                self.codeUrl = dict["codeUrl"] as! String
            }
            if dict.keys.contains("codeVersion") {
                self.codeVersion = dict["codeVersion"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("spec") {
                self.spec = dict["spec"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("template") {
                self.template = dict["template"] as! String
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var success: Bool?

    public var workspace: GetWorkspaceResponseBody.Workspace?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.workspace?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.workspace != nil {
            map["workspace"] = self.workspace?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("workspace") {
            var model = GetWorkspaceResponseBody.Workspace()
            model.fromMap(dict["workspace"] as! [String: Any])
            self.workspace = model
        }
    }
}

public class GetWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkspaceResponseBody?

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
            var model = GetWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class JoinPipelineGroupRequest : Tea.TeaModel {
    public var groupId: Int64?

    public var pipelineIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["groupId"] = self.groupId!
        }
        if self.pipelineIds != nil {
            map["pipelineIds"] = self.pipelineIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("groupId") {
            self.groupId = dict["groupId"] as! Int64
        }
        if dict.keys.contains("pipelineIds") {
            self.pipelineIds = dict["pipelineIds"] as! String
        }
    }
}

public class JoinPipelineGroupResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class JoinPipelineGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: JoinPipelineGroupResponseBody?

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
            var model = JoinPipelineGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFlowTagGroupsResponseBody : Tea.TeaModel {
    public class FlowTagGroups : Tea.TeaModel {
        public var creatorAccountId: String?

        public var id: Int64?

        public var modiferAccountId: String?

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
            if self.creatorAccountId != nil {
                map["creatorAccountId"] = self.creatorAccountId!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.modiferAccountId != nil {
                map["modiferAccountId"] = self.modiferAccountId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("creatorAccountId") {
                self.creatorAccountId = dict["creatorAccountId"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("modiferAccountId") {
                self.modiferAccountId = dict["modiferAccountId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var flowTagGroups: [ListFlowTagGroupsResponseBody.FlowTagGroups]?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.flowTagGroups != nil {
            var tmp : [Any] = []
            for k in self.flowTagGroups! {
                tmp.append(k.toMap())
            }
            map["flowTagGroups"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("flowTagGroups") {
            self.flowTagGroups = dict["flowTagGroups"] as! [ListFlowTagGroupsResponseBody.FlowTagGroups]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListFlowTagGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlowTagGroupsResponseBody?

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
            var model = ListFlowTagGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHostGroupsRequest : Tea.TeaModel {
    public var createEndTime: Int64?

    public var createStartTime: Int64?

    public var creatorAccountIds: String?

    public var ids: String?

    public var maxResults: Int64?

    public var name: String?

    public var nextToken: String?

    public var pageOrder: String?

    public var pageSort: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createEndTime != nil {
            map["createEndTime"] = self.createEndTime!
        }
        if self.createStartTime != nil {
            map["createStartTime"] = self.createStartTime!
        }
        if self.creatorAccountIds != nil {
            map["creatorAccountIds"] = self.creatorAccountIds!
        }
        if self.ids != nil {
            map["ids"] = self.ids!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.pageOrder != nil {
            map["pageOrder"] = self.pageOrder!
        }
        if self.pageSort != nil {
            map["pageSort"] = self.pageSort!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createEndTime") {
            self.createEndTime = dict["createEndTime"] as! Int64
        }
        if dict.keys.contains("createStartTime") {
            self.createStartTime = dict["createStartTime"] as! Int64
        }
        if dict.keys.contains("creatorAccountIds") {
            self.creatorAccountIds = dict["creatorAccountIds"] as! String
        }
        if dict.keys.contains("ids") {
            self.ids = dict["ids"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int64
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("pageOrder") {
            self.pageOrder = dict["pageOrder"] as! String
        }
        if dict.keys.contains("pageSort") {
            self.pageSort = dict["pageSort"] as! String
        }
    }
}

public class ListHostGroupsResponseBody : Tea.TeaModel {
    public class HostGroups : Tea.TeaModel {
        public var aliyunRegion: String?

        public var createTime: Int64?

        public var creatorAccountId: String?

        public var description_: String?

        public var ecsLabelKey: String?

        public var ecsLabelValue: String?

        public var ecsType: String?

        public var hostNum: Int64?

        public var id: Int64?

        public var modifierAccountId: String?

        public var name: String?

        public var serviceConnectionId: Int64?

        public var type: String?

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
            if self.aliyunRegion != nil {
                map["aliyunRegion"] = self.aliyunRegion!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.creatorAccountId != nil {
                map["creatorAccountId"] = self.creatorAccountId!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.ecsLabelKey != nil {
                map["ecsLabelKey"] = self.ecsLabelKey!
            }
            if self.ecsLabelValue != nil {
                map["ecsLabelValue"] = self.ecsLabelValue!
            }
            if self.ecsType != nil {
                map["ecsType"] = self.ecsType!
            }
            if self.hostNum != nil {
                map["hostNum"] = self.hostNum!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.modifierAccountId != nil {
                map["modifierAccountId"] = self.modifierAccountId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.serviceConnectionId != nil {
                map["serviceConnectionId"] = self.serviceConnectionId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("aliyunRegion") {
                self.aliyunRegion = dict["aliyunRegion"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("creatorAccountId") {
                self.creatorAccountId = dict["creatorAccountId"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("ecsLabelKey") {
                self.ecsLabelKey = dict["ecsLabelKey"] as! String
            }
            if dict.keys.contains("ecsLabelValue") {
                self.ecsLabelValue = dict["ecsLabelValue"] as! String
            }
            if dict.keys.contains("ecsType") {
                self.ecsType = dict["ecsType"] as! String
            }
            if dict.keys.contains("hostNum") {
                self.hostNum = dict["hostNum"] as! Int64
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("modifierAccountId") {
                self.modifierAccountId = dict["modifierAccountId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("serviceConnectionId") {
                self.serviceConnectionId = dict["serviceConnectionId"] as! Int64
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! Int64
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var hostGroups: [ListHostGroupsResponseBody.HostGroups]?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.hostGroups != nil {
            var tmp : [Any] = []
            for k in self.hostGroups! {
                tmp.append(k.toMap())
            }
            map["hostGroups"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("hostGroups") {
            self.hostGroups = dict["hostGroups"] as! [ListHostGroupsResponseBody.HostGroups]
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int64
        }
    }
}

public class ListHostGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHostGroupsResponseBody?

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
            var model = ListHostGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOrganizationMembersRequest : Tea.TeaModel {
    public var externUid: String?

    public var joinTimeFrom: Int64?

    public var joinTimeTo: Int64?

    public var maxResults: Int64?

    public var nextToken: String?

    public var organizationMemberName: String?

    public var provider: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.externUid != nil {
            map["externUid"] = self.externUid!
        }
        if self.joinTimeFrom != nil {
            map["joinTimeFrom"] = self.joinTimeFrom!
        }
        if self.joinTimeTo != nil {
            map["joinTimeTo"] = self.joinTimeTo!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.organizationMemberName != nil {
            map["organizationMemberName"] = self.organizationMemberName!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.state != nil {
            map["state"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("externUid") {
            self.externUid = dict["externUid"] as! String
        }
        if dict.keys.contains("joinTimeFrom") {
            self.joinTimeFrom = dict["joinTimeFrom"] as! Int64
        }
        if dict.keys.contains("joinTimeTo") {
            self.joinTimeTo = dict["joinTimeTo"] as! Int64
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int64
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("organizationMemberName") {
            self.organizationMemberName = dict["organizationMemberName"] as! String
        }
        if dict.keys.contains("provider") {
            self.provider = dict["provider"] as! String
        }
        if dict.keys.contains("state") {
            self.state = dict["state"] as! String
        }
    }
}

public class ListOrganizationMembersResponseBody : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public class Identities : Tea.TeaModel {
            public var externUid: String?

            public var provider: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.externUid != nil {
                    map["externUid"] = self.externUid!
                }
                if self.provider != nil {
                    map["provider"] = self.provider!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("externUid") {
                    self.externUid = dict["externUid"] as! String
                }
                if dict.keys.contains("provider") {
                    self.provider = dict["provider"] as! String
                }
            }
        }
        public var accountId: String?

        public var birthday: Int64?

        public var deptLists: [String]?

        public var email: String?

        public var hiredDate: Int64?

        public var identities: ListOrganizationMembersResponseBody.Members.Identities?

        public var joinTime: Int64?

        public var lastVisitTime: Int64?

        public var mobile: String?

        public var organizationMemberName: String?

        public var organizationRoleId: String?

        public var organizationRoleName: String?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.identities?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["accountId"] = self.accountId!
            }
            if self.birthday != nil {
                map["birthday"] = self.birthday!
            }
            if self.deptLists != nil {
                map["deptLists"] = self.deptLists!
            }
            if self.email != nil {
                map["email"] = self.email!
            }
            if self.hiredDate != nil {
                map["hiredDate"] = self.hiredDate!
            }
            if self.identities != nil {
                map["identities"] = self.identities?.toMap()
            }
            if self.joinTime != nil {
                map["joinTime"] = self.joinTime!
            }
            if self.lastVisitTime != nil {
                map["lastVisitTime"] = self.lastVisitTime!
            }
            if self.mobile != nil {
                map["mobile"] = self.mobile!
            }
            if self.organizationMemberName != nil {
                map["organizationMemberName"] = self.organizationMemberName!
            }
            if self.organizationRoleId != nil {
                map["organizationRoleId"] = self.organizationRoleId!
            }
            if self.organizationRoleName != nil {
                map["organizationRoleName"] = self.organizationRoleName!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") {
                self.accountId = dict["accountId"] as! String
            }
            if dict.keys.contains("birthday") {
                self.birthday = dict["birthday"] as! Int64
            }
            if dict.keys.contains("deptLists") {
                self.deptLists = dict["deptLists"] as! [String]
            }
            if dict.keys.contains("email") {
                self.email = dict["email"] as! String
            }
            if dict.keys.contains("hiredDate") {
                self.hiredDate = dict["hiredDate"] as! Int64
            }
            if dict.keys.contains("identities") {
                var model = ListOrganizationMembersResponseBody.Members.Identities()
                model.fromMap(dict["identities"] as! [String: Any])
                self.identities = model
            }
            if dict.keys.contains("joinTime") {
                self.joinTime = dict["joinTime"] as! Int64
            }
            if dict.keys.contains("lastVisitTime") {
                self.lastVisitTime = dict["lastVisitTime"] as! Int64
            }
            if dict.keys.contains("mobile") {
                self.mobile = dict["mobile"] as! String
            }
            if dict.keys.contains("organizationMemberName") {
                self.organizationMemberName = dict["organizationMemberName"] as! String
            }
            if dict.keys.contains("organizationRoleId") {
                self.organizationRoleId = dict["organizationRoleId"] as! String
            }
            if dict.keys.contains("organizationRoleName") {
                self.organizationRoleName = dict["organizationRoleName"] as! String
            }
            if dict.keys.contains("state") {
                self.state = dict["state"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var members: [ListOrganizationMembersResponseBody.Members]?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["members"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("members") {
            self.members = dict["members"] as! [ListOrganizationMembersResponseBody.Members]
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int64
        }
    }
}

public class ListOrganizationMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOrganizationMembersResponseBody?

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
            var model = ListOrganizationMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPipelineGroupPipelinesRequest : Tea.TeaModel {
    public var createEndTime: Int64?

    public var createStartTime: Int64?

    public var executeEndTime: Int64?

    public var executeStartTime: Int64?

    public var maxResults: Int64?

    public var nextToken: String?

    public var pipelineName: String?

    public var resultStatusList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createEndTime != nil {
            map["createEndTime"] = self.createEndTime!
        }
        if self.createStartTime != nil {
            map["createStartTime"] = self.createStartTime!
        }
        if self.executeEndTime != nil {
            map["executeEndTime"] = self.executeEndTime!
        }
        if self.executeStartTime != nil {
            map["executeStartTime"] = self.executeStartTime!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.pipelineName != nil {
            map["pipelineName"] = self.pipelineName!
        }
        if self.resultStatusList != nil {
            map["resultStatusList"] = self.resultStatusList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createEndTime") {
            self.createEndTime = dict["createEndTime"] as! Int64
        }
        if dict.keys.contains("createStartTime") {
            self.createStartTime = dict["createStartTime"] as! Int64
        }
        if dict.keys.contains("executeEndTime") {
            self.executeEndTime = dict["executeEndTime"] as! Int64
        }
        if dict.keys.contains("executeStartTime") {
            self.executeStartTime = dict["executeStartTime"] as! Int64
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int64
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("pipelineName") {
            self.pipelineName = dict["pipelineName"] as! String
        }
        if dict.keys.contains("resultStatusList") {
            self.resultStatusList = dict["resultStatusList"] as! String
        }
    }
}

public class ListPipelineGroupPipelinesResponseBody : Tea.TeaModel {
    public class Pipelines : Tea.TeaModel {
        public var createTime: Int64?

        public var pipelineId: Int64?

        public var pipelineName: String?

        public override init() {
            super.init()
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
                map["createTime"] = self.createTime!
            }
            if self.pipelineId != nil {
                map["pipelineId"] = self.pipelineId!
            }
            if self.pipelineName != nil {
                map["pipelineName"] = self.pipelineName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("pipelineId") {
                self.pipelineId = dict["pipelineId"] as! Int64
            }
            if dict.keys.contains("pipelineName") {
                self.pipelineName = dict["pipelineName"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var nextToken: String?

    public var pipelines: [ListPipelineGroupPipelinesResponseBody.Pipelines]?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.pipelines != nil {
            var tmp : [Any] = []
            for k in self.pipelines! {
                tmp.append(k.toMap())
            }
            map["pipelines"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("pipelines") {
            self.pipelines = dict["pipelines"] as! [ListPipelineGroupPipelinesResponseBody.Pipelines]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListPipelineGroupPipelinesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPipelineGroupPipelinesResponseBody?

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
            var model = ListPipelineGroupPipelinesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPipelineGroupsRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int64
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListPipelineGroupsResponseBody : Tea.TeaModel {
    public class PipelineGroups : Tea.TeaModel {
        public var createTime: Int64?

        public var id: Int64?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var nextToken: String?

    public var pipelineGroups: [ListPipelineGroupsResponseBody.PipelineGroups]?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.pipelineGroups != nil {
            var tmp : [Any] = []
            for k in self.pipelineGroups! {
                tmp.append(k.toMap())
            }
            map["pipelineGroups"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("pipelineGroups") {
            self.pipelineGroups = dict["pipelineGroups"] as! [ListPipelineGroupsResponseBody.PipelineGroups]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListPipelineGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPipelineGroupsResponseBody?

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
            var model = ListPipelineGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPipelineJobHistorysRequest : Tea.TeaModel {
    public var category: String?

    public var identifier: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public override init() {
        super.init()
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
            map["category"] = self.category!
        }
        if self.identifier != nil {
            map["identifier"] = self.identifier!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("category") {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("identifier") {
            self.identifier = dict["identifier"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int64
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListPipelineJobHistorysResponseBody : Tea.TeaModel {
    public class Jobs : Tea.TeaModel {
        public var executeNumber: Int32?

        public var identifier: String?

        public var jobId: Int64?

        public var jobName: String?

        public var operatorAccountId: String?

        public var pipelineId: Int64?

        public var pipelineRunId: Int64?

        public var sources: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.executeNumber != nil {
                map["executeNumber"] = self.executeNumber!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.jobId != nil {
                map["jobId"] = self.jobId!
            }
            if self.jobName != nil {
                map["jobName"] = self.jobName!
            }
            if self.operatorAccountId != nil {
                map["operatorAccountId"] = self.operatorAccountId!
            }
            if self.pipelineId != nil {
                map["pipelineId"] = self.pipelineId!
            }
            if self.pipelineRunId != nil {
                map["pipelineRunId"] = self.pipelineRunId!
            }
            if self.sources != nil {
                map["sources"] = self.sources!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("executeNumber") {
                self.executeNumber = dict["executeNumber"] as! Int32
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("jobId") {
                self.jobId = dict["jobId"] as! Int64
            }
            if dict.keys.contains("jobName") {
                self.jobName = dict["jobName"] as! String
            }
            if dict.keys.contains("operatorAccountId") {
                self.operatorAccountId = dict["operatorAccountId"] as! String
            }
            if dict.keys.contains("pipelineId") {
                self.pipelineId = dict["pipelineId"] as! Int64
            }
            if dict.keys.contains("pipelineRunId") {
                self.pipelineRunId = dict["pipelineRunId"] as! Int64
            }
            if dict.keys.contains("sources") {
                self.sources = dict["sources"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var jobs: [ListPipelineJobHistorysResponseBody.Jobs]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.jobs != nil {
            var tmp : [Any] = []
            for k in self.jobs! {
                tmp.append(k.toMap())
            }
            map["jobs"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("jobs") {
            self.jobs = dict["jobs"] as! [ListPipelineJobHistorysResponseBody.Jobs]
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListPipelineJobHistorysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPipelineJobHistorysResponseBody?

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
            var model = ListPipelineJobHistorysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPipelineJobsRequest : Tea.TeaModel {
    public var category: String?

    public override init() {
        super.init()
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
            map["category"] = self.category!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("category") {
            self.category = dict["category"] as! String
        }
    }
}

public class ListPipelineJobsResponseBody : Tea.TeaModel {
    public class Jobs : Tea.TeaModel {
        public var identifier: String?

        public var jobName: String?

        public var lastJobId: Int64?

        public var lastJobParams: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.jobName != nil {
                map["jobName"] = self.jobName!
            }
            if self.lastJobId != nil {
                map["lastJobId"] = self.lastJobId!
            }
            if self.lastJobParams != nil {
                map["lastJobParams"] = self.lastJobParams!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("jobName") {
                self.jobName = dict["jobName"] as! String
            }
            if dict.keys.contains("lastJobId") {
                self.lastJobId = dict["lastJobId"] as! Int64
            }
            if dict.keys.contains("lastJobParams") {
                self.lastJobParams = dict["lastJobParams"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var jobs: [ListPipelineJobsResponseBody.Jobs]?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.jobs != nil {
            var tmp : [Any] = []
            for k in self.jobs! {
                tmp.append(k.toMap())
            }
            map["jobs"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("jobs") {
            self.jobs = dict["jobs"] as! [ListPipelineJobsResponseBody.Jobs]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListPipelineJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPipelineJobsResponseBody?

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
            var model = ListPipelineJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPipelineRunsRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var maxResults: Int64?

    public var nextToken: String?

    public var startTime: Int64?

    public var status: String?

    public var triggerMode: Int32?

    public override init() {
        super.init()
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
            map["endTime"] = self.endTime!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.triggerMode != nil {
            map["triggerMode"] = self.triggerMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! Int64
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int64
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! Int64
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("triggerMode") {
            self.triggerMode = dict["triggerMode"] as! Int32
        }
    }
}

public class ListPipelineRunsResponseBody : Tea.TeaModel {
    public class PipelineRuns : Tea.TeaModel {
        public var creatorAccountId: String?

        public var endTime: Int64?

        public var pipelineId: Int64?

        public var pipelineRunId: Int64?

        public var startTime: Int64?

        public var status: String?

        public var triggerMode: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creatorAccountId != nil {
                map["creatorAccountId"] = self.creatorAccountId!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.pipelineId != nil {
                map["pipelineId"] = self.pipelineId!
            }
            if self.pipelineRunId != nil {
                map["pipelineRunId"] = self.pipelineRunId!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.triggerMode != nil {
                map["triggerMode"] = self.triggerMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("creatorAccountId") {
                self.creatorAccountId = dict["creatorAccountId"] as! String
            }
            if dict.keys.contains("endTime") {
                self.endTime = dict["endTime"] as! Int64
            }
            if dict.keys.contains("pipelineId") {
                self.pipelineId = dict["pipelineId"] as! Int64
            }
            if dict.keys.contains("pipelineRunId") {
                self.pipelineRunId = dict["pipelineRunId"] as! Int64
            }
            if dict.keys.contains("startTime") {
                self.startTime = dict["startTime"] as! Int64
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("triggerMode") {
                self.triggerMode = dict["triggerMode"] as! Int64
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var nextToken: String?

    public var pipelineRuns: [ListPipelineRunsResponseBody.PipelineRuns]?

    public var requestId: String?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.pipelineRuns != nil {
            var tmp : [Any] = []
            for k in self.pipelineRuns! {
                tmp.append(k.toMap())
            }
            map["pipelineRuns"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("pipelineRuns") {
            self.pipelineRuns = dict["pipelineRuns"] as! [ListPipelineRunsResponseBody.PipelineRuns]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int64
        }
    }
}

public class ListPipelineRunsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPipelineRunsResponseBody?

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
            var model = ListPipelineRunsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPipelinesRequest : Tea.TeaModel {
    public var createEndTime: Int64?

    public var createStartTime: Int64?

    public var creatorAccountIds: String?

    public var executeAccountIds: String?

    public var executeEndTime: Int64?

    public var executeStartTime: Int64?

    public var maxResults: Int64?

    public var nextToken: String?

    public var pipelineName: String?

    public var statusList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createEndTime != nil {
            map["createEndTime"] = self.createEndTime!
        }
        if self.createStartTime != nil {
            map["createStartTime"] = self.createStartTime!
        }
        if self.creatorAccountIds != nil {
            map["creatorAccountIds"] = self.creatorAccountIds!
        }
        if self.executeAccountIds != nil {
            map["executeAccountIds"] = self.executeAccountIds!
        }
        if self.executeEndTime != nil {
            map["executeEndTime"] = self.executeEndTime!
        }
        if self.executeStartTime != nil {
            map["executeStartTime"] = self.executeStartTime!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.pipelineName != nil {
            map["pipelineName"] = self.pipelineName!
        }
        if self.statusList != nil {
            map["statusList"] = self.statusList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createEndTime") {
            self.createEndTime = dict["createEndTime"] as! Int64
        }
        if dict.keys.contains("createStartTime") {
            self.createStartTime = dict["createStartTime"] as! Int64
        }
        if dict.keys.contains("creatorAccountIds") {
            self.creatorAccountIds = dict["creatorAccountIds"] as! String
        }
        if dict.keys.contains("executeAccountIds") {
            self.executeAccountIds = dict["executeAccountIds"] as! String
        }
        if dict.keys.contains("executeEndTime") {
            self.executeEndTime = dict["executeEndTime"] as! Int64
        }
        if dict.keys.contains("executeStartTime") {
            self.executeStartTime = dict["executeStartTime"] as! Int64
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int64
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("pipelineName") {
            self.pipelineName = dict["pipelineName"] as! String
        }
        if dict.keys.contains("statusList") {
            self.statusList = dict["statusList"] as! String
        }
    }
}

public class ListPipelinesResponseBody : Tea.TeaModel {
    public class Pipelines : Tea.TeaModel {
        public var createTime: Int64?

        public var creatorAccountId: String?

        public var groupId: Int64?

        public var pipelineId: Int64?

        public var pipelineName: String?

        public override init() {
            super.init()
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
                map["createTime"] = self.createTime!
            }
            if self.creatorAccountId != nil {
                map["creatorAccountId"] = self.creatorAccountId!
            }
            if self.groupId != nil {
                map["groupId"] = self.groupId!
            }
            if self.pipelineId != nil {
                map["pipelineId"] = self.pipelineId!
            }
            if self.pipelineName != nil {
                map["pipelineName"] = self.pipelineName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("creatorAccountId") {
                self.creatorAccountId = dict["creatorAccountId"] as! String
            }
            if dict.keys.contains("groupId") {
                self.groupId = dict["groupId"] as! Int64
            }
            if dict.keys.contains("pipelineId") {
                self.pipelineId = dict["pipelineId"] as! Int64
            }
            if dict.keys.contains("pipelineName") {
                self.pipelineName = dict["pipelineName"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var nextToken: String?

    public var pipelines: [ListPipelinesResponseBody.Pipelines]?

    public var requestId: String?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.pipelines != nil {
            var tmp : [Any] = []
            for k in self.pipelines! {
                tmp.append(k.toMap())
            }
            map["pipelines"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("pipelines") {
            self.pipelines = dict["pipelines"] as! [ListPipelinesResponseBody.Pipelines]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int64
        }
    }
}

public class ListPipelinesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPipelinesResponseBody?

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
            var model = ListPipelinesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectMembersRequest : Tea.TeaModel {
    public var targetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.targetType != nil {
            map["targetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("targetType") {
            self.targetType = dict["targetType"] as! String
        }
    }
}

public class ListProjectMembersResponseBody : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public class Division : Tea.TeaModel {
            public var identifier: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.identifier != nil {
                    map["identifier"] = self.identifier!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("identifier") {
                    self.identifier = dict["identifier"] as! String
                }
            }
        }
        public class OrganizationUserInfo : Tea.TeaModel {
            public var organizationIdentifier: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.organizationIdentifier != nil {
                    map["organizationIdentifier"] = self.organizationIdentifier!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("organizationIdentifier") {
                    self.organizationIdentifier = dict["organizationIdentifier"] as! String
                }
            }
        }
        public var account: String?

        public var avatar: String?

        public var dingTalkId: String?

        public var displayName: String?

        public var displayNickName: String?

        public var displayRealName: String?

        public var division: ListProjectMembersResponseBody.Members.Division?

        public var email: String?

        public var gender: String?

        public var identifier: String?

        public var mobile: String?

        public var nameEn: String?

        public var nickName: String?

        public var nickNamePinyin: String?

        public var organizationUserInfo: ListProjectMembersResponseBody.Members.OrganizationUserInfo?

        public var realName: String?

        public var realNamePinyin: String?

        public var stamp: String?

        public var tbRoleId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.division?.validate()
            try self.organizationUserInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["account"] = self.account!
            }
            if self.avatar != nil {
                map["avatar"] = self.avatar!
            }
            if self.dingTalkId != nil {
                map["dingTalkId"] = self.dingTalkId!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.displayNickName != nil {
                map["displayNickName"] = self.displayNickName!
            }
            if self.displayRealName != nil {
                map["displayRealName"] = self.displayRealName!
            }
            if self.division != nil {
                map["division"] = self.division?.toMap()
            }
            if self.email != nil {
                map["email"] = self.email!
            }
            if self.gender != nil {
                map["gender"] = self.gender!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.mobile != nil {
                map["mobile"] = self.mobile!
            }
            if self.nameEn != nil {
                map["nameEn"] = self.nameEn!
            }
            if self.nickName != nil {
                map["nickName"] = self.nickName!
            }
            if self.nickNamePinyin != nil {
                map["nickNamePinyin"] = self.nickNamePinyin!
            }
            if self.organizationUserInfo != nil {
                map["organizationUserInfo"] = self.organizationUserInfo?.toMap()
            }
            if self.realName != nil {
                map["realName"] = self.realName!
            }
            if self.realNamePinyin != nil {
                map["realNamePinyin"] = self.realNamePinyin!
            }
            if self.stamp != nil {
                map["stamp"] = self.stamp!
            }
            if self.tbRoleId != nil {
                map["tbRoleId"] = self.tbRoleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("account") {
                self.account = dict["account"] as! String
            }
            if dict.keys.contains("avatar") {
                self.avatar = dict["avatar"] as! String
            }
            if dict.keys.contains("dingTalkId") {
                self.dingTalkId = dict["dingTalkId"] as! String
            }
            if dict.keys.contains("displayName") {
                self.displayName = dict["displayName"] as! String
            }
            if dict.keys.contains("displayNickName") {
                self.displayNickName = dict["displayNickName"] as! String
            }
            if dict.keys.contains("displayRealName") {
                self.displayRealName = dict["displayRealName"] as! String
            }
            if dict.keys.contains("division") {
                var model = ListProjectMembersResponseBody.Members.Division()
                model.fromMap(dict["division"] as! [String: Any])
                self.division = model
            }
            if dict.keys.contains("email") {
                self.email = dict["email"] as! String
            }
            if dict.keys.contains("gender") {
                self.gender = dict["gender"] as! String
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("mobile") {
                self.mobile = dict["mobile"] as! String
            }
            if dict.keys.contains("nameEn") {
                self.nameEn = dict["nameEn"] as! String
            }
            if dict.keys.contains("nickName") {
                self.nickName = dict["nickName"] as! String
            }
            if dict.keys.contains("nickNamePinyin") {
                self.nickNamePinyin = dict["nickNamePinyin"] as! String
            }
            if dict.keys.contains("organizationUserInfo") {
                var model = ListProjectMembersResponseBody.Members.OrganizationUserInfo()
                model.fromMap(dict["organizationUserInfo"] as! [String: Any])
                self.organizationUserInfo = model
            }
            if dict.keys.contains("realName") {
                self.realName = dict["realName"] as! String
            }
            if dict.keys.contains("realNamePinyin") {
                self.realNamePinyin = dict["realNamePinyin"] as! String
            }
            if dict.keys.contains("stamp") {
                self.stamp = dict["stamp"] as! String
            }
            if dict.keys.contains("tbRoleId") {
                self.tbRoleId = dict["tbRoleId"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var members: [ListProjectMembersResponseBody.Members]?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["members"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("members") {
            self.members = dict["members"] as! [ListProjectMembersResponseBody.Members]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListProjectMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectMembersResponseBody?

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
            var model = ListProjectMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectTemplatesRequest : Tea.TeaModel {
    public var category: String?

    public override init() {
        super.init()
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
            map["category"] = self.category!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("category") {
            self.category = dict["category"] as! String
        }
    }
}

public class ListProjectTemplatesResponseBody : Tea.TeaModel {
    public class Templates : Tea.TeaModel {
        public var copyFrom: String?

        public var creator: String?

        public var description_: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var icon: String?

        public var identifier: String?

        public var modifier: String?

        public var name: String?

        public var nameEn: String?

        public var resourceCategory: String?

        public var resourceType: String?

        public var spaceIdentifier: String?

        public var spaceType: String?

        public var type: Int64?

        public override init() {
            super.init()
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
                map["copyFrom"] = self.copyFrom!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.icon != nil {
                map["icon"] = self.icon!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.modifier != nil {
                map["modifier"] = self.modifier!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.nameEn != nil {
                map["nameEn"] = self.nameEn!
            }
            if self.resourceCategory != nil {
                map["resourceCategory"] = self.resourceCategory!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            if self.spaceIdentifier != nil {
                map["spaceIdentifier"] = self.spaceIdentifier!
            }
            if self.spaceType != nil {
                map["spaceType"] = self.spaceType!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("copyFrom") {
                self.copyFrom = dict["copyFrom"] as! String
            }
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! Int64
            }
            if dict.keys.contains("icon") {
                self.icon = dict["icon"] as! String
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("modifier") {
                self.modifier = dict["modifier"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("nameEn") {
                self.nameEn = dict["nameEn"] as! String
            }
            if dict.keys.contains("resourceCategory") {
                self.resourceCategory = dict["resourceCategory"] as! String
            }
            if dict.keys.contains("resourceType") {
                self.resourceType = dict["resourceType"] as! String
            }
            if dict.keys.contains("spaceIdentifier") {
                self.spaceIdentifier = dict["spaceIdentifier"] as! String
            }
            if dict.keys.contains("spaceType") {
                self.spaceType = dict["spaceType"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! Int64
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var requestId: String?

    public var success: Bool?

    public var templates: [ListProjectTemplatesResponseBody.Templates]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.templates != nil {
            var tmp : [Any] = []
            for k in self.templates! {
                tmp.append(k.toMap())
            }
            map["templates"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("templates") {
            self.templates = dict["templates"] as! [ListProjectTemplatesResponseBody.Templates]
        }
    }
}

public class ListProjectTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectTemplatesResponseBody?

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
            var model = ListProjectTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectWorkitemTypesRequest : Tea.TeaModel {
    public var category: String?

    public var spaceType: String?

    public override init() {
        super.init()
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
            map["category"] = self.category!
        }
        if self.spaceType != nil {
            map["spaceType"] = self.spaceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("category") {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("spaceType") {
            self.spaceType = dict["spaceType"] as! String
        }
    }
}

public class ListProjectWorkitemTypesResponseBody : Tea.TeaModel {
    public class WorkitemTypes : Tea.TeaModel {
        public var addUser: String?

        public var categoryIdentifier: String?

        public var creator: String?

        public var defaultType: Bool?

        public var description_: String?

        public var enable: Bool?

        public var gmtAdd: Int64?

        public var gmtCreate: Int64?

        public var identifier: String?

        public var name: String?

        public var nameEn: String?

        public var systemDefault: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addUser != nil {
                map["addUser"] = self.addUser!
            }
            if self.categoryIdentifier != nil {
                map["categoryIdentifier"] = self.categoryIdentifier!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.defaultType != nil {
                map["defaultType"] = self.defaultType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.gmtAdd != nil {
                map["gmtAdd"] = self.gmtAdd!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.nameEn != nil {
                map["nameEn"] = self.nameEn!
            }
            if self.systemDefault != nil {
                map["systemDefault"] = self.systemDefault!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("addUser") {
                self.addUser = dict["addUser"] as! String
            }
            if dict.keys.contains("categoryIdentifier") {
                self.categoryIdentifier = dict["categoryIdentifier"] as! String
            }
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("defaultType") {
                self.defaultType = dict["defaultType"] as! Bool
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("enable") {
                self.enable = dict["enable"] as! Bool
            }
            if dict.keys.contains("gmtAdd") {
                self.gmtAdd = dict["gmtAdd"] as! Int64
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("nameEn") {
                self.nameEn = dict["nameEn"] as! String
            }
            if dict.keys.contains("systemDefault") {
                self.systemDefault = dict["systemDefault"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var success: Bool?

    public var workitemTypes: [ListProjectWorkitemTypesResponseBody.WorkitemTypes]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.workitemTypes != nil {
            var tmp : [Any] = []
            for k in self.workitemTypes! {
                tmp.append(k.toMap())
            }
            map["workitemTypes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("workitemTypes") {
            self.workitemTypes = dict["workitemTypes"] as! [ListProjectWorkitemTypesResponseBody.WorkitemTypes]
        }
    }
}

public class ListProjectWorkitemTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectWorkitemTypesResponseBody?

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
            var model = ListProjectWorkitemTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectsRequest : Tea.TeaModel {
    public var category: String?

    public var conditions: String?

    public var extraConditions: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var scope: String?

    public override init() {
        super.init()
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
            map["category"] = self.category!
        }
        if self.conditions != nil {
            map["conditions"] = self.conditions!
        }
        if self.extraConditions != nil {
            map["extraConditions"] = self.extraConditions!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("category") {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("conditions") {
            self.conditions = dict["conditions"] as! String
        }
        if dict.keys.contains("extraConditions") {
            self.extraConditions = dict["extraConditions"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int64
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("scope") {
            self.scope = dict["scope"] as! String
        }
    }
}

public class ListProjectsResponseBody : Tea.TeaModel {
    public class Projects : Tea.TeaModel {
        public var categoryIdentifier: String?

        public var creator: String?

        public var customCode: String?

        public var deleteTime: Int64?

        public var description_: String?

        public var gmtCreate: Int64?

        public var icon: String?

        public var identifier: String?

        public var logicalStatus: String?

        public var name: String?

        public var scope: String?

        public var statusStageIdentifier: String?

        public var typeIdentifier: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryIdentifier != nil {
                map["categoryIdentifier"] = self.categoryIdentifier!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.customCode != nil {
                map["customCode"] = self.customCode!
            }
            if self.deleteTime != nil {
                map["deleteTime"] = self.deleteTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.icon != nil {
                map["icon"] = self.icon!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.logicalStatus != nil {
                map["logicalStatus"] = self.logicalStatus!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.scope != nil {
                map["scope"] = self.scope!
            }
            if self.statusStageIdentifier != nil {
                map["statusStageIdentifier"] = self.statusStageIdentifier!
            }
            if self.typeIdentifier != nil {
                map["typeIdentifier"] = self.typeIdentifier!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("categoryIdentifier") {
                self.categoryIdentifier = dict["categoryIdentifier"] as! String
            }
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("customCode") {
                self.customCode = dict["customCode"] as! String
            }
            if dict.keys.contains("deleteTime") {
                self.deleteTime = dict["deleteTime"] as! Int64
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("icon") {
                self.icon = dict["icon"] as! String
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("logicalStatus") {
                self.logicalStatus = dict["logicalStatus"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("scope") {
                self.scope = dict["scope"] as! String
            }
            if dict.keys.contains("statusStageIdentifier") {
                self.statusStageIdentifier = dict["statusStageIdentifier"] as! String
            }
            if dict.keys.contains("typeIdentifier") {
                self.typeIdentifier = dict["typeIdentifier"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var projects: [ListProjectsResponseBody.Projects]?

    public var requestId: String?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.projects != nil {
            var tmp : [Any] = []
            for k in self.projects! {
                tmp.append(k.toMap())
            }
            map["projects"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int64
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("projects") {
            self.projects = dict["projects"] as! [ListProjectsResponseBody.Projects]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int64
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
            var model = ListProjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProtectedBranchesRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
    }
}

public class ListProtectedBranchesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class AllowMergeUsers : Tea.TeaModel {
            public var avatar: String?

            public var email: String?

            public var id: Int64?

            public var name: String?

            public var tbUserId: String?

            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avatar != nil {
                    map["avatar"] = self.avatar!
                }
                if self.email != nil {
                    map["email"] = self.email!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.tbUserId != nil {
                    map["tbUserId"] = self.tbUserId!
                }
                if self.username != nil {
                    map["username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("avatar") {
                    self.avatar = dict["avatar"] as! String
                }
                if dict.keys.contains("email") {
                    self.email = dict["email"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("tbUserId") {
                    self.tbUserId = dict["tbUserId"] as! String
                }
                if dict.keys.contains("username") {
                    self.username = dict["username"] as! String
                }
            }
        }
        public class AllowPushUsers : Tea.TeaModel {
            public var avatar: String?

            public var email: String?

            public var id: Int64?

            public var name: String?

            public var tbUserId: String?

            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avatar != nil {
                    map["avatar"] = self.avatar!
                }
                if self.email != nil {
                    map["email"] = self.email!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.tbUserId != nil {
                    map["tbUserId"] = self.tbUserId!
                }
                if self.username != nil {
                    map["username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("avatar") {
                    self.avatar = dict["avatar"] as! String
                }
                if dict.keys.contains("email") {
                    self.email = dict["email"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("tbUserId") {
                    self.tbUserId = dict["tbUserId"] as! String
                }
                if dict.keys.contains("username") {
                    self.username = dict["username"] as! String
                }
            }
        }
        public class MergeRequestSetting : Tea.TeaModel {
            public class DefaultAssignees : Tea.TeaModel {
                public var avatar: String?

                public var email: String?

                public var id: Int64?

                public var name: String?

                public var tbUserId: String?

                public var username: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.avatar != nil {
                        map["avatar"] = self.avatar!
                    }
                    if self.email != nil {
                        map["email"] = self.email!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.tbUserId != nil {
                        map["tbUserId"] = self.tbUserId!
                    }
                    if self.username != nil {
                        map["username"] = self.username!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("avatar") {
                        self.avatar = dict["avatar"] as! String
                    }
                    if dict.keys.contains("email") {
                        self.email = dict["email"] as! String
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! Int64
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("tbUserId") {
                        self.tbUserId = dict["tbUserId"] as! String
                    }
                    if dict.keys.contains("username") {
                        self.username = dict["username"] as! String
                    }
                }
            }
            public var allowMergeRequestRoles: [Int32]?

            public var defaultAssignees: [ListProtectedBranchesResponseBody.Result.MergeRequestSetting.DefaultAssignees]?

            public var isAllowSelfApproval: Bool?

            public var isRequireDiscussionProcessed: Bool?

            public var isRequired: Bool?

            public var isResetApprovalWhenNewPush: Bool?

            public var minimumApproval: Int32?

            public var mrMode: String?

            public var whiteList: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowMergeRequestRoles != nil {
                    map["allowMergeRequestRoles"] = self.allowMergeRequestRoles!
                }
                if self.defaultAssignees != nil {
                    var tmp : [Any] = []
                    for k in self.defaultAssignees! {
                        tmp.append(k.toMap())
                    }
                    map["defaultAssignees"] = tmp
                }
                if self.isAllowSelfApproval != nil {
                    map["isAllowSelfApproval"] = self.isAllowSelfApproval!
                }
                if self.isRequireDiscussionProcessed != nil {
                    map["isRequireDiscussionProcessed"] = self.isRequireDiscussionProcessed!
                }
                if self.isRequired != nil {
                    map["isRequired"] = self.isRequired!
                }
                if self.isResetApprovalWhenNewPush != nil {
                    map["isResetApprovalWhenNewPush"] = self.isResetApprovalWhenNewPush!
                }
                if self.minimumApproval != nil {
                    map["minimumApproval"] = self.minimumApproval!
                }
                if self.mrMode != nil {
                    map["mrMode"] = self.mrMode!
                }
                if self.whiteList != nil {
                    map["whiteList"] = self.whiteList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("allowMergeRequestRoles") {
                    self.allowMergeRequestRoles = dict["allowMergeRequestRoles"] as! [Int32]
                }
                if dict.keys.contains("defaultAssignees") {
                    self.defaultAssignees = dict["defaultAssignees"] as! [ListProtectedBranchesResponseBody.Result.MergeRequestSetting.DefaultAssignees]
                }
                if dict.keys.contains("isAllowSelfApproval") {
                    self.isAllowSelfApproval = dict["isAllowSelfApproval"] as! Bool
                }
                if dict.keys.contains("isRequireDiscussionProcessed") {
                    self.isRequireDiscussionProcessed = dict["isRequireDiscussionProcessed"] as! Bool
                }
                if dict.keys.contains("isRequired") {
                    self.isRequired = dict["isRequired"] as! Bool
                }
                if dict.keys.contains("isResetApprovalWhenNewPush") {
                    self.isResetApprovalWhenNewPush = dict["isResetApprovalWhenNewPush"] as! Bool
                }
                if dict.keys.contains("minimumApproval") {
                    self.minimumApproval = dict["minimumApproval"] as! Int32
                }
                if dict.keys.contains("mrMode") {
                    self.mrMode = dict["mrMode"] as! String
                }
                if dict.keys.contains("whiteList") {
                    self.whiteList = dict["whiteList"] as! String
                }
            }
        }
        public class TestSettingDTO : Tea.TeaModel {
            public class CheckConfig : Tea.TeaModel {
                public class CheckItems : Tea.TeaModel {
                    public var isRequired: Bool?

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
                        if self.isRequired != nil {
                            map["isRequired"] = self.isRequired!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("isRequired") {
                            self.isRequired = dict["isRequired"] as! Bool
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                    }
                }
                public var checkItems: [ListProtectedBranchesResponseBody.Result.TestSettingDTO.CheckConfig.CheckItems]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkItems != nil {
                        var tmp : [Any] = []
                        for k in self.checkItems! {
                            tmp.append(k.toMap())
                        }
                        map["checkItems"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("checkItems") {
                        self.checkItems = dict["checkItems"] as! [ListProtectedBranchesResponseBody.Result.TestSettingDTO.CheckConfig.CheckItems]
                    }
                }
            }
            public class CheckTaskQualityConfig : Tea.TeaModel {
                public var bizNo: String?

                public var enabled: Bool?

                public var message: String?

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
                    if self.bizNo != nil {
                        map["bizNo"] = self.bizNo!
                    }
                    if self.enabled != nil {
                        map["enabled"] = self.enabled!
                    }
                    if self.message != nil {
                        map["message"] = self.message!
                    }
                    if self.taskName != nil {
                        map["taskName"] = self.taskName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("bizNo") {
                        self.bizNo = dict["bizNo"] as! String
                    }
                    if dict.keys.contains("enabled") {
                        self.enabled = dict["enabled"] as! Bool
                    }
                    if dict.keys.contains("message") {
                        self.message = dict["message"] as! String
                    }
                    if dict.keys.contains("taskName") {
                        self.taskName = dict["taskName"] as! String
                    }
                }
            }
            public class CodeGuidelinesDetection : Tea.TeaModel {
                public var enabled: Bool?

                public var message: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enabled != nil {
                        map["enabled"] = self.enabled!
                    }
                    if self.message != nil {
                        map["message"] = self.message!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("enabled") {
                        self.enabled = dict["enabled"] as! Bool
                    }
                    if dict.keys.contains("message") {
                        self.message = dict["message"] as! String
                    }
                }
            }
            public class SensitiveInfoDetection : Tea.TeaModel {
                public var enabled: Bool?

                public var message: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enabled != nil {
                        map["enabled"] = self.enabled!
                    }
                    if self.message != nil {
                        map["message"] = self.message!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("enabled") {
                        self.enabled = dict["enabled"] as! Bool
                    }
                    if dict.keys.contains("message") {
                        self.message = dict["message"] as! String
                    }
                }
            }
            public var checkConfig: ListProtectedBranchesResponseBody.Result.TestSettingDTO.CheckConfig?

            public var checkTaskQualityConfig: ListProtectedBranchesResponseBody.Result.TestSettingDTO.CheckTaskQualityConfig?

            public var codeGuidelinesDetection: ListProtectedBranchesResponseBody.Result.TestSettingDTO.CodeGuidelinesDetection?

            public var isRequired: Bool?

            public var sensitiveInfoDetection: ListProtectedBranchesResponseBody.Result.TestSettingDTO.SensitiveInfoDetection?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.checkConfig?.validate()
                try self.checkTaskQualityConfig?.validate()
                try self.codeGuidelinesDetection?.validate()
                try self.sensitiveInfoDetection?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkConfig != nil {
                    map["checkConfig"] = self.checkConfig?.toMap()
                }
                if self.checkTaskQualityConfig != nil {
                    map["checkTaskQualityConfig"] = self.checkTaskQualityConfig?.toMap()
                }
                if self.codeGuidelinesDetection != nil {
                    map["codeGuidelinesDetection"] = self.codeGuidelinesDetection?.toMap()
                }
                if self.isRequired != nil {
                    map["isRequired"] = self.isRequired!
                }
                if self.sensitiveInfoDetection != nil {
                    map["sensitiveInfoDetection"] = self.sensitiveInfoDetection?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("checkConfig") {
                    var model = ListProtectedBranchesResponseBody.Result.TestSettingDTO.CheckConfig()
                    model.fromMap(dict["checkConfig"] as! [String: Any])
                    self.checkConfig = model
                }
                if dict.keys.contains("checkTaskQualityConfig") {
                    var model = ListProtectedBranchesResponseBody.Result.TestSettingDTO.CheckTaskQualityConfig()
                    model.fromMap(dict["checkTaskQualityConfig"] as! [String: Any])
                    self.checkTaskQualityConfig = model
                }
                if dict.keys.contains("codeGuidelinesDetection") {
                    var model = ListProtectedBranchesResponseBody.Result.TestSettingDTO.CodeGuidelinesDetection()
                    model.fromMap(dict["codeGuidelinesDetection"] as! [String: Any])
                    self.codeGuidelinesDetection = model
                }
                if dict.keys.contains("isRequired") {
                    self.isRequired = dict["isRequired"] as! Bool
                }
                if dict.keys.contains("sensitiveInfoDetection") {
                    var model = ListProtectedBranchesResponseBody.Result.TestSettingDTO.SensitiveInfoDetection()
                    model.fromMap(dict["sensitiveInfoDetection"] as! [String: Any])
                    self.sensitiveInfoDetection = model
                }
            }
        }
        public var allowMergeRoles: [Int32]?

        public var allowMergeUserIds: [Int64]?

        public var allowMergeUsers: [ListProtectedBranchesResponseBody.Result.AllowMergeUsers]?

        public var allowPushRoles: [Int32]?

        public var allowPushUserIds: [Int64]?

        public var allowPushUsers: [ListProtectedBranchesResponseBody.Result.AllowPushUsers]?

        public var branch: String?

        public var createdAt: String?

        public var id: Int64?

        public var matches: [String]?

        public var mergeRequestSetting: ListProtectedBranchesResponseBody.Result.MergeRequestSetting?

        public var testSettingDTO: ListProtectedBranchesResponseBody.Result.TestSettingDTO?

        public var updatedAt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.mergeRequestSetting?.validate()
            try self.testSettingDTO?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowMergeRoles != nil {
                map["allowMergeRoles"] = self.allowMergeRoles!
            }
            if self.allowMergeUserIds != nil {
                map["allowMergeUserIds"] = self.allowMergeUserIds!
            }
            if self.allowMergeUsers != nil {
                var tmp : [Any] = []
                for k in self.allowMergeUsers! {
                    tmp.append(k.toMap())
                }
                map["allowMergeUsers"] = tmp
            }
            if self.allowPushRoles != nil {
                map["allowPushRoles"] = self.allowPushRoles!
            }
            if self.allowPushUserIds != nil {
                map["allowPushUserIds"] = self.allowPushUserIds!
            }
            if self.allowPushUsers != nil {
                var tmp : [Any] = []
                for k in self.allowPushUsers! {
                    tmp.append(k.toMap())
                }
                map["allowPushUsers"] = tmp
            }
            if self.branch != nil {
                map["branch"] = self.branch!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.matches != nil {
                map["matches"] = self.matches!
            }
            if self.mergeRequestSetting != nil {
                map["mergeRequestSetting"] = self.mergeRequestSetting?.toMap()
            }
            if self.testSettingDTO != nil {
                map["testSettingDTO"] = self.testSettingDTO?.toMap()
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("allowMergeRoles") {
                self.allowMergeRoles = dict["allowMergeRoles"] as! [Int32]
            }
            if dict.keys.contains("allowMergeUserIds") {
                self.allowMergeUserIds = dict["allowMergeUserIds"] as! [Int64]
            }
            if dict.keys.contains("allowMergeUsers") {
                self.allowMergeUsers = dict["allowMergeUsers"] as! [ListProtectedBranchesResponseBody.Result.AllowMergeUsers]
            }
            if dict.keys.contains("allowPushRoles") {
                self.allowPushRoles = dict["allowPushRoles"] as! [Int32]
            }
            if dict.keys.contains("allowPushUserIds") {
                self.allowPushUserIds = dict["allowPushUserIds"] as! [Int64]
            }
            if dict.keys.contains("allowPushUsers") {
                self.allowPushUsers = dict["allowPushUsers"] as! [ListProtectedBranchesResponseBody.Result.AllowPushUsers]
            }
            if dict.keys.contains("branch") {
                self.branch = dict["branch"] as! String
            }
            if dict.keys.contains("createdAt") {
                self.createdAt = dict["createdAt"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("matches") {
                self.matches = dict["matches"] as! [String]
            }
            if dict.keys.contains("mergeRequestSetting") {
                var model = ListProtectedBranchesResponseBody.Result.MergeRequestSetting()
                model.fromMap(dict["mergeRequestSetting"] as! [String: Any])
                self.mergeRequestSetting = model
            }
            if dict.keys.contains("testSettingDTO") {
                var model = ListProtectedBranchesResponseBody.Result.TestSettingDTO()
                model.fromMap(dict["testSettingDTO"] as! [String: Any])
                self.testSettingDTO = model
            }
            if dict.keys.contains("updatedAt") {
                self.updatedAt = dict["updatedAt"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListProtectedBranchesResponseBody.Result]?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [ListProtectedBranchesResponseBody.Result]
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListProtectedBranchesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProtectedBranchesResponseBody?

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
            var model = ListProtectedBranchesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRepositoriesRequest : Tea.TeaModel {
    public var accessToken: String?

    public var archived: Bool?

    public var orderBy: String?

    public var organizationId: String?

    public var page: Int64?

    public var perPage: Int64?

    public var search: String?

    public var sort: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.archived != nil {
            map["archived"] = self.archived!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.perPage != nil {
            map["perPage"] = self.perPage!
        }
        if self.search != nil {
            map["search"] = self.search!
        }
        if self.sort != nil {
            map["sort"] = self.sort!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("archived") {
            self.archived = dict["archived"] as! Bool
        }
        if dict.keys.contains("orderBy") {
            self.orderBy = dict["orderBy"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int64
        }
        if dict.keys.contains("perPage") {
            self.perPage = dict["perPage"] as! Int64
        }
        if dict.keys.contains("search") {
            self.search = dict["search"] as! String
        }
        if dict.keys.contains("sort") {
            self.sort = dict["sort"] as! String
        }
    }
}

public class ListRepositoriesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var id: Int64?

        public var accessLevel: Int32?

        public var archive: Bool?

        public var avatarUrl: String?

        public var createdAt: String?

        public var description_: String?

        public var importStatus: String?

        public var lastActivityAt: String?

        public var name: String?

        public var nameWithNamespace: String?

        public var namespaceId: Int64?

        public var path: String?

        public var pathWithNamespace: String?

        public var star: Bool?

        public var starCount: Int64?

        public var updatedAt: String?

        public var visibilityLevel: String?

        public var webUrl: String?

        public override init() {
            super.init()
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
            if self.accessLevel != nil {
                map["accessLevel"] = self.accessLevel!
            }
            if self.archive != nil {
                map["archive"] = self.archive!
            }
            if self.avatarUrl != nil {
                map["avatarUrl"] = self.avatarUrl!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.importStatus != nil {
                map["importStatus"] = self.importStatus!
            }
            if self.lastActivityAt != nil {
                map["lastActivityAt"] = self.lastActivityAt!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.nameWithNamespace != nil {
                map["nameWithNamespace"] = self.nameWithNamespace!
            }
            if self.namespaceId != nil {
                map["namespaceId"] = self.namespaceId!
            }
            if self.path != nil {
                map["path"] = self.path!
            }
            if self.pathWithNamespace != nil {
                map["pathWithNamespace"] = self.pathWithNamespace!
            }
            if self.star != nil {
                map["star"] = self.star!
            }
            if self.starCount != nil {
                map["starCount"] = self.starCount!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.visibilityLevel != nil {
                map["visibilityLevel"] = self.visibilityLevel!
            }
            if self.webUrl != nil {
                map["webUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("accessLevel") {
                self.accessLevel = dict["accessLevel"] as! Int32
            }
            if dict.keys.contains("archive") {
                self.archive = dict["archive"] as! Bool
            }
            if dict.keys.contains("avatarUrl") {
                self.avatarUrl = dict["avatarUrl"] as! String
            }
            if dict.keys.contains("createdAt") {
                self.createdAt = dict["createdAt"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("importStatus") {
                self.importStatus = dict["importStatus"] as! String
            }
            if dict.keys.contains("lastActivityAt") {
                self.lastActivityAt = dict["lastActivityAt"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("nameWithNamespace") {
                self.nameWithNamespace = dict["nameWithNamespace"] as! String
            }
            if dict.keys.contains("namespaceId") {
                self.namespaceId = dict["namespaceId"] as! Int64
            }
            if dict.keys.contains("path") {
                self.path = dict["path"] as! String
            }
            if dict.keys.contains("pathWithNamespace") {
                self.pathWithNamespace = dict["pathWithNamespace"] as! String
            }
            if dict.keys.contains("star") {
                self.star = dict["star"] as! Bool
            }
            if dict.keys.contains("starCount") {
                self.starCount = dict["starCount"] as! Int64
            }
            if dict.keys.contains("updatedAt") {
                self.updatedAt = dict["updatedAt"] as! String
            }
            if dict.keys.contains("visibilityLevel") {
                self.visibilityLevel = dict["visibilityLevel"] as! String
            }
            if dict.keys.contains("webUrl") {
                self.webUrl = dict["webUrl"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListRepositoriesResponseBody.Result]?

    public var success: Bool?

    public var total: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! Int32
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [ListRepositoriesResponseBody.Result]
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int64
        }
    }
}

public class ListRepositoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepositoriesResponseBody?

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
            var model = ListRepositoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRepositoryBranchesRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var search: String?

    public var sort: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.search != nil {
            map["search"] = self.search!
        }
        if self.sort != nil {
            map["sort"] = self.sort!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("search") {
            self.search = dict["search"] as! String
        }
        if dict.keys.contains("sort") {
            self.sort = dict["sort"] as! String
        }
    }
}

public class ListRepositoryBranchesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Commit : Tea.TeaModel {
            public var authorEmail: String?

            public var authorName: String?

            public var authoredDate: String?

            public var committedDate: String?

            public var committerEmail: String?

            public var committerName: String?

            public var createdAt: String?

            public var id: String?

            public var message: String?

            public var parentIds: [String]?

            public var shortId: String?

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
                if self.authorEmail != nil {
                    map["authorEmail"] = self.authorEmail!
                }
                if self.authorName != nil {
                    map["authorName"] = self.authorName!
                }
                if self.authoredDate != nil {
                    map["authoredDate"] = self.authoredDate!
                }
                if self.committedDate != nil {
                    map["committedDate"] = self.committedDate!
                }
                if self.committerEmail != nil {
                    map["committerEmail"] = self.committerEmail!
                }
                if self.committerName != nil {
                    map["committerName"] = self.committerName!
                }
                if self.createdAt != nil {
                    map["createdAt"] = self.createdAt!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.message != nil {
                    map["message"] = self.message!
                }
                if self.parentIds != nil {
                    map["parentIds"] = self.parentIds!
                }
                if self.shortId != nil {
                    map["shortId"] = self.shortId!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("authorEmail") {
                    self.authorEmail = dict["authorEmail"] as! String
                }
                if dict.keys.contains("authorName") {
                    self.authorName = dict["authorName"] as! String
                }
                if dict.keys.contains("authoredDate") {
                    self.authoredDate = dict["authoredDate"] as! String
                }
                if dict.keys.contains("committedDate") {
                    self.committedDate = dict["committedDate"] as! String
                }
                if dict.keys.contains("committerEmail") {
                    self.committerEmail = dict["committerEmail"] as! String
                }
                if dict.keys.contains("committerName") {
                    self.committerName = dict["committerName"] as! String
                }
                if dict.keys.contains("createdAt") {
                    self.createdAt = dict["createdAt"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("message") {
                    self.message = dict["message"] as! String
                }
                if dict.keys.contains("parentIds") {
                    self.parentIds = dict["parentIds"] as! [String]
                }
                if dict.keys.contains("shortId") {
                    self.shortId = dict["shortId"] as! String
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
            }
        }
        public var commit: ListRepositoryBranchesResponseBody.Result.Commit?

        public var name: String?

        public var protected: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.commit?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commit != nil {
                map["commit"] = self.commit?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.protected != nil {
                map["protected"] = self.protected!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("commit") {
                var model = ListRepositoryBranchesResponseBody.Result.Commit()
                model.fromMap(dict["commit"] as! [String: Any])
                self.commit = model
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("protected") {
                self.protected = dict["protected"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListRepositoryBranchesResponseBody.Result]?

    public var success: Bool?

    public var total: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [ListRepositoryBranchesResponseBody.Result]
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! String
        }
    }
}

public class ListRepositoryBranchesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepositoryBranchesResponseBody?

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
            var model = ListRepositoryBranchesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRepositoryCommitDiffRequest : Tea.TeaModel {
    public var accessToken: String?

    public var contextLine: Int32?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.contextLine != nil {
            map["contextLine"] = self.contextLine!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("contextLine") {
            self.contextLine = dict["contextLine"] as! Int32
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
    }
}

public class ListRepositoryCommitDiffResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var aMode: String?

        public var bMode: String?

        public var deletedFile: Bool?

        public var diff: String?

        public var isBinary: Bool?

        public var isNewLfs: Bool?

        public var isOldLfs: Bool?

        public var newFile: Bool?

        public var newId: String?

        public var newPath: String?

        public var oldId: String?

        public var oldPath: String?

        public var renamedFile: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aMode != nil {
                map["aMode"] = self.aMode!
            }
            if self.bMode != nil {
                map["bMode"] = self.bMode!
            }
            if self.deletedFile != nil {
                map["deletedFile"] = self.deletedFile!
            }
            if self.diff != nil {
                map["diff"] = self.diff!
            }
            if self.isBinary != nil {
                map["isBinary"] = self.isBinary!
            }
            if self.isNewLfs != nil {
                map["isNewLfs"] = self.isNewLfs!
            }
            if self.isOldLfs != nil {
                map["isOldLfs"] = self.isOldLfs!
            }
            if self.newFile != nil {
                map["newFile"] = self.newFile!
            }
            if self.newId != nil {
                map["newId"] = self.newId!
            }
            if self.newPath != nil {
                map["newPath"] = self.newPath!
            }
            if self.oldId != nil {
                map["oldId"] = self.oldId!
            }
            if self.oldPath != nil {
                map["oldPath"] = self.oldPath!
            }
            if self.renamedFile != nil {
                map["renamedFile"] = self.renamedFile!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("aMode") {
                self.aMode = dict["aMode"] as! String
            }
            if dict.keys.contains("bMode") {
                self.bMode = dict["bMode"] as! String
            }
            if dict.keys.contains("deletedFile") {
                self.deletedFile = dict["deletedFile"] as! Bool
            }
            if dict.keys.contains("diff") {
                self.diff = dict["diff"] as! String
            }
            if dict.keys.contains("isBinary") {
                self.isBinary = dict["isBinary"] as! Bool
            }
            if dict.keys.contains("isNewLfs") {
                self.isNewLfs = dict["isNewLfs"] as! Bool
            }
            if dict.keys.contains("isOldLfs") {
                self.isOldLfs = dict["isOldLfs"] as! Bool
            }
            if dict.keys.contains("newFile") {
                self.newFile = dict["newFile"] as! Bool
            }
            if dict.keys.contains("newId") {
                self.newId = dict["newId"] as! String
            }
            if dict.keys.contains("newPath") {
                self.newPath = dict["newPath"] as! String
            }
            if dict.keys.contains("oldId") {
                self.oldId = dict["oldId"] as! String
            }
            if dict.keys.contains("oldPath") {
                self.oldPath = dict["oldPath"] as! String
            }
            if dict.keys.contains("renamedFile") {
                self.renamedFile = dict["renamedFile"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListRepositoryCommitDiffResponseBody.Result]?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [ListRepositoryCommitDiffResponseBody.Result]
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListRepositoryCommitDiffResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepositoryCommitDiffResponseBody?

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
            var model = ListRepositoryCommitDiffResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRepositoryMemberWithInheritedRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
    }
}

public class ListRepositoryMemberWithInheritedResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Inherited : Tea.TeaModel {
            public var id: Int64?

            public var name: String?

            public var nameWithNamespace: String?

            public var path: String?

            public var pathWithNamespace: String?

            public var type: String?

            public var visibilityLevel: String?

            public override init() {
                super.init()
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
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nameWithNamespace != nil {
                    map["nameWithNamespace"] = self.nameWithNamespace!
                }
                if self.path != nil {
                    map["path"] = self.path!
                }
                if self.pathWithNamespace != nil {
                    map["pathWithNamespace"] = self.pathWithNamespace!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.visibilityLevel != nil {
                    map["visibilityLevel"] = self.visibilityLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nameWithNamespace") {
                    self.nameWithNamespace = dict["nameWithNamespace"] as! String
                }
                if dict.keys.contains("path") {
                    self.path = dict["path"] as! String
                }
                if dict.keys.contains("pathWithNamespace") {
                    self.pathWithNamespace = dict["pathWithNamespace"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("visibilityLevel") {
                    self.visibilityLevel = dict["visibilityLevel"] as! String
                }
            }
        }
        public var accessLevel: Int32?

        public var avatarUrl: String?

        public var email: String?

        public var externUserId: String?

        public var id: Int64?

        public var inherited: ListRepositoryMemberWithInheritedResponseBody.Result.Inherited?

        public var name: String?

        public var state: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.inherited?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessLevel != nil {
                map["accessLevel"] = self.accessLevel!
            }
            if self.avatarUrl != nil {
                map["avatarUrl"] = self.avatarUrl!
            }
            if self.email != nil {
                map["email"] = self.email!
            }
            if self.externUserId != nil {
                map["externUserId"] = self.externUserId!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.inherited != nil {
                map["inherited"] = self.inherited?.toMap()
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.username != nil {
                map["username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accessLevel") {
                self.accessLevel = dict["accessLevel"] as! Int32
            }
            if dict.keys.contains("avatarUrl") {
                self.avatarUrl = dict["avatarUrl"] as! String
            }
            if dict.keys.contains("email") {
                self.email = dict["email"] as! String
            }
            if dict.keys.contains("externUserId") {
                self.externUserId = dict["externUserId"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("inherited") {
                var model = ListRepositoryMemberWithInheritedResponseBody.Result.Inherited()
                model.fromMap(dict["inherited"] as! [String: Any])
                self.inherited = model
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("state") {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("username") {
                self.username = dict["username"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListRepositoryMemberWithInheritedResponseBody.Result]?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [ListRepositoryMemberWithInheritedResponseBody.Result]
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListRepositoryMemberWithInheritedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepositoryMemberWithInheritedResponseBody?

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
            var model = ListRepositoryMemberWithInheritedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRepositoryTreeRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var path: String?

    public var refName: String?

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
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.refName != nil {
            map["refName"] = self.refName!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
        if dict.keys.contains("path") {
            self.path = dict["path"] as! String
        }
        if dict.keys.contains("refName") {
            self.refName = dict["refName"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ListRepositoryTreeResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var id: String?

        public var isLFS: Bool?

        public var mode: String?

        public var name: String?

        public var path: String?

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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.isLFS != nil {
                map["isLFS"] = self.isLFS!
            }
            if self.mode != nil {
                map["mode"] = self.mode!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.path != nil {
                map["path"] = self.path!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("isLFS") {
                self.isLFS = dict["isLFS"] as! Bool
            }
            if dict.keys.contains("mode") {
                self.mode = dict["mode"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("path") {
                self.path = dict["path"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListRepositoryTreeResponseBody.Result]?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [ListRepositoryTreeResponseBody.Result]
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListRepositoryTreeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepositoryTreeResponseBody?

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
            var model = ListRepositoryTreeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRepositoryWebhookRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var page: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int64
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int64
        }
    }
}

public class ListRepositoryWebhookResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createdAt: String?

        public var description_: String?

        public var enableSslVerification: Bool?

        public var id: Int64?

        public var lastTestResult: String?

        public var mergeRequestsEvents: Bool?

        public var noteEvents: Bool?

        public var projectId: Int64?

        public var pushEvents: Bool?

        public var secretToken: String?

        public var tagPushEvents: Bool?

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
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.enableSslVerification != nil {
                map["enableSslVerification"] = self.enableSslVerification!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.lastTestResult != nil {
                map["lastTestResult"] = self.lastTestResult!
            }
            if self.mergeRequestsEvents != nil {
                map["mergeRequestsEvents"] = self.mergeRequestsEvents!
            }
            if self.noteEvents != nil {
                map["noteEvents"] = self.noteEvents!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.pushEvents != nil {
                map["pushEvents"] = self.pushEvents!
            }
            if self.secretToken != nil {
                map["secretToken"] = self.secretToken!
            }
            if self.tagPushEvents != nil {
                map["tagPushEvents"] = self.tagPushEvents!
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createdAt") {
                self.createdAt = dict["createdAt"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("enableSslVerification") {
                self.enableSslVerification = dict["enableSslVerification"] as! Bool
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("lastTestResult") {
                self.lastTestResult = dict["lastTestResult"] as! String
            }
            if dict.keys.contains("mergeRequestsEvents") {
                self.mergeRequestsEvents = dict["mergeRequestsEvents"] as! Bool
            }
            if dict.keys.contains("noteEvents") {
                self.noteEvents = dict["noteEvents"] as! Bool
            }
            if dict.keys.contains("projectId") {
                self.projectId = dict["projectId"] as! Int64
            }
            if dict.keys.contains("pushEvents") {
                self.pushEvents = dict["pushEvents"] as! Bool
            }
            if dict.keys.contains("secretToken") {
                self.secretToken = dict["secretToken"] as! String
            }
            if dict.keys.contains("tagPushEvents") {
                self.tagPushEvents = dict["tagPushEvents"] as! Bool
            }
            if dict.keys.contains("url") {
                self.url = dict["url"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListRepositoryWebhookResponseBody.Result]?

    public var success: Bool?

    public var total: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["result"] = tmp
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            self.result = dict["result"] as! [ListRepositoryWebhookResponseBody.Result]
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int64
        }
    }
}

public class ListRepositoryWebhookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepositoryWebhookResponseBody?

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
            var model = ListRepositoryWebhookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourceMembersResponseBody : Tea.TeaModel {
    public class ResourceMembers : Tea.TeaModel {
        public var accountId: String?

        public var roleName: String?

        public var username: String?

        public override init() {
            super.init()
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
            if self.roleName != nil {
                map["roleName"] = self.roleName!
            }
            if self.username != nil {
                map["username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") {
                self.accountId = dict["accountId"] as! String
            }
            if dict.keys.contains("roleName") {
                self.roleName = dict["roleName"] as! String
            }
            if dict.keys.contains("username") {
                self.username = dict["username"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var resourceMembers: [ListResourceMembersResponseBody.ResourceMembers]?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resourceMembers != nil {
            var tmp : [Any] = []
            for k in self.resourceMembers! {
                tmp.append(k.toMap())
            }
            map["resourceMembers"] = tmp
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("resourceMembers") {
            self.resourceMembers = dict["resourceMembers"] as! [ListResourceMembersResponseBody.ResourceMembers]
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListResourceMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceMembersResponseBody?

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
            var model = ListResourceMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServiceConnectionsRequest : Tea.TeaModel {
    public var sericeConnectionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sericeConnectionType != nil {
            map["sericeConnectionType"] = self.sericeConnectionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("sericeConnectionType") {
            self.sericeConnectionType = dict["sericeConnectionType"] as! String
        }
    }
}

public class ListServiceConnectionsResponseBody : Tea.TeaModel {
    public class ServiceConnections : Tea.TeaModel {
        public var createTime: Int64?

        public var id: Int64?

        public var name: String?

        public var ownerAccountId: Int64?

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
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.ownerAccountId != nil {
                map["ownerAccountId"] = self.ownerAccountId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("ownerAccountId") {
                self.ownerAccountId = dict["ownerAccountId"] as! Int64
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var serviceConnections: [ListServiceConnectionsResponseBody.ServiceConnections]?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.serviceConnections != nil {
            var tmp : [Any] = []
            for k in self.serviceConnections! {
                tmp.append(k.toMap())
            }
            map["serviceConnections"] = tmp
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("serviceConnections") {
            self.serviceConnections = dict["serviceConnections"] as! [ListServiceConnectionsResponseBody.ServiceConnections]
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListServiceConnectionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceConnectionsResponseBody?

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
            var model = ListServiceConnectionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSprintsRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var nextToken: String?

    public var spaceIdentifier: String?

    public var spaceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.spaceIdentifier != nil {
            map["spaceIdentifier"] = self.spaceIdentifier!
        }
        if self.spaceType != nil {
            map["spaceType"] = self.spaceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int64
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("spaceIdentifier") {
            self.spaceIdentifier = dict["spaceIdentifier"] as! String
        }
        if dict.keys.contains("spaceType") {
            self.spaceType = dict["spaceType"] as! String
        }
    }
}

public class ListSprintsResponseBody : Tea.TeaModel {
    public class Sprints : Tea.TeaModel {
        public var creator: String?

        public var description_: String?

        public var endDate: Int64?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var identifier: String?

        public var modifier: String?

        public var name: String?

        public var scope: String?

        public var spaceIdentifier: String?

        public var startDate: Int64?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.endDate != nil {
                map["endDate"] = self.endDate!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.modifier != nil {
                map["modifier"] = self.modifier!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.scope != nil {
                map["scope"] = self.scope!
            }
            if self.spaceIdentifier != nil {
                map["spaceIdentifier"] = self.spaceIdentifier!
            }
            if self.startDate != nil {
                map["startDate"] = self.startDate!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("endDate") {
                self.endDate = dict["endDate"] as! Int64
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! Int64
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("modifier") {
                self.modifier = dict["modifier"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("scope") {
                self.scope = dict["scope"] as! String
            }
            if dict.keys.contains("spaceIdentifier") {
                self.spaceIdentifier = dict["spaceIdentifier"] as! String
            }
            if dict.keys.contains("startDate") {
                self.startDate = dict["startDate"] as! Int64
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var requestId: String?

    public var sprints: [ListSprintsResponseBody.Sprints]?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
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
        if self.sprints != nil {
            var tmp : [Any] = []
            for k in self.sprints! {
                tmp.append(k.toMap())
            }
            map["sprints"] = tmp
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int64
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("sprints") {
            self.sprints = dict["sprints"] as! [ListSprintsResponseBody.Sprints]
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int64
        }
    }
}

public class ListSprintsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSprintsResponseBody?

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
            var model = ListSprintsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVariableGroupsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var pageOrder: String?

    public var pageSort: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.pageOrder != nil {
            map["pageOrder"] = self.pageOrder!
        }
        if self.pageSort != nil {
            map["pageSort"] = self.pageSort!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("pageOrder") {
            self.pageOrder = dict["pageOrder"] as! String
        }
        if dict.keys.contains("pageSort") {
            self.pageSort = dict["pageSort"] as! String
        }
    }
}

public class ListVariableGroupsResponseBody : Tea.TeaModel {
    public class VariableGroups : Tea.TeaModel {
        public class RelatedPipelines : Tea.TeaModel {
            public var id: Int64?

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
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
            }
        }
        public class Variables : Tea.TeaModel {
            public var isEncrypted: Bool?

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
                if self.isEncrypted != nil {
                    map["isEncrypted"] = self.isEncrypted!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("isEncrypted") {
                    self.isEncrypted = dict["isEncrypted"] as! Bool
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var createTime: Int64?

        public var creatorAccountId: String?

        public var description_: String?

        public var id: Int64?

        public var modifierAccountId: String?

        public var name: String?

        public var relatedPipelines: [ListVariableGroupsResponseBody.VariableGroups.RelatedPipelines]?

        public var updateTime: Int64?

        public var variables: [ListVariableGroupsResponseBody.VariableGroups.Variables]?

        public override init() {
            super.init()
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
                map["createTime"] = self.createTime!
            }
            if self.creatorAccountId != nil {
                map["creatorAccountId"] = self.creatorAccountId!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.modifierAccountId != nil {
                map["modifierAccountId"] = self.modifierAccountId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.relatedPipelines != nil {
                var tmp : [Any] = []
                for k in self.relatedPipelines! {
                    tmp.append(k.toMap())
                }
                map["relatedPipelines"] = tmp
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.variables != nil {
                var tmp : [Any] = []
                for k in self.variables! {
                    tmp.append(k.toMap())
                }
                map["variables"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("creatorAccountId") {
                self.creatorAccountId = dict["creatorAccountId"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("modifierAccountId") {
                self.modifierAccountId = dict["modifierAccountId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("relatedPipelines") {
                self.relatedPipelines = dict["relatedPipelines"] as! [ListVariableGroupsResponseBody.VariableGroups.RelatedPipelines]
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! Int64
            }
            if dict.keys.contains("variables") {
                self.variables = dict["variables"] as! [ListVariableGroupsResponseBody.VariableGroups.Variables]
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public var variableGroups: [ListVariableGroupsResponseBody.VariableGroups]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.variableGroups != nil {
            var tmp : [Any] = []
            for k in self.variableGroups! {
                tmp.append(k.toMap())
            }
            map["variableGroups"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int64
        }
        if dict.keys.contains("variableGroups") {
            self.variableGroups = dict["variableGroups"] as! [ListVariableGroupsResponseBody.VariableGroups]
        }
    }
}

public class ListVariableGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVariableGroupsResponseBody?

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
            var model = ListVariableGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWorkItemAllFieldsRequest : Tea.TeaModel {
    public var spaceIdentifier: String?

    public var spaceType: String?

    public var workitemTypeIdentifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.spaceIdentifier != nil {
            map["spaceIdentifier"] = self.spaceIdentifier!
        }
        if self.spaceType != nil {
            map["spaceType"] = self.spaceType!
        }
        if self.workitemTypeIdentifier != nil {
            map["workitemTypeIdentifier"] = self.workitemTypeIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("spaceIdentifier") {
            self.spaceIdentifier = dict["spaceIdentifier"] as! String
        }
        if dict.keys.contains("spaceType") {
            self.spaceType = dict["spaceType"] as! String
        }
        if dict.keys.contains("workitemTypeIdentifier") {
            self.workitemTypeIdentifier = dict["workitemTypeIdentifier"] as! String
        }
    }
}

public class ListWorkItemAllFieldsResponseBody : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
        public class Options : Tea.TeaModel {
            public var displayValue: String?

            public var fieldIdentifier: String?

            public var identifier: String?

            public var level: Int64?

            public var position: Int64?

            public var value: String?

            public var valueEn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.displayValue != nil {
                    map["displayValue"] = self.displayValue!
                }
                if self.fieldIdentifier != nil {
                    map["fieldIdentifier"] = self.fieldIdentifier!
                }
                if self.identifier != nil {
                    map["identifier"] = self.identifier!
                }
                if self.level != nil {
                    map["level"] = self.level!
                }
                if self.position != nil {
                    map["position"] = self.position!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                if self.valueEn != nil {
                    map["valueEn"] = self.valueEn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("displayValue") {
                    self.displayValue = dict["displayValue"] as! String
                }
                if dict.keys.contains("fieldIdentifier") {
                    self.fieldIdentifier = dict["fieldIdentifier"] as! String
                }
                if dict.keys.contains("identifier") {
                    self.identifier = dict["identifier"] as! String
                }
                if dict.keys.contains("level") {
                    self.level = dict["level"] as! Int64
                }
                if dict.keys.contains("position") {
                    self.position = dict["position"] as! Int64
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
                if dict.keys.contains("valueEn") {
                    self.valueEn = dict["valueEn"] as! String
                }
            }
        }
        public var className: String?

        public var creator: String?

        public var defaultValue: String?

        public var description_: String?

        public var format: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var identifier: String?

        public var isRequired: Bool?

        public var isShowWhenCreate: Bool?

        public var isSystemRequired: Bool?

        public var linkWithService: String?

        public var modifier: String?

        public var name: String?

        public var options: [ListWorkItemAllFieldsResponseBody.Fields.Options]?

        public var resourceType: String?

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
            if self.className != nil {
                map["className"] = self.className!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.defaultValue != nil {
                map["defaultValue"] = self.defaultValue!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.format != nil {
                map["format"] = self.format!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.isRequired != nil {
                map["isRequired"] = self.isRequired!
            }
            if self.isShowWhenCreate != nil {
                map["isShowWhenCreate"] = self.isShowWhenCreate!
            }
            if self.isSystemRequired != nil {
                map["isSystemRequired"] = self.isSystemRequired!
            }
            if self.linkWithService != nil {
                map["linkWithService"] = self.linkWithService!
            }
            if self.modifier != nil {
                map["modifier"] = self.modifier!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.options != nil {
                var tmp : [Any] = []
                for k in self.options! {
                    tmp.append(k.toMap())
                }
                map["options"] = tmp
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("className") {
                self.className = dict["className"] as! String
            }
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("defaultValue") {
                self.defaultValue = dict["defaultValue"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("format") {
                self.format = dict["format"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! Int64
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("isRequired") {
                self.isRequired = dict["isRequired"] as! Bool
            }
            if dict.keys.contains("isShowWhenCreate") {
                self.isShowWhenCreate = dict["isShowWhenCreate"] as! Bool
            }
            if dict.keys.contains("isSystemRequired") {
                self.isSystemRequired = dict["isSystemRequired"] as! Bool
            }
            if dict.keys.contains("linkWithService") {
                self.linkWithService = dict["linkWithService"] as! String
            }
            if dict.keys.contains("modifier") {
                self.modifier = dict["modifier"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("options") {
                self.options = dict["options"] as! [ListWorkItemAllFieldsResponseBody.Fields.Options]
            }
            if dict.keys.contains("resourceType") {
                self.resourceType = dict["resourceType"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var fields: [ListWorkItemAllFieldsResponseBody.Fields]?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["fields"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("fields") {
            self.fields = dict["fields"] as! [ListWorkItemAllFieldsResponseBody.Fields]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListWorkItemAllFieldsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkItemAllFieldsResponseBody?

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
            var model = ListWorkItemAllFieldsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWorkItemWorkFlowStatusRequest : Tea.TeaModel {
    public var spaceIdentifier: String?

    public var spaceType: String?

    public var workitemCategoryIdentifier: String?

    public var workitemTypeIdentifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.spaceIdentifier != nil {
            map["spaceIdentifier"] = self.spaceIdentifier!
        }
        if self.spaceType != nil {
            map["spaceType"] = self.spaceType!
        }
        if self.workitemCategoryIdentifier != nil {
            map["workitemCategoryIdentifier"] = self.workitemCategoryIdentifier!
        }
        if self.workitemTypeIdentifier != nil {
            map["workitemTypeIdentifier"] = self.workitemTypeIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("spaceIdentifier") {
            self.spaceIdentifier = dict["spaceIdentifier"] as! String
        }
        if dict.keys.contains("spaceType") {
            self.spaceType = dict["spaceType"] as! String
        }
        if dict.keys.contains("workitemCategoryIdentifier") {
            self.workitemCategoryIdentifier = dict["workitemCategoryIdentifier"] as! String
        }
        if dict.keys.contains("workitemTypeIdentifier") {
            self.workitemTypeIdentifier = dict["workitemTypeIdentifier"] as! String
        }
    }
}

public class ListWorkItemWorkFlowStatusResponseBody : Tea.TeaModel {
    public class Statuses : Tea.TeaModel {
        public var creator: String?

        public var description_: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var identifier: String?

        public var modifier: String?

        public var name: String?

        public var resourceType: String?

        public var source: String?

        public var workflowStageIdentifier: String?

        public var workflowStageName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.modifier != nil {
                map["modifier"] = self.modifier!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.workflowStageIdentifier != nil {
                map["workflowStageIdentifier"] = self.workflowStageIdentifier!
            }
            if self.workflowStageName != nil {
                map["workflowStageName"] = self.workflowStageName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! Int64
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("modifier") {
                self.modifier = dict["modifier"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("resourceType") {
                self.resourceType = dict["resourceType"] as! String
            }
            if dict.keys.contains("source") {
                self.source = dict["source"] as! String
            }
            if dict.keys.contains("workflowStageIdentifier") {
                self.workflowStageIdentifier = dict["workflowStageIdentifier"] as! String
            }
            if dict.keys.contains("workflowStageName") {
                self.workflowStageName = dict["workflowStageName"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var statuses: [ListWorkItemWorkFlowStatusResponseBody.Statuses]?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.statuses != nil {
            var tmp : [Any] = []
            for k in self.statuses! {
                tmp.append(k.toMap())
            }
            map["statuses"] = tmp
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("statuses") {
            self.statuses = dict["statuses"] as! [ListWorkItemWorkFlowStatusResponseBody.Statuses]
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ListWorkItemWorkFlowStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkItemWorkFlowStatusResponseBody?

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
            var model = ListWorkItemWorkFlowStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWorkitemTimeResponseBody : Tea.TeaModel {
    public class WorkitemTime : Tea.TeaModel {
        public var actualTime: Int64?

        public var description_: String?

        public var gmtCreate: Int64?

        public var gmtEnd: Int64?

        public var gmtModified: Int64?

        public var gmtStart: Int64?

        public var identifier: String?

        public var recordUser: String?

        public var type: String?

        public var workitemIdentifier: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actualTime != nil {
                map["actualTime"] = self.actualTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtEnd != nil {
                map["gmtEnd"] = self.gmtEnd!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.gmtStart != nil {
                map["gmtStart"] = self.gmtStart!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.recordUser != nil {
                map["recordUser"] = self.recordUser!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.workitemIdentifier != nil {
                map["workitemIdentifier"] = self.workitemIdentifier!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("actualTime") {
                self.actualTime = dict["actualTime"] as! Int64
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("gmtEnd") {
                self.gmtEnd = dict["gmtEnd"] as! Int64
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! Int64
            }
            if dict.keys.contains("gmtStart") {
                self.gmtStart = dict["gmtStart"] as! Int64
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("recordUser") {
                self.recordUser = dict["recordUser"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("workitemIdentifier") {
                self.workitemIdentifier = dict["workitemIdentifier"] as! String
            }
        }
    }
    public var code: Int64?

    public var errorCode: String?

    public var errorMsg: String?

    public var requestId: String?

    public var success: Bool?

    public var workitemTime: [ListWorkitemTimeResponseBody.WorkitemTime]?

    public override init() {
        super.init()
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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.workitemTime != nil {
            var tmp : [Any] = []
            for k in self.workitemTime! {
                tmp.append(k.toMap())
            }
            map["workitemTime"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("workitemTime") {
            self.workitemTime = dict["workitemTime"] as! [ListWorkitemTimeResponseBody.WorkitemTime]
        }
    }
}

public class ListWorkitemTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkitemTimeResponseBody?

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
            var model = ListWorkitemTimeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWorkitemsRequest : Tea.TeaModel {
    public var category: String?

    public var conditions: String?

    public var extraConditions: String?

    public var groupCondition: String?

    public var maxResults: String?

    public var nextToken: String?

    public var orderBy: String?

    public var searchType: String?

    public var spaceIdentifier: String?

    public var spaceType: String?

    public override init() {
        super.init()
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
            map["category"] = self.category!
        }
        if self.conditions != nil {
            map["conditions"] = self.conditions!
        }
        if self.extraConditions != nil {
            map["extraConditions"] = self.extraConditions!
        }
        if self.groupCondition != nil {
            map["groupCondition"] = self.groupCondition!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.searchType != nil {
            map["searchType"] = self.searchType!
        }
        if self.spaceIdentifier != nil {
            map["spaceIdentifier"] = self.spaceIdentifier!
        }
        if self.spaceType != nil {
            map["spaceType"] = self.spaceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("category") {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("conditions") {
            self.conditions = dict["conditions"] as! String
        }
        if dict.keys.contains("extraConditions") {
            self.extraConditions = dict["extraConditions"] as! String
        }
        if dict.keys.contains("groupCondition") {
            self.groupCondition = dict["groupCondition"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! String
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("orderBy") {
            self.orderBy = dict["orderBy"] as! String
        }
        if dict.keys.contains("searchType") {
            self.searchType = dict["searchType"] as! String
        }
        if dict.keys.contains("spaceIdentifier") {
            self.spaceIdentifier = dict["spaceIdentifier"] as! String
        }
        if dict.keys.contains("spaceType") {
            self.spaceType = dict["spaceType"] as! String
        }
    }
}

public class ListWorkitemsResponseBody : Tea.TeaModel {
    public class Workitems : Tea.TeaModel {
        public var assignedTo: String?

        public var categoryIdentifier: String?

        public var creator: String?

        public var document: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var identifier: String?

        public var logicalStatus: String?

        public var modifier: String?

        public var parentIdentifier: String?

        public var serialNumber: String?

        public var spaceIdentifier: String?

        public var spaceName: String?

        public var spaceType: String?

        public var sprintIdentifier: String?

        public var status: String?

        public var statusIdentifier: String?

        public var statusStageIdentifier: String?

        public var subject: String?

        public var updateStatusAt: Int64?

        public var workitemTypeIdentifier: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assignedTo != nil {
                map["assignedTo"] = self.assignedTo!
            }
            if self.categoryIdentifier != nil {
                map["categoryIdentifier"] = self.categoryIdentifier!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.document != nil {
                map["document"] = self.document!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.logicalStatus != nil {
                map["logicalStatus"] = self.logicalStatus!
            }
            if self.modifier != nil {
                map["modifier"] = self.modifier!
            }
            if self.parentIdentifier != nil {
                map["parentIdentifier"] = self.parentIdentifier!
            }
            if self.serialNumber != nil {
                map["serialNumber"] = self.serialNumber!
            }
            if self.spaceIdentifier != nil {
                map["spaceIdentifier"] = self.spaceIdentifier!
            }
            if self.spaceName != nil {
                map["spaceName"] = self.spaceName!
            }
            if self.spaceType != nil {
                map["spaceType"] = self.spaceType!
            }
            if self.sprintIdentifier != nil {
                map["sprintIdentifier"] = self.sprintIdentifier!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusIdentifier != nil {
                map["statusIdentifier"] = self.statusIdentifier!
            }
            if self.statusStageIdentifier != nil {
                map["statusStageIdentifier"] = self.statusStageIdentifier!
            }
            if self.subject != nil {
                map["subject"] = self.subject!
            }
            if self.updateStatusAt != nil {
                map["updateStatusAt"] = self.updateStatusAt!
            }
            if self.workitemTypeIdentifier != nil {
                map["workitemTypeIdentifier"] = self.workitemTypeIdentifier!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assignedTo") {
                self.assignedTo = dict["assignedTo"] as! String
            }
            if dict.keys.contains("categoryIdentifier") {
                self.categoryIdentifier = dict["categoryIdentifier"] as! String
            }
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("document") {
                self.document = dict["document"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! Int64
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("logicalStatus") {
                self.logicalStatus = dict["logicalStatus"] as! String
            }
            if dict.keys.contains("modifier") {
                self.modifier = dict["modifier"] as! String
            }
            if dict.keys.contains("parentIdentifier") {
                self.parentIdentifier = dict["parentIdentifier"] as! String
            }
            if dict.keys.contains("serialNumber") {
                self.serialNumber = dict["serialNumber"] as! String
            }
            if dict.keys.contains("spaceIdentifier") {
                self.spaceIdentifier = dict["spaceIdentifier"] as! String
            }
            if dict.keys.contains("spaceName") {
                self.spaceName = dict["spaceName"] as! String
            }
            if dict.keys.contains("spaceType") {
                self.spaceType = dict["spaceType"] as! String
            }
            if dict.keys.contains("sprintIdentifier") {
                self.sprintIdentifier = dict["sprintIdentifier"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("statusIdentifier") {
                self.statusIdentifier = dict["statusIdentifier"] as! String
            }
            if dict.keys.contains("statusStageIdentifier") {
                self.statusStageIdentifier = dict["statusStageIdentifier"] as! String
            }
            if dict.keys.contains("subject") {
                self.subject = dict["subject"] as! String
            }
            if dict.keys.contains("updateStatusAt") {
                self.updateStatusAt = dict["updateStatusAt"] as! Int64
            }
            if dict.keys.contains("workitemTypeIdentifier") {
                self.workitemTypeIdentifier = dict["workitemTypeIdentifier"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public var workitems: [ListWorkitemsResponseBody.Workitems]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
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
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.workitems != nil {
            var tmp : [Any] = []
            for k in self.workitems! {
                tmp.append(k.toMap())
            }
            map["workitems"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int64
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int64
        }
        if dict.keys.contains("workitems") {
            self.workitems = dict["workitems"] as! [ListWorkitemsResponseBody.Workitems]
        }
    }
}

public class ListWorkitemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkitemsResponseBody?

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
            var model = ListWorkitemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWorkspacesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var statusList: [String]?

    public var workspaceTemplateList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.statusList != nil {
            map["statusList"] = self.statusList!
        }
        if self.workspaceTemplateList != nil {
            map["workspaceTemplateList"] = self.workspaceTemplateList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("statusList") {
            self.statusList = dict["statusList"] as! [String]
        }
        if dict.keys.contains("workspaceTemplateList") {
            self.workspaceTemplateList = dict["workspaceTemplateList"] as! [String]
        }
    }
}

public class ListWorkspacesShrinkRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var statusListShrink: String?

    public var workspaceTemplateListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.statusListShrink != nil {
            map["statusList"] = self.statusListShrink!
        }
        if self.workspaceTemplateListShrink != nil {
            map["workspaceTemplateList"] = self.workspaceTemplateListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("statusList") {
            self.statusListShrink = dict["statusList"] as! String
        }
        if dict.keys.contains("workspaceTemplateList") {
            self.workspaceTemplateListShrink = dict["workspaceTemplateList"] as! String
        }
    }
}

public class ListWorkspacesResponseBody : Tea.TeaModel {
    public class Workspaces : Tea.TeaModel {
        public var codeUrl: String?

        public var codeVersion: String?

        public var createTime: String?

        public var id: String?

        public var name: String?

        public var spec: String?

        public var status: String?

        public var template: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeUrl != nil {
                map["codeUrl"] = self.codeUrl!
            }
            if self.codeVersion != nil {
                map["codeVersion"] = self.codeVersion!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.spec != nil {
                map["spec"] = self.spec!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.template != nil {
                map["template"] = self.template!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("codeUrl") {
                self.codeUrl = dict["codeUrl"] as! String
            }
            if dict.keys.contains("codeVersion") {
                self.codeVersion = dict["codeVersion"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("spec") {
                self.spec = dict["spec"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("template") {
                self.template = dict["template"] as! String
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var workspaces: [ListWorkspacesResponseBody.Workspaces]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
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
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.workspaces != nil {
            var tmp : [Any] = []
            for k in self.workspaces! {
                tmp.append(k.toMap())
            }
            map["workspaces"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
        if dict.keys.contains("workspaces") {
            self.workspaces = dict["workspaces"] as! [ListWorkspacesResponseBody.Workspaces]
        }
    }
}

public class ListWorkspacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkspacesResponseBody?

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
            var model = ListWorkspacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LogPipelineJobRunResponseBody : Tea.TeaModel {
    public class Log : Tea.TeaModel {
        public var content: String?

        public var more: Bool?

        public override init() {
            super.init()
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
            if self.more != nil {
                map["more"] = self.more!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("more") {
                self.more = dict["more"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var log: LogPipelineJobRunResponseBody.Log?

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
        try self.log?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.log != nil {
            map["log"] = self.log?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("log") {
            var model = LogPipelineJobRunResponseBody.Log()
            model.fromMap(dict["log"] as! [String: Any])
            self.log = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class LogPipelineJobRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LogPipelineJobRunResponseBody?

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
            var model = LogPipelineJobRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LogVMDeployMachineResponseBody : Tea.TeaModel {
    public class DeployMachineLog : Tea.TeaModel {
        public var aliyunRegion: String?

        public var deployBeginTime: Int64?

        public var deployEndTime: Int64?

        public var deployLog: String?

        public var deployLogPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunRegion != nil {
                map["aliyunRegion"] = self.aliyunRegion!
            }
            if self.deployBeginTime != nil {
                map["deployBeginTime"] = self.deployBeginTime!
            }
            if self.deployEndTime != nil {
                map["deployEndTime"] = self.deployEndTime!
            }
            if self.deployLog != nil {
                map["deployLog"] = self.deployLog!
            }
            if self.deployLogPath != nil {
                map["deployLogPath"] = self.deployLogPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("aliyunRegion") {
                self.aliyunRegion = dict["aliyunRegion"] as! String
            }
            if dict.keys.contains("deployBeginTime") {
                self.deployBeginTime = dict["deployBeginTime"] as! Int64
            }
            if dict.keys.contains("deployEndTime") {
                self.deployEndTime = dict["deployEndTime"] as! Int64
            }
            if dict.keys.contains("deployLog") {
                self.deployLog = dict["deployLog"] as! String
            }
            if dict.keys.contains("deployLogPath") {
                self.deployLogPath = dict["deployLogPath"] as! String
            }
        }
    }
    public var deployMachineLog: LogVMDeployMachineResponseBody.DeployMachineLog?

    public var errorCode: String?

    public var errorMessage: String?

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
        try self.deployMachineLog?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deployMachineLog != nil {
            map["deployMachineLog"] = self.deployMachineLog?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deployMachineLog") {
            var model = LogVMDeployMachineResponseBody.DeployMachineLog()
            model.fromMap(dict["deployMachineLog"] as! [String: Any])
            self.deployMachineLog = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class LogVMDeployMachineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LogVMDeployMachineResponseBody?

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
            var model = LogVMDeployMachineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PassPipelineValidateResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class PassPipelineValidateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PassPipelineValidateResponseBody?

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
            var model = PassPipelineValidateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefusePipelineValidateResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class RefusePipelineValidateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefusePipelineValidateResponseBody?

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
            var model = RefusePipelineValidateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseWorkspaceResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ReleaseWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseWorkspaceResponseBody?

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
            var model = ReleaseWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetSshKeyResponseBody : Tea.TeaModel {
    public class SshKey : Tea.TeaModel {
        public var id: Int64?

        public var publicKey: String?

        public override init() {
            super.init()
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
                map["id"] = self.id!
            }
            if self.publicKey != nil {
                map["publicKey"] = self.publicKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("publicKey") {
                self.publicKey = dict["publicKey"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var sshKey: ResetSshKeyResponseBody.SshKey?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sshKey?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sshKey != nil {
            map["sshKey"] = self.sshKey?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("sshKey") {
            var model = ResetSshKeyResponseBody.SshKey()
            model.fromMap(dict["sshKey"] as! [String: Any])
            self.sshKey = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ResetSshKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetSshKeyResponseBody?

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
            var model = ResetSshKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResumeVMDeployOrderResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ResumeVMDeployOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeVMDeployOrderResponseBody?

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
            var model = ResumeVMDeployOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RetryPipelineJobRunResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class RetryPipelineJobRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetryPipelineJobRunResponseBody?

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
            var model = RetryPipelineJobRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RetryVMDeployMachineResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class RetryVMDeployMachineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetryVMDeployMachineResponseBody?

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
            var model = RetryVMDeployMachineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SkipPipelineJobRunResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class SkipPipelineJobRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SkipPipelineJobRunResponseBody?

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
            var model = SkipPipelineJobRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SkipVMDeployMachineResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class SkipVMDeployMachineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SkipVMDeployMachineResponseBody?

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
            var model = SkipVMDeployMachineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartPipelineRunRequest : Tea.TeaModel {
    public var params: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.params != nil {
            map["params"] = self.params!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("params") {
            self.params = dict["params"] as! String
        }
    }
}

public class StartPipelineRunResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var pipelineRunId: Int64?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.pipelineRunId != nil {
            map["pipelineRunId"] = self.pipelineRunId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("pipelineRunId") {
            self.pipelineRunId = dict["pipelineRunId"] as! Int64
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class StartPipelineRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartPipelineRunResponseBody?

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
            var model = StartPipelineRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopPipelineJobRunResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class StopPipelineJobRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopPipelineJobRunResponseBody?

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
            var model = StopPipelineJobRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopPipelineRunResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class StopPipelineRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopPipelineRunResponseBody?

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
            var model = StopPipelineRunResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopVMDeployOrderResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class StopVMDeployOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopVMDeployOrderResponseBody?

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
            var model = StopVMDeployOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TriggerRepositoryMirrorSyncRequest : Tea.TeaModel {
    public var accessToken: String?

    public var account: String?

    public var organizationId: String?

    public var token: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.account != nil {
            map["account"] = self.account!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("account") {
            self.account = dict["account"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
        if dict.keys.contains("token") {
            self.token = dict["token"] as! String
        }
    }
}

public class TriggerRepositoryMirrorSyncResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var result: Bool?

        public override init() {
            super.init()
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
                map["result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("result") {
                self.result = dict["result"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: TriggerRepositoryMirrorSyncResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = TriggerRepositoryMirrorSyncResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class TriggerRepositoryMirrorSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TriggerRepositoryMirrorSyncResponseBody?

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
            var model = TriggerRepositoryMirrorSyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFileRequest : Tea.TeaModel {
    public var accessToken: String?

    public var branchName: String?

    public var commitMessage: String?

    public var content: String?

    public var encoding: String?

    public var newPath: String?

    public var oldPath: String?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.branchName != nil {
            map["branchName"] = self.branchName!
        }
        if self.commitMessage != nil {
            map["commitMessage"] = self.commitMessage!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.encoding != nil {
            map["encoding"] = self.encoding!
        }
        if self.newPath != nil {
            map["newPath"] = self.newPath!
        }
        if self.oldPath != nil {
            map["oldPath"] = self.oldPath!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("branchName") {
            self.branchName = dict["branchName"] as! String
        }
        if dict.keys.contains("commitMessage") {
            self.commitMessage = dict["commitMessage"] as! String
        }
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("encoding") {
            self.encoding = dict["encoding"] as! String
        }
        if dict.keys.contains("newPath") {
            self.newPath = dict["newPath"] as! String
        }
        if dict.keys.contains("oldPath") {
            self.oldPath = dict["oldPath"] as! String
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
    }
}

public class UpdateFileResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var branchName: String?

        public var filePath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.branchName != nil {
                map["branchName"] = self.branchName!
            }
            if self.filePath != nil {
                map["filePath"] = self.filePath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("branchName") {
                self.branchName = dict["branchName"] as! String
            }
            if dict.keys.contains("filePath") {
                self.filePath = dict["filePath"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: UpdateFileResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = UpdateFileResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdateFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFileResponseBody?

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
            var model = UpdateFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFlowTagRequest : Tea.TeaModel {
    public var color: String?

    public var flowTagGroupId: Int64?

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
        if self.color != nil {
            map["color"] = self.color!
        }
        if self.flowTagGroupId != nil {
            map["flowTagGroupId"] = self.flowTagGroupId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("color") {
            self.color = dict["color"] as! String
        }
        if dict.keys.contains("flowTagGroupId") {
            self.flowTagGroupId = dict["flowTagGroupId"] as! Int64
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class UpdateFlowTagResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdateFlowTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFlowTagResponseBody?

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
            var model = UpdateFlowTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFlowTagGroupRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class UpdateFlowTagGroupResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdateFlowTagGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFlowTagGroupResponseBody?

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
            var model = UpdateFlowTagGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateHostGroupRequest : Tea.TeaModel {
    public var aliyunRegion: String?

    public var ecsLabelKey: String?

    public var ecsLabelValue: String?

    public var ecsType: String?

    public var envId: String?

    public var machineInfos: String?

    public var name: String?

    public var serviceConnectionId: Int64?

    public var tagIds: String?

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
        if self.aliyunRegion != nil {
            map["aliyunRegion"] = self.aliyunRegion!
        }
        if self.ecsLabelKey != nil {
            map["ecsLabelKey"] = self.ecsLabelKey!
        }
        if self.ecsLabelValue != nil {
            map["ecsLabelValue"] = self.ecsLabelValue!
        }
        if self.ecsType != nil {
            map["ecsType"] = self.ecsType!
        }
        if self.envId != nil {
            map["envId"] = self.envId!
        }
        if self.machineInfos != nil {
            map["machineInfos"] = self.machineInfos!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.serviceConnectionId != nil {
            map["serviceConnectionId"] = self.serviceConnectionId!
        }
        if self.tagIds != nil {
            map["tagIds"] = self.tagIds!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("aliyunRegion") {
            self.aliyunRegion = dict["aliyunRegion"] as! String
        }
        if dict.keys.contains("ecsLabelKey") {
            self.ecsLabelKey = dict["ecsLabelKey"] as! String
        }
        if dict.keys.contains("ecsLabelValue") {
            self.ecsLabelValue = dict["ecsLabelValue"] as! String
        }
        if dict.keys.contains("ecsType") {
            self.ecsType = dict["ecsType"] as! String
        }
        if dict.keys.contains("envId") {
            self.envId = dict["envId"] as! String
        }
        if dict.keys.contains("machineInfos") {
            self.machineInfos = dict["machineInfos"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("serviceConnectionId") {
            self.serviceConnectionId = dict["serviceConnectionId"] as! Int64
        }
        if dict.keys.contains("tagIds") {
            self.tagIds = dict["tagIds"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class UpdateHostGroupResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdateHostGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateHostGroupResponseBody?

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
            var model = UpdateHostGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePipelineBaseInfoRequest : Tea.TeaModel {
    public var envId: Int64?

    public var pipelineName: String?

    public var tagList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.envId != nil {
            map["envId"] = self.envId!
        }
        if self.pipelineName != nil {
            map["pipelineName"] = self.pipelineName!
        }
        if self.tagList != nil {
            map["tagList"] = self.tagList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("envId") {
            self.envId = dict["envId"] as! Int64
        }
        if dict.keys.contains("pipelineName") {
            self.pipelineName = dict["pipelineName"] as! String
        }
        if dict.keys.contains("tagList") {
            self.tagList = dict["tagList"] as! String
        }
    }
}

public class UpdatePipelineBaseInfoResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdatePipelineBaseInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePipelineBaseInfoResponseBody?

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
            var model = UpdatePipelineBaseInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePipelineGroupRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class UpdatePipelineGroupResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdatePipelineGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePipelineGroupResponseBody?

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
            var model = UpdatePipelineGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProjectMemberRequest : Tea.TeaModel {
    public var roleIdentifier: String?

    public var targetIdentifier: String?

    public var targetType: String?

    public var userIdentifier: String?

    public var userType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleIdentifier != nil {
            map["roleIdentifier"] = self.roleIdentifier!
        }
        if self.targetIdentifier != nil {
            map["targetIdentifier"] = self.targetIdentifier!
        }
        if self.targetType != nil {
            map["targetType"] = self.targetType!
        }
        if self.userIdentifier != nil {
            map["userIdentifier"] = self.userIdentifier!
        }
        if self.userType != nil {
            map["userType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("roleIdentifier") {
            self.roleIdentifier = dict["roleIdentifier"] as! String
        }
        if dict.keys.contains("targetIdentifier") {
            self.targetIdentifier = dict["targetIdentifier"] as! String
        }
        if dict.keys.contains("targetType") {
            self.targetType = dict["targetType"] as! String
        }
        if dict.keys.contains("userIdentifier") {
            self.userIdentifier = dict["userIdentifier"] as! String
        }
        if dict.keys.contains("userType") {
            self.userType = dict["userType"] as! String
        }
    }
}

public class UpdateProjectMemberResponseBody : Tea.TeaModel {
    public class Member : Tea.TeaModel {
        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: String?

        public var roleIdentifier: String?

        public var targetIdentifier: String?

        public var targetType: String?

        public var userIdentifier: String?

        public var userType: String?

        public override init() {
            super.init()
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
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.roleIdentifier != nil {
                map["roleIdentifier"] = self.roleIdentifier!
            }
            if self.targetIdentifier != nil {
                map["targetIdentifier"] = self.targetIdentifier!
            }
            if self.targetType != nil {
                map["targetType"] = self.targetType!
            }
            if self.userIdentifier != nil {
                map["userIdentifier"] = self.userIdentifier!
            }
            if self.userType != nil {
                map["userType"] = self.userType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! Int64
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("roleIdentifier") {
                self.roleIdentifier = dict["roleIdentifier"] as! String
            }
            if dict.keys.contains("targetIdentifier") {
                self.targetIdentifier = dict["targetIdentifier"] as! String
            }
            if dict.keys.contains("targetType") {
                self.targetType = dict["targetType"] as! String
            }
            if dict.keys.contains("userIdentifier") {
                self.userIdentifier = dict["userIdentifier"] as! String
            }
            if dict.keys.contains("userType") {
                self.userType = dict["userType"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMsg: String?

    public var member: UpdateProjectMemberResponseBody.Member?

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
        try self.member?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.member != nil {
            map["member"] = self.member?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("member") {
            var model = UpdateProjectMemberResponseBody.Member()
            model.fromMap(dict["member"] as! [String: Any])
            self.member = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdateProjectMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProjectMemberResponseBody?

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
            var model = UpdateProjectMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProtectedBranchesRequest : Tea.TeaModel {
    public class MergeRequestSetting : Tea.TeaModel {
        public var allowMergeRequestRoles: [Int32]?

        public var defaultAssignees: [Int32]?

        public var isAllowSelfApproval: Bool?

        public var isRequireDiscussionProcessed: Bool?

        public var isRequired: Bool?

        public var isResetApprovalWhenNewPush: Bool?

        public var minimumApproval: Int32?

        public var mrMode: String?

        public var whiteList: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowMergeRequestRoles != nil {
                map["allowMergeRequestRoles"] = self.allowMergeRequestRoles!
            }
            if self.defaultAssignees != nil {
                map["defaultAssignees"] = self.defaultAssignees!
            }
            if self.isAllowSelfApproval != nil {
                map["isAllowSelfApproval"] = self.isAllowSelfApproval!
            }
            if self.isRequireDiscussionProcessed != nil {
                map["isRequireDiscussionProcessed"] = self.isRequireDiscussionProcessed!
            }
            if self.isRequired != nil {
                map["isRequired"] = self.isRequired!
            }
            if self.isResetApprovalWhenNewPush != nil {
                map["isResetApprovalWhenNewPush"] = self.isResetApprovalWhenNewPush!
            }
            if self.minimumApproval != nil {
                map["minimumApproval"] = self.minimumApproval!
            }
            if self.mrMode != nil {
                map["mrMode"] = self.mrMode!
            }
            if self.whiteList != nil {
                map["whiteList"] = self.whiteList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("allowMergeRequestRoles") {
                self.allowMergeRequestRoles = dict["allowMergeRequestRoles"] as! [Int32]
            }
            if dict.keys.contains("defaultAssignees") {
                self.defaultAssignees = dict["defaultAssignees"] as! [Int32]
            }
            if dict.keys.contains("isAllowSelfApproval") {
                self.isAllowSelfApproval = dict["isAllowSelfApproval"] as! Bool
            }
            if dict.keys.contains("isRequireDiscussionProcessed") {
                self.isRequireDiscussionProcessed = dict["isRequireDiscussionProcessed"] as! Bool
            }
            if dict.keys.contains("isRequired") {
                self.isRequired = dict["isRequired"] as! Bool
            }
            if dict.keys.contains("isResetApprovalWhenNewPush") {
                self.isResetApprovalWhenNewPush = dict["isResetApprovalWhenNewPush"] as! Bool
            }
            if dict.keys.contains("minimumApproval") {
                self.minimumApproval = dict["minimumApproval"] as! Int32
            }
            if dict.keys.contains("mrMode") {
                self.mrMode = dict["mrMode"] as! String
            }
            if dict.keys.contains("whiteList") {
                self.whiteList = dict["whiteList"] as! String
            }
        }
    }
    public class TestSettingDTO : Tea.TeaModel {
        public class CheckConfig : Tea.TeaModel {
            public class CheckItems : Tea.TeaModel {
                public var isRequired: Bool?

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
                    if self.isRequired != nil {
                        map["isRequired"] = self.isRequired!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("isRequired") {
                        self.isRequired = dict["isRequired"] as! Bool
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                }
            }
            public var checkItems: [UpdateProtectedBranchesRequest.TestSettingDTO.CheckConfig.CheckItems]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkItems != nil {
                    var tmp : [Any] = []
                    for k in self.checkItems! {
                        tmp.append(k.toMap())
                    }
                    map["checkItems"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("checkItems") {
                    self.checkItems = dict["checkItems"] as! [UpdateProtectedBranchesRequest.TestSettingDTO.CheckConfig.CheckItems]
                }
            }
        }
        public class CheckTaskQualityConfig : Tea.TeaModel {
            public var bizNo: String?

            public var enabled: Bool?

            public var message: String?

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
                if self.bizNo != nil {
                    map["bizNo"] = self.bizNo!
                }
                if self.enabled != nil {
                    map["enabled"] = self.enabled!
                }
                if self.message != nil {
                    map["message"] = self.message!
                }
                if self.taskName != nil {
                    map["taskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("bizNo") {
                    self.bizNo = dict["bizNo"] as! String
                }
                if dict.keys.contains("enabled") {
                    self.enabled = dict["enabled"] as! Bool
                }
                if dict.keys.contains("message") {
                    self.message = dict["message"] as! String
                }
                if dict.keys.contains("taskName") {
                    self.taskName = dict["taskName"] as! String
                }
            }
        }
        public class CodeGuidelinesDetection : Tea.TeaModel {
            public var enabled: Bool?

            public var message: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enabled != nil {
                    map["enabled"] = self.enabled!
                }
                if self.message != nil {
                    map["message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enabled") {
                    self.enabled = dict["enabled"] as! Bool
                }
                if dict.keys.contains("message") {
                    self.message = dict["message"] as! String
                }
            }
        }
        public class SensitiveInfoDetection : Tea.TeaModel {
            public var enabled: Bool?

            public var message: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enabled != nil {
                    map["enabled"] = self.enabled!
                }
                if self.message != nil {
                    map["message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enabled") {
                    self.enabled = dict["enabled"] as! Bool
                }
                if dict.keys.contains("message") {
                    self.message = dict["message"] as! String
                }
            }
        }
        public var checkConfig: UpdateProtectedBranchesRequest.TestSettingDTO.CheckConfig?

        public var checkTaskQualityConfig: UpdateProtectedBranchesRequest.TestSettingDTO.CheckTaskQualityConfig?

        public var codeGuidelinesDetection: UpdateProtectedBranchesRequest.TestSettingDTO.CodeGuidelinesDetection?

        public var isRequired: Bool?

        public var sensitiveInfoDetection: UpdateProtectedBranchesRequest.TestSettingDTO.SensitiveInfoDetection?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.checkConfig?.validate()
            try self.checkTaskQualityConfig?.validate()
            try self.codeGuidelinesDetection?.validate()
            try self.sensitiveInfoDetection?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkConfig != nil {
                map["checkConfig"] = self.checkConfig?.toMap()
            }
            if self.checkTaskQualityConfig != nil {
                map["checkTaskQualityConfig"] = self.checkTaskQualityConfig?.toMap()
            }
            if self.codeGuidelinesDetection != nil {
                map["codeGuidelinesDetection"] = self.codeGuidelinesDetection?.toMap()
            }
            if self.isRequired != nil {
                map["isRequired"] = self.isRequired!
            }
            if self.sensitiveInfoDetection != nil {
                map["sensitiveInfoDetection"] = self.sensitiveInfoDetection?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("checkConfig") {
                var model = UpdateProtectedBranchesRequest.TestSettingDTO.CheckConfig()
                model.fromMap(dict["checkConfig"] as! [String: Any])
                self.checkConfig = model
            }
            if dict.keys.contains("checkTaskQualityConfig") {
                var model = UpdateProtectedBranchesRequest.TestSettingDTO.CheckTaskQualityConfig()
                model.fromMap(dict["checkTaskQualityConfig"] as! [String: Any])
                self.checkTaskQualityConfig = model
            }
            if dict.keys.contains("codeGuidelinesDetection") {
                var model = UpdateProtectedBranchesRequest.TestSettingDTO.CodeGuidelinesDetection()
                model.fromMap(dict["codeGuidelinesDetection"] as! [String: Any])
                self.codeGuidelinesDetection = model
            }
            if dict.keys.contains("isRequired") {
                self.isRequired = dict["isRequired"] as! Bool
            }
            if dict.keys.contains("sensitiveInfoDetection") {
                var model = UpdateProtectedBranchesRequest.TestSettingDTO.SensitiveInfoDetection()
                model.fromMap(dict["sensitiveInfoDetection"] as! [String: Any])
                self.sensitiveInfoDetection = model
            }
        }
    }
    public var accessToken: String?

    public var allowMergeRoles: [Int32]?

    public var allowMergeUserIds: [Int64]?

    public var allowPushRoles: [Int32]?

    public var allowPushUserIds: [Int64]?

    public var branch: String?

    public var id: Int64?

    public var mergeRequestSetting: UpdateProtectedBranchesRequest.MergeRequestSetting?

    public var testSettingDTO: UpdateProtectedBranchesRequest.TestSettingDTO?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.mergeRequestSetting?.validate()
        try self.testSettingDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.allowMergeRoles != nil {
            map["allowMergeRoles"] = self.allowMergeRoles!
        }
        if self.allowMergeUserIds != nil {
            map["allowMergeUserIds"] = self.allowMergeUserIds!
        }
        if self.allowPushRoles != nil {
            map["allowPushRoles"] = self.allowPushRoles!
        }
        if self.allowPushUserIds != nil {
            map["allowPushUserIds"] = self.allowPushUserIds!
        }
        if self.branch != nil {
            map["branch"] = self.branch!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.mergeRequestSetting != nil {
            map["mergeRequestSetting"] = self.mergeRequestSetting?.toMap()
        }
        if self.testSettingDTO != nil {
            map["testSettingDTO"] = self.testSettingDTO?.toMap()
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("allowMergeRoles") {
            self.allowMergeRoles = dict["allowMergeRoles"] as! [Int32]
        }
        if dict.keys.contains("allowMergeUserIds") {
            self.allowMergeUserIds = dict["allowMergeUserIds"] as! [Int64]
        }
        if dict.keys.contains("allowPushRoles") {
            self.allowPushRoles = dict["allowPushRoles"] as! [Int32]
        }
        if dict.keys.contains("allowPushUserIds") {
            self.allowPushUserIds = dict["allowPushUserIds"] as! [Int64]
        }
        if dict.keys.contains("branch") {
            self.branch = dict["branch"] as! String
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! Int64
        }
        if dict.keys.contains("mergeRequestSetting") {
            var model = UpdateProtectedBranchesRequest.MergeRequestSetting()
            model.fromMap(dict["mergeRequestSetting"] as! [String: Any])
            self.mergeRequestSetting = model
        }
        if dict.keys.contains("testSettingDTO") {
            var model = UpdateProtectedBranchesRequest.TestSettingDTO()
            model.fromMap(dict["testSettingDTO"] as! [String: Any])
            self.testSettingDTO = model
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
    }
}

public class UpdateProtectedBranchesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class MergeRequestSetting : Tea.TeaModel {
            public var allowMergeRequestRoles: [Int32]?

            public var defaultAssignees: [Int32]?

            public var isAllowSelfApproval: Bool?

            public var isRequireDiscussionProcessed: Bool?

            public var isRequired: Bool?

            public var isResetApprovalWhenNewPush: Bool?

            public var minimumApproval: Int32?

            public var mrMode: String?

            public var whiteList: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowMergeRequestRoles != nil {
                    map["allowMergeRequestRoles"] = self.allowMergeRequestRoles!
                }
                if self.defaultAssignees != nil {
                    map["defaultAssignees"] = self.defaultAssignees!
                }
                if self.isAllowSelfApproval != nil {
                    map["isAllowSelfApproval"] = self.isAllowSelfApproval!
                }
                if self.isRequireDiscussionProcessed != nil {
                    map["isRequireDiscussionProcessed"] = self.isRequireDiscussionProcessed!
                }
                if self.isRequired != nil {
                    map["isRequired"] = self.isRequired!
                }
                if self.isResetApprovalWhenNewPush != nil {
                    map["isResetApprovalWhenNewPush"] = self.isResetApprovalWhenNewPush!
                }
                if self.minimumApproval != nil {
                    map["minimumApproval"] = self.minimumApproval!
                }
                if self.mrMode != nil {
                    map["mrMode"] = self.mrMode!
                }
                if self.whiteList != nil {
                    map["whiteList"] = self.whiteList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("allowMergeRequestRoles") {
                    self.allowMergeRequestRoles = dict["allowMergeRequestRoles"] as! [Int32]
                }
                if dict.keys.contains("defaultAssignees") {
                    self.defaultAssignees = dict["defaultAssignees"] as! [Int32]
                }
                if dict.keys.contains("isAllowSelfApproval") {
                    self.isAllowSelfApproval = dict["isAllowSelfApproval"] as! Bool
                }
                if dict.keys.contains("isRequireDiscussionProcessed") {
                    self.isRequireDiscussionProcessed = dict["isRequireDiscussionProcessed"] as! Bool
                }
                if dict.keys.contains("isRequired") {
                    self.isRequired = dict["isRequired"] as! Bool
                }
                if dict.keys.contains("isResetApprovalWhenNewPush") {
                    self.isResetApprovalWhenNewPush = dict["isResetApprovalWhenNewPush"] as! Bool
                }
                if dict.keys.contains("minimumApproval") {
                    self.minimumApproval = dict["minimumApproval"] as! Int32
                }
                if dict.keys.contains("mrMode") {
                    self.mrMode = dict["mrMode"] as! String
                }
                if dict.keys.contains("whiteList") {
                    self.whiteList = dict["whiteList"] as! String
                }
            }
        }
        public class TestSettingDTO : Tea.TeaModel {
            public class CheckConfig : Tea.TeaModel {
                public class CheckItems : Tea.TeaModel {
                    public var isRequired: Bool?

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
                        if self.isRequired != nil {
                            map["isRequired"] = self.isRequired!
                        }
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("isRequired") {
                            self.isRequired = dict["isRequired"] as! Bool
                        }
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                    }
                }
                public var checkItems: [UpdateProtectedBranchesResponseBody.Result.TestSettingDTO.CheckConfig.CheckItems]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkItems != nil {
                        var tmp : [Any] = []
                        for k in self.checkItems! {
                            tmp.append(k.toMap())
                        }
                        map["checkItems"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("checkItems") {
                        self.checkItems = dict["checkItems"] as! [UpdateProtectedBranchesResponseBody.Result.TestSettingDTO.CheckConfig.CheckItems]
                    }
                }
            }
            public class CheckTaskQualityConfig : Tea.TeaModel {
                public var bizNo: String?

                public var enabled: Bool?

                public var message: String?

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
                    if self.bizNo != nil {
                        map["bizNo"] = self.bizNo!
                    }
                    if self.enabled != nil {
                        map["enabled"] = self.enabled!
                    }
                    if self.message != nil {
                        map["message"] = self.message!
                    }
                    if self.taskName != nil {
                        map["taskName"] = self.taskName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("bizNo") {
                        self.bizNo = dict["bizNo"] as! String
                    }
                    if dict.keys.contains("enabled") {
                        self.enabled = dict["enabled"] as! Bool
                    }
                    if dict.keys.contains("message") {
                        self.message = dict["message"] as! String
                    }
                    if dict.keys.contains("taskName") {
                        self.taskName = dict["taskName"] as! String
                    }
                }
            }
            public class CodeGuidelinesDetection : Tea.TeaModel {
                public var enabled: Bool?

                public var message: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enabled != nil {
                        map["enabled"] = self.enabled!
                    }
                    if self.message != nil {
                        map["message"] = self.message!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("enabled") {
                        self.enabled = dict["enabled"] as! Bool
                    }
                    if dict.keys.contains("message") {
                        self.message = dict["message"] as! String
                    }
                }
            }
            public class SensitiveInfoDetection : Tea.TeaModel {
                public var enabled: Bool?

                public var message: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enabled != nil {
                        map["enabled"] = self.enabled!
                    }
                    if self.message != nil {
                        map["message"] = self.message!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("enabled") {
                        self.enabled = dict["enabled"] as! Bool
                    }
                    if dict.keys.contains("message") {
                        self.message = dict["message"] as! String
                    }
                }
            }
            public var checkConfig: UpdateProtectedBranchesResponseBody.Result.TestSettingDTO.CheckConfig?

            public var checkTaskQualityConfig: UpdateProtectedBranchesResponseBody.Result.TestSettingDTO.CheckTaskQualityConfig?

            public var codeGuidelinesDetection: UpdateProtectedBranchesResponseBody.Result.TestSettingDTO.CodeGuidelinesDetection?

            public var isRequired: Bool?

            public var sensitiveInfoDetection: UpdateProtectedBranchesResponseBody.Result.TestSettingDTO.SensitiveInfoDetection?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.checkConfig?.validate()
                try self.checkTaskQualityConfig?.validate()
                try self.codeGuidelinesDetection?.validate()
                try self.sensitiveInfoDetection?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkConfig != nil {
                    map["checkConfig"] = self.checkConfig?.toMap()
                }
                if self.checkTaskQualityConfig != nil {
                    map["checkTaskQualityConfig"] = self.checkTaskQualityConfig?.toMap()
                }
                if self.codeGuidelinesDetection != nil {
                    map["codeGuidelinesDetection"] = self.codeGuidelinesDetection?.toMap()
                }
                if self.isRequired != nil {
                    map["isRequired"] = self.isRequired!
                }
                if self.sensitiveInfoDetection != nil {
                    map["sensitiveInfoDetection"] = self.sensitiveInfoDetection?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("checkConfig") {
                    var model = UpdateProtectedBranchesResponseBody.Result.TestSettingDTO.CheckConfig()
                    model.fromMap(dict["checkConfig"] as! [String: Any])
                    self.checkConfig = model
                }
                if dict.keys.contains("checkTaskQualityConfig") {
                    var model = UpdateProtectedBranchesResponseBody.Result.TestSettingDTO.CheckTaskQualityConfig()
                    model.fromMap(dict["checkTaskQualityConfig"] as! [String: Any])
                    self.checkTaskQualityConfig = model
                }
                if dict.keys.contains("codeGuidelinesDetection") {
                    var model = UpdateProtectedBranchesResponseBody.Result.TestSettingDTO.CodeGuidelinesDetection()
                    model.fromMap(dict["codeGuidelinesDetection"] as! [String: Any])
                    self.codeGuidelinesDetection = model
                }
                if dict.keys.contains("isRequired") {
                    self.isRequired = dict["isRequired"] as! Bool
                }
                if dict.keys.contains("sensitiveInfoDetection") {
                    var model = UpdateProtectedBranchesResponseBody.Result.TestSettingDTO.SensitiveInfoDetection()
                    model.fromMap(dict["sensitiveInfoDetection"] as! [String: Any])
                    self.sensitiveInfoDetection = model
                }
            }
        }
        public var allowMergeRoles: [Int32]?

        public var allowMergeUserIds: [Int64]?

        public var allowPushRoles: [Int32]?

        public var allowPushUserIds: [Int64]?

        public var branch: String?

        public var id: Int64?

        public var mergeRequestSetting: UpdateProtectedBranchesResponseBody.Result.MergeRequestSetting?

        public var testSettingDTO: UpdateProtectedBranchesResponseBody.Result.TestSettingDTO?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.mergeRequestSetting?.validate()
            try self.testSettingDTO?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowMergeRoles != nil {
                map["allowMergeRoles"] = self.allowMergeRoles!
            }
            if self.allowMergeUserIds != nil {
                map["allowMergeUserIds"] = self.allowMergeUserIds!
            }
            if self.allowPushRoles != nil {
                map["allowPushRoles"] = self.allowPushRoles!
            }
            if self.allowPushUserIds != nil {
                map["allowPushUserIds"] = self.allowPushUserIds!
            }
            if self.branch != nil {
                map["branch"] = self.branch!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.mergeRequestSetting != nil {
                map["mergeRequestSetting"] = self.mergeRequestSetting?.toMap()
            }
            if self.testSettingDTO != nil {
                map["testSettingDTO"] = self.testSettingDTO?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("allowMergeRoles") {
                self.allowMergeRoles = dict["allowMergeRoles"] as! [Int32]
            }
            if dict.keys.contains("allowMergeUserIds") {
                self.allowMergeUserIds = dict["allowMergeUserIds"] as! [Int64]
            }
            if dict.keys.contains("allowPushRoles") {
                self.allowPushRoles = dict["allowPushRoles"] as! [Int32]
            }
            if dict.keys.contains("allowPushUserIds") {
                self.allowPushUserIds = dict["allowPushUserIds"] as! [Int64]
            }
            if dict.keys.contains("branch") {
                self.branch = dict["branch"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("mergeRequestSetting") {
                var model = UpdateProtectedBranchesResponseBody.Result.MergeRequestSetting()
                model.fromMap(dict["mergeRequestSetting"] as! [String: Any])
                self.mergeRequestSetting = model
            }
            if dict.keys.contains("testSettingDTO") {
                var model = UpdateProtectedBranchesResponseBody.Result.TestSettingDTO()
                model.fromMap(dict["testSettingDTO"] as! [String: Any])
                self.testSettingDTO = model
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: UpdateProtectedBranchesResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = UpdateProtectedBranchesResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdateProtectedBranchesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProtectedBranchesResponseBody?

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
            var model = UpdateProtectedBranchesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateRepositoryRequest : Tea.TeaModel {
    public class ProjectCloneDownloadMethodList : Tea.TeaModel {
        public var allowed: Bool?

        public var permissionCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowed != nil {
                map["allowed"] = self.allowed!
            }
            if self.permissionCode != nil {
                map["permissionCode"] = self.permissionCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("allowed") {
                self.allowed = dict["allowed"] as! Bool
            }
            if dict.keys.contains("permissionCode") {
                self.permissionCode = dict["permissionCode"] as! String
            }
        }
    }
    public class ProjectCloneDownloadRoleList : Tea.TeaModel {
        public var allowed: Bool?

        public var roleCode: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowed != nil {
                map["allowed"] = self.allowed!
            }
            if self.roleCode != nil {
                map["roleCode"] = self.roleCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("allowed") {
                self.allowed = dict["allowed"] as! Bool
            }
            if dict.keys.contains("roleCode") {
                self.roleCode = dict["roleCode"] as! Int32
            }
        }
    }
    public var accessToken: String?

    public var adminSettingLanguage: String?

    public var avatar: String?

    public var buildsEnabled: Bool?

    public var checkEmail: Bool?

    public var defaultBranch: String?

    public var description_: String?

    public var id: Int64?

    public var issuesEnabled: Bool?

    public var mergeRequestsEnabled: Bool?

    public var name: String?

    public var openCloneDownloadControl: Bool?

    public var path: String?

    public var projectCloneDownloadMethodList: [UpdateRepositoryRequest.ProjectCloneDownloadMethodList]?

    public var projectCloneDownloadRoleList: [UpdateRepositoryRequest.ProjectCloneDownloadRoleList]?

    public var snippetsEnabled: Bool?

    public var visibilityLevel: Int32?

    public var wikiEnabled: Bool?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.adminSettingLanguage != nil {
            map["adminSettingLanguage"] = self.adminSettingLanguage!
        }
        if self.avatar != nil {
            map["avatar"] = self.avatar!
        }
        if self.buildsEnabled != nil {
            map["buildsEnabled"] = self.buildsEnabled!
        }
        if self.checkEmail != nil {
            map["checkEmail"] = self.checkEmail!
        }
        if self.defaultBranch != nil {
            map["defaultBranch"] = self.defaultBranch!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.issuesEnabled != nil {
            map["issuesEnabled"] = self.issuesEnabled!
        }
        if self.mergeRequestsEnabled != nil {
            map["mergeRequestsEnabled"] = self.mergeRequestsEnabled!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.openCloneDownloadControl != nil {
            map["openCloneDownloadControl"] = self.openCloneDownloadControl!
        }
        if self.path != nil {
            map["path"] = self.path!
        }
        if self.projectCloneDownloadMethodList != nil {
            var tmp : [Any] = []
            for k in self.projectCloneDownloadMethodList! {
                tmp.append(k.toMap())
            }
            map["projectCloneDownloadMethodList"] = tmp
        }
        if self.projectCloneDownloadRoleList != nil {
            var tmp : [Any] = []
            for k in self.projectCloneDownloadRoleList! {
                tmp.append(k.toMap())
            }
            map["projectCloneDownloadRoleList"] = tmp
        }
        if self.snippetsEnabled != nil {
            map["snippetsEnabled"] = self.snippetsEnabled!
        }
        if self.visibilityLevel != nil {
            map["visibilityLevel"] = self.visibilityLevel!
        }
        if self.wikiEnabled != nil {
            map["wikiEnabled"] = self.wikiEnabled!
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("adminSettingLanguage") {
            self.adminSettingLanguage = dict["adminSettingLanguage"] as! String
        }
        if dict.keys.contains("avatar") {
            self.avatar = dict["avatar"] as! String
        }
        if dict.keys.contains("buildsEnabled") {
            self.buildsEnabled = dict["buildsEnabled"] as! Bool
        }
        if dict.keys.contains("checkEmail") {
            self.checkEmail = dict["checkEmail"] as! Bool
        }
        if dict.keys.contains("defaultBranch") {
            self.defaultBranch = dict["defaultBranch"] as! String
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! Int64
        }
        if dict.keys.contains("issuesEnabled") {
            self.issuesEnabled = dict["issuesEnabled"] as! Bool
        }
        if dict.keys.contains("mergeRequestsEnabled") {
            self.mergeRequestsEnabled = dict["mergeRequestsEnabled"] as! Bool
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("openCloneDownloadControl") {
            self.openCloneDownloadControl = dict["openCloneDownloadControl"] as! Bool
        }
        if dict.keys.contains("path") {
            self.path = dict["path"] as! String
        }
        if dict.keys.contains("projectCloneDownloadMethodList") {
            self.projectCloneDownloadMethodList = dict["projectCloneDownloadMethodList"] as! [UpdateRepositoryRequest.ProjectCloneDownloadMethodList]
        }
        if dict.keys.contains("projectCloneDownloadRoleList") {
            self.projectCloneDownloadRoleList = dict["projectCloneDownloadRoleList"] as! [UpdateRepositoryRequest.ProjectCloneDownloadRoleList]
        }
        if dict.keys.contains("snippetsEnabled") {
            self.snippetsEnabled = dict["snippetsEnabled"] as! Bool
        }
        if dict.keys.contains("visibilityLevel") {
            self.visibilityLevel = dict["visibilityLevel"] as! Int32
        }
        if dict.keys.contains("wikiEnabled") {
            self.wikiEnabled = dict["wikiEnabled"] as! Bool
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
    }
}

public class UpdateRepositoryResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Namespace : Tea.TeaModel {
            public var avatar: String?

            public var createdAt: String?

            public var description_: String?

            public var id: Int64?

            public var name: String?

            public var ownerId: Int64?

            public var path: String?

            public var updatedAt: String?

            public var visibilityLevel: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avatar != nil {
                    map["avatar"] = self.avatar!
                }
                if self.createdAt != nil {
                    map["createdAt"] = self.createdAt!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.ownerId != nil {
                    map["ownerId"] = self.ownerId!
                }
                if self.path != nil {
                    map["path"] = self.path!
                }
                if self.updatedAt != nil {
                    map["updatedAt"] = self.updatedAt!
                }
                if self.visibilityLevel != nil {
                    map["visibilityLevel"] = self.visibilityLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("avatar") {
                    self.avatar = dict["avatar"] as! String
                }
                if dict.keys.contains("createdAt") {
                    self.createdAt = dict["createdAt"] as! String
                }
                if dict.keys.contains("description") {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("ownerId") {
                    self.ownerId = dict["ownerId"] as! Int64
                }
                if dict.keys.contains("path") {
                    self.path = dict["path"] as! String
                }
                if dict.keys.contains("updatedAt") {
                    self.updatedAt = dict["updatedAt"] as! String
                }
                if dict.keys.contains("visibilityLevel") {
                    self.visibilityLevel = dict["visibilityLevel"] as! Int32
                }
            }
        }
        public var archived: Bool?

        public var avatarUrl: String?

        public var buildsEnabled: Bool?

        public var createdAt: String?

        public var creatorId: Int64?

        public var defaultBranch: String?

        public var description_: String?

        public var httpUrlToRepo: String?

        public var id: Int64?

        public var issuesEnabled: Bool?

        public var lastActivityAt: String?

        public var mergeRequestsEnabled: Bool?

        public var name: String?

        public var nameWithNamespace: String?

        public var namespace: UpdateRepositoryResponseBody.Result.Namespace?

        public var path: String?

        public var pathWithNamespace: String?

        public var snippetsEnabled: Bool?

        public var sshUrlToRepo: String?

        public var visibilityLevel: Int32?

        public var webUrl: String?

        public var wikiEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.namespace?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.archived != nil {
                map["archived"] = self.archived!
            }
            if self.avatarUrl != nil {
                map["avatarUrl"] = self.avatarUrl!
            }
            if self.buildsEnabled != nil {
                map["buildsEnabled"] = self.buildsEnabled!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.creatorId != nil {
                map["creatorId"] = self.creatorId!
            }
            if self.defaultBranch != nil {
                map["defaultBranch"] = self.defaultBranch!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.httpUrlToRepo != nil {
                map["httpUrlToRepo"] = self.httpUrlToRepo!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.issuesEnabled != nil {
                map["issuesEnabled"] = self.issuesEnabled!
            }
            if self.lastActivityAt != nil {
                map["lastActivityAt"] = self.lastActivityAt!
            }
            if self.mergeRequestsEnabled != nil {
                map["mergeRequestsEnabled"] = self.mergeRequestsEnabled!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.nameWithNamespace != nil {
                map["nameWithNamespace"] = self.nameWithNamespace!
            }
            if self.namespace != nil {
                map["namespace"] = self.namespace?.toMap()
            }
            if self.path != nil {
                map["path"] = self.path!
            }
            if self.pathWithNamespace != nil {
                map["pathWithNamespace"] = self.pathWithNamespace!
            }
            if self.snippetsEnabled != nil {
                map["snippetsEnabled"] = self.snippetsEnabled!
            }
            if self.sshUrlToRepo != nil {
                map["sshUrlToRepo"] = self.sshUrlToRepo!
            }
            if self.visibilityLevel != nil {
                map["visibilityLevel"] = self.visibilityLevel!
            }
            if self.webUrl != nil {
                map["webUrl"] = self.webUrl!
            }
            if self.wikiEnabled != nil {
                map["wikiEnabled"] = self.wikiEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("archived") {
                self.archived = dict["archived"] as! Bool
            }
            if dict.keys.contains("avatarUrl") {
                self.avatarUrl = dict["avatarUrl"] as! String
            }
            if dict.keys.contains("buildsEnabled") {
                self.buildsEnabled = dict["buildsEnabled"] as! Bool
            }
            if dict.keys.contains("createdAt") {
                self.createdAt = dict["createdAt"] as! String
            }
            if dict.keys.contains("creatorId") {
                self.creatorId = dict["creatorId"] as! Int64
            }
            if dict.keys.contains("defaultBranch") {
                self.defaultBranch = dict["defaultBranch"] as! String
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("httpUrlToRepo") {
                self.httpUrlToRepo = dict["httpUrlToRepo"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("issuesEnabled") {
                self.issuesEnabled = dict["issuesEnabled"] as! Bool
            }
            if dict.keys.contains("lastActivityAt") {
                self.lastActivityAt = dict["lastActivityAt"] as! String
            }
            if dict.keys.contains("mergeRequestsEnabled") {
                self.mergeRequestsEnabled = dict["mergeRequestsEnabled"] as! Bool
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("nameWithNamespace") {
                self.nameWithNamespace = dict["nameWithNamespace"] as! String
            }
            if dict.keys.contains("namespace") {
                var model = UpdateRepositoryResponseBody.Result.Namespace()
                model.fromMap(dict["namespace"] as! [String: Any])
                self.namespace = model
            }
            if dict.keys.contains("path") {
                self.path = dict["path"] as! String
            }
            if dict.keys.contains("pathWithNamespace") {
                self.pathWithNamespace = dict["pathWithNamespace"] as! String
            }
            if dict.keys.contains("snippetsEnabled") {
                self.snippetsEnabled = dict["snippetsEnabled"] as! Bool
            }
            if dict.keys.contains("sshUrlToRepo") {
                self.sshUrlToRepo = dict["sshUrlToRepo"] as! String
            }
            if dict.keys.contains("visibilityLevel") {
                self.visibilityLevel = dict["visibilityLevel"] as! Int32
            }
            if dict.keys.contains("webUrl") {
                self.webUrl = dict["webUrl"] as! String
            }
            if dict.keys.contains("wikiEnabled") {
                self.wikiEnabled = dict["wikiEnabled"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: UpdateRepositoryResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = UpdateRepositoryResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdateRepositoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRepositoryResponseBody?

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
            var model = UpdateRepositoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateRepositoryMemberRequest : Tea.TeaModel {
    public class RelatedInfos : Tea.TeaModel {
        public var relatedId: String?

        public var sourceId: Int64?

        public var sourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.relatedId != nil {
                map["relatedId"] = self.relatedId!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("relatedId") {
                self.relatedId = dict["relatedId"] as! String
            }
            if dict.keys.contains("sourceId") {
                self.sourceId = dict["sourceId"] as! Int64
            }
            if dict.keys.contains("sourceType") {
                self.sourceType = dict["sourceType"] as! String
            }
        }
    }
    public var accessToken: String?

    public var accessLevel: Int32?

    public var expireAt: String?

    public var memberType: String?

    public var relatedId: String?

    public var relatedInfos: [UpdateRepositoryMemberRequest.RelatedInfos]?

    public var organizationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["accessToken"] = self.accessToken!
        }
        if self.accessLevel != nil {
            map["accessLevel"] = self.accessLevel!
        }
        if self.expireAt != nil {
            map["expireAt"] = self.expireAt!
        }
        if self.memberType != nil {
            map["memberType"] = self.memberType!
        }
        if self.relatedId != nil {
            map["relatedId"] = self.relatedId!
        }
        if self.relatedInfos != nil {
            var tmp : [Any] = []
            for k in self.relatedInfos! {
                tmp.append(k.toMap())
            }
            map["relatedInfos"] = tmp
        }
        if self.organizationId != nil {
            map["organizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessToken") {
            self.accessToken = dict["accessToken"] as! String
        }
        if dict.keys.contains("accessLevel") {
            self.accessLevel = dict["accessLevel"] as! Int32
        }
        if dict.keys.contains("expireAt") {
            self.expireAt = dict["expireAt"] as! String
        }
        if dict.keys.contains("memberType") {
            self.memberType = dict["memberType"] as! String
        }
        if dict.keys.contains("relatedId") {
            self.relatedId = dict["relatedId"] as! String
        }
        if dict.keys.contains("relatedInfos") {
            self.relatedInfos = dict["relatedInfos"] as! [UpdateRepositoryMemberRequest.RelatedInfos]
        }
        if dict.keys.contains("organizationId") {
            self.organizationId = dict["organizationId"] as! String
        }
    }
}

public class UpdateRepositoryMemberResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accessLevel: Int32?

        public var avatarUrl: String?

        public var email: String?

        public var expireAt: String?

        public var externUid: String?

        public var id: Int64?

        public var memberName: String?

        public var memberType: String?

        public var name: String?

        public var sourceId: Int64?

        public var sourceType: String?

        public var state: String?

        public var tbUserId: String?

        public var username: String?

        public var webUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessLevel != nil {
                map["accessLevel"] = self.accessLevel!
            }
            if self.avatarUrl != nil {
                map["avatarUrl"] = self.avatarUrl!
            }
            if self.email != nil {
                map["email"] = self.email!
            }
            if self.expireAt != nil {
                map["expireAt"] = self.expireAt!
            }
            if self.externUid != nil {
                map["externUid"] = self.externUid!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.memberName != nil {
                map["memberName"] = self.memberName!
            }
            if self.memberType != nil {
                map["memberType"] = self.memberType!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.tbUserId != nil {
                map["tbUserId"] = self.tbUserId!
            }
            if self.username != nil {
                map["username"] = self.username!
            }
            if self.webUrl != nil {
                map["webUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accessLevel") {
                self.accessLevel = dict["accessLevel"] as! Int32
            }
            if dict.keys.contains("avatarUrl") {
                self.avatarUrl = dict["avatarUrl"] as! String
            }
            if dict.keys.contains("email") {
                self.email = dict["email"] as! String
            }
            if dict.keys.contains("expireAt") {
                self.expireAt = dict["expireAt"] as! String
            }
            if dict.keys.contains("externUid") {
                self.externUid = dict["externUid"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! Int64
            }
            if dict.keys.contains("memberName") {
                self.memberName = dict["memberName"] as! String
            }
            if dict.keys.contains("memberType") {
                self.memberType = dict["memberType"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("sourceId") {
                self.sourceId = dict["sourceId"] as! Int64
            }
            if dict.keys.contains("sourceType") {
                self.sourceType = dict["sourceType"] as! String
            }
            if dict.keys.contains("state") {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("tbUserId") {
                self.tbUserId = dict["tbUserId"] as! String
            }
            if dict.keys.contains("username") {
                self.username = dict["username"] as! String
            }
            if dict.keys.contains("webUrl") {
                self.webUrl = dict["webUrl"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: UpdateRepositoryMemberResponseBody.Result?

    public var success: Bool?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.result != nil {
            map["result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("result") {
            var model = UpdateRepositoryMemberResponseBody.Result()
            model.fromMap(dict["result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdateRepositoryMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRepositoryMemberResponseBody?

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
            var model = UpdateRepositoryMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateResourceMemberRequest : Tea.TeaModel {
    public var roleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleName != nil {
            map["roleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("roleName") {
            self.roleName = dict["roleName"] as! String
        }
    }
}

public class UpdateResourceMemberResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdateResourceMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceMemberResponseBody?

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
            var model = UpdateResourceMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateVariableGroupRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var variables: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.variables != nil {
            map["variables"] = self.variables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("variables") {
            self.variables = dict["variables"] as! String
        }
    }
}

public class UpdateVariableGroupResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdateVariableGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVariableGroupResponseBody?

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
            var model = UpdateVariableGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWorkItemRequest : Tea.TeaModel {
    public var fieldType: String?

    public var identifier: String?

    public var propertyKey: String?

    public var propertyValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fieldType != nil {
            map["fieldType"] = self.fieldType!
        }
        if self.identifier != nil {
            map["identifier"] = self.identifier!
        }
        if self.propertyKey != nil {
            map["propertyKey"] = self.propertyKey!
        }
        if self.propertyValue != nil {
            map["propertyValue"] = self.propertyValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fieldType") {
            self.fieldType = dict["fieldType"] as! String
        }
        if dict.keys.contains("identifier") {
            self.identifier = dict["identifier"] as! String
        }
        if dict.keys.contains("propertyKey") {
            self.propertyKey = dict["propertyKey"] as! String
        }
        if dict.keys.contains("propertyValue") {
            self.propertyValue = dict["propertyValue"] as! String
        }
    }
}

public class UpdateWorkItemResponseBody : Tea.TeaModel {
    public class Workitem : Tea.TeaModel {
        public var assignedTo: String?

        public var categoryIdentifier: String?

        public var creator: String?

        public var document: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var identifier: String?

        public var logicalStatus: String?

        public var modifier: String?

        public var parentIdentifier: String?

        public var serialNumber: String?

        public var spaceIdentifier: String?

        public var spaceName: String?

        public var spaceType: String?

        public var sprintIdentifier: String?

        public var status: String?

        public var statusIdentifier: String?

        public var statusStageIdentifier: String?

        public var subject: String?

        public var updateStatusAt: Int64?

        public var workitemTypeIdentifier: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assignedTo != nil {
                map["assignedTo"] = self.assignedTo!
            }
            if self.categoryIdentifier != nil {
                map["categoryIdentifier"] = self.categoryIdentifier!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.document != nil {
                map["document"] = self.document!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.identifier != nil {
                map["identifier"] = self.identifier!
            }
            if self.logicalStatus != nil {
                map["logicalStatus"] = self.logicalStatus!
            }
            if self.modifier != nil {
                map["modifier"] = self.modifier!
            }
            if self.parentIdentifier != nil {
                map["parentIdentifier"] = self.parentIdentifier!
            }
            if self.serialNumber != nil {
                map["serialNumber"] = self.serialNumber!
            }
            if self.spaceIdentifier != nil {
                map["spaceIdentifier"] = self.spaceIdentifier!
            }
            if self.spaceName != nil {
                map["spaceName"] = self.spaceName!
            }
            if self.spaceType != nil {
                map["spaceType"] = self.spaceType!
            }
            if self.sprintIdentifier != nil {
                map["sprintIdentifier"] = self.sprintIdentifier!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusIdentifier != nil {
                map["statusIdentifier"] = self.statusIdentifier!
            }
            if self.statusStageIdentifier != nil {
                map["statusStageIdentifier"] = self.statusStageIdentifier!
            }
            if self.subject != nil {
                map["subject"] = self.subject!
            }
            if self.updateStatusAt != nil {
                map["updateStatusAt"] = self.updateStatusAt!
            }
            if self.workitemTypeIdentifier != nil {
                map["workitemTypeIdentifier"] = self.workitemTypeIdentifier!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assignedTo") {
                self.assignedTo = dict["assignedTo"] as! String
            }
            if dict.keys.contains("categoryIdentifier") {
                self.categoryIdentifier = dict["categoryIdentifier"] as! String
            }
            if dict.keys.contains("creator") {
                self.creator = dict["creator"] as! String
            }
            if dict.keys.contains("document") {
                self.document = dict["document"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! Int64
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! Int64
            }
            if dict.keys.contains("identifier") {
                self.identifier = dict["identifier"] as! String
            }
            if dict.keys.contains("logicalStatus") {
                self.logicalStatus = dict["logicalStatus"] as! String
            }
            if dict.keys.contains("modifier") {
                self.modifier = dict["modifier"] as! String
            }
            if dict.keys.contains("parentIdentifier") {
                self.parentIdentifier = dict["parentIdentifier"] as! String
            }
            if dict.keys.contains("serialNumber") {
                self.serialNumber = dict["serialNumber"] as! String
            }
            if dict.keys.contains("spaceIdentifier") {
                self.spaceIdentifier = dict["spaceIdentifier"] as! String
            }
            if dict.keys.contains("spaceName") {
                self.spaceName = dict["spaceName"] as! String
            }
            if dict.keys.contains("spaceType") {
                self.spaceType = dict["spaceType"] as! String
            }
            if dict.keys.contains("sprintIdentifier") {
                self.sprintIdentifier = dict["sprintIdentifier"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("statusIdentifier") {
                self.statusIdentifier = dict["statusIdentifier"] as! String
            }
            if dict.keys.contains("statusStageIdentifier") {
                self.statusStageIdentifier = dict["statusStageIdentifier"] as! String
            }
            if dict.keys.contains("subject") {
                self.subject = dict["subject"] as! String
            }
            if dict.keys.contains("updateStatusAt") {
                self.updateStatusAt = dict["updateStatusAt"] as! Int64
            }
            if dict.keys.contains("workitemTypeIdentifier") {
                self.workitemTypeIdentifier = dict["workitemTypeIdentifier"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var success: Bool?

    public var workitem: UpdateWorkItemResponseBody.Workitem?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.workitem?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.workitem != nil {
            map["workitem"] = self.workitem?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("workitem") {
            var model = UpdateWorkItemResponseBody.Workitem()
            model.fromMap(dict["workitem"] as! [String: Any])
            self.workitem = model
        }
    }
}

public class UpdateWorkItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkItemResponseBody?

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
            var model = UpdateWorkItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWorkitemCommentRequest : Tea.TeaModel {
    public var commentId: Int64?

    public var content: String?

    public var formatType: String?

    public var workitemIdentifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commentId != nil {
            map["commentId"] = self.commentId!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.formatType != nil {
            map["formatType"] = self.formatType!
        }
        if self.workitemIdentifier != nil {
            map["workitemIdentifier"] = self.workitemIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commentId") {
            self.commentId = dict["commentId"] as! Int64
        }
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("formatType") {
            self.formatType = dict["formatType"] as! String
        }
        if dict.keys.contains("workitemIdentifier") {
            self.workitemIdentifier = dict["workitemIdentifier"] as! String
        }
    }
}

public class UpdateWorkitemCommentResponseBody : Tea.TeaModel {
    public class Comment : Tea.TeaModel {
        public class User : Tea.TeaModel {
            public var account: String?

            public var avatar: String?

            public var displayName: String?

            public var identifier: String?

            public var nickName: String?

            public var realName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.account != nil {
                    map["account"] = self.account!
                }
                if self.avatar != nil {
                    map["avatar"] = self.avatar!
                }
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                if self.identifier != nil {
                    map["identifier"] = self.identifier!
                }
                if self.nickName != nil {
                    map["nickName"] = self.nickName!
                }
                if self.realName != nil {
                    map["realName"] = self.realName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("account") {
                    self.account = dict["account"] as! String
                }
                if dict.keys.contains("avatar") {
                    self.avatar = dict["avatar"] as! String
                }
                if dict.keys.contains("displayName") {
                    self.displayName = dict["displayName"] as! String
                }
                if dict.keys.contains("identifier") {
                    self.identifier = dict["identifier"] as! String
                }
                if dict.keys.contains("nickName") {
                    self.nickName = dict["nickName"] as! String
                }
                if dict.keys.contains("realName") {
                    self.realName = dict["realName"] as! String
                }
            }
        }
        public var content: String?

        public var createTime: Int64?

        public var formatType: String?

        public var id: String?

        public var isTop: Bool?

        public var modifiedTime: Int64?

        public var parentId: Int64?

        public var targetIdentifier: String?

        public var targetType: String?

        public var topTime: Int64?

        public var user: UpdateWorkitemCommentResponseBody.Comment.User?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.user?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.formatType != nil {
                map["formatType"] = self.formatType!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.isTop != nil {
                map["isTop"] = self.isTop!
            }
            if self.modifiedTime != nil {
                map["modifiedTime"] = self.modifiedTime!
            }
            if self.parentId != nil {
                map["parentId"] = self.parentId!
            }
            if self.targetIdentifier != nil {
                map["targetIdentifier"] = self.targetIdentifier!
            }
            if self.targetType != nil {
                map["targetType"] = self.targetType!
            }
            if self.topTime != nil {
                map["topTime"] = self.topTime!
            }
            if self.user != nil {
                map["user"] = self.user?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("formatType") {
                self.formatType = dict["formatType"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("isTop") {
                self.isTop = dict["isTop"] as! Bool
            }
            if dict.keys.contains("modifiedTime") {
                self.modifiedTime = dict["modifiedTime"] as! Int64
            }
            if dict.keys.contains("parentId") {
                self.parentId = dict["parentId"] as! Int64
            }
            if dict.keys.contains("targetIdentifier") {
                self.targetIdentifier = dict["targetIdentifier"] as! String
            }
            if dict.keys.contains("targetType") {
                self.targetType = dict["targetType"] as! String
            }
            if dict.keys.contains("topTime") {
                self.topTime = dict["topTime"] as! Int64
            }
            if dict.keys.contains("user") {
                var model = UpdateWorkitemCommentResponseBody.Comment.User()
                model.fromMap(dict["user"] as! [String: Any])
                self.user = model
            }
        }
    }
    public var comment: UpdateWorkitemCommentResponseBody.Comment?

    public var errorCode: String?

    public var errorMsg: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.comment?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["comment"] = self.comment?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("comment") {
            var model = UpdateWorkitemCommentResponseBody.Comment()
            model.fromMap(dict["comment"] as! [String: Any])
            self.comment = model
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! String
        }
    }
}

public class UpdateWorkitemCommentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkitemCommentResponseBody?

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
            var model = UpdateWorkitemCommentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
