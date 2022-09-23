import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AcceptMergeRequestRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class AcceptMergeRequestResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ApproveCheckResult : Tea.TeaModel {
            public class SatisfiedCheckResults : Tea.TeaModel {
                public class ExtraUsers : Tea.TeaModel {
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
                        if self.avatarUrl != nil {
                            map["AvatarUrl"] = self.avatarUrl!
                        }
                        if self.externUserId != nil {
                            map["ExternUserId"] = self.externUserId!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AvatarUrl") {
                            self.avatarUrl = dict["AvatarUrl"] as! String
                        }
                        if dict.keys.contains("ExternUserId") {
                            self.externUserId = dict["ExternUserId"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var checkName: String?

                public var checkStatus: String?

                public var checkType: String?

                public var extraUsers: [AcceptMergeRequestResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults.ExtraUsers]?

                public var satisfiedItems: [String]?

                public var unsatisfiedItems: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkName != nil {
                        map["CheckName"] = self.checkName!
                    }
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.checkType != nil {
                        map["CheckType"] = self.checkType!
                    }
                    if self.extraUsers != nil {
                        var tmp : [Any] = []
                        for k in self.extraUsers! {
                            tmp.append(k.toMap())
                        }
                        map["ExtraUsers"] = tmp
                    }
                    if self.satisfiedItems != nil {
                        map["SatisfiedItems"] = self.satisfiedItems!
                    }
                    if self.unsatisfiedItems != nil {
                        map["UnsatisfiedItems"] = self.unsatisfiedItems!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckName") {
                        self.checkName = dict["CheckName"] as! String
                    }
                    if dict.keys.contains("CheckStatus") {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("CheckType") {
                        self.checkType = dict["CheckType"] as! String
                    }
                    if dict.keys.contains("ExtraUsers") {
                        self.extraUsers = dict["ExtraUsers"] as! [AcceptMergeRequestResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults.ExtraUsers]
                    }
                    if dict.keys.contains("SatisfiedItems") {
                        self.satisfiedItems = dict["SatisfiedItems"] as! [String]
                    }
                    if dict.keys.contains("UnsatisfiedItems") {
                        self.unsatisfiedItems = dict["UnsatisfiedItems"] as! [String]
                    }
                }
            }
            public class UnsatisfiedCheckResults : Tea.TeaModel {
                public class ExtraUsers : Tea.TeaModel {
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
                        if self.avatarUrl != nil {
                            map["AvatarUrl"] = self.avatarUrl!
                        }
                        if self.externUserId != nil {
                            map["ExternUserId"] = self.externUserId!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AvatarUrl") {
                            self.avatarUrl = dict["AvatarUrl"] as! String
                        }
                        if dict.keys.contains("ExternUserId") {
                            self.externUserId = dict["ExternUserId"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var checkName: String?

                public var checkStatus: String?

                public var checkType: String?

                public var extraUsers: [AcceptMergeRequestResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults.ExtraUsers]?

                public var satisfiedItems: [String]?

                public var unsatisfiedItems: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkName != nil {
                        map["CheckName"] = self.checkName!
                    }
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.checkType != nil {
                        map["CheckType"] = self.checkType!
                    }
                    if self.extraUsers != nil {
                        var tmp : [Any] = []
                        for k in self.extraUsers! {
                            tmp.append(k.toMap())
                        }
                        map["ExtraUsers"] = tmp
                    }
                    if self.satisfiedItems != nil {
                        map["SatisfiedItems"] = self.satisfiedItems!
                    }
                    if self.unsatisfiedItems != nil {
                        map["UnsatisfiedItems"] = self.unsatisfiedItems!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckName") {
                        self.checkName = dict["CheckName"] as! String
                    }
                    if dict.keys.contains("CheckStatus") {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("CheckType") {
                        self.checkType = dict["CheckType"] as! String
                    }
                    if dict.keys.contains("ExtraUsers") {
                        self.extraUsers = dict["ExtraUsers"] as! [AcceptMergeRequestResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults.ExtraUsers]
                    }
                    if dict.keys.contains("SatisfiedItems") {
                        self.satisfiedItems = dict["SatisfiedItems"] as! [String]
                    }
                    if dict.keys.contains("UnsatisfiedItems") {
                        self.unsatisfiedItems = dict["UnsatisfiedItems"] as! [String]
                    }
                }
            }
            public var satisfiedCheckResults: [AcceptMergeRequestResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults]?

            public var totalCheckResult: String?

            public var unsatisfiedCheckResults: [AcceptMergeRequestResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.satisfiedCheckResults != nil {
                    var tmp : [Any] = []
                    for k in self.satisfiedCheckResults! {
                        tmp.append(k.toMap())
                    }
                    map["SatisfiedCheckResults"] = tmp
                }
                if self.totalCheckResult != nil {
                    map["TotalCheckResult"] = self.totalCheckResult!
                }
                if self.unsatisfiedCheckResults != nil {
                    var tmp : [Any] = []
                    for k in self.unsatisfiedCheckResults! {
                        tmp.append(k.toMap())
                    }
                    map["UnsatisfiedCheckResults"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SatisfiedCheckResults") {
                    self.satisfiedCheckResults = dict["SatisfiedCheckResults"] as! [AcceptMergeRequestResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults]
                }
                if dict.keys.contains("TotalCheckResult") {
                    self.totalCheckResult = dict["TotalCheckResult"] as! String
                }
                if dict.keys.contains("UnsatisfiedCheckResults") {
                    self.unsatisfiedCheckResults = dict["UnsatisfiedCheckResults"] as! [AcceptMergeRequestResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults]
                }
            }
        }
        public class AssigneeList : Tea.TeaModel {
            public var avatarUrl: String?

            public var externUserId: String?

            public var id: String?

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
                if self.avatarUrl != nil {
                    map["AvatarUrl"] = self.avatarUrl!
                }
                if self.externUserId != nil {
                    map["ExternUserId"] = self.externUserId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvatarUrl") {
                    self.avatarUrl = dict["AvatarUrl"] as! String
                }
                if dict.keys.contains("ExternUserId") {
                    self.externUserId = dict["ExternUserId"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Author : Tea.TeaModel {
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
                if self.avatarUrl != nil {
                    map["AvatarUrl"] = self.avatarUrl!
                }
                if self.externUserId != nil {
                    map["ExternUserId"] = self.externUserId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvatarUrl") {
                    self.avatarUrl = dict["AvatarUrl"] as! String
                }
                if dict.keys.contains("ExternUserId") {
                    self.externUserId = dict["ExternUserId"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var acceptedRevision: String?

        public var aheadCommitCount: Int32?

        public var approveCheckResult: AcceptMergeRequestResponseBody.Result.ApproveCheckResult?

        public var assigneeList: [AcceptMergeRequestResponseBody.Result.AssigneeList]?

        public var author: AcceptMergeRequestResponseBody.Result.Author?

        public var behindCommitCount: Int32?

        public var createdAt: String?

        public var description_: String?

        public var id: Int64?

        public var mergeError: String?

        public var mergeStatus: String?

        public var mergeType: String?

        public var mergedRevision: String?

        public var nameWithNamespace: String?

        public var projectId: Int64?

        public var sourceBranch: String?

        public var state: String?

        public var targetBranch: String?

        public var title: String?

        public var updatedAt: String?

        public var webUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.approveCheckResult?.validate()
            try self.author?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceptedRevision != nil {
                map["AcceptedRevision"] = self.acceptedRevision!
            }
            if self.aheadCommitCount != nil {
                map["AheadCommitCount"] = self.aheadCommitCount!
            }
            if self.approveCheckResult != nil {
                map["ApproveCheckResult"] = self.approveCheckResult?.toMap()
            }
            if self.assigneeList != nil {
                var tmp : [Any] = []
                for k in self.assigneeList! {
                    tmp.append(k.toMap())
                }
                map["AssigneeList"] = tmp
            }
            if self.author != nil {
                map["Author"] = self.author?.toMap()
            }
            if self.behindCommitCount != nil {
                map["BehindCommitCount"] = self.behindCommitCount!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.mergeError != nil {
                map["MergeError"] = self.mergeError!
            }
            if self.mergeStatus != nil {
                map["MergeStatus"] = self.mergeStatus!
            }
            if self.mergeType != nil {
                map["MergeType"] = self.mergeType!
            }
            if self.mergedRevision != nil {
                map["MergedRevision"] = self.mergedRevision!
            }
            if self.nameWithNamespace != nil {
                map["NameWithNamespace"] = self.nameWithNamespace!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.sourceBranch != nil {
                map["SourceBranch"] = self.sourceBranch!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.targetBranch != nil {
                map["TargetBranch"] = self.targetBranch!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.webUrl != nil {
                map["WebUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceptedRevision") {
                self.acceptedRevision = dict["AcceptedRevision"] as! String
            }
            if dict.keys.contains("AheadCommitCount") {
                self.aheadCommitCount = dict["AheadCommitCount"] as! Int32
            }
            if dict.keys.contains("ApproveCheckResult") {
                var model = AcceptMergeRequestResponseBody.Result.ApproveCheckResult()
                model.fromMap(dict["ApproveCheckResult"] as! [String: Any])
                self.approveCheckResult = model
            }
            if dict.keys.contains("AssigneeList") {
                self.assigneeList = dict["AssigneeList"] as! [AcceptMergeRequestResponseBody.Result.AssigneeList]
            }
            if dict.keys.contains("Author") {
                var model = AcceptMergeRequestResponseBody.Result.Author()
                model.fromMap(dict["Author"] as! [String: Any])
                self.author = model
            }
            if dict.keys.contains("BehindCommitCount") {
                self.behindCommitCount = dict["BehindCommitCount"] as! Int32
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("MergeError") {
                self.mergeError = dict["MergeError"] as! String
            }
            if dict.keys.contains("MergeStatus") {
                self.mergeStatus = dict["MergeStatus"] as! String
            }
            if dict.keys.contains("MergeType") {
                self.mergeType = dict["MergeType"] as! String
            }
            if dict.keys.contains("MergedRevision") {
                self.mergedRevision = dict["MergedRevision"] as! String
            }
            if dict.keys.contains("NameWithNamespace") {
                self.nameWithNamespace = dict["NameWithNamespace"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("SourceBranch") {
                self.sourceBranch = dict["SourceBranch"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("TargetBranch") {
                self.targetBranch = dict["TargetBranch"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
            if dict.keys.contains("WebUrl") {
                self.webUrl = dict["WebUrl"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: AcceptMergeRequestResponseBody.Result?

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
            var model = AcceptMergeRequestResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AcceptMergeRequestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AcceptMergeRequestResponseBody?

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
            var model = AcceptMergeRequestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddGroupMemberRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class AddGroupMemberResponseBody : Tea.TeaModel {
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

    public var result: [AddGroupMemberResponseBody.Result]?

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
            self.result = dict["Result"] as! [AddGroupMemberResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddGroupMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddGroupMemberResponseBody?

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
            var model = AddGroupMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddRepositoryMemberRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class AddWebhookResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var buildEvents: Bool?

        public var createdAt: String?

        public var description_: String?

        public var enableSslVerification: Bool?

        public var id: Int64?

        public var issuesEvents: Bool?

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
            if self.buildEvents != nil {
                map["BuildEvents"] = self.buildEvents!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.enableSslVerification != nil {
                map["EnableSslVerification"] = self.enableSslVerification!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.issuesEvents != nil {
                map["IssuesEvents"] = self.issuesEvents!
            }
            if self.lastTestResult != nil {
                map["LastTestResult"] = self.lastTestResult!
            }
            if self.mergeRequestsEvents != nil {
                map["MergeRequestsEvents"] = self.mergeRequestsEvents!
            }
            if self.noteEvents != nil {
                map["NoteEvents"] = self.noteEvents!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.pushEvents != nil {
                map["PushEvents"] = self.pushEvents!
            }
            if self.secretToken != nil {
                map["SecretToken"] = self.secretToken!
            }
            if self.tagPushEvents != nil {
                map["TagPushEvents"] = self.tagPushEvents!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BuildEvents") {
                self.buildEvents = dict["BuildEvents"] as! Bool
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EnableSslVerification") {
                self.enableSslVerification = dict["EnableSslVerification"] as! Bool
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IssuesEvents") {
                self.issuesEvents = dict["IssuesEvents"] as! Bool
            }
            if dict.keys.contains("LastTestResult") {
                self.lastTestResult = dict["LastTestResult"] as! String
            }
            if dict.keys.contains("MergeRequestsEvents") {
                self.mergeRequestsEvents = dict["MergeRequestsEvents"] as! Bool
            }
            if dict.keys.contains("NoteEvents") {
                self.noteEvents = dict["NoteEvents"] as! Bool
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("PushEvents") {
                self.pushEvents = dict["PushEvents"] as! Bool
            }
            if dict.keys.contains("SecretToken") {
                self.secretToken = dict["SecretToken"] as! String
            }
            if dict.keys.contains("TagPushEvents") {
                self.tagPushEvents = dict["TagPushEvents"] as! Bool
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
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
            var model = AddWebhookResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public var organizationId: String?

    public var subUserId: String?

    public var branchName: String?

    public var ref: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        if self.branchName != nil {
            map["branchName"] = self.branchName!
        }
        if self.ref != nil {
            map["ref"] = self.ref!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
        if dict.keys.contains("branchName") {
            self.branchName = dict["branchName"] as! String
        }
        if dict.keys.contains("ref") {
            self.ref = dict["ref"] as! String
        }
    }
}

public class CreateBranchResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class CommitInfo : Tea.TeaModel {
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
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public var branchName: String?

        public var commitInfo: CreateBranchResponseBody.Result.CommitInfo?

        public var protectedBranch: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.commitInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.branchName != nil {
                map["BranchName"] = self.branchName!
            }
            if self.commitInfo != nil {
                map["CommitInfo"] = self.commitInfo?.toMap()
            }
            if self.protectedBranch != nil {
                map["ProtectedBranch"] = self.protectedBranch!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BranchName") {
                self.branchName = dict["BranchName"] as! String
            }
            if dict.keys.contains("CommitInfo") {
                var model = CreateBranchResponseBody.Result.CommitInfo()
                model.fromMap(dict["CommitInfo"] as! [String: Any])
                self.commitInfo = model
            }
            if dict.keys.contains("ProtectedBranch") {
                self.protectedBranch = dict["ProtectedBranch"] as! Bool
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
            var model = CreateBranchResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
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
                map["BranchName"] = self.branchName!
            }
            if self.filePath != nil {
                map["FilePath"] = self.filePath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BranchName") {
                self.branchName = dict["BranchName"] as! String
            }
            if dict.keys.contains("FilePath") {
                self.filePath = dict["FilePath"] as! String
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
            var model = CreateFileResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

public class CreateMergeRequestRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class CreateMergeRequestResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ApproveCheckResult : Tea.TeaModel {
            public class SatisfiedCheckResults : Tea.TeaModel {
                public class ExtraUsers : Tea.TeaModel {
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
                        if self.avatarUrl != nil {
                            map["AvatarUrl"] = self.avatarUrl!
                        }
                        if self.externUserId != nil {
                            map["ExternUserId"] = self.externUserId!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AvatarUrl") {
                            self.avatarUrl = dict["AvatarUrl"] as! String
                        }
                        if dict.keys.contains("ExternUserId") {
                            self.externUserId = dict["ExternUserId"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var checkName: String?

                public var checkStatus: String?

                public var checkType: String?

                public var extraUsers: [CreateMergeRequestResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults.ExtraUsers]?

                public var satisfiedItems: [String]?

                public var unsatisfiedItems: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkName != nil {
                        map["CheckName"] = self.checkName!
                    }
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.checkType != nil {
                        map["CheckType"] = self.checkType!
                    }
                    if self.extraUsers != nil {
                        var tmp : [Any] = []
                        for k in self.extraUsers! {
                            tmp.append(k.toMap())
                        }
                        map["ExtraUsers"] = tmp
                    }
                    if self.satisfiedItems != nil {
                        map["SatisfiedItems"] = self.satisfiedItems!
                    }
                    if self.unsatisfiedItems != nil {
                        map["UnsatisfiedItems"] = self.unsatisfiedItems!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckName") {
                        self.checkName = dict["CheckName"] as! String
                    }
                    if dict.keys.contains("CheckStatus") {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("CheckType") {
                        self.checkType = dict["CheckType"] as! String
                    }
                    if dict.keys.contains("ExtraUsers") {
                        self.extraUsers = dict["ExtraUsers"] as! [CreateMergeRequestResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults.ExtraUsers]
                    }
                    if dict.keys.contains("SatisfiedItems") {
                        self.satisfiedItems = dict["SatisfiedItems"] as! [String]
                    }
                    if dict.keys.contains("UnsatisfiedItems") {
                        self.unsatisfiedItems = dict["UnsatisfiedItems"] as! [String]
                    }
                }
            }
            public class UnsatisfiedCheckResults : Tea.TeaModel {
                public class ExtraUsers : Tea.TeaModel {
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
                        if self.avatarUrl != nil {
                            map["AvatarUrl"] = self.avatarUrl!
                        }
                        if self.externUserId != nil {
                            map["ExternUserId"] = self.externUserId!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AvatarUrl") {
                            self.avatarUrl = dict["AvatarUrl"] as! String
                        }
                        if dict.keys.contains("ExternUserId") {
                            self.externUserId = dict["ExternUserId"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var checkName: String?

                public var checkStatus: String?

                public var checkType: String?

                public var extraUsers: [CreateMergeRequestResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults.ExtraUsers]?

                public var satisfiedItems: [String]?

                public var unsatisfiedItems: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkName != nil {
                        map["CheckName"] = self.checkName!
                    }
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.checkType != nil {
                        map["CheckType"] = self.checkType!
                    }
                    if self.extraUsers != nil {
                        var tmp : [Any] = []
                        for k in self.extraUsers! {
                            tmp.append(k.toMap())
                        }
                        map["ExtraUsers"] = tmp
                    }
                    if self.satisfiedItems != nil {
                        map["SatisfiedItems"] = self.satisfiedItems!
                    }
                    if self.unsatisfiedItems != nil {
                        map["UnsatisfiedItems"] = self.unsatisfiedItems!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckName") {
                        self.checkName = dict["CheckName"] as! String
                    }
                    if dict.keys.contains("CheckStatus") {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("CheckType") {
                        self.checkType = dict["CheckType"] as! String
                    }
                    if dict.keys.contains("ExtraUsers") {
                        self.extraUsers = dict["ExtraUsers"] as! [CreateMergeRequestResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults.ExtraUsers]
                    }
                    if dict.keys.contains("SatisfiedItems") {
                        self.satisfiedItems = dict["SatisfiedItems"] as! [String]
                    }
                    if dict.keys.contains("UnsatisfiedItems") {
                        self.unsatisfiedItems = dict["UnsatisfiedItems"] as! [String]
                    }
                }
            }
            public var satisfiedCheckResults: [CreateMergeRequestResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults]?

            public var totalCheckResult: String?

            public var unsatisfiedCheckResults: [CreateMergeRequestResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.satisfiedCheckResults != nil {
                    var tmp : [Any] = []
                    for k in self.satisfiedCheckResults! {
                        tmp.append(k.toMap())
                    }
                    map["SatisfiedCheckResults"] = tmp
                }
                if self.totalCheckResult != nil {
                    map["TotalCheckResult"] = self.totalCheckResult!
                }
                if self.unsatisfiedCheckResults != nil {
                    var tmp : [Any] = []
                    for k in self.unsatisfiedCheckResults! {
                        tmp.append(k.toMap())
                    }
                    map["UnsatisfiedCheckResults"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SatisfiedCheckResults") {
                    self.satisfiedCheckResults = dict["SatisfiedCheckResults"] as! [CreateMergeRequestResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults]
                }
                if dict.keys.contains("TotalCheckResult") {
                    self.totalCheckResult = dict["TotalCheckResult"] as! String
                }
                if dict.keys.contains("UnsatisfiedCheckResults") {
                    self.unsatisfiedCheckResults = dict["UnsatisfiedCheckResults"] as! [CreateMergeRequestResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults]
                }
            }
        }
        public class AssigneeList : Tea.TeaModel {
            public var avatarUrl: String?

            public var externUserId: String?

            public var id: String?

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
                if self.avatarUrl != nil {
                    map["AvatarUrl"] = self.avatarUrl!
                }
                if self.externUserId != nil {
                    map["ExternUserId"] = self.externUserId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvatarUrl") {
                    self.avatarUrl = dict["AvatarUrl"] as! String
                }
                if dict.keys.contains("ExternUserId") {
                    self.externUserId = dict["ExternUserId"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Author : Tea.TeaModel {
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
                if self.avatarUrl != nil {
                    map["AvatarUrl"] = self.avatarUrl!
                }
                if self.externUserId != nil {
                    map["ExternUserId"] = self.externUserId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvatarUrl") {
                    self.avatarUrl = dict["AvatarUrl"] as! String
                }
                if dict.keys.contains("ExternUserId") {
                    self.externUserId = dict["ExternUserId"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var acceptedRevision: String?

        public var aheadCommitCount: Int32?

        public var approveCheckResult: CreateMergeRequestResponseBody.Result.ApproveCheckResult?

        public var assigneeList: [CreateMergeRequestResponseBody.Result.AssigneeList]?

        public var author: CreateMergeRequestResponseBody.Result.Author?

        public var behindCommitCount: Int32?

        public var createdAt: String?

        public var description_: String?

        public var id: Int64?

        public var mergeError: String?

        public var mergeStatus: String?

        public var mergeType: String?

        public var mergedRevision: String?

        public var nameWithNamespace: String?

        public var projectId: Int64?

        public var sourceBranch: String?

        public var state: String?

        public var targetBranch: String?

        public var title: String?

        public var updatedAt: String?

        public var webUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.approveCheckResult?.validate()
            try self.author?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceptedRevision != nil {
                map["AcceptedRevision"] = self.acceptedRevision!
            }
            if self.aheadCommitCount != nil {
                map["AheadCommitCount"] = self.aheadCommitCount!
            }
            if self.approveCheckResult != nil {
                map["ApproveCheckResult"] = self.approveCheckResult?.toMap()
            }
            if self.assigneeList != nil {
                var tmp : [Any] = []
                for k in self.assigneeList! {
                    tmp.append(k.toMap())
                }
                map["AssigneeList"] = tmp
            }
            if self.author != nil {
                map["Author"] = self.author?.toMap()
            }
            if self.behindCommitCount != nil {
                map["BehindCommitCount"] = self.behindCommitCount!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.mergeError != nil {
                map["MergeError"] = self.mergeError!
            }
            if self.mergeStatus != nil {
                map["MergeStatus"] = self.mergeStatus!
            }
            if self.mergeType != nil {
                map["MergeType"] = self.mergeType!
            }
            if self.mergedRevision != nil {
                map["MergedRevision"] = self.mergedRevision!
            }
            if self.nameWithNamespace != nil {
                map["NameWithNamespace"] = self.nameWithNamespace!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.sourceBranch != nil {
                map["SourceBranch"] = self.sourceBranch!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.targetBranch != nil {
                map["TargetBranch"] = self.targetBranch!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.webUrl != nil {
                map["WebUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceptedRevision") {
                self.acceptedRevision = dict["AcceptedRevision"] as! String
            }
            if dict.keys.contains("AheadCommitCount") {
                self.aheadCommitCount = dict["AheadCommitCount"] as! Int32
            }
            if dict.keys.contains("ApproveCheckResult") {
                var model = CreateMergeRequestResponseBody.Result.ApproveCheckResult()
                model.fromMap(dict["ApproveCheckResult"] as! [String: Any])
                self.approveCheckResult = model
            }
            if dict.keys.contains("AssigneeList") {
                self.assigneeList = dict["AssigneeList"] as! [CreateMergeRequestResponseBody.Result.AssigneeList]
            }
            if dict.keys.contains("Author") {
                var model = CreateMergeRequestResponseBody.Result.Author()
                model.fromMap(dict["Author"] as! [String: Any])
                self.author = model
            }
            if dict.keys.contains("BehindCommitCount") {
                self.behindCommitCount = dict["BehindCommitCount"] as! Int32
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("MergeError") {
                self.mergeError = dict["MergeError"] as! String
            }
            if dict.keys.contains("MergeStatus") {
                self.mergeStatus = dict["MergeStatus"] as! String
            }
            if dict.keys.contains("MergeType") {
                self.mergeType = dict["MergeType"] as! String
            }
            if dict.keys.contains("MergedRevision") {
                self.mergedRevision = dict["MergedRevision"] as! String
            }
            if dict.keys.contains("NameWithNamespace") {
                self.nameWithNamespace = dict["NameWithNamespace"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("SourceBranch") {
                self.sourceBranch = dict["SourceBranch"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("TargetBranch") {
                self.targetBranch = dict["TargetBranch"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
            if dict.keys.contains("WebUrl") {
                self.webUrl = dict["WebUrl"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: CreateMergeRequestResponseBody.Result?

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
            var model = CreateMergeRequestResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateMergeRequestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMergeRequestResponseBody?

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
            var model = CreateMergeRequestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMergeRequestCommentRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class CreateMergeRequestCommentResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Author : Tea.TeaModel {
            public var avatarUrl: String?

            public var email: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
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
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var author: CreateMergeRequestCommentResponseBody.Result.Author?

        public var closed: Int32?

        public var createdAt: String?

        public var id: Int64?

        public var isDraft: Bool?

        public var line: Int64?

        public var note: String?

        public var outDated: Bool?

        public var parentNoteId: Int64?

        public var path: String?

        public var projectId: Int64?

        public var rangeContext: String?

        public var side: String?

        public var updatedAt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.author?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.author != nil {
                map["Author"] = self.author?.toMap()
            }
            if self.closed != nil {
                map["Closed"] = self.closed!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isDraft != nil {
                map["IsDraft"] = self.isDraft!
            }
            if self.line != nil {
                map["Line"] = self.line!
            }
            if self.note != nil {
                map["Note"] = self.note!
            }
            if self.outDated != nil {
                map["OutDated"] = self.outDated!
            }
            if self.parentNoteId != nil {
                map["ParentNoteId"] = self.parentNoteId!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.rangeContext != nil {
                map["RangeContext"] = self.rangeContext!
            }
            if self.side != nil {
                map["Side"] = self.side!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Author") {
                var model = CreateMergeRequestCommentResponseBody.Result.Author()
                model.fromMap(dict["Author"] as! [String: Any])
                self.author = model
            }
            if dict.keys.contains("Closed") {
                self.closed = dict["Closed"] as! Int32
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IsDraft") {
                self.isDraft = dict["IsDraft"] as! Bool
            }
            if dict.keys.contains("Line") {
                self.line = dict["Line"] as! Int64
            }
            if dict.keys.contains("Note") {
                self.note = dict["Note"] as! String
            }
            if dict.keys.contains("OutDated") {
                self.outDated = dict["OutDated"] as! Bool
            }
            if dict.keys.contains("ParentNoteId") {
                self.parentNoteId = dict["ParentNoteId"] as! Int64
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("RangeContext") {
                self.rangeContext = dict["RangeContext"] as! String
            }
            if dict.keys.contains("Side") {
                self.side = dict["Side"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: CreateMergeRequestCommentResponseBody.Result?

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
            var model = CreateMergeRequestCommentResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateMergeRequestCommentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMergeRequestCommentResponseBody?

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
            var model = CreateMergeRequestCommentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRepositoryRequest : Tea.TeaModel {
    public var accessToken: String?

    public var createParentPath: Bool?

    public var organizationId: String?

    public var subUserId: String?

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
            map["AccessToken"] = self.accessToken!
        }
        if self.createParentPath != nil {
            map["CreateParentPath"] = self.createParentPath!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        if self.sync != nil {
            map["Sync"] = self.sync!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("CreateParentPath") {
            self.createParentPath = dict["CreateParentPath"] as! Bool
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
        if dict.keys.contains("Sync") {
            self.sync = dict["Sync"] as! Bool
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

            public var state: String?

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
                    map["Avatar"] = self.avatar!
                }
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.public_ != nil {
                    map["Public"] = self.public_!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.updatedAt != nil {
                    map["UpdatedAt"] = self.updatedAt!
                }
                if self.visibilityLevel != nil {
                    map["VisibilityLevel"] = self.visibilityLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Avatar") {
                    self.avatar = dict["Avatar"] as! String
                }
                if dict.keys.contains("CreatedAt") {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! Int64
                }
                if dict.keys.contains("Path") {
                    self.path = dict["Path"] as! String
                }
                if dict.keys.contains("Public") {
                    self.public_ = dict["Public"] as! Bool
                }
                if dict.keys.contains("State") {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("UpdatedAt") {
                    self.updatedAt = dict["UpdatedAt"] as! String
                }
                if dict.keys.contains("VisibilityLevel") {
                    self.visibilityLevel = dict["VisibilityLevel"] as! String
                }
            }
        }
        public var archive: Bool?

        public var avatarUrl: String?

        public var buildsEnableStatus: Bool?

        public var createdAt: String?

        public var creatorId: Int64?

        public var defaultBranch: String?

        public var demoProjectStatus: Bool?

        public var description_: String?

        public var httpUrlToRepo: String?

        public var id: Int64?

        public var issuesEnableStatus: Bool?

        public var lastActivityAt: String?

        public var mergeRequestEnableStatus: Bool?

        public var name: String?

        public var nameWithNamespace: String?

        public var namespace: CreateRepositoryResponseBody.Result.Namespace?

        public var path: String?

        public var pathWithNamespace: String?

        public var public_: Bool?

        public var snippetsEnableStatus: Bool?

        public var sshUrlToRepo: String?

        public var tagList: [String]?

        public var visibilityLevel: String?

        public var webUrl: String?

        public var wikiEnableStatus: Bool?

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
                map["Archive"] = self.archive!
            }
            if self.avatarUrl != nil {
                map["AvatarUrl"] = self.avatarUrl!
            }
            if self.buildsEnableStatus != nil {
                map["BuildsEnableStatus"] = self.buildsEnableStatus!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.creatorId != nil {
                map["CreatorId"] = self.creatorId!
            }
            if self.defaultBranch != nil {
                map["DefaultBranch"] = self.defaultBranch!
            }
            if self.demoProjectStatus != nil {
                map["DemoProjectStatus"] = self.demoProjectStatus!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.httpUrlToRepo != nil {
                map["HttpUrlToRepo"] = self.httpUrlToRepo!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.issuesEnableStatus != nil {
                map["IssuesEnableStatus"] = self.issuesEnableStatus!
            }
            if self.lastActivityAt != nil {
                map["LastActivityAt"] = self.lastActivityAt!
            }
            if self.mergeRequestEnableStatus != nil {
                map["MergeRequestEnableStatus"] = self.mergeRequestEnableStatus!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nameWithNamespace != nil {
                map["NameWithNamespace"] = self.nameWithNamespace!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace?.toMap()
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.pathWithNamespace != nil {
                map["PathWithNamespace"] = self.pathWithNamespace!
            }
            if self.public_ != nil {
                map["Public"] = self.public_!
            }
            if self.snippetsEnableStatus != nil {
                map["SnippetsEnableStatus"] = self.snippetsEnableStatus!
            }
            if self.sshUrlToRepo != nil {
                map["SshUrlToRepo"] = self.sshUrlToRepo!
            }
            if self.tagList != nil {
                map["TagList"] = self.tagList!
            }
            if self.visibilityLevel != nil {
                map["VisibilityLevel"] = self.visibilityLevel!
            }
            if self.webUrl != nil {
                map["WebUrl"] = self.webUrl!
            }
            if self.wikiEnableStatus != nil {
                map["WikiEnableStatus"] = self.wikiEnableStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Archive") {
                self.archive = dict["Archive"] as! Bool
            }
            if dict.keys.contains("AvatarUrl") {
                self.avatarUrl = dict["AvatarUrl"] as! String
            }
            if dict.keys.contains("BuildsEnableStatus") {
                self.buildsEnableStatus = dict["BuildsEnableStatus"] as! Bool
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("CreatorId") {
                self.creatorId = dict["CreatorId"] as! Int64
            }
            if dict.keys.contains("DefaultBranch") {
                self.defaultBranch = dict["DefaultBranch"] as! String
            }
            if dict.keys.contains("DemoProjectStatus") {
                self.demoProjectStatus = dict["DemoProjectStatus"] as! Bool
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("HttpUrlToRepo") {
                self.httpUrlToRepo = dict["HttpUrlToRepo"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IssuesEnableStatus") {
                self.issuesEnableStatus = dict["IssuesEnableStatus"] as! Bool
            }
            if dict.keys.contains("LastActivityAt") {
                self.lastActivityAt = dict["LastActivityAt"] as! String
            }
            if dict.keys.contains("MergeRequestEnableStatus") {
                self.mergeRequestEnableStatus = dict["MergeRequestEnableStatus"] as! Bool
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NameWithNamespace") {
                self.nameWithNamespace = dict["NameWithNamespace"] as! String
            }
            if dict.keys.contains("Namespace") {
                var model = CreateRepositoryResponseBody.Result.Namespace()
                model.fromMap(dict["Namespace"] as! [String: Any])
                self.namespace = model
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("PathWithNamespace") {
                self.pathWithNamespace = dict["PathWithNamespace"] as! String
            }
            if dict.keys.contains("Public") {
                self.public_ = dict["Public"] as! Bool
            }
            if dict.keys.contains("SnippetsEnableStatus") {
                self.snippetsEnableStatus = dict["SnippetsEnableStatus"] as! Bool
            }
            if dict.keys.contains("SshUrlToRepo") {
                self.sshUrlToRepo = dict["SshUrlToRepo"] as! String
            }
            if dict.keys.contains("TagList") {
                self.tagList = dict["TagList"] as! [String]
            }
            if dict.keys.contains("VisibilityLevel") {
                self.visibilityLevel = dict["VisibilityLevel"] as! String
            }
            if dict.keys.contains("WebUrl") {
                self.webUrl = dict["WebUrl"] as! String
            }
            if dict.keys.contains("WikiEnableStatus") {
                self.wikiEnableStatus = dict["WikiEnableStatus"] as! Bool
            }
        }
    }
    public var errorCode: Int32?

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
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateRepositoryResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

public class CreateRepositoryDeployKeyRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class CreateRepositoryDeployKeyResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createdAt: String?

        public var fingerPrint: String?

        public var id: Int64?

        public var key: String?

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
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.fingerPrint != nil {
                map["FingerPrint"] = self.fingerPrint!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("FingerPrint") {
                self.fingerPrint = dict["FingerPrint"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: CreateRepositoryDeployKeyResponseBody.Result?

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
            var model = CreateRepositoryDeployKeyResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateRepositoryDeployKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRepositoryDeployKeyResponseBody?

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
            var model = CreateRepositoryDeployKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRepositoryGroupRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class CreateRepositoryGroupResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var avatarUrl: String?

        public var description_: String?

        public var id: Int64?

        public var name: String?

        public var nameWithNamespace: String?

        public var ownerId: Int64?

        public var parentId: Int64?

        public var path: String?

        public var pathWithNamespace: String?

        public var type: String?

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
            if self.avatarUrl != nil {
                map["AvatarUrl"] = self.avatarUrl!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nameWithNamespace != nil {
                map["NameWithNamespace"] = self.nameWithNamespace!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.pathWithNamespace != nil {
                map["PathWithNamespace"] = self.pathWithNamespace!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.visibilityLevel != nil {
                map["VisibilityLevel"] = self.visibilityLevel!
            }
            if self.webUrl != nil {
                map["WebUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvatarUrl") {
                self.avatarUrl = dict["AvatarUrl"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NameWithNamespace") {
                self.nameWithNamespace = dict["NameWithNamespace"] as! String
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! Int64
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! Int64
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("PathWithNamespace") {
                self.pathWithNamespace = dict["PathWithNamespace"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("VisibilityLevel") {
                self.visibilityLevel = dict["VisibilityLevel"] as! String
            }
            if dict.keys.contains("WebUrl") {
                self.webUrl = dict["WebUrl"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var errorMessage: String?

    public var requestId: String?

    public var result: CreateRepositoryGroupResponseBody.Result?

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
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = CreateRepositoryGroupResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateRepositoryGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRepositoryGroupResponseBody?

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
            var model = CreateRepositoryGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRepositoryProtectedBranchRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class CreateRepositoryProtectedBranchResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class MergeRequestSetting : Tea.TeaModel {
            public var allowMergeRequestRoles: [Int32]?

            public var allowSelfApproval: Bool?

            public var defaultAssignees: [String]?

            public var isRequireDiscussionProcessed: Bool?

            public var isResetApprovalWhenNewPush: Bool?

            public var mergeRequestMode: String?

            public var minimualApproval: Int32?

            public var required_: Bool?

            public override init() {
                super.init()
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
                    map["AllowMergeRequestRoles"] = self.allowMergeRequestRoles!
                }
                if self.allowSelfApproval != nil {
                    map["AllowSelfApproval"] = self.allowSelfApproval!
                }
                if self.defaultAssignees != nil {
                    map["DefaultAssignees"] = self.defaultAssignees!
                }
                if self.isRequireDiscussionProcessed != nil {
                    map["IsRequireDiscussionProcessed"] = self.isRequireDiscussionProcessed!
                }
                if self.isResetApprovalWhenNewPush != nil {
                    map["IsResetApprovalWhenNewPush"] = self.isResetApprovalWhenNewPush!
                }
                if self.mergeRequestMode != nil {
                    map["MergeRequestMode"] = self.mergeRequestMode!
                }
                if self.minimualApproval != nil {
                    map["MinimualApproval"] = self.minimualApproval!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowMergeRequestRoles") {
                    self.allowMergeRequestRoles = dict["AllowMergeRequestRoles"] as! [Int32]
                }
                if dict.keys.contains("AllowSelfApproval") {
                    self.allowSelfApproval = dict["AllowSelfApproval"] as! Bool
                }
                if dict.keys.contains("DefaultAssignees") {
                    self.defaultAssignees = dict["DefaultAssignees"] as! [String]
                }
                if dict.keys.contains("IsRequireDiscussionProcessed") {
                    self.isRequireDiscussionProcessed = dict["IsRequireDiscussionProcessed"] as! Bool
                }
                if dict.keys.contains("IsResetApprovalWhenNewPush") {
                    self.isResetApprovalWhenNewPush = dict["IsResetApprovalWhenNewPush"] as! Bool
                }
                if dict.keys.contains("MergeRequestMode") {
                    self.mergeRequestMode = dict["MergeRequestMode"] as! String
                }
                if dict.keys.contains("MinimualApproval") {
                    self.minimualApproval = dict["MinimualApproval"] as! Int32
                }
                if dict.keys.contains("Required") {
                    self.required_ = dict["Required"] as! Bool
                }
            }
        }
        public class TestSetting : Tea.TeaModel {
            public class CheckConfig : Tea.TeaModel {
                public class CheckItems : Tea.TeaModel {
                    public var name: String?

                    public var required_: Bool?

                    public override init() {
                        super.init()
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
                        if self.required_ != nil {
                            map["Required"] = self.required_!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Required") {
                            self.required_ = dict["Required"] as! Bool
                        }
                    }
                }
                public var checkItems: [CreateRepositoryProtectedBranchResponseBody.Result.TestSetting.CheckConfig.CheckItems]?

                public override init() {
                    super.init()
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
                        map["CheckItems"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckItems") {
                        self.checkItems = dict["CheckItems"] as! [CreateRepositoryProtectedBranchResponseBody.Result.TestSetting.CheckConfig.CheckItems]
                    }
                }
            }
            public class CodingGuidelinesDetection : Tea.TeaModel {
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
                        map["Enabled"] = self.enabled!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Enabled") {
                        self.enabled = dict["Enabled"] as! Bool
                    }
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
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
                        map["Enabled"] = self.enabled!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Enabled") {
                        self.enabled = dict["Enabled"] as! Bool
                    }
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
                    }
                }
            }
            public var checkConfig: CreateRepositoryProtectedBranchResponseBody.Result.TestSetting.CheckConfig?

            public var codingGuidelinesDetection: CreateRepositoryProtectedBranchResponseBody.Result.TestSetting.CodingGuidelinesDetection?

            public var required_: Bool?

            public var sensitiveInfoDetection: CreateRepositoryProtectedBranchResponseBody.Result.TestSetting.SensitiveInfoDetection?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.checkConfig?.validate()
                try self.codingGuidelinesDetection?.validate()
                try self.sensitiveInfoDetection?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkConfig != nil {
                    map["CheckConfig"] = self.checkConfig?.toMap()
                }
                if self.codingGuidelinesDetection != nil {
                    map["CodingGuidelinesDetection"] = self.codingGuidelinesDetection?.toMap()
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.sensitiveInfoDetection != nil {
                    map["SensitiveInfoDetection"] = self.sensitiveInfoDetection?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckConfig") {
                    var model = CreateRepositoryProtectedBranchResponseBody.Result.TestSetting.CheckConfig()
                    model.fromMap(dict["CheckConfig"] as! [String: Any])
                    self.checkConfig = model
                }
                if dict.keys.contains("CodingGuidelinesDetection") {
                    var model = CreateRepositoryProtectedBranchResponseBody.Result.TestSetting.CodingGuidelinesDetection()
                    model.fromMap(dict["CodingGuidelinesDetection"] as! [String: Any])
                    self.codingGuidelinesDetection = model
                }
                if dict.keys.contains("Required") {
                    self.required_ = dict["Required"] as! Bool
                }
                if dict.keys.contains("SensitiveInfoDetection") {
                    var model = CreateRepositoryProtectedBranchResponseBody.Result.TestSetting.SensitiveInfoDetection()
                    model.fromMap(dict["SensitiveInfoDetection"] as! [String: Any])
                    self.sensitiveInfoDetection = model
                }
            }
        }
        public var allowMergeRoles: [Int32]?

        public var allowPushRoles: [Int32]?

        public var branch: String?

        public var id: Int64?

        public var mergeRequestSetting: CreateRepositoryProtectedBranchResponseBody.Result.MergeRequestSetting?

        public var testSetting: CreateRepositoryProtectedBranchResponseBody.Result.TestSetting?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.mergeRequestSetting?.validate()
            try self.testSetting?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowMergeRoles != nil {
                map["AllowMergeRoles"] = self.allowMergeRoles!
            }
            if self.allowPushRoles != nil {
                map["AllowPushRoles"] = self.allowPushRoles!
            }
            if self.branch != nil {
                map["Branch"] = self.branch!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.mergeRequestSetting != nil {
                map["MergeRequestSetting"] = self.mergeRequestSetting?.toMap()
            }
            if self.testSetting != nil {
                map["TestSetting"] = self.testSetting?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowMergeRoles") {
                self.allowMergeRoles = dict["AllowMergeRoles"] as! [Int32]
            }
            if dict.keys.contains("AllowPushRoles") {
                self.allowPushRoles = dict["AllowPushRoles"] as! [Int32]
            }
            if dict.keys.contains("Branch") {
                self.branch = dict["Branch"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("MergeRequestSetting") {
                var model = CreateRepositoryProtectedBranchResponseBody.Result.MergeRequestSetting()
                model.fromMap(dict["MergeRequestSetting"] as! [String: Any])
                self.mergeRequestSetting = model
            }
            if dict.keys.contains("TestSetting") {
                var model = CreateRepositoryProtectedBranchResponseBody.Result.TestSetting()
                model.fromMap(dict["TestSetting"] as! [String: Any])
                self.testSetting = model
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: CreateRepositoryProtectedBranchResponseBody.Result?

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
            var model = CreateRepositoryProtectedBranchResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateRepositoryProtectedBranchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRepositoryProtectedBranchResponseBody?

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
            var model = CreateRepositoryProtectedBranchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSshKeyRequest : Tea.TeaModel {
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

public class CreateSshKeyResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createdAt: String?

        public var fingerPrint: String?

        public var id: Int64?

        public var key: String?

        public var keyScope: String?

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
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.fingerPrint != nil {
                map["FingerPrint"] = self.fingerPrint!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.keyScope != nil {
                map["KeyScope"] = self.keyScope!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("FingerPrint") {
                self.fingerPrint = dict["FingerPrint"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("KeyScope") {
                self.keyScope = dict["KeyScope"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: CreateSshKeyResponseBody.Result?

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
            var model = CreateSshKeyResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

public class CreateTagRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class CreateTagResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class CommitInfo : Tea.TeaModel {
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
                    map["AuthorEmail"] = self.authorEmail!
                }
                if self.authorName != nil {
                    map["AuthorName"] = self.authorName!
                }
                if self.authoredDate != nil {
                    map["AuthoredDate"] = self.authoredDate!
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
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuthorEmail") {
                    self.authorEmail = dict["AuthorEmail"] as! String
                }
                if dict.keys.contains("AuthorName") {
                    self.authorName = dict["AuthorName"] as! String
                }
                if dict.keys.contains("AuthoredDate") {
                    self.authoredDate = dict["AuthoredDate"] as! String
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
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public class Release : Tea.TeaModel {
            public var description_: String?

            public var tagName: String?

            public override init() {
                super.init()
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
                if self.tagName != nil {
                    map["TagName"] = self.tagName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("TagName") {
                    self.tagName = dict["TagName"] as! String
                }
            }
        }
        public var commitInfo: CreateTagResponseBody.Result.CommitInfo?

        public var message: String?

        public var name: String?

        public var release: CreateTagResponseBody.Result.Release?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.commitInfo?.validate()
            try self.release?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commitInfo != nil {
                map["CommitInfo"] = self.commitInfo?.toMap()
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.release != nil {
                map["Release"] = self.release?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommitInfo") {
                var model = CreateTagResponseBody.Result.CommitInfo()
                model.fromMap(dict["CommitInfo"] as! [String: Any])
                self.commitInfo = model
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Release") {
                var model = CreateTagResponseBody.Result.Release()
                model.fromMap(dict["Release"] as! [String: Any])
                self.release = model
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: CreateTagResponseBody.Result?

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
            var model = CreateTagResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTagResponseBody?

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
            var model = CreateTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBranchRequest : Tea.TeaModel {
    public var accessToken: String?

    public var branchName: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.branchName != nil {
            map["BranchName"] = self.branchName!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("BranchName") {
            self.branchName = dict["BranchName"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
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
                map["BranchName"] = self.branchName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BranchName") {
                self.branchName = dict["BranchName"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: DeleteBranchResponseBody.Result?

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
            var model = DeleteBranchResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.branchName != nil {
            map["BranchName"] = self.branchName!
        }
        if self.commitMessage != nil {
            map["CommitMessage"] = self.commitMessage!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("BranchName") {
            self.branchName = dict["BranchName"] as! String
        }
        if dict.keys.contains("CommitMessage") {
            self.commitMessage = dict["CommitMessage"] as! String
        }
        if dict.keys.contains("FilePath") {
            self.filePath = dict["FilePath"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
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
                map["BranchName"] = self.branchName!
            }
            if self.filePath != nil {
                map["FilePath"] = self.filePath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BranchName") {
                self.branchName = dict["BranchName"] as! String
            }
            if dict.keys.contains("FilePath") {
                self.filePath = dict["FilePath"] as! String
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
            var model = DeleteFileResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

public class DeleteGroupMemberRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class DeleteGroupMemberResponseBody : Tea.TeaModel {
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

    public var result: DeleteGroupMemberResponseBody.Result?

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
            var model = DeleteGroupMemberResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteGroupMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGroupMemberResponseBody?

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
            var model = DeleteGroupMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRepositoryRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
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
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! Bool
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
            var model = DeleteRepositoryResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

public class DeleteRepositoryGroupRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class DeleteRepositoryGroupResponseBody : Tea.TeaModel {
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
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: DeleteRepositoryGroupResponseBody.Result?

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
            var model = DeleteRepositoryGroupResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteRepositoryGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRepositoryGroupResponseBody?

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
            var model = DeleteRepositoryGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRepositoryMemberRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class DeleteRepositoryMemberResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accessLevel: Int32?

        public var createdAt: String?

        public var id: Int64?

        public var message: String?

        public var notificationLevel: Int32?

        public var sourceId: Int64?

        public var sourceType: String?

        public var updatedAt: String?

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
            if self.accessLevel != nil {
                map["AccessLevel"] = self.accessLevel!
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
            if self.notificationLevel != nil {
                map["NotificationLevel"] = self.notificationLevel!
            }
            if self.sourceId != nil {
                map["SourceId"] = self.sourceId!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessLevel") {
                self.accessLevel = dict["AccessLevel"] as! Int32
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("NotificationLevel") {
                self.notificationLevel = dict["NotificationLevel"] as! Int32
            }
            if dict.keys.contains("SourceId") {
                self.sourceId = dict["SourceId"] as! Int64
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! Int64
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: DeleteRepositoryMemberResponseBody.Result?

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
            var model = DeleteRepositoryMemberResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteRepositoryMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRepositoryMemberResponseBody?

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
            var model = DeleteRepositoryMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRepositoryMemberWithExternUidRequest : Tea.TeaModel {
    public var accessToken: String?

    public var externUserId: String?

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
        if self.externUserId != nil {
            map["ExternUserId"] = self.externUserId!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("ExternUserId") {
            self.externUserId = dict["ExternUserId"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class DeleteRepositoryMemberWithExternUidResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accessLevel: Int32?

        public var createdAt: String?

        public var id: Int64?

        public var sourceId: Int64?

        public var sourceType: String?

        public var updatedAt: String?

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
            if self.accessLevel != nil {
                map["AccessLevel"] = self.accessLevel!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.sourceId != nil {
                map["SourceId"] = self.sourceId!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessLevel") {
                self.accessLevel = dict["AccessLevel"] as! Int32
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("SourceId") {
                self.sourceId = dict["SourceId"] as! Int64
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! Int64
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: DeleteRepositoryMemberWithExternUidResponseBody.Result?

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
            var model = DeleteRepositoryMemberWithExternUidResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteRepositoryMemberWithExternUidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRepositoryMemberWithExternUidResponseBody?

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
            var model = DeleteRepositoryMemberWithExternUidResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRepositoryProtectedBranchRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class DeleteRepositoryProtectedBranchResponseBody : Tea.TeaModel {
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
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: DeleteRepositoryProtectedBranchResponseBody.Result?

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
            var model = DeleteRepositoryProtectedBranchResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteRepositoryProtectedBranchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRepositoryProtectedBranchResponseBody?

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
            var model = DeleteRepositoryProtectedBranchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRepositoryTagRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class DeleteRepositoryTagResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagName") {
                self.tagName = dict["TagName"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: DeleteRepositoryTagResponseBody.Result?

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
            var model = DeleteRepositoryTagResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteRepositoryTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRepositoryTagResponseBody?

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
            var model = DeleteRepositoryTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRepositoryTagV2Request : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var tagName: String?

    public override init() {
        super.init()
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
        if self.tagName != nil {
            map["TagName"] = self.tagName!
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
        if dict.keys.contains("TagName") {
            self.tagName = dict["TagName"] as! String
        }
    }
}

public class DeleteRepositoryTagV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagName") {
                self.tagName = dict["TagName"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: DeleteRepositoryTagV2ResponseBody.Result?

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
            var model = DeleteRepositoryTagV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteRepositoryTagV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRepositoryTagV2ResponseBody?

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
            var model = DeleteRepositoryTagV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRepositoryWebhookRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class DeleteRepositoryWebhookResponseBody : Tea.TeaModel {
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
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.enableSslVerification != nil {
                map["EnableSslVerification"] = self.enableSslVerification!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.lastTestResult != nil {
                map["LastTestResult"] = self.lastTestResult!
            }
            if self.mergeRequestsEvents != nil {
                map["MergeRequestsEvents"] = self.mergeRequestsEvents!
            }
            if self.noteEvents != nil {
                map["NoteEvents"] = self.noteEvents!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.pushEvents != nil {
                map["PushEvents"] = self.pushEvents!
            }
            if self.secretToken != nil {
                map["SecretToken"] = self.secretToken!
            }
            if self.tagPushEvents != nil {
                map["TagPushEvents"] = self.tagPushEvents!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EnableSslVerification") {
                self.enableSslVerification = dict["EnableSslVerification"] as! Bool
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LastTestResult") {
                self.lastTestResult = dict["LastTestResult"] as! String
            }
            if dict.keys.contains("MergeRequestsEvents") {
                self.mergeRequestsEvents = dict["MergeRequestsEvents"] as! Bool
            }
            if dict.keys.contains("NoteEvents") {
                self.noteEvents = dict["NoteEvents"] as! Bool
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("PushEvents") {
                self.pushEvents = dict["PushEvents"] as! Bool
            }
            if dict.keys.contains("SecretToken") {
                self.secretToken = dict["SecretToken"] as! String
            }
            if dict.keys.contains("TagPushEvents") {
                self.tagPushEvents = dict["TagPushEvents"] as! Bool
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: DeleteRepositoryWebhookResponseBody.Result?

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
            var model = DeleteRepositoryWebhookResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteRepositoryWebhookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRepositoryWebhookResponseBody?

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
            var model = DeleteRepositoryWebhookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableRepositoryDeployKeyRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class EnableRepositoryDeployKeyResponseBody : Tea.TeaModel {
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
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: EnableRepositoryDeployKeyResponseBody.Result?

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
            var model = EnableRepositoryDeployKeyResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class EnableRepositoryDeployKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableRepositoryDeployKeyResponseBody?

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
            var model = EnableRepositoryDeployKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBranchInfoRequest : Tea.TeaModel {
    public var accessToken: String?

    public var branchName: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.branchName != nil {
            map["BranchName"] = self.branchName!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("BranchName") {
            self.branchName = dict["BranchName"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class GetBranchInfoResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class CommitInfo : Tea.TeaModel {
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
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public var branchName: String?

        public var commitInfo: GetBranchInfoResponseBody.Result.CommitInfo?

        public var protectedBranch: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.commitInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.branchName != nil {
                map["BranchName"] = self.branchName!
            }
            if self.commitInfo != nil {
                map["CommitInfo"] = self.commitInfo?.toMap()
            }
            if self.protectedBranch != nil {
                map["ProtectedBranch"] = self.protectedBranch!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BranchName") {
                self.branchName = dict["BranchName"] as! String
            }
            if dict.keys.contains("CommitInfo") {
                var model = GetBranchInfoResponseBody.Result.CommitInfo()
                model.fromMap(dict["CommitInfo"] as! [String: Any])
                self.commitInfo = model
            }
            if dict.keys.contains("ProtectedBranch") {
                self.protectedBranch = dict["ProtectedBranch"] as! Bool
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
            var model = GetBranchInfoResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

public class GetCodeCompletionRequest : Tea.TeaModel {
    public var fetchKeys: String?

    public var isEncrypted: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fetchKeys != nil {
            map["FetchKeys"] = self.fetchKeys!
        }
        if self.isEncrypted != nil {
            map["IsEncrypted"] = self.isEncrypted!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FetchKeys") {
            self.fetchKeys = dict["FetchKeys"] as! String
        }
        if dict.keys.contains("IsEncrypted") {
            self.isEncrypted = dict["IsEncrypted"] as! Bool
        }
    }
}

public class GetCodeCompletionResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var body: String?

        public var clientTimestamp: String?

        public var fetchTimestamp: String?

        public var invokeTimestamp: String?

        public var receiveTimestamp: String?

        public var rspTimestamp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.body != nil {
                map["Body"] = self.body!
            }
            if self.clientTimestamp != nil {
                map["ClientTimestamp"] = self.clientTimestamp!
            }
            if self.fetchTimestamp != nil {
                map["FetchTimestamp"] = self.fetchTimestamp!
            }
            if self.invokeTimestamp != nil {
                map["InvokeTimestamp"] = self.invokeTimestamp!
            }
            if self.receiveTimestamp != nil {
                map["ReceiveTimestamp"] = self.receiveTimestamp!
            }
            if self.rspTimestamp != nil {
                map["RspTimestamp"] = self.rspTimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Body") {
                self.body = dict["Body"] as! String
            }
            if dict.keys.contains("ClientTimestamp") {
                self.clientTimestamp = dict["ClientTimestamp"] as! String
            }
            if dict.keys.contains("FetchTimestamp") {
                self.fetchTimestamp = dict["FetchTimestamp"] as! String
            }
            if dict.keys.contains("InvokeTimestamp") {
                self.invokeTimestamp = dict["InvokeTimestamp"] as! String
            }
            if dict.keys.contains("ReceiveTimestamp") {
                self.receiveTimestamp = dict["ReceiveTimestamp"] as! String
            }
            if dict.keys.contains("RspTimestamp") {
                self.rspTimestamp = dict["RspTimestamp"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: GetCodeCompletionResponseBody.Result?

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
            var model = GetCodeCompletionResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetCodeCompletionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCodeCompletionResponseBody?

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
            var model = GetCodeCompletionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCodeupOrganizationRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
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

public class GetFileBlobsRequest : Tea.TeaModel {
    public var accessToken: String?

    public var filePath: String?

    public var from: Int64?

    public var organizationId: String?

    public var ref: String?

    public var subUserId: String?

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
            map["AccessToken"] = self.accessToken!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.ref != nil {
            map["Ref"] = self.ref!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("FilePath") {
            self.filePath = dict["FilePath"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! Int64
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("Ref") {
            self.ref = dict["Ref"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! Int64
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
                map["Content"] = self.content!
            }
            if self.totalLines != nil {
                map["TotalLines"] = self.totalLines!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("TotalLines") {
                self.totalLines = dict["TotalLines"] as! Int32
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
            var model = GetFileBlobsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public var filePath: String?

    public var organizationId: String?

    public var sha: String?

    public override init() {
        super.init()
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
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.sha != nil {
            map["Sha"] = self.sha!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("FilePath") {
            self.filePath = dict["FilePath"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("Sha") {
            self.sha = dict["Sha"] as! String
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

public class GetGroupDetailRequest : Tea.TeaModel {
    public var accessToken: String?

    public var groupId: Int64?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! Int64
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class GetGroupDetailResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var avatarUrl: String?

        public var description_: String?

        public var id: Int64?

        public var name: String?

        public var nameWithNamespace: String?

        public var ownerId: Int64?

        public var parentId: Int64?

        public var path: String?

        public var pathWithNamespace: String?

        public var type: String?

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
            if self.avatarUrl != nil {
                map["AvatarUrl"] = self.avatarUrl!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nameWithNamespace != nil {
                map["NameWithNamespace"] = self.nameWithNamespace!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.pathWithNamespace != nil {
                map["PathWithNamespace"] = self.pathWithNamespace!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.visibilityLevel != nil {
                map["VisibilityLevel"] = self.visibilityLevel!
            }
            if self.webUrl != nil {
                map["WebUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvatarUrl") {
                self.avatarUrl = dict["AvatarUrl"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NameWithNamespace") {
                self.nameWithNamespace = dict["NameWithNamespace"] as! String
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! Int64
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! Int64
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("PathWithNamespace") {
                self.pathWithNamespace = dict["PathWithNamespace"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("VisibilityLevel") {
                self.visibilityLevel = dict["VisibilityLevel"] as! String
            }
            if dict.keys.contains("WebUrl") {
                self.webUrl = dict["WebUrl"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: GetGroupDetailResponseBody.Result?

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
            var model = GetGroupDetailResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetGroupDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGroupDetailResponseBody?

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
            var model = GetGroupDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMergeRequestApproveStatusRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class GetMergeRequestApproveStatusResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var approveStatus: String?

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
            if self.approveStatus != nil {
                map["ApproveStatus"] = self.approveStatus!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApproveStatus") {
                self.approveStatus = dict["ApproveStatus"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: GetMergeRequestApproveStatusResponseBody.Result?

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
            var model = GetMergeRequestApproveStatusResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetMergeRequestApproveStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMergeRequestApproveStatusResponseBody?

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
            var model = GetMergeRequestApproveStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMergeRequestDetailRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class GetMergeRequestDetailResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ApproveCheckResult : Tea.TeaModel {
            public class SatisfiedCheckResults : Tea.TeaModel {
                public class ExtraUsers : Tea.TeaModel {
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
                        if self.avatarUrl != nil {
                            map["AvatarUrl"] = self.avatarUrl!
                        }
                        if self.externUserId != nil {
                            map["ExternUserId"] = self.externUserId!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AvatarUrl") {
                            self.avatarUrl = dict["AvatarUrl"] as! String
                        }
                        if dict.keys.contains("ExternUserId") {
                            self.externUserId = dict["ExternUserId"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var checkName: String?

                public var checkStatus: String?

                public var checkType: String?

                public var extraUsers: [GetMergeRequestDetailResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults.ExtraUsers]?

                public var satisfiedItems: [String]?

                public var unsatisfiedItems: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkName != nil {
                        map["CheckName"] = self.checkName!
                    }
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.checkType != nil {
                        map["CheckType"] = self.checkType!
                    }
                    if self.extraUsers != nil {
                        var tmp : [Any] = []
                        for k in self.extraUsers! {
                            tmp.append(k.toMap())
                        }
                        map["ExtraUsers"] = tmp
                    }
                    if self.satisfiedItems != nil {
                        map["SatisfiedItems"] = self.satisfiedItems!
                    }
                    if self.unsatisfiedItems != nil {
                        map["UnsatisfiedItems"] = self.unsatisfiedItems!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckName") {
                        self.checkName = dict["CheckName"] as! String
                    }
                    if dict.keys.contains("CheckStatus") {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("CheckType") {
                        self.checkType = dict["CheckType"] as! String
                    }
                    if dict.keys.contains("ExtraUsers") {
                        self.extraUsers = dict["ExtraUsers"] as! [GetMergeRequestDetailResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults.ExtraUsers]
                    }
                    if dict.keys.contains("SatisfiedItems") {
                        self.satisfiedItems = dict["SatisfiedItems"] as! [String]
                    }
                    if dict.keys.contains("UnsatisfiedItems") {
                        self.unsatisfiedItems = dict["UnsatisfiedItems"] as! [String]
                    }
                }
            }
            public class UnsatisfiedCheckResults : Tea.TeaModel {
                public class ExtraUsers : Tea.TeaModel {
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
                        if self.avatarUrl != nil {
                            map["AvatarUrl"] = self.avatarUrl!
                        }
                        if self.externUserId != nil {
                            map["ExternUserId"] = self.externUserId!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AvatarUrl") {
                            self.avatarUrl = dict["AvatarUrl"] as! String
                        }
                        if dict.keys.contains("ExternUserId") {
                            self.externUserId = dict["ExternUserId"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var checkName: String?

                public var checkStatus: String?

                public var checkType: String?

                public var extraUsers: [GetMergeRequestDetailResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults.ExtraUsers]?

                public var satisfiedItems: [String]?

                public var unsatisfiedItems: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkName != nil {
                        map["CheckName"] = self.checkName!
                    }
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.checkType != nil {
                        map["CheckType"] = self.checkType!
                    }
                    if self.extraUsers != nil {
                        var tmp : [Any] = []
                        for k in self.extraUsers! {
                            tmp.append(k.toMap())
                        }
                        map["ExtraUsers"] = tmp
                    }
                    if self.satisfiedItems != nil {
                        map["SatisfiedItems"] = self.satisfiedItems!
                    }
                    if self.unsatisfiedItems != nil {
                        map["UnsatisfiedItems"] = self.unsatisfiedItems!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckName") {
                        self.checkName = dict["CheckName"] as! String
                    }
                    if dict.keys.contains("CheckStatus") {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("CheckType") {
                        self.checkType = dict["CheckType"] as! String
                    }
                    if dict.keys.contains("ExtraUsers") {
                        self.extraUsers = dict["ExtraUsers"] as! [GetMergeRequestDetailResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults.ExtraUsers]
                    }
                    if dict.keys.contains("SatisfiedItems") {
                        self.satisfiedItems = dict["SatisfiedItems"] as! [String]
                    }
                    if dict.keys.contains("UnsatisfiedItems") {
                        self.unsatisfiedItems = dict["UnsatisfiedItems"] as! [String]
                    }
                }
            }
            public var satisfiedCheckResults: [GetMergeRequestDetailResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults]?

            public var totalCheckResult: String?

            public var unsatisfiedCheckResults: [GetMergeRequestDetailResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.satisfiedCheckResults != nil {
                    var tmp : [Any] = []
                    for k in self.satisfiedCheckResults! {
                        tmp.append(k.toMap())
                    }
                    map["SatisfiedCheckResults"] = tmp
                }
                if self.totalCheckResult != nil {
                    map["TotalCheckResult"] = self.totalCheckResult!
                }
                if self.unsatisfiedCheckResults != nil {
                    var tmp : [Any] = []
                    for k in self.unsatisfiedCheckResults! {
                        tmp.append(k.toMap())
                    }
                    map["UnsatisfiedCheckResults"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SatisfiedCheckResults") {
                    self.satisfiedCheckResults = dict["SatisfiedCheckResults"] as! [GetMergeRequestDetailResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults]
                }
                if dict.keys.contains("TotalCheckResult") {
                    self.totalCheckResult = dict["TotalCheckResult"] as! String
                }
                if dict.keys.contains("UnsatisfiedCheckResults") {
                    self.unsatisfiedCheckResults = dict["UnsatisfiedCheckResults"] as! [GetMergeRequestDetailResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults]
                }
            }
        }
        public class AssigneeList : Tea.TeaModel {
            public var avatarUrl: String?

            public var email: String?

            public var externUserId: String?

            public var id: String?

            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
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
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class Author : Tea.TeaModel {
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
                if self.avatarUrl != nil {
                    map["AvatarUrl"] = self.avatarUrl!
                }
                if self.externUserId != nil {
                    map["ExternUserId"] = self.externUserId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvatarUrl") {
                    self.avatarUrl = dict["AvatarUrl"] as! String
                }
                if dict.keys.contains("ExternUserId") {
                    self.externUserId = dict["ExternUserId"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var acceptedRevision: String?

        public var aheadCommitCount: Int32?

        public var approveCheckResult: GetMergeRequestDetailResponseBody.Result.ApproveCheckResult?

        public var assigneeList: [GetMergeRequestDetailResponseBody.Result.AssigneeList]?

        public var author: GetMergeRequestDetailResponseBody.Result.Author?

        public var behindCommitCount: Int32?

        public var createdAt: String?

        public var description_: String?

        public var id: Int64?

        public var isSupportMerge: Bool?

        public var mergeError: String?

        public var mergeStatus: String?

        public var mergeType: String?

        public var mergedRevision: String?

        public var nameWithNamespace: String?

        public var projectId: Int64?

        public var sourceBranch: String?

        public var state: String?

        public var targetBranch: String?

        public var title: String?

        public var updatedAt: String?

        public var webUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.approveCheckResult?.validate()
            try self.author?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceptedRevision != nil {
                map["AcceptedRevision"] = self.acceptedRevision!
            }
            if self.aheadCommitCount != nil {
                map["AheadCommitCount"] = self.aheadCommitCount!
            }
            if self.approveCheckResult != nil {
                map["ApproveCheckResult"] = self.approveCheckResult?.toMap()
            }
            if self.assigneeList != nil {
                var tmp : [Any] = []
                for k in self.assigneeList! {
                    tmp.append(k.toMap())
                }
                map["AssigneeList"] = tmp
            }
            if self.author != nil {
                map["Author"] = self.author?.toMap()
            }
            if self.behindCommitCount != nil {
                map["BehindCommitCount"] = self.behindCommitCount!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isSupportMerge != nil {
                map["IsSupportMerge"] = self.isSupportMerge!
            }
            if self.mergeError != nil {
                map["MergeError"] = self.mergeError!
            }
            if self.mergeStatus != nil {
                map["MergeStatus"] = self.mergeStatus!
            }
            if self.mergeType != nil {
                map["MergeType"] = self.mergeType!
            }
            if self.mergedRevision != nil {
                map["MergedRevision"] = self.mergedRevision!
            }
            if self.nameWithNamespace != nil {
                map["NameWithNamespace"] = self.nameWithNamespace!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.sourceBranch != nil {
                map["SourceBranch"] = self.sourceBranch!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.targetBranch != nil {
                map["TargetBranch"] = self.targetBranch!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.webUrl != nil {
                map["WebUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceptedRevision") {
                self.acceptedRevision = dict["AcceptedRevision"] as! String
            }
            if dict.keys.contains("AheadCommitCount") {
                self.aheadCommitCount = dict["AheadCommitCount"] as! Int32
            }
            if dict.keys.contains("ApproveCheckResult") {
                var model = GetMergeRequestDetailResponseBody.Result.ApproveCheckResult()
                model.fromMap(dict["ApproveCheckResult"] as! [String: Any])
                self.approveCheckResult = model
            }
            if dict.keys.contains("AssigneeList") {
                self.assigneeList = dict["AssigneeList"] as! [GetMergeRequestDetailResponseBody.Result.AssigneeList]
            }
            if dict.keys.contains("Author") {
                var model = GetMergeRequestDetailResponseBody.Result.Author()
                model.fromMap(dict["Author"] as! [String: Any])
                self.author = model
            }
            if dict.keys.contains("BehindCommitCount") {
                self.behindCommitCount = dict["BehindCommitCount"] as! Int32
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IsSupportMerge") {
                self.isSupportMerge = dict["IsSupportMerge"] as! Bool
            }
            if dict.keys.contains("MergeError") {
                self.mergeError = dict["MergeError"] as! String
            }
            if dict.keys.contains("MergeStatus") {
                self.mergeStatus = dict["MergeStatus"] as! String
            }
            if dict.keys.contains("MergeType") {
                self.mergeType = dict["MergeType"] as! String
            }
            if dict.keys.contains("MergedRevision") {
                self.mergedRevision = dict["MergedRevision"] as! String
            }
            if dict.keys.contains("NameWithNamespace") {
                self.nameWithNamespace = dict["NameWithNamespace"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("SourceBranch") {
                self.sourceBranch = dict["SourceBranch"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("TargetBranch") {
                self.targetBranch = dict["TargetBranch"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
            if dict.keys.contains("WebUrl") {
                self.webUrl = dict["WebUrl"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: GetMergeRequestDetailResponseBody.Result?

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
            var model = GetMergeRequestDetailResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetMergeRequestDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMergeRequestDetailResponseBody?

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
            var model = GetMergeRequestDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMergeRequestSettingRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class GetMergeRequestSettingResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var isEnableSmartCodeReview: Bool?

        public var mergeTypes: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isEnableSmartCodeReview != nil {
                map["IsEnableSmartCodeReview"] = self.isEnableSmartCodeReview!
            }
            if self.mergeTypes != nil {
                map["MergeTypes"] = self.mergeTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsEnableSmartCodeReview") {
                self.isEnableSmartCodeReview = dict["IsEnableSmartCodeReview"] as! Bool
            }
            if dict.keys.contains("MergeTypes") {
                self.mergeTypes = dict["MergeTypes"] as! [String]
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: GetMergeRequestSettingResponseBody.Result?

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
            var model = GetMergeRequestSettingResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetMergeRequestSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMergeRequestSettingResponseBody?

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
            var model = GetMergeRequestSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOrganizationRepositorySettingRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class GetOrganizationRepositorySettingResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class OrgCloneDownloadMethodList : Tea.TeaModel {
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
                    map["Allowed"] = self.allowed!
                }
                if self.permissionCode != nil {
                    map["PermissionCode"] = self.permissionCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Allowed") {
                    self.allowed = dict["Allowed"] as! Bool
                }
                if dict.keys.contains("PermissionCode") {
                    self.permissionCode = dict["PermissionCode"] as! String
                }
            }
        }
        public class OrgCloneDownloadRoleList : Tea.TeaModel {
            public var allowed: Bool?

            public var roleCode: Int64?

            public override init() {
                super.init()
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
                    map["Allowed"] = self.allowed!
                }
                if self.roleCode != nil {
                    map["RoleCode"] = self.roleCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Allowed") {
                    self.allowed = dict["Allowed"] as! Bool
                }
                if dict.keys.contains("RoleCode") {
                    self.roleCode = dict["RoleCode"] as! Int64
                }
            }
        }
        public var forcePushForbidden: Bool?

        public var groupRequired: Bool?

        public var openCloneDownloadControl: Bool?

        public var orgCloneDownloadMethodList: [GetOrganizationRepositorySettingResponseBody.Result.OrgCloneDownloadMethodList]?

        public var orgCloneDownloadRoleList: [GetOrganizationRepositorySettingResponseBody.Result.OrgCloneDownloadRoleList]?

        public var repoAdminAccessVisibilityLevel: [Int64]?

        public var repoAdminOperation: [Int64]?

        public var repoCreatorIdentity: [Int64]?

        public var repoVisibilityLevel: [Int64]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.forcePushForbidden != nil {
                map["ForcePushForbidden"] = self.forcePushForbidden!
            }
            if self.groupRequired != nil {
                map["GroupRequired"] = self.groupRequired!
            }
            if self.openCloneDownloadControl != nil {
                map["OpenCloneDownloadControl"] = self.openCloneDownloadControl!
            }
            if self.orgCloneDownloadMethodList != nil {
                var tmp : [Any] = []
                for k in self.orgCloneDownloadMethodList! {
                    tmp.append(k.toMap())
                }
                map["OrgCloneDownloadMethodList"] = tmp
            }
            if self.orgCloneDownloadRoleList != nil {
                var tmp : [Any] = []
                for k in self.orgCloneDownloadRoleList! {
                    tmp.append(k.toMap())
                }
                map["OrgCloneDownloadRoleList"] = tmp
            }
            if self.repoAdminAccessVisibilityLevel != nil {
                map["RepoAdminAccessVisibilityLevel"] = self.repoAdminAccessVisibilityLevel!
            }
            if self.repoAdminOperation != nil {
                map["RepoAdminOperation"] = self.repoAdminOperation!
            }
            if self.repoCreatorIdentity != nil {
                map["RepoCreatorIdentity"] = self.repoCreatorIdentity!
            }
            if self.repoVisibilityLevel != nil {
                map["RepoVisibilityLevel"] = self.repoVisibilityLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ForcePushForbidden") {
                self.forcePushForbidden = dict["ForcePushForbidden"] as! Bool
            }
            if dict.keys.contains("GroupRequired") {
                self.groupRequired = dict["GroupRequired"] as! Bool
            }
            if dict.keys.contains("OpenCloneDownloadControl") {
                self.openCloneDownloadControl = dict["OpenCloneDownloadControl"] as! Bool
            }
            if dict.keys.contains("OrgCloneDownloadMethodList") {
                self.orgCloneDownloadMethodList = dict["OrgCloneDownloadMethodList"] as! [GetOrganizationRepositorySettingResponseBody.Result.OrgCloneDownloadMethodList]
            }
            if dict.keys.contains("OrgCloneDownloadRoleList") {
                self.orgCloneDownloadRoleList = dict["OrgCloneDownloadRoleList"] as! [GetOrganizationRepositorySettingResponseBody.Result.OrgCloneDownloadRoleList]
            }
            if dict.keys.contains("RepoAdminAccessVisibilityLevel") {
                self.repoAdminAccessVisibilityLevel = dict["RepoAdminAccessVisibilityLevel"] as! [Int64]
            }
            if dict.keys.contains("RepoAdminOperation") {
                self.repoAdminOperation = dict["RepoAdminOperation"] as! [Int64]
            }
            if dict.keys.contains("RepoCreatorIdentity") {
                self.repoCreatorIdentity = dict["RepoCreatorIdentity"] as! [Int64]
            }
            if dict.keys.contains("RepoVisibilityLevel") {
                self.repoVisibilityLevel = dict["RepoVisibilityLevel"] as! [Int64]
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: GetOrganizationRepositorySettingResponseBody.Result?

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
            var model = GetOrganizationRepositorySettingResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetOrganizationRepositorySettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOrganizationRepositorySettingResponseBody?

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
            var model = GetOrganizationRepositorySettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOrganizationSecurityCenterStatusRequest : Tea.TeaModel {
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

public class GetOrganizationSecurityCenterStatusResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var enable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enable") {
                self.enable = dict["Enable"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: GetOrganizationSecurityCenterStatusResponseBody.Result?

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
            var model = GetOrganizationSecurityCenterStatusResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetOrganizationSecurityCenterStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOrganizationSecurityCenterStatusResponseBody?

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
            var model = GetOrganizationSecurityCenterStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectMemberRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
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
                map["AccessLevel"] = self.accessLevel!
            }
            if self.avatarUrl != nil {
                map["AvatarUrl"] = self.avatarUrl!
            }
            if self.externUserId != nil {
                map["ExternUserId"] = self.externUserId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
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
            if dict.keys.contains("ExternUserId") {
                self.externUserId = dict["ExternUserId"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
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
            var model = GetProjectMemberResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

public class GetRepositoryCommitRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class GetRepositoryCommitResponseBody : Tea.TeaModel {
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

        public var signature: GetRepositoryCommitResponseBody.Result.Signature?

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
                var model = GetRepositoryCommitResponseBody.Result.Signature()
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

    public var result: GetRepositoryCommitResponseBody.Result?

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
            var model = GetRepositoryCommitResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetRepositoryCommitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRepositoryCommitResponseBody?

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
            var model = GetRepositoryCommitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRepositoryInfoRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.identity != nil {
            map["Identity"] = self.identity!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("Identity") {
            self.identity = dict["Identity"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class GetRepositoryInfoResponseBody : Tea.TeaModel {
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

            public var state: String?

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
                    map["Avatar"] = self.avatar!
                }
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.public_ != nil {
                    map["Public"] = self.public_!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.updatedAt != nil {
                    map["UpdatedAt"] = self.updatedAt!
                }
                if self.visibilityLevel != nil {
                    map["VisibilityLevel"] = self.visibilityLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Avatar") {
                    self.avatar = dict["Avatar"] as! String
                }
                if dict.keys.contains("CreatedAt") {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! Int64
                }
                if dict.keys.contains("Path") {
                    self.path = dict["Path"] as! String
                }
                if dict.keys.contains("Public") {
                    self.public_ = dict["Public"] as! Bool
                }
                if dict.keys.contains("State") {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("UpdatedAt") {
                    self.updatedAt = dict["UpdatedAt"] as! String
                }
                if dict.keys.contains("VisibilityLevel") {
                    self.visibilityLevel = dict["VisibilityLevel"] as! String
                }
            }
        }
        public class Permissions : Tea.TeaModel {
            public class GroupAccess : Tea.TeaModel {
                public var accessLevel: Int32?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessLevel") {
                        self.accessLevel = dict["AccessLevel"] as! Int32
                    }
                }
            }
            public class ProjectAccess : Tea.TeaModel {
                public var accessLevel: Int32?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessLevel") {
                        self.accessLevel = dict["AccessLevel"] as! Int32
                    }
                }
            }
            public var groupAccess: GetRepositoryInfoResponseBody.Result.Permissions.GroupAccess?

            public var projectAccess: GetRepositoryInfoResponseBody.Result.Permissions.ProjectAccess?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.groupAccess?.validate()
                try self.projectAccess?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.groupAccess != nil {
                    map["GroupAccess"] = self.groupAccess?.toMap()
                }
                if self.projectAccess != nil {
                    map["ProjectAccess"] = self.projectAccess?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GroupAccess") {
                    var model = GetRepositoryInfoResponseBody.Result.Permissions.GroupAccess()
                    model.fromMap(dict["GroupAccess"] as! [String: Any])
                    self.groupAccess = model
                }
                if dict.keys.contains("ProjectAccess") {
                    var model = GetRepositoryInfoResponseBody.Result.Permissions.ProjectAccess()
                    model.fromMap(dict["ProjectAccess"] as! [String: Any])
                    self.projectAccess = model
                }
            }
        }
        public var accessLevel: Int32?

        public var archive: Bool?

        public var avatarUrl: String?

        public var createdAt: String?

        public var creatorId: Int64?

        public var defaultBranch: String?

        public var demoProjectStatus: Bool?

        public var description_: String?

        public var httpUrlToRepo: String?

        public var id: Int64?

        public var importFromSubversion: Bool?

        public var importStatus: String?

        public var importUrl: String?

        public var lastActivityAt: String?

        public var name: String?

        public var nameWithNamespace: String?

        public var namespace: GetRepositoryInfoResponseBody.Result.Namespace?

        public var path: String?

        public var pathWithNamespace: String?

        public var permissions: GetRepositoryInfoResponseBody.Result.Permissions?

        public var public_: Bool?

        public var sshUrlToRepo: String?

        public var tagList: [String]?

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
            try self.permissions?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessLevel != nil {
                map["AccessLevel"] = self.accessLevel!
            }
            if self.archive != nil {
                map["Archive"] = self.archive!
            }
            if self.avatarUrl != nil {
                map["AvatarUrl"] = self.avatarUrl!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.creatorId != nil {
                map["CreatorId"] = self.creatorId!
            }
            if self.defaultBranch != nil {
                map["DefaultBranch"] = self.defaultBranch!
            }
            if self.demoProjectStatus != nil {
                map["DemoProjectStatus"] = self.demoProjectStatus!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.httpUrlToRepo != nil {
                map["HttpUrlToRepo"] = self.httpUrlToRepo!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.importFromSubversion != nil {
                map["ImportFromSubversion"] = self.importFromSubversion!
            }
            if self.importStatus != nil {
                map["ImportStatus"] = self.importStatus!
            }
            if self.importUrl != nil {
                map["ImportUrl"] = self.importUrl!
            }
            if self.lastActivityAt != nil {
                map["LastActivityAt"] = self.lastActivityAt!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nameWithNamespace != nil {
                map["NameWithNamespace"] = self.nameWithNamespace!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace?.toMap()
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.pathWithNamespace != nil {
                map["PathWithNamespace"] = self.pathWithNamespace!
            }
            if self.permissions != nil {
                map["Permissions"] = self.permissions?.toMap()
            }
            if self.public_ != nil {
                map["Public"] = self.public_!
            }
            if self.sshUrlToRepo != nil {
                map["SshUrlToRepo"] = self.sshUrlToRepo!
            }
            if self.tagList != nil {
                map["TagList"] = self.tagList!
            }
            if self.visibilityLevel != nil {
                map["VisibilityLevel"] = self.visibilityLevel!
            }
            if self.webUrl != nil {
                map["WebUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessLevel") {
                self.accessLevel = dict["AccessLevel"] as! Int32
            }
            if dict.keys.contains("Archive") {
                self.archive = dict["Archive"] as! Bool
            }
            if dict.keys.contains("AvatarUrl") {
                self.avatarUrl = dict["AvatarUrl"] as! String
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("CreatorId") {
                self.creatorId = dict["CreatorId"] as! Int64
            }
            if dict.keys.contains("DefaultBranch") {
                self.defaultBranch = dict["DefaultBranch"] as! String
            }
            if dict.keys.contains("DemoProjectStatus") {
                self.demoProjectStatus = dict["DemoProjectStatus"] as! Bool
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("HttpUrlToRepo") {
                self.httpUrlToRepo = dict["HttpUrlToRepo"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("ImportFromSubversion") {
                self.importFromSubversion = dict["ImportFromSubversion"] as! Bool
            }
            if dict.keys.contains("ImportStatus") {
                self.importStatus = dict["ImportStatus"] as! String
            }
            if dict.keys.contains("ImportUrl") {
                self.importUrl = dict["ImportUrl"] as! String
            }
            if dict.keys.contains("LastActivityAt") {
                self.lastActivityAt = dict["LastActivityAt"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NameWithNamespace") {
                self.nameWithNamespace = dict["NameWithNamespace"] as! String
            }
            if dict.keys.contains("Namespace") {
                var model = GetRepositoryInfoResponseBody.Result.Namespace()
                model.fromMap(dict["Namespace"] as! [String: Any])
                self.namespace = model
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("PathWithNamespace") {
                self.pathWithNamespace = dict["PathWithNamespace"] as! String
            }
            if dict.keys.contains("Permissions") {
                var model = GetRepositoryInfoResponseBody.Result.Permissions()
                model.fromMap(dict["Permissions"] as! [String: Any])
                self.permissions = model
            }
            if dict.keys.contains("Public") {
                self.public_ = dict["Public"] as! Bool
            }
            if dict.keys.contains("SshUrlToRepo") {
                self.sshUrlToRepo = dict["SshUrlToRepo"] as! String
            }
            if dict.keys.contains("TagList") {
                self.tagList = dict["TagList"] as! [String]
            }
            if dict.keys.contains("VisibilityLevel") {
                self.visibilityLevel = dict["VisibilityLevel"] as! String
            }
            if dict.keys.contains("WebUrl") {
                self.webUrl = dict["WebUrl"] as! String
            }
        }
    }
    public var errorCode: Int32?

    public var errorMessage: String?

    public var requestId: String?

    public var result: GetRepositoryInfoResponseBody.Result?

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
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = GetRepositoryInfoResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetRepositoryInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRepositoryInfoResponseBody?

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
            var model = GetRepositoryInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRepositoryTagRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class GetRepositoryTagResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Commit : Tea.TeaModel {
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

            public var signature: GetRepositoryTagResponseBody.Result.Commit.Signature?

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
                if self.authorEmail != nil {
                    map["AuthorEmail"] = self.authorEmail!
                }
                if self.authorName != nil {
                    map["AuthorName"] = self.authorName!
                }
                if self.authoredDate != nil {
                    map["AuthoredDate"] = self.authoredDate!
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
                if dict.keys.contains("AuthorEmail") {
                    self.authorEmail = dict["AuthorEmail"] as! String
                }
                if dict.keys.contains("AuthorName") {
                    self.authorName = dict["AuthorName"] as! String
                }
                if dict.keys.contains("AuthoredDate") {
                    self.authoredDate = dict["AuthoredDate"] as! String
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
                    var model = GetRepositoryTagResponseBody.Result.Commit.Signature()
                    model.fromMap(dict["Signature"] as! [String: Any])
                    self.signature = model
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
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
        public var commit: GetRepositoryTagResponseBody.Result.Commit?

        public var id: String?

        public var message: String?

        public var name: String?

        public var signature: GetRepositoryTagResponseBody.Result.Signature?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.commit?.validate()
            try self.signature?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commit != nil {
                map["Commit"] = self.commit?.toMap()
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.signature != nil {
                map["Signature"] = self.signature?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Commit") {
                var model = GetRepositoryTagResponseBody.Result.Commit()
                model.fromMap(dict["Commit"] as! [String: Any])
                self.commit = model
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Signature") {
                var model = GetRepositoryTagResponseBody.Result.Signature()
                model.fromMap(dict["Signature"] as! [String: Any])
                self.signature = model
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: GetRepositoryTagResponseBody.Result?

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
            var model = GetRepositoryTagResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetRepositoryTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRepositoryTagResponseBody?

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
            var model = GetRepositoryTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRepositoryTagV2Request : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var tagName: String?

    public override init() {
        super.init()
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
        if self.tagName != nil {
            map["TagName"] = self.tagName!
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
        if dict.keys.contains("TagName") {
            self.tagName = dict["TagName"] as! String
        }
    }
}

public class GetRepositoryTagV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Commit : Tea.TeaModel {
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

            public var signature: GetRepositoryTagV2ResponseBody.Result.Commit.Signature?

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
                if self.authorEmail != nil {
                    map["AuthorEmail"] = self.authorEmail!
                }
                if self.authorName != nil {
                    map["AuthorName"] = self.authorName!
                }
                if self.authoredDate != nil {
                    map["AuthoredDate"] = self.authoredDate!
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
                if dict.keys.contains("AuthorEmail") {
                    self.authorEmail = dict["AuthorEmail"] as! String
                }
                if dict.keys.contains("AuthorName") {
                    self.authorName = dict["AuthorName"] as! String
                }
                if dict.keys.contains("AuthoredDate") {
                    self.authoredDate = dict["AuthoredDate"] as! String
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
                    var model = GetRepositoryTagV2ResponseBody.Result.Commit.Signature()
                    model.fromMap(dict["Signature"] as! [String: Any])
                    self.signature = model
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
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
        public var commit: GetRepositoryTagV2ResponseBody.Result.Commit?

        public var id: String?

        public var message: String?

        public var name: String?

        public var signature: GetRepositoryTagV2ResponseBody.Result.Signature?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.commit?.validate()
            try self.signature?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commit != nil {
                map["Commit"] = self.commit?.toMap()
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.signature != nil {
                map["Signature"] = self.signature?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Commit") {
                var model = GetRepositoryTagV2ResponseBody.Result.Commit()
                model.fromMap(dict["Commit"] as! [String: Any])
                self.commit = model
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Signature") {
                var model = GetRepositoryTagV2ResponseBody.Result.Signature()
                model.fromMap(dict["Signature"] as! [String: Any])
                self.signature = model
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: GetRepositoryTagV2ResponseBody.Result?

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
            var model = GetRepositoryTagV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetRepositoryTagV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRepositoryTagV2ResponseBody?

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
            var model = GetRepositoryTagV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserInfoRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class GetUserInfoResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var avatarUrl: String?

        public var email: String?

        public var externalUserId: String?

        public var id: Int64?

        public var name: String?

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
                map["AvatarUrl"] = self.avatarUrl!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.externalUserId != nil {
                map["ExternalUserId"] = self.externalUserId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvatarUrl") {
                self.avatarUrl = dict["AvatarUrl"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("ExternalUserId") {
                self.externalUserId = dict["ExternalUserId"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: GetUserInfoResponseBody.Result?

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
            var model = GetUserInfoResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetUserInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserInfoResponseBody?

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
            var model = GetUserInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IsSlsUserAuthrizedCodeupRequest : Tea.TeaModel {
    public var organizationId: String?

    public var aliyunSubUserId: String?

    public var aliyunUserId: String?

    public var codeupProjectId: Int64?

    public var slsLogStore: String?

    public var slsProject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.aliyunSubUserId != nil {
            map["aliyunSubUserId"] = self.aliyunSubUserId!
        }
        if self.aliyunUserId != nil {
            map["aliyunUserId"] = self.aliyunUserId!
        }
        if self.codeupProjectId != nil {
            map["codeupProjectId"] = self.codeupProjectId!
        }
        if self.slsLogStore != nil {
            map["slsLogStore"] = self.slsLogStore!
        }
        if self.slsProject != nil {
            map["slsProject"] = self.slsProject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("aliyunSubUserId") {
            self.aliyunSubUserId = dict["aliyunSubUserId"] as! String
        }
        if dict.keys.contains("aliyunUserId") {
            self.aliyunUserId = dict["aliyunUserId"] as! String
        }
        if dict.keys.contains("codeupProjectId") {
            self.codeupProjectId = dict["codeupProjectId"] as! Int64
        }
        if dict.keys.contains("slsLogStore") {
            self.slsLogStore = dict["slsLogStore"] as! String
        }
        if dict.keys.contains("slsProject") {
            self.slsProject = dict["slsProject"] as! String
        }
    }
}

public class IsSlsUserAuthrizedCodeupResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var authrized: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authrized != nil {
                map["authrized"] = self.authrized!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("authrized") {
                self.authrized = dict["authrized"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: IsSlsUserAuthrizedCodeupResponseBody.Result?

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
            var model = IsSlsUserAuthrizedCodeupResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class IsSlsUserAuthrizedCodeupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IsSlsUserAuthrizedCodeupResponseBody?

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
            var model = IsSlsUserAuthrizedCodeupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupMemberRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class ListGroupMemberResponseBody : Tea.TeaModel {
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

    public var result: [ListGroupMemberResponseBody.Result]?

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
        if self.total != nil {
            map["Total"] = self.total!
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
            self.result = dict["Result"] as! [ListGroupMemberResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListGroupMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupMemberResponseBody?

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
            var model = ListGroupMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupRepositoriesRequest : Tea.TeaModel {
    public var accessToken: String?

    public var isMember: Bool?

    public var organizationId: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var search: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.isMember != nil {
            map["IsMember"] = self.isMember!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("IsMember") {
            self.isMember = dict["IsMember"] as! Bool
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class ListGroupRepositoriesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var archive: Bool?

        public var createdAt: String?

        public var creatorId: Int64?

        public var httpCloneUrl: String?

        public var id: Int64?

        public var importStatus: String?

        public var lastActivityAt: String?

        public var name: String?

        public var nameWithNamespace: String?

        public var namespaceId: Int64?

        public var path: String?

        public var pathWithNamespace: String?

        public var sshCloneUrl: String?

        public var updatedAt: String?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.archive != nil {
                map["Archive"] = self.archive!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.creatorId != nil {
                map["CreatorId"] = self.creatorId!
            }
            if self.httpCloneUrl != nil {
                map["HttpCloneUrl"] = self.httpCloneUrl!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.importStatus != nil {
                map["ImportStatus"] = self.importStatus!
            }
            if self.lastActivityAt != nil {
                map["LastActivityAt"] = self.lastActivityAt!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nameWithNamespace != nil {
                map["NameWithNamespace"] = self.nameWithNamespace!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.pathWithNamespace != nil {
                map["PathWithNamespace"] = self.pathWithNamespace!
            }
            if self.sshCloneUrl != nil {
                map["SshCloneUrl"] = self.sshCloneUrl!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.visibilityLevel != nil {
                map["VisibilityLevel"] = self.visibilityLevel!
            }
            if self.webUrl != nil {
                map["WebUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Archive") {
                self.archive = dict["Archive"] as! Bool
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("CreatorId") {
                self.creatorId = dict["CreatorId"] as! Int64
            }
            if dict.keys.contains("HttpCloneUrl") {
                self.httpCloneUrl = dict["HttpCloneUrl"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("ImportStatus") {
                self.importStatus = dict["ImportStatus"] as! String
            }
            if dict.keys.contains("LastActivityAt") {
                self.lastActivityAt = dict["LastActivityAt"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NameWithNamespace") {
                self.nameWithNamespace = dict["NameWithNamespace"] as! String
            }
            if dict.keys.contains("NamespaceId") {
                self.namespaceId = dict["NamespaceId"] as! Int64
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("PathWithNamespace") {
                self.pathWithNamespace = dict["PathWithNamespace"] as! String
            }
            if dict.keys.contains("SshCloneUrl") {
                self.sshCloneUrl = dict["SshCloneUrl"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
            if dict.keys.contains("VisibilityLevel") {
                self.visibilityLevel = dict["VisibilityLevel"] as! Int32
            }
            if dict.keys.contains("WebUrl") {
                self.webUrl = dict["WebUrl"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListGroupRepositoriesResponseBody.Result]?

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
        if self.total != nil {
            map["Total"] = self.total!
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
            self.result = dict["Result"] as! [ListGroupRepositoriesResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListGroupRepositoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupRepositoriesResponseBody?

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
            var model = ListGroupRepositoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupsRequest : Tea.TeaModel {
    public var accessToken: String?

    public var includePersonal: Bool?

    public var organizationId: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var search: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.includePersonal != nil {
            map["IncludePersonal"] = self.includePersonal!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("IncludePersonal") {
            self.includePersonal = dict["IncludePersonal"] as! Bool
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class ListGroupsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accessLevel: Int32?

        public var createdAt: String?

        public var description_: String?

        public var id: Int64?

        public var name: String?

        public var nameWithNamespace: String?

        public var ownerId: Int64?

        public var parentId: Int64?

        public var path: String?

        public var pathWithNamespace: String?

        public var type: String?

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
            if self.accessLevel != nil {
                map["AccessLevel"] = self.accessLevel!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nameWithNamespace != nil {
                map["NameWithNamespace"] = self.nameWithNamespace!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.pathWithNamespace != nil {
                map["PathWithNamespace"] = self.pathWithNamespace!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.visibilityLevel != nil {
                map["VisibilityLevel"] = self.visibilityLevel!
            }
            if self.webUrl != nil {
                map["WebUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessLevel") {
                self.accessLevel = dict["AccessLevel"] as! Int32
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NameWithNamespace") {
                self.nameWithNamespace = dict["NameWithNamespace"] as! String
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! Int64
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! Int64
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("PathWithNamespace") {
                self.pathWithNamespace = dict["PathWithNamespace"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
            if dict.keys.contains("VisibilityLevel") {
                self.visibilityLevel = dict["VisibilityLevel"] as! String
            }
            if dict.keys.contains("WebUrl") {
                self.webUrl = dict["WebUrl"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListGroupsResponseBody.Result]?

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
        if self.total != nil {
            map["Total"] = self.total!
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
            self.result = dict["Result"] as! [ListGroupsResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupsResponseBody?

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
            var model = ListGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMergeRequestCommentsRequest : Tea.TeaModel {
    public var accessToken: String?

    public var fromCommit: String?

    public var organizationId: String?

    public var toCommit: String?

    public override init() {
        super.init()
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
        if self.fromCommit != nil {
            map["FromCommit"] = self.fromCommit!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.toCommit != nil {
            map["ToCommit"] = self.toCommit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("FromCommit") {
            self.fromCommit = dict["FromCommit"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("ToCommit") {
            self.toCommit = dict["ToCommit"] as! String
        }
    }
}

public class ListMergeRequestCommentsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Author : Tea.TeaModel {
            public var avatarUrl: String?

            public var email: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
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
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var author: ListMergeRequestCommentsResponseBody.Result.Author?

        public var closed: Int32?

        public var createdAt: String?

        public var id: Int64?

        public var isDraft: Bool?

        public var line: Int64?

        public var note: String?

        public var outDated: Bool?

        public var parentNoteId: Int64?

        public var path: String?

        public var projectId: Int64?

        public var rangeContext: String?

        public var side: String?

        public var updatedAt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.author?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.author != nil {
                map["Author"] = self.author?.toMap()
            }
            if self.closed != nil {
                map["Closed"] = self.closed!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isDraft != nil {
                map["IsDraft"] = self.isDraft!
            }
            if self.line != nil {
                map["Line"] = self.line!
            }
            if self.note != nil {
                map["Note"] = self.note!
            }
            if self.outDated != nil {
                map["OutDated"] = self.outDated!
            }
            if self.parentNoteId != nil {
                map["ParentNoteId"] = self.parentNoteId!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.rangeContext != nil {
                map["RangeContext"] = self.rangeContext!
            }
            if self.side != nil {
                map["Side"] = self.side!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Author") {
                var model = ListMergeRequestCommentsResponseBody.Result.Author()
                model.fromMap(dict["Author"] as! [String: Any])
                self.author = model
            }
            if dict.keys.contains("Closed") {
                self.closed = dict["Closed"] as! Int32
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IsDraft") {
                self.isDraft = dict["IsDraft"] as! Bool
            }
            if dict.keys.contains("Line") {
                self.line = dict["Line"] as! Int64
            }
            if dict.keys.contains("Note") {
                self.note = dict["Note"] as! String
            }
            if dict.keys.contains("OutDated") {
                self.outDated = dict["OutDated"] as! Bool
            }
            if dict.keys.contains("ParentNoteId") {
                self.parentNoteId = dict["ParentNoteId"] as! Int64
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("RangeContext") {
                self.rangeContext = dict["RangeContext"] as! String
            }
            if dict.keys.contains("Side") {
                self.side = dict["Side"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListMergeRequestCommentsResponseBody.Result]?

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
        if self.total != nil {
            map["Total"] = self.total!
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
            self.result = dict["Result"] as! [ListMergeRequestCommentsResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListMergeRequestCommentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMergeRequestCommentsResponseBody?

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
            var model = ListMergeRequestCommentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMergeRequestsRequest : Tea.TeaModel {
    public var accessToken: String?

    public var afterDate: String?

    public var assigneeCodeupIdList: String?

    public var assigneeIdList: String?

    public var authorCodeupIdList: String?

    public var authorIdList: String?

    public var beforeDate: String?

    public var groupIdList: String?

    public var order: String?

    public var organizationId: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var projectIdList: String?

    public var search: String?

    public var state: String?

    public var subscriberCodeupIdList: String?

    public override init() {
        super.init()
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
        if self.afterDate != nil {
            map["AfterDate"] = self.afterDate!
        }
        if self.assigneeCodeupIdList != nil {
            map["AssigneeCodeupIdList"] = self.assigneeCodeupIdList!
        }
        if self.assigneeIdList != nil {
            map["AssigneeIdList"] = self.assigneeIdList!
        }
        if self.authorCodeupIdList != nil {
            map["AuthorCodeupIdList"] = self.authorCodeupIdList!
        }
        if self.authorIdList != nil {
            map["AuthorIdList"] = self.authorIdList!
        }
        if self.beforeDate != nil {
            map["BeforeDate"] = self.beforeDate!
        }
        if self.groupIdList != nil {
            map["GroupIdList"] = self.groupIdList!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.projectIdList != nil {
            map["ProjectIdList"] = self.projectIdList!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.subscriberCodeupIdList != nil {
            map["SubscriberCodeupIdList"] = self.subscriberCodeupIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("AfterDate") {
            self.afterDate = dict["AfterDate"] as! String
        }
        if dict.keys.contains("AssigneeCodeupIdList") {
            self.assigneeCodeupIdList = dict["AssigneeCodeupIdList"] as! String
        }
        if dict.keys.contains("AssigneeIdList") {
            self.assigneeIdList = dict["AssigneeIdList"] as! String
        }
        if dict.keys.contains("AuthorCodeupIdList") {
            self.authorCodeupIdList = dict["AuthorCodeupIdList"] as! String
        }
        if dict.keys.contains("AuthorIdList") {
            self.authorIdList = dict["AuthorIdList"] as! String
        }
        if dict.keys.contains("BeforeDate") {
            self.beforeDate = dict["BeforeDate"] as! String
        }
        if dict.keys.contains("GroupIdList") {
            self.groupIdList = dict["GroupIdList"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ProjectIdList") {
            self.projectIdList = dict["ProjectIdList"] as! String
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("SubscriberCodeupIdList") {
            self.subscriberCodeupIdList = dict["SubscriberCodeupIdList"] as! String
        }
    }
}

public class ListMergeRequestsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ApproveCheckResult : Tea.TeaModel {
            public class SatisfiedCheckResults : Tea.TeaModel {
                public class ExtraUsers : Tea.TeaModel {
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
                        if self.avatarUrl != nil {
                            map["AvatarUrl"] = self.avatarUrl!
                        }
                        if self.externUserId != nil {
                            map["ExternUserId"] = self.externUserId!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AvatarUrl") {
                            self.avatarUrl = dict["AvatarUrl"] as! String
                        }
                        if dict.keys.contains("ExternUserId") {
                            self.externUserId = dict["ExternUserId"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var checkName: String?

                public var checkStatus: String?

                public var checkType: String?

                public var extraUsers: [ListMergeRequestsResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults.ExtraUsers]?

                public var satisfiedItems: [String]?

                public var unsatisfiedItems: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkName != nil {
                        map["CheckName"] = self.checkName!
                    }
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.checkType != nil {
                        map["CheckType"] = self.checkType!
                    }
                    if self.extraUsers != nil {
                        var tmp : [Any] = []
                        for k in self.extraUsers! {
                            tmp.append(k.toMap())
                        }
                        map["ExtraUsers"] = tmp
                    }
                    if self.satisfiedItems != nil {
                        map["SatisfiedItems"] = self.satisfiedItems!
                    }
                    if self.unsatisfiedItems != nil {
                        map["UnsatisfiedItems"] = self.unsatisfiedItems!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckName") {
                        self.checkName = dict["CheckName"] as! String
                    }
                    if dict.keys.contains("CheckStatus") {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("CheckType") {
                        self.checkType = dict["CheckType"] as! String
                    }
                    if dict.keys.contains("ExtraUsers") {
                        self.extraUsers = dict["ExtraUsers"] as! [ListMergeRequestsResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults.ExtraUsers]
                    }
                    if dict.keys.contains("SatisfiedItems") {
                        self.satisfiedItems = dict["SatisfiedItems"] as! [String]
                    }
                    if dict.keys.contains("UnsatisfiedItems") {
                        self.unsatisfiedItems = dict["UnsatisfiedItems"] as! [String]
                    }
                }
            }
            public class UnsatisfiedCheckResults : Tea.TeaModel {
                public class ExtraUsers : Tea.TeaModel {
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
                        if self.avatarUrl != nil {
                            map["AvatarUrl"] = self.avatarUrl!
                        }
                        if self.externUserId != nil {
                            map["ExternUserId"] = self.externUserId!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AvatarUrl") {
                            self.avatarUrl = dict["AvatarUrl"] as! String
                        }
                        if dict.keys.contains("ExternUserId") {
                            self.externUserId = dict["ExternUserId"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var checkName: String?

                public var checkStatus: String?

                public var checkType: String?

                public var extraUsers: [ListMergeRequestsResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults.ExtraUsers]?

                public var satisfiedItems: [String]?

                public var unsatisfiedItems: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkName != nil {
                        map["CheckName"] = self.checkName!
                    }
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.checkType != nil {
                        map["CheckType"] = self.checkType!
                    }
                    if self.extraUsers != nil {
                        var tmp : [Any] = []
                        for k in self.extraUsers! {
                            tmp.append(k.toMap())
                        }
                        map["ExtraUsers"] = tmp
                    }
                    if self.satisfiedItems != nil {
                        map["SatisfiedItems"] = self.satisfiedItems!
                    }
                    if self.unsatisfiedItems != nil {
                        map["UnsatisfiedItems"] = self.unsatisfiedItems!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckName") {
                        self.checkName = dict["CheckName"] as! String
                    }
                    if dict.keys.contains("CheckStatus") {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("CheckType") {
                        self.checkType = dict["CheckType"] as! String
                    }
                    if dict.keys.contains("ExtraUsers") {
                        self.extraUsers = dict["ExtraUsers"] as! [ListMergeRequestsResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults.ExtraUsers]
                    }
                    if dict.keys.contains("SatisfiedItems") {
                        self.satisfiedItems = dict["SatisfiedItems"] as! [String]
                    }
                    if dict.keys.contains("UnsatisfiedItems") {
                        self.unsatisfiedItems = dict["UnsatisfiedItems"] as! [String]
                    }
                }
            }
            public var satisfiedCheckResults: [ListMergeRequestsResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults]?

            public var totalCheckResult: String?

            public var unsatisfiedCheckResults: [ListMergeRequestsResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.satisfiedCheckResults != nil {
                    var tmp : [Any] = []
                    for k in self.satisfiedCheckResults! {
                        tmp.append(k.toMap())
                    }
                    map["SatisfiedCheckResults"] = tmp
                }
                if self.totalCheckResult != nil {
                    map["TotalCheckResult"] = self.totalCheckResult!
                }
                if self.unsatisfiedCheckResults != nil {
                    var tmp : [Any] = []
                    for k in self.unsatisfiedCheckResults! {
                        tmp.append(k.toMap())
                    }
                    map["UnsatisfiedCheckResults"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SatisfiedCheckResults") {
                    self.satisfiedCheckResults = dict["SatisfiedCheckResults"] as! [ListMergeRequestsResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults]
                }
                if dict.keys.contains("TotalCheckResult") {
                    self.totalCheckResult = dict["TotalCheckResult"] as! String
                }
                if dict.keys.contains("UnsatisfiedCheckResults") {
                    self.unsatisfiedCheckResults = dict["UnsatisfiedCheckResults"] as! [ListMergeRequestsResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults]
                }
            }
        }
        public class AssigneeList : Tea.TeaModel {
            public var avatarUrl: String?

            public var email: String?

            public var externUserId: String?

            public var id: String?

            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
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
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class Author : Tea.TeaModel {
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
                if self.avatarUrl != nil {
                    map["AvatarUrl"] = self.avatarUrl!
                }
                if self.externUserId != nil {
                    map["ExternUserId"] = self.externUserId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvatarUrl") {
                    self.avatarUrl = dict["AvatarUrl"] as! String
                }
                if dict.keys.contains("ExternUserId") {
                    self.externUserId = dict["ExternUserId"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var acceptedRevision: String?

        public var aheadCommitCount: Int32?

        public var approveCheckResult: ListMergeRequestsResponseBody.Result.ApproveCheckResult?

        public var assigneeList: [ListMergeRequestsResponseBody.Result.AssigneeList]?

        public var author: ListMergeRequestsResponseBody.Result.Author?

        public var behindCommitCount: Int32?

        public var createdAt: String?

        public var description_: String?

        public var id: Int64?

        public var isSupportMerge: Bool?

        public var mergeError: String?

        public var mergeStatus: String?

        public var mergeType: String?

        public var mergedRevision: String?

        public var nameWithNamespace: String?

        public var projectId: Int64?

        public var sourceBranch: String?

        public var state: String?

        public var targetBranch: String?

        public var title: String?

        public var updatedAt: String?

        public var webUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.approveCheckResult?.validate()
            try self.author?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceptedRevision != nil {
                map["AcceptedRevision"] = self.acceptedRevision!
            }
            if self.aheadCommitCount != nil {
                map["AheadCommitCount"] = self.aheadCommitCount!
            }
            if self.approveCheckResult != nil {
                map["ApproveCheckResult"] = self.approveCheckResult?.toMap()
            }
            if self.assigneeList != nil {
                var tmp : [Any] = []
                for k in self.assigneeList! {
                    tmp.append(k.toMap())
                }
                map["AssigneeList"] = tmp
            }
            if self.author != nil {
                map["Author"] = self.author?.toMap()
            }
            if self.behindCommitCount != nil {
                map["BehindCommitCount"] = self.behindCommitCount!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isSupportMerge != nil {
                map["IsSupportMerge"] = self.isSupportMerge!
            }
            if self.mergeError != nil {
                map["MergeError"] = self.mergeError!
            }
            if self.mergeStatus != nil {
                map["MergeStatus"] = self.mergeStatus!
            }
            if self.mergeType != nil {
                map["MergeType"] = self.mergeType!
            }
            if self.mergedRevision != nil {
                map["MergedRevision"] = self.mergedRevision!
            }
            if self.nameWithNamespace != nil {
                map["NameWithNamespace"] = self.nameWithNamespace!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.sourceBranch != nil {
                map["SourceBranch"] = self.sourceBranch!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.targetBranch != nil {
                map["TargetBranch"] = self.targetBranch!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.webUrl != nil {
                map["WebUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceptedRevision") {
                self.acceptedRevision = dict["AcceptedRevision"] as! String
            }
            if dict.keys.contains("AheadCommitCount") {
                self.aheadCommitCount = dict["AheadCommitCount"] as! Int32
            }
            if dict.keys.contains("ApproveCheckResult") {
                var model = ListMergeRequestsResponseBody.Result.ApproveCheckResult()
                model.fromMap(dict["ApproveCheckResult"] as! [String: Any])
                self.approveCheckResult = model
            }
            if dict.keys.contains("AssigneeList") {
                self.assigneeList = dict["AssigneeList"] as! [ListMergeRequestsResponseBody.Result.AssigneeList]
            }
            if dict.keys.contains("Author") {
                var model = ListMergeRequestsResponseBody.Result.Author()
                model.fromMap(dict["Author"] as! [String: Any])
                self.author = model
            }
            if dict.keys.contains("BehindCommitCount") {
                self.behindCommitCount = dict["BehindCommitCount"] as! Int32
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IsSupportMerge") {
                self.isSupportMerge = dict["IsSupportMerge"] as! Bool
            }
            if dict.keys.contains("MergeError") {
                self.mergeError = dict["MergeError"] as! String
            }
            if dict.keys.contains("MergeStatus") {
                self.mergeStatus = dict["MergeStatus"] as! String
            }
            if dict.keys.contains("MergeType") {
                self.mergeType = dict["MergeType"] as! String
            }
            if dict.keys.contains("MergedRevision") {
                self.mergedRevision = dict["MergedRevision"] as! String
            }
            if dict.keys.contains("NameWithNamespace") {
                self.nameWithNamespace = dict["NameWithNamespace"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("SourceBranch") {
                self.sourceBranch = dict["SourceBranch"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("TargetBranch") {
                self.targetBranch = dict["TargetBranch"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
            if dict.keys.contains("WebUrl") {
                self.webUrl = dict["WebUrl"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListMergeRequestsResponseBody.Result]?

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
        if self.total != nil {
            map["Total"] = self.total!
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
            self.result = dict["Result"] as! [ListMergeRequestsResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListMergeRequestsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMergeRequestsResponseBody?

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
            var model = ListMergeRequestsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOrganizationSecurityScoresRequest : Tea.TeaModel {
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

public class ListOrganizationSecurityScoresResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class OrganizationSecurityScore : Tea.TeaModel {
            public var authorityControlScore: Int32?

            public var codeContentScore: Int32?

            public var level: String?

            public var memberBehaviorScore: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authorityControlScore != nil {
                    map["AuthorityControlScore"] = self.authorityControlScore!
                }
                if self.codeContentScore != nil {
                    map["CodeContentScore"] = self.codeContentScore!
                }
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.memberBehaviorScore != nil {
                    map["MemberBehaviorScore"] = self.memberBehaviorScore!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuthorityControlScore") {
                    self.authorityControlScore = dict["AuthorityControlScore"] as! Int32
                }
                if dict.keys.contains("CodeContentScore") {
                    self.codeContentScore = dict["CodeContentScore"] as! Int32
                }
                if dict.keys.contains("Level") {
                    self.level = dict["Level"] as! String
                }
                if dict.keys.contains("MemberBehaviorScore") {
                    self.memberBehaviorScore = dict["MemberBehaviorScore"] as! Int32
                }
            }
        }
        public var enable: Bool?

        public var id: Int64?

        public var organizationId: String?

        public var organizationSecurityScore: ListOrganizationSecurityScoresResponseBody.Result.OrganizationSecurityScore?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.organizationSecurityScore?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.organizationSecurityScore != nil {
                map["OrganizationSecurityScore"] = self.organizationSecurityScore?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enable") {
                self.enable = dict["Enable"] as! Bool
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("OrganizationSecurityScore") {
                var model = ListOrganizationSecurityScoresResponseBody.Result.OrganizationSecurityScore()
                model.fromMap(dict["OrganizationSecurityScore"] as! [String: Any])
                self.organizationSecurityScore = model
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListOrganizationSecurityScoresResponseBody.Result]?

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
            self.result = dict["Result"] as! [ListOrganizationSecurityScoresResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListOrganizationSecurityScoresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOrganizationSecurityScoresResponseBody?

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
            var model = ListOrganizationSecurityScoresResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOrganizationsRequest : Tea.TeaModel {
    public var accessLevel: Int32?

    public var accessToken: String?

    public var minAccessLevel: Int32?

    public override init() {
        super.init()
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
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.minAccessLevel != nil {
            map["MinAccessLevel"] = self.minAccessLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessLevel") {
            self.accessLevel = dict["AccessLevel"] as! Int32
        }
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("MinAccessLevel") {
            self.minAccessLevel = dict["MinAccessLevel"] as! Int32
        }
    }
}

public class ListOrganizationsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accessLevel: Int32?

        public var organizationId: String?

        public var organizationName: String?

        public var organizationRole: String?

        public override init() {
            super.init()
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
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.organizationName != nil {
                map["OrganizationName"] = self.organizationName!
            }
            if self.organizationRole != nil {
                map["OrganizationRole"] = self.organizationRole!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessLevel") {
                self.accessLevel = dict["AccessLevel"] as! Int32
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("OrganizationName") {
                self.organizationName = dict["OrganizationName"] as! String
            }
            if dict.keys.contains("OrganizationRole") {
                self.organizationRole = dict["OrganizationRole"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListOrganizationsResponseBody.Result]?

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
            self.result = dict["Result"] as! [ListOrganizationsResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListOrganizationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOrganizationsResponseBody?

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
            var model = ListOrganizationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRepositoriesRequest : Tea.TeaModel {
    public var accessToken: String?

    public var archive: Bool?

    public var order: String?

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
            map["AccessToken"] = self.accessToken!
        }
        if self.archive != nil {
            map["Archive"] = self.archive!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("Archive") {
            self.archive = dict["Archive"] as! Bool
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
    }
}

public class ListRepositoriesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accessLevel: Int32?

        public var archive: Bool?

        public var avatarUrl: String?

        public var createdAt: String?

        public var demoProjectStatus: Bool?

        public var description_: String?

        public var id: Int64?

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
            if self.accessLevel != nil {
                map["AccessLevel"] = self.accessLevel!
            }
            if self.archive != nil {
                map["Archive"] = self.archive!
            }
            if self.avatarUrl != nil {
                map["AvatarUrl"] = self.avatarUrl!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.demoProjectStatus != nil {
                map["DemoProjectStatus"] = self.demoProjectStatus!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.importStatus != nil {
                map["ImportStatus"] = self.importStatus!
            }
            if self.lastActivityAt != nil {
                map["LastActivityAt"] = self.lastActivityAt!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nameWithNamespace != nil {
                map["NameWithNamespace"] = self.nameWithNamespace!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.pathWithNamespace != nil {
                map["PathWithNamespace"] = self.pathWithNamespace!
            }
            if self.star != nil {
                map["Star"] = self.star!
            }
            if self.starCount != nil {
                map["StarCount"] = self.starCount!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.visibilityLevel != nil {
                map["VisibilityLevel"] = self.visibilityLevel!
            }
            if self.webUrl != nil {
                map["WebUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessLevel") {
                self.accessLevel = dict["AccessLevel"] as! Int32
            }
            if dict.keys.contains("Archive") {
                self.archive = dict["Archive"] as! Bool
            }
            if dict.keys.contains("AvatarUrl") {
                self.avatarUrl = dict["AvatarUrl"] as! String
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("DemoProjectStatus") {
                self.demoProjectStatus = dict["DemoProjectStatus"] as! Bool
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("ImportStatus") {
                self.importStatus = dict["ImportStatus"] as! String
            }
            if dict.keys.contains("LastActivityAt") {
                self.lastActivityAt = dict["LastActivityAt"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NameWithNamespace") {
                self.nameWithNamespace = dict["NameWithNamespace"] as! String
            }
            if dict.keys.contains("NamespaceId") {
                self.namespaceId = dict["NamespaceId"] as! Int64
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("PathWithNamespace") {
                self.pathWithNamespace = dict["PathWithNamespace"] as! String
            }
            if dict.keys.contains("Star") {
                self.star = dict["Star"] as! Bool
            }
            if dict.keys.contains("StarCount") {
                self.starCount = dict["StarCount"] as! Int64
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
            if dict.keys.contains("VisibilityLevel") {
                self.visibilityLevel = dict["VisibilityLevel"] as! String
            }
            if dict.keys.contains("WebUrl") {
                self.webUrl = dict["WebUrl"] as! String
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [ListRepositoriesResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
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

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class ListRepositoryBranchesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class CommitInfo : Tea.TeaModel {
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
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public var branchName: String?

        public var commitInfo: ListRepositoryBranchesResponseBody.Result.CommitInfo?

        public var protectedBranch: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.commitInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.branchName != nil {
                map["BranchName"] = self.branchName!
            }
            if self.commitInfo != nil {
                map["CommitInfo"] = self.commitInfo?.toMap()
            }
            if self.protectedBranch != nil {
                map["ProtectedBranch"] = self.protectedBranch!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BranchName") {
                self.branchName = dict["BranchName"] as! String
            }
            if dict.keys.contains("CommitInfo") {
                var model = ListRepositoryBranchesResponseBody.Result.CommitInfo()
                model.fromMap(dict["CommitInfo"] as! [String: Any])
                self.commitInfo = model
            }
            if dict.keys.contains("ProtectedBranch") {
                self.protectedBranch = dict["ProtectedBranch"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListRepositoryBranchesResponseBody.Result]?

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
        if self.total != nil {
            map["Total"] = self.total!
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
            self.result = dict["Result"] as! [ListRepositoryBranchesResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
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

public class ListRepositoryCodeRequest : Tea.TeaModel {
    public class FilePath : Tea.TeaModel {
        public var matchType: String?

        public var name: String?

        public var operatorType: String?

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
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operatorType != nil {
                map["OperatorType"] = self.operatorType!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MatchType") {
                self.matchType = dict["MatchType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperatorType") {
                self.operatorType = dict["OperatorType"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class RepositoryPath : Tea.TeaModel {
        public var matchType: String?

        public var name: String?

        public var operatorType: String?

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
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operatorType != nil {
                map["OperatorType"] = self.operatorType!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MatchType") {
                self.matchType = dict["MatchType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperatorType") {
                self.operatorType = dict["OperatorType"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var organizationId: String?

    public var filePath: ListRepositoryCodeRequest.FilePath?

    public var isCodeBlock: Bool?

    public var keyWord: String?

    public var language: String?

    public var order: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var repositoryPath: ListRepositoryCodeRequest.RepositoryPath?

    public var scope: String?

    public var sort: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filePath?.validate()
        try self.repositoryPath?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath?.toMap()
        }
        if self.isCodeBlock != nil {
            map["IsCodeBlock"] = self.isCodeBlock!
        }
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.repositoryPath != nil {
            map["RepositoryPath"] = self.repositoryPath?.toMap()
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("FilePath") {
            var model = ListRepositoryCodeRequest.FilePath()
            model.fromMap(dict["FilePath"] as! [String: Any])
            self.filePath = model
        }
        if dict.keys.contains("IsCodeBlock") {
            self.isCodeBlock = dict["IsCodeBlock"] as! Bool
        }
        if dict.keys.contains("KeyWord") {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RepositoryPath") {
            var model = ListRepositoryCodeRequest.RepositoryPath()
            model.fromMap(dict["RepositoryPath"] as! [String: Any])
            self.repositoryPath = model
        }
        if dict.keys.contains("Scope") {
            self.scope = dict["Scope"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
    }
}

public class ListRepositoryCodeResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Source : Tea.TeaModel {
            public var branch: String?

            public var checkinDate: String?

            public var fileName: String?

            public var filePath: String?

            public var language: String?

            public var organizationId: String?

            public var repoPath: String?

            public override init() {
                super.init()
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
                    map["Branch"] = self.branch!
                }
                if self.checkinDate != nil {
                    map["CheckinDate"] = self.checkinDate!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.filePath != nil {
                    map["FilePath"] = self.filePath!
                }
                if self.language != nil {
                    map["Language"] = self.language!
                }
                if self.organizationId != nil {
                    map["OrganizationId"] = self.organizationId!
                }
                if self.repoPath != nil {
                    map["RepoPath"] = self.repoPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Branch") {
                    self.branch = dict["Branch"] as! String
                }
                if dict.keys.contains("CheckinDate") {
                    self.checkinDate = dict["CheckinDate"] as! String
                }
                if dict.keys.contains("FileName") {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("FilePath") {
                    self.filePath = dict["FilePath"] as! String
                }
                if dict.keys.contains("Language") {
                    self.language = dict["Language"] as! String
                }
                if dict.keys.contains("OrganizationId") {
                    self.organizationId = dict["OrganizationId"] as! String
                }
                if dict.keys.contains("RepoPath") {
                    self.repoPath = dict["RepoPath"] as! String
                }
            }
        }
        public var docId: String?

        public var highlightTextMap: [String: Any]?

        public var source: ListRepositoryCodeResponseBody.Result.Source?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.source?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.docId != nil {
                map["DocId"] = self.docId!
            }
            if self.highlightTextMap != nil {
                map["HighlightTextMap"] = self.highlightTextMap!
            }
            if self.source != nil {
                map["Source"] = self.source?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DocId") {
                self.docId = dict["DocId"] as! String
            }
            if dict.keys.contains("HighlightTextMap") {
                self.highlightTextMap = dict["HighlightTextMap"] as! [String: Any]
            }
            if dict.keys.contains("Source") {
                var model = ListRepositoryCodeResponseBody.Result.Source()
                model.fromMap(dict["Source"] as! [String: Any])
                self.source = model
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListRepositoryCodeResponseBody.Result]?

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
        if self.total != nil {
            map["Total"] = self.total!
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
            self.result = dict["Result"] as! [ListRepositoryCodeResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListRepositoryCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepositoryCodeResponseBody?

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
            var model = ListRepositoryCodeResponseBody()
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
            map["AccessToken"] = self.accessToken!
        }
        if self.contextLine != nil {
            map["ContextLine"] = self.contextLine!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("ContextLine") {
            self.contextLine = dict["ContextLine"] as! Int32
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
    }
}

public class ListRepositoryCommitDiffResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var AMode: String?

        public var BMode: String?

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
            if self.AMode != nil {
                map["AMode"] = self.AMode!
            }
            if self.BMode != nil {
                map["BMode"] = self.BMode!
            }
            if self.deletedFile != nil {
                map["DeletedFile"] = self.deletedFile!
            }
            if self.diff != nil {
                map["Diff"] = self.diff!
            }
            if self.isBinary != nil {
                map["IsBinary"] = self.isBinary!
            }
            if self.isNewLfs != nil {
                map["IsNewLfs"] = self.isNewLfs!
            }
            if self.isOldLfs != nil {
                map["IsOldLfs"] = self.isOldLfs!
            }
            if self.newFile != nil {
                map["NewFile"] = self.newFile!
            }
            if self.newId != nil {
                map["NewId"] = self.newId!
            }
            if self.newPath != nil {
                map["NewPath"] = self.newPath!
            }
            if self.oldId != nil {
                map["OldId"] = self.oldId!
            }
            if self.oldPath != nil {
                map["OldPath"] = self.oldPath!
            }
            if self.renamedFile != nil {
                map["RenamedFile"] = self.renamedFile!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AMode") {
                self.AMode = dict["AMode"] as! String
            }
            if dict.keys.contains("BMode") {
                self.BMode = dict["BMode"] as! String
            }
            if dict.keys.contains("DeletedFile") {
                self.deletedFile = dict["DeletedFile"] as! Bool
            }
            if dict.keys.contains("Diff") {
                self.diff = dict["Diff"] as! String
            }
            if dict.keys.contains("IsBinary") {
                self.isBinary = dict["IsBinary"] as! Bool
            }
            if dict.keys.contains("IsNewLfs") {
                self.isNewLfs = dict["IsNewLfs"] as! Bool
            }
            if dict.keys.contains("IsOldLfs") {
                self.isOldLfs = dict["IsOldLfs"] as! Bool
            }
            if dict.keys.contains("NewFile") {
                self.newFile = dict["NewFile"] as! Bool
            }
            if dict.keys.contains("NewId") {
                self.newId = dict["NewId"] as! String
            }
            if dict.keys.contains("NewPath") {
                self.newPath = dict["NewPath"] as! String
            }
            if dict.keys.contains("OldId") {
                self.oldId = dict["OldId"] as! String
            }
            if dict.keys.contains("OldPath") {
                self.oldPath = dict["OldPath"] as! String
            }
            if dict.keys.contains("RenamedFile") {
                self.renamedFile = dict["RenamedFile"] as! Bool
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
            self.result = dict["Result"] as! [ListRepositoryCommitDiffResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

public class ListRepositoryCommitsRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var path: String?

    public var refName: String?

    public var search: String?

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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.refName != nil {
            map["RefName"] = self.refName!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        if self.showSignature != nil {
            map["ShowSignature"] = self.showSignature!
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
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("RefName") {
            self.refName = dict["RefName"] as! String
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
        if dict.keys.contains("ShowSignature") {
            self.showSignature = dict["ShowSignature"] as! Bool
        }
    }
}

public class ListRepositoryCommitsResponseBody : Tea.TeaModel {
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

        public var signature: ListRepositoryCommitsResponseBody.Result.Signature?

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
                var model = ListRepositoryCommitsResponseBody.Result.Signature()
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

    public var result: [ListRepositoryCommitsResponseBody.Result]?

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
        if self.total != nil {
            map["Total"] = self.total!
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
            self.result = dict["Result"] as! [ListRepositoryCommitsResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListRepositoryCommitsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepositoryCommitsResponseBody?

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
            var model = ListRepositoryCommitsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRepositoryMemberRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var query: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class ListRepositoryMemberResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accessLevel: Int32?

        public var avatarUrl: String?

        public var email: String?

        public var externUserId: String?

        public var id: Int64?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.username != nil {
                map["Username"] = self.username!
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
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListRepositoryMemberResponseBody.Result]?

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
        if self.total != nil {
            map["Total"] = self.total!
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
            self.result = dict["Result"] as! [ListRepositoryMemberResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListRepositoryMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepositoryMemberResponseBody?

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
            var model = ListRepositoryMemberResponseBody()
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nameWithNamespace != nil {
                    map["NameWithNamespace"] = self.nameWithNamespace!
                }
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.pathWithNamespace != nil {
                    map["PathWithNamespace"] = self.pathWithNamespace!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.visibilityLevel != nil {
                    map["VisibilityLevel"] = self.visibilityLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NameWithNamespace") {
                    self.nameWithNamespace = dict["NameWithNamespace"] as! String
                }
                if dict.keys.contains("Path") {
                    self.path = dict["Path"] as! String
                }
                if dict.keys.contains("PathWithNamespace") {
                    self.pathWithNamespace = dict["PathWithNamespace"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("VisibilityLevel") {
                    self.visibilityLevel = dict["VisibilityLevel"] as! String
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
            if self.inherited != nil {
                map["Inherited"] = self.inherited?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.username != nil {
                map["Username"] = self.username!
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
            if dict.keys.contains("Inherited") {
                var model = ListRepositoryMemberWithInheritedResponseBody.Result.Inherited()
                model.fromMap(dict["Inherited"] as! [String: Any])
                self.inherited = model
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
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
            self.result = dict["Result"] as! [ListRepositoryMemberWithInheritedResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

public class ListRepositoryProtectedBranchRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class ListRepositoryProtectedBranchResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class MergeRequestSetting : Tea.TeaModel {
            public class DefaultAssignees : Tea.TeaModel {
                public var avatarUrl: String?

                public var email: String?

                public var externUid: String?

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
                    if self.avatarUrl != nil {
                        map["AvatarUrl"] = self.avatarUrl!
                    }
                    if self.email != nil {
                        map["Email"] = self.email!
                    }
                    if self.externUid != nil {
                        map["ExternUid"] = self.externUid!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AvatarUrl") {
                        self.avatarUrl = dict["AvatarUrl"] as! String
                    }
                    if dict.keys.contains("Email") {
                        self.email = dict["Email"] as! String
                    }
                    if dict.keys.contains("ExternUid") {
                        self.externUid = dict["ExternUid"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public var allowMergeRequestRoles: [Int32]?

            public var allowSelfApproval: Bool?

            public var defaultAssignees: [ListRepositoryProtectedBranchResponseBody.Result.MergeRequestSetting.DefaultAssignees]?

            public var isRequireDiscussionProcessed: Bool?

            public var mergeRequestMode: String?

            public var minimumApproval: Int32?

            public var required_: Bool?

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
                    map["AllowMergeRequestRoles"] = self.allowMergeRequestRoles!
                }
                if self.allowSelfApproval != nil {
                    map["AllowSelfApproval"] = self.allowSelfApproval!
                }
                if self.defaultAssignees != nil {
                    var tmp : [Any] = []
                    for k in self.defaultAssignees! {
                        tmp.append(k.toMap())
                    }
                    map["DefaultAssignees"] = tmp
                }
                if self.isRequireDiscussionProcessed != nil {
                    map["IsRequireDiscussionProcessed"] = self.isRequireDiscussionProcessed!
                }
                if self.mergeRequestMode != nil {
                    map["MergeRequestMode"] = self.mergeRequestMode!
                }
                if self.minimumApproval != nil {
                    map["MinimumApproval"] = self.minimumApproval!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.whiteList != nil {
                    map["WhiteList"] = self.whiteList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowMergeRequestRoles") {
                    self.allowMergeRequestRoles = dict["AllowMergeRequestRoles"] as! [Int32]
                }
                if dict.keys.contains("AllowSelfApproval") {
                    self.allowSelfApproval = dict["AllowSelfApproval"] as! Bool
                }
                if dict.keys.contains("DefaultAssignees") {
                    self.defaultAssignees = dict["DefaultAssignees"] as! [ListRepositoryProtectedBranchResponseBody.Result.MergeRequestSetting.DefaultAssignees]
                }
                if dict.keys.contains("IsRequireDiscussionProcessed") {
                    self.isRequireDiscussionProcessed = dict["IsRequireDiscussionProcessed"] as! Bool
                }
                if dict.keys.contains("MergeRequestMode") {
                    self.mergeRequestMode = dict["MergeRequestMode"] as! String
                }
                if dict.keys.contains("MinimumApproval") {
                    self.minimumApproval = dict["MinimumApproval"] as! Int32
                }
                if dict.keys.contains("Required") {
                    self.required_ = dict["Required"] as! Bool
                }
                if dict.keys.contains("WhiteList") {
                    self.whiteList = dict["WhiteList"] as! String
                }
            }
        }
        public class TestSetting : Tea.TeaModel {
            public class CheckConfig : Tea.TeaModel {
                public class CheckItems : Tea.TeaModel {
                    public var name: String?

                    public var required_: Bool?

                    public override init() {
                        super.init()
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
                        if self.required_ != nil {
                            map["Required"] = self.required_!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Required") {
                            self.required_ = dict["Required"] as! Bool
                        }
                    }
                }
                public var checkItems: [ListRepositoryProtectedBranchResponseBody.Result.TestSetting.CheckConfig.CheckItems]?

                public override init() {
                    super.init()
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
                        map["CheckItems"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckItems") {
                        self.checkItems = dict["CheckItems"] as! [ListRepositoryProtectedBranchResponseBody.Result.TestSetting.CheckConfig.CheckItems]
                    }
                }
            }
            public class CodingGuidelinesDetection : Tea.TeaModel {
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
                        map["Enabled"] = self.enabled!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Enabled") {
                        self.enabled = dict["Enabled"] as! Bool
                    }
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
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
                        map["Enabled"] = self.enabled!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Enabled") {
                        self.enabled = dict["Enabled"] as! Bool
                    }
                    if dict.keys.contains("Message") {
                        self.message = dict["Message"] as! String
                    }
                }
            }
            public var checkConfig: ListRepositoryProtectedBranchResponseBody.Result.TestSetting.CheckConfig?

            public var codingGuidelinesDetection: ListRepositoryProtectedBranchResponseBody.Result.TestSetting.CodingGuidelinesDetection?

            public var required_: Bool?

            public var sensitiveInfoDetection: ListRepositoryProtectedBranchResponseBody.Result.TestSetting.SensitiveInfoDetection?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.checkConfig?.validate()
                try self.codingGuidelinesDetection?.validate()
                try self.sensitiveInfoDetection?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkConfig != nil {
                    map["CheckConfig"] = self.checkConfig?.toMap()
                }
                if self.codingGuidelinesDetection != nil {
                    map["CodingGuidelinesDetection"] = self.codingGuidelinesDetection?.toMap()
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                if self.sensitiveInfoDetection != nil {
                    map["SensitiveInfoDetection"] = self.sensitiveInfoDetection?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckConfig") {
                    var model = ListRepositoryProtectedBranchResponseBody.Result.TestSetting.CheckConfig()
                    model.fromMap(dict["CheckConfig"] as! [String: Any])
                    self.checkConfig = model
                }
                if dict.keys.contains("CodingGuidelinesDetection") {
                    var model = ListRepositoryProtectedBranchResponseBody.Result.TestSetting.CodingGuidelinesDetection()
                    model.fromMap(dict["CodingGuidelinesDetection"] as! [String: Any])
                    self.codingGuidelinesDetection = model
                }
                if dict.keys.contains("Required") {
                    self.required_ = dict["Required"] as! Bool
                }
                if dict.keys.contains("SensitiveInfoDetection") {
                    var model = ListRepositoryProtectedBranchResponseBody.Result.TestSetting.SensitiveInfoDetection()
                    model.fromMap(dict["SensitiveInfoDetection"] as! [String: Any])
                    self.sensitiveInfoDetection = model
                }
            }
        }
        public var allowMergeRoles: [Int32]?

        public var allowPushRoles: [Int32]?

        public var branch: String?

        public var id: Int64?

        public var mergeRequestSetting: ListRepositoryProtectedBranchResponseBody.Result.MergeRequestSetting?

        public var testSetting: ListRepositoryProtectedBranchResponseBody.Result.TestSetting?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.mergeRequestSetting?.validate()
            try self.testSetting?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowMergeRoles != nil {
                map["AllowMergeRoles"] = self.allowMergeRoles!
            }
            if self.allowPushRoles != nil {
                map["AllowPushRoles"] = self.allowPushRoles!
            }
            if self.branch != nil {
                map["Branch"] = self.branch!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.mergeRequestSetting != nil {
                map["MergeRequestSetting"] = self.mergeRequestSetting?.toMap()
            }
            if self.testSetting != nil {
                map["TestSetting"] = self.testSetting?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowMergeRoles") {
                self.allowMergeRoles = dict["AllowMergeRoles"] as! [Int32]
            }
            if dict.keys.contains("AllowPushRoles") {
                self.allowPushRoles = dict["AllowPushRoles"] as! [Int32]
            }
            if dict.keys.contains("Branch") {
                self.branch = dict["Branch"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("MergeRequestSetting") {
                var model = ListRepositoryProtectedBranchResponseBody.Result.MergeRequestSetting()
                model.fromMap(dict["MergeRequestSetting"] as! [String: Any])
                self.mergeRequestSetting = model
            }
            if dict.keys.contains("TestSetting") {
                var model = ListRepositoryProtectedBranchResponseBody.Result.TestSetting()
                model.fromMap(dict["TestSetting"] as! [String: Any])
                self.testSetting = model
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListRepositoryProtectedBranchResponseBody.Result]?

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
            self.result = dict["Result"] as! [ListRepositoryProtectedBranchResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListRepositoryProtectedBranchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepositoryProtectedBranchResponseBody?

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
            var model = ListRepositoryProtectedBranchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRepositoryTagsRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var search: String?

    public var showSignature: Bool?

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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        if self.showSignature != nil {
            map["ShowSignature"] = self.showSignature!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
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
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Search") {
            self.search = dict["Search"] as! String
        }
        if dict.keys.contains("ShowSignature") {
            self.showSignature = dict["ShowSignature"] as! Bool
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
    }
}

public class ListRepositoryTagsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Commit : Tea.TeaModel {
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

            public var signature: ListRepositoryTagsResponseBody.Result.Commit.Signature?

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
                if self.authorEmail != nil {
                    map["AuthorEmail"] = self.authorEmail!
                }
                if self.authorName != nil {
                    map["AuthorName"] = self.authorName!
                }
                if self.authoredDate != nil {
                    map["AuthoredDate"] = self.authoredDate!
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
                if dict.keys.contains("AuthorEmail") {
                    self.authorEmail = dict["AuthorEmail"] as! String
                }
                if dict.keys.contains("AuthorName") {
                    self.authorName = dict["AuthorName"] as! String
                }
                if dict.keys.contains("AuthoredDate") {
                    self.authoredDate = dict["AuthoredDate"] as! String
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
                    var model = ListRepositoryTagsResponseBody.Result.Commit.Signature()
                    model.fromMap(dict["Signature"] as! [String: Any])
                    self.signature = model
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
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
        public var commit: ListRepositoryTagsResponseBody.Result.Commit?

        public var id: String?

        public var message: String?

        public var name: String?

        public var signature: ListRepositoryTagsResponseBody.Result.Signature?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.commit?.validate()
            try self.signature?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commit != nil {
                map["Commit"] = self.commit?.toMap()
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.signature != nil {
                map["Signature"] = self.signature?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Commit") {
                var model = ListRepositoryTagsResponseBody.Result.Commit()
                model.fromMap(dict["Commit"] as! [String: Any])
                self.commit = model
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Signature") {
                var model = ListRepositoryTagsResponseBody.Result.Signature()
                model.fromMap(dict["Signature"] as! [String: Any])
                self.signature = model
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [ListRepositoryTagsResponseBody.Result]?

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
        if self.total != nil {
            map["Total"] = self.total!
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
            self.result = dict["Result"] as! [ListRepositoryTagsResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class ListRepositoryTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRepositoryTagsResponseBody?

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
            var model = ListRepositoryTagsResponseBody()
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

    public var subUserId: String?

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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.refName != nil {
            map["RefName"] = self.refName!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        if self.type != nil {
            map["Type"] = self.type!
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
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
        }
        if dict.keys.contains("RefName") {
            self.refName = dict["RefName"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListRepositoryTreeResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var id: String?

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
                map["Id"] = self.id!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Mode") {
                self.mode = dict["Mode"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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
            self.result = dict["Result"] as! [ListRepositoryTreeResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
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
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.enableSslVerification != nil {
                map["EnableSslVerification"] = self.enableSslVerification!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.lastTestResult != nil {
                map["LastTestResult"] = self.lastTestResult!
            }
            if self.mergeRequestsEvents != nil {
                map["MergeRequestsEvents"] = self.mergeRequestsEvents!
            }
            if self.noteEvents != nil {
                map["NoteEvents"] = self.noteEvents!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.pushEvents != nil {
                map["PushEvents"] = self.pushEvents!
            }
            if self.secretToken != nil {
                map["SecretToken"] = self.secretToken!
            }
            if self.tagPushEvents != nil {
                map["TagPushEvents"] = self.tagPushEvents!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EnableSslVerification") {
                self.enableSslVerification = dict["EnableSslVerification"] as! Bool
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LastTestResult") {
                self.lastTestResult = dict["LastTestResult"] as! String
            }
            if dict.keys.contains("MergeRequestsEvents") {
                self.mergeRequestsEvents = dict["MergeRequestsEvents"] as! Bool
            }
            if dict.keys.contains("NoteEvents") {
                self.noteEvents = dict["NoteEvents"] as! Bool
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("PushEvents") {
                self.pushEvents = dict["PushEvents"] as! Bool
            }
            if dict.keys.contains("SecretToken") {
                self.secretToken = dict["SecretToken"] as! String
            }
            if dict.keys.contains("TagPushEvents") {
                self.tagPushEvents = dict["TagPushEvents"] as! Bool
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
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
        if self.total != nil {
            map["Total"] = self.total!
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
            self.result = dict["Result"] as! [ListRepositoryWebhookResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
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

public class MergeMergeRequestRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class MergeMergeRequestResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ApproveCheckResult : Tea.TeaModel {
            public class SatisfiedCheckResults : Tea.TeaModel {
                public class ExtraUsers : Tea.TeaModel {
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
                        if self.avatarUrl != nil {
                            map["AvatarUrl"] = self.avatarUrl!
                        }
                        if self.externUserId != nil {
                            map["ExternUserId"] = self.externUserId!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AvatarUrl") {
                            self.avatarUrl = dict["AvatarUrl"] as! String
                        }
                        if dict.keys.contains("ExternUserId") {
                            self.externUserId = dict["ExternUserId"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var checkName: String?

                public var checkStatus: String?

                public var checkType: String?

                public var extraUsers: [MergeMergeRequestResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults.ExtraUsers]?

                public var satisfiedItems: [String]?

                public var unsatisfiedItems: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkName != nil {
                        map["CheckName"] = self.checkName!
                    }
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.checkType != nil {
                        map["CheckType"] = self.checkType!
                    }
                    if self.extraUsers != nil {
                        var tmp : [Any] = []
                        for k in self.extraUsers! {
                            tmp.append(k.toMap())
                        }
                        map["ExtraUsers"] = tmp
                    }
                    if self.satisfiedItems != nil {
                        map["SatisfiedItems"] = self.satisfiedItems!
                    }
                    if self.unsatisfiedItems != nil {
                        map["UnsatisfiedItems"] = self.unsatisfiedItems!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckName") {
                        self.checkName = dict["CheckName"] as! String
                    }
                    if dict.keys.contains("CheckStatus") {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("CheckType") {
                        self.checkType = dict["CheckType"] as! String
                    }
                    if dict.keys.contains("ExtraUsers") {
                        self.extraUsers = dict["ExtraUsers"] as! [MergeMergeRequestResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults.ExtraUsers]
                    }
                    if dict.keys.contains("SatisfiedItems") {
                        self.satisfiedItems = dict["SatisfiedItems"] as! [String]
                    }
                    if dict.keys.contains("UnsatisfiedItems") {
                        self.unsatisfiedItems = dict["UnsatisfiedItems"] as! [String]
                    }
                }
            }
            public class UnsatisfiedCheckResults : Tea.TeaModel {
                public class ExtraUsers : Tea.TeaModel {
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
                        if self.avatarUrl != nil {
                            map["AvatarUrl"] = self.avatarUrl!
                        }
                        if self.externUserId != nil {
                            map["ExternUserId"] = self.externUserId!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AvatarUrl") {
                            self.avatarUrl = dict["AvatarUrl"] as! String
                        }
                        if dict.keys.contains("ExternUserId") {
                            self.externUserId = dict["ExternUserId"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var checkName: String?

                public var checkStatus: String?

                public var checkType: String?

                public var extraUsers: [MergeMergeRequestResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults.ExtraUsers]?

                public var satisfiedItems: [String]?

                public var unsatisfiedItems: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkName != nil {
                        map["CheckName"] = self.checkName!
                    }
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.checkType != nil {
                        map["CheckType"] = self.checkType!
                    }
                    if self.extraUsers != nil {
                        var tmp : [Any] = []
                        for k in self.extraUsers! {
                            tmp.append(k.toMap())
                        }
                        map["ExtraUsers"] = tmp
                    }
                    if self.satisfiedItems != nil {
                        map["SatisfiedItems"] = self.satisfiedItems!
                    }
                    if self.unsatisfiedItems != nil {
                        map["UnsatisfiedItems"] = self.unsatisfiedItems!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckName") {
                        self.checkName = dict["CheckName"] as! String
                    }
                    if dict.keys.contains("CheckStatus") {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("CheckType") {
                        self.checkType = dict["CheckType"] as! String
                    }
                    if dict.keys.contains("ExtraUsers") {
                        self.extraUsers = dict["ExtraUsers"] as! [MergeMergeRequestResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults.ExtraUsers]
                    }
                    if dict.keys.contains("SatisfiedItems") {
                        self.satisfiedItems = dict["SatisfiedItems"] as! [String]
                    }
                    if dict.keys.contains("UnsatisfiedItems") {
                        self.unsatisfiedItems = dict["UnsatisfiedItems"] as! [String]
                    }
                }
            }
            public var satisfiedCheckResults: [MergeMergeRequestResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults]?

            public var totalCheckResult: String?

            public var unsatisfiedCheckResults: [MergeMergeRequestResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.satisfiedCheckResults != nil {
                    var tmp : [Any] = []
                    for k in self.satisfiedCheckResults! {
                        tmp.append(k.toMap())
                    }
                    map["SatisfiedCheckResults"] = tmp
                }
                if self.totalCheckResult != nil {
                    map["TotalCheckResult"] = self.totalCheckResult!
                }
                if self.unsatisfiedCheckResults != nil {
                    var tmp : [Any] = []
                    for k in self.unsatisfiedCheckResults! {
                        tmp.append(k.toMap())
                    }
                    map["UnsatisfiedCheckResults"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SatisfiedCheckResults") {
                    self.satisfiedCheckResults = dict["SatisfiedCheckResults"] as! [MergeMergeRequestResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults]
                }
                if dict.keys.contains("TotalCheckResult") {
                    self.totalCheckResult = dict["TotalCheckResult"] as! String
                }
                if dict.keys.contains("UnsatisfiedCheckResults") {
                    self.unsatisfiedCheckResults = dict["UnsatisfiedCheckResults"] as! [MergeMergeRequestResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults]
                }
            }
        }
        public class AssigneeList : Tea.TeaModel {
            public var avatarUrl: String?

            public var externUserId: String?

            public var id: String?

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
                if self.avatarUrl != nil {
                    map["AvatarUrl"] = self.avatarUrl!
                }
                if self.externUserId != nil {
                    map["ExternUserId"] = self.externUserId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvatarUrl") {
                    self.avatarUrl = dict["AvatarUrl"] as! String
                }
                if dict.keys.contains("ExternUserId") {
                    self.externUserId = dict["ExternUserId"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Author : Tea.TeaModel {
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
                if self.avatarUrl != nil {
                    map["AvatarUrl"] = self.avatarUrl!
                }
                if self.externUserId != nil {
                    map["ExternUserId"] = self.externUserId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvatarUrl") {
                    self.avatarUrl = dict["AvatarUrl"] as! String
                }
                if dict.keys.contains("ExternUserId") {
                    self.externUserId = dict["ExternUserId"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var acceptedRevision: String?

        public var aheadCommitCount: Int32?

        public var approveCheckResult: MergeMergeRequestResponseBody.Result.ApproveCheckResult?

        public var assigneeList: [MergeMergeRequestResponseBody.Result.AssigneeList]?

        public var author: MergeMergeRequestResponseBody.Result.Author?

        public var behindCommitCount: Int32?

        public var createdAt: String?

        public var description_: String?

        public var id: Int64?

        public var mergeError: String?

        public var mergeStatus: String?

        public var mergeType: String?

        public var mergedRevision: String?

        public var nameWithNamespace: String?

        public var projectId: Int64?

        public var sourceBranch: String?

        public var state: String?

        public var targetBranch: String?

        public var title: String?

        public var updatedAt: String?

        public var webUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.approveCheckResult?.validate()
            try self.author?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceptedRevision != nil {
                map["AcceptedRevision"] = self.acceptedRevision!
            }
            if self.aheadCommitCount != nil {
                map["AheadCommitCount"] = self.aheadCommitCount!
            }
            if self.approveCheckResult != nil {
                map["ApproveCheckResult"] = self.approveCheckResult?.toMap()
            }
            if self.assigneeList != nil {
                var tmp : [Any] = []
                for k in self.assigneeList! {
                    tmp.append(k.toMap())
                }
                map["AssigneeList"] = tmp
            }
            if self.author != nil {
                map["Author"] = self.author?.toMap()
            }
            if self.behindCommitCount != nil {
                map["BehindCommitCount"] = self.behindCommitCount!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.mergeError != nil {
                map["MergeError"] = self.mergeError!
            }
            if self.mergeStatus != nil {
                map["MergeStatus"] = self.mergeStatus!
            }
            if self.mergeType != nil {
                map["MergeType"] = self.mergeType!
            }
            if self.mergedRevision != nil {
                map["MergedRevision"] = self.mergedRevision!
            }
            if self.nameWithNamespace != nil {
                map["NameWithNamespace"] = self.nameWithNamespace!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.sourceBranch != nil {
                map["SourceBranch"] = self.sourceBranch!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.targetBranch != nil {
                map["TargetBranch"] = self.targetBranch!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.webUrl != nil {
                map["WebUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceptedRevision") {
                self.acceptedRevision = dict["AcceptedRevision"] as! String
            }
            if dict.keys.contains("AheadCommitCount") {
                self.aheadCommitCount = dict["AheadCommitCount"] as! Int32
            }
            if dict.keys.contains("ApproveCheckResult") {
                var model = MergeMergeRequestResponseBody.Result.ApproveCheckResult()
                model.fromMap(dict["ApproveCheckResult"] as! [String: Any])
                self.approveCheckResult = model
            }
            if dict.keys.contains("AssigneeList") {
                self.assigneeList = dict["AssigneeList"] as! [MergeMergeRequestResponseBody.Result.AssigneeList]
            }
            if dict.keys.contains("Author") {
                var model = MergeMergeRequestResponseBody.Result.Author()
                model.fromMap(dict["Author"] as! [String: Any])
                self.author = model
            }
            if dict.keys.contains("BehindCommitCount") {
                self.behindCommitCount = dict["BehindCommitCount"] as! Int32
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("MergeError") {
                self.mergeError = dict["MergeError"] as! String
            }
            if dict.keys.contains("MergeStatus") {
                self.mergeStatus = dict["MergeStatus"] as! String
            }
            if dict.keys.contains("MergeType") {
                self.mergeType = dict["MergeType"] as! String
            }
            if dict.keys.contains("MergedRevision") {
                self.mergedRevision = dict["MergedRevision"] as! String
            }
            if dict.keys.contains("NameWithNamespace") {
                self.nameWithNamespace = dict["NameWithNamespace"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("SourceBranch") {
                self.sourceBranch = dict["SourceBranch"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("TargetBranch") {
                self.targetBranch = dict["TargetBranch"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
            if dict.keys.contains("WebUrl") {
                self.webUrl = dict["WebUrl"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: MergeMergeRequestResponseBody.Result?

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
            var model = MergeMergeRequestResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class MergeMergeRequestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MergeMergeRequestResponseBody?

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
            var model = MergeMergeRequestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySlsRelationRequest : Tea.TeaModel {
    public var organizationId: String?

    public var aliyunUserId: String?

    public var codeupProjectId: Int64?

    public var slsLogStore: String?

    public var slsProject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.aliyunUserId != nil {
            map["aliyunUserId"] = self.aliyunUserId!
        }
        if self.codeupProjectId != nil {
            map["codeupProjectId"] = self.codeupProjectId!
        }
        if self.slsLogStore != nil {
            map["slsLogStore"] = self.slsLogStore!
        }
        if self.slsProject != nil {
            map["slsProject"] = self.slsProject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("aliyunUserId") {
            self.aliyunUserId = dict["aliyunUserId"] as! String
        }
        if dict.keys.contains("codeupProjectId") {
            self.codeupProjectId = dict["codeupProjectId"] as! Int64
        }
        if dict.keys.contains("slsLogStore") {
            self.slsLogStore = dict["slsLogStore"] as! String
        }
        if dict.keys.contains("slsProject") {
            self.slsProject = dict["slsProject"] as! String
        }
    }
}

public class QuerySlsRelationResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var aliyunUserId: String?

        public var codeupProjectId: Int64?

        public var defaultViewer: Bool?

        public var organizationId: String?

        public var slsLogStore: String?

        public var slsProject: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunUserId != nil {
                map["aliyunUserId"] = self.aliyunUserId!
            }
            if self.codeupProjectId != nil {
                map["codeupProjectId"] = self.codeupProjectId!
            }
            if self.defaultViewer != nil {
                map["defaultViewer"] = self.defaultViewer!
            }
            if self.organizationId != nil {
                map["organizationId"] = self.organizationId!
            }
            if self.slsLogStore != nil {
                map["slsLogStore"] = self.slsLogStore!
            }
            if self.slsProject != nil {
                map["slsProject"] = self.slsProject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("aliyunUserId") {
                self.aliyunUserId = dict["aliyunUserId"] as! String
            }
            if dict.keys.contains("codeupProjectId") {
                self.codeupProjectId = dict["codeupProjectId"] as! Int64
            }
            if dict.keys.contains("defaultViewer") {
                self.defaultViewer = dict["defaultViewer"] as! Bool
            }
            if dict.keys.contains("organizationId") {
                self.organizationId = dict["organizationId"] as! String
            }
            if dict.keys.contains("slsLogStore") {
                self.slsLogStore = dict["slsLogStore"] as! String
            }
            if dict.keys.contains("slsProject") {
                self.slsProject = dict["slsProject"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: [QuerySlsRelationResponseBody.Result]?

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
            self.result = dict["Result"] as! [QuerySlsRelationResponseBody.Result]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class QuerySlsRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySlsRelationResponseBody?

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
            var model = QuerySlsRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RelatedSlsLogStoreRequest : Tea.TeaModel {
    public var organizationId: String?

    public var aliyunUserId: String?

    public var codeupProjectId: Int64?

    public var defaultViewer: Bool?

    public var slsLogStore: String?

    public var slsProject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.aliyunUserId != nil {
            map["aliyunUserId"] = self.aliyunUserId!
        }
        if self.codeupProjectId != nil {
            map["codeupProjectId"] = self.codeupProjectId!
        }
        if self.defaultViewer != nil {
            map["defaultViewer"] = self.defaultViewer!
        }
        if self.slsLogStore != nil {
            map["slsLogStore"] = self.slsLogStore!
        }
        if self.slsProject != nil {
            map["slsProject"] = self.slsProject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("aliyunUserId") {
            self.aliyunUserId = dict["aliyunUserId"] as! String
        }
        if dict.keys.contains("codeupProjectId") {
            self.codeupProjectId = dict["codeupProjectId"] as! Int64
        }
        if dict.keys.contains("defaultViewer") {
            self.defaultViewer = dict["defaultViewer"] as! Bool
        }
        if dict.keys.contains("slsLogStore") {
            self.slsLogStore = dict["slsLogStore"] as! String
        }
        if dict.keys.contains("slsProject") {
            self.slsProject = dict["slsProject"] as! String
        }
    }
}

public class RelatedSlsLogStoreResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var relatedResult: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.relatedResult != nil {
                map["RelatedResult"] = self.relatedResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RelatedResult") {
                self.relatedResult = dict["RelatedResult"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: RelatedSlsLogStoreResponseBody.Result?

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
            var model = RelatedSlsLogStoreResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class RelatedSlsLogStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RelatedSlsLogStoreResponseBody?

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
            var model = RelatedSlsLogStoreResponseBody()
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
            map["AccessToken"] = self.accessToken!
        }
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
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
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! Bool
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
            var model = TriggerRepositoryMirrorSyncResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

public class UnRelatedSlsLogStoreRequest : Tea.TeaModel {
    public var organizationId: String?

    public var aliyunUserId: String?

    public var codeupProjectId: Int64?

    public var slsLogStore: String?

    public var slsProject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.aliyunUserId != nil {
            map["aliyunUserId"] = self.aliyunUserId!
        }
        if self.codeupProjectId != nil {
            map["codeupProjectId"] = self.codeupProjectId!
        }
        if self.slsLogStore != nil {
            map["slsLogStore"] = self.slsLogStore!
        }
        if self.slsProject != nil {
            map["slsProject"] = self.slsProject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrganizationId") {
            self.organizationId = dict["OrganizationId"] as! String
        }
        if dict.keys.contains("aliyunUserId") {
            self.aliyunUserId = dict["aliyunUserId"] as! String
        }
        if dict.keys.contains("codeupProjectId") {
            self.codeupProjectId = dict["codeupProjectId"] as! Int64
        }
        if dict.keys.contains("slsLogStore") {
            self.slsLogStore = dict["slsLogStore"] as! String
        }
        if dict.keys.contains("slsProject") {
            self.slsProject = dict["slsProject"] as! String
        }
    }
}

public class UnRelatedSlsLogStoreResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var unRelatedResult: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.unRelatedResult != nil {
                map["UnRelatedResult"] = self.unRelatedResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UnRelatedResult") {
                self.unRelatedResult = dict["UnRelatedResult"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: UnRelatedSlsLogStoreResponseBody.Result?

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
            var model = UnRelatedSlsLogStoreResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class UnRelatedSlsLogStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnRelatedSlsLogStoreResponseBody?

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
            var model = UnRelatedSlsLogStoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFileRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
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
                map["BranchName"] = self.branchName!
            }
            if self.filePath != nil {
                map["FilePath"] = self.filePath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BranchName") {
                self.branchName = dict["BranchName"] as! String
            }
            if dict.keys.contains("FilePath") {
                self.filePath = dict["FilePath"] as! String
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
            var model = UpdateFileResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

public class UpdateGroupMemberRequest : Tea.TeaModel {
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class UpdateGroupMemberResponseBody : Tea.TeaModel {
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

    public var result: UpdateGroupMemberResponseBody.Result?

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
            var model = UpdateGroupMemberResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateGroupMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupMemberResponseBody?

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
            var model = UpdateGroupMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateMergeRequestRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class UpdateMergeRequestResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ApproveCheckResult : Tea.TeaModel {
            public class SatisfiedCheckResults : Tea.TeaModel {
                public class ExtraUsers : Tea.TeaModel {
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
                        if self.avatarUrl != nil {
                            map["AvatarUrl"] = self.avatarUrl!
                        }
                        if self.externUserId != nil {
                            map["ExternUserId"] = self.externUserId!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AvatarUrl") {
                            self.avatarUrl = dict["AvatarUrl"] as! String
                        }
                        if dict.keys.contains("ExternUserId") {
                            self.externUserId = dict["ExternUserId"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var checkName: String?

                public var checkStatus: String?

                public var checkType: String?

                public var extraUsers: [UpdateMergeRequestResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults.ExtraUsers]?

                public var satisfiedItems: [String]?

                public var unsatisfiedItems: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkName != nil {
                        map["CheckName"] = self.checkName!
                    }
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.checkType != nil {
                        map["CheckType"] = self.checkType!
                    }
                    if self.extraUsers != nil {
                        var tmp : [Any] = []
                        for k in self.extraUsers! {
                            tmp.append(k.toMap())
                        }
                        map["ExtraUsers"] = tmp
                    }
                    if self.satisfiedItems != nil {
                        map["SatisfiedItems"] = self.satisfiedItems!
                    }
                    if self.unsatisfiedItems != nil {
                        map["UnsatisfiedItems"] = self.unsatisfiedItems!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckName") {
                        self.checkName = dict["CheckName"] as! String
                    }
                    if dict.keys.contains("CheckStatus") {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("CheckType") {
                        self.checkType = dict["CheckType"] as! String
                    }
                    if dict.keys.contains("ExtraUsers") {
                        self.extraUsers = dict["ExtraUsers"] as! [UpdateMergeRequestResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults.ExtraUsers]
                    }
                    if dict.keys.contains("SatisfiedItems") {
                        self.satisfiedItems = dict["SatisfiedItems"] as! [String]
                    }
                    if dict.keys.contains("UnsatisfiedItems") {
                        self.unsatisfiedItems = dict["UnsatisfiedItems"] as! [String]
                    }
                }
            }
            public class UnsatisfiedCheckResults : Tea.TeaModel {
                public class ExtraUsers : Tea.TeaModel {
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
                        if self.avatarUrl != nil {
                            map["AvatarUrl"] = self.avatarUrl!
                        }
                        if self.externUserId != nil {
                            map["ExternUserId"] = self.externUserId!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AvatarUrl") {
                            self.avatarUrl = dict["AvatarUrl"] as! String
                        }
                        if dict.keys.contains("ExternUserId") {
                            self.externUserId = dict["ExternUserId"] as! String
                        }
                        if dict.keys.contains("Id") {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var checkName: String?

                public var checkStatus: String?

                public var checkType: String?

                public var extraUsers: [UpdateMergeRequestResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults.ExtraUsers]?

                public var satisfiedItems: [String]?

                public var unsatisfiedItems: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.checkName != nil {
                        map["CheckName"] = self.checkName!
                    }
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.checkType != nil {
                        map["CheckType"] = self.checkType!
                    }
                    if self.extraUsers != nil {
                        var tmp : [Any] = []
                        for k in self.extraUsers! {
                            tmp.append(k.toMap())
                        }
                        map["ExtraUsers"] = tmp
                    }
                    if self.satisfiedItems != nil {
                        map["SatisfiedItems"] = self.satisfiedItems!
                    }
                    if self.unsatisfiedItems != nil {
                        map["UnsatisfiedItems"] = self.unsatisfiedItems!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckName") {
                        self.checkName = dict["CheckName"] as! String
                    }
                    if dict.keys.contains("CheckStatus") {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("CheckType") {
                        self.checkType = dict["CheckType"] as! String
                    }
                    if dict.keys.contains("ExtraUsers") {
                        self.extraUsers = dict["ExtraUsers"] as! [UpdateMergeRequestResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults.ExtraUsers]
                    }
                    if dict.keys.contains("SatisfiedItems") {
                        self.satisfiedItems = dict["SatisfiedItems"] as! [String]
                    }
                    if dict.keys.contains("UnsatisfiedItems") {
                        self.unsatisfiedItems = dict["UnsatisfiedItems"] as! [String]
                    }
                }
            }
            public var satisfiedCheckResults: [UpdateMergeRequestResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults]?

            public var totalCheckResult: String?

            public var unsatisfiedCheckResults: [UpdateMergeRequestResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.satisfiedCheckResults != nil {
                    var tmp : [Any] = []
                    for k in self.satisfiedCheckResults! {
                        tmp.append(k.toMap())
                    }
                    map["SatisfiedCheckResults"] = tmp
                }
                if self.totalCheckResult != nil {
                    map["TotalCheckResult"] = self.totalCheckResult!
                }
                if self.unsatisfiedCheckResults != nil {
                    var tmp : [Any] = []
                    for k in self.unsatisfiedCheckResults! {
                        tmp.append(k.toMap())
                    }
                    map["UnsatisfiedCheckResults"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SatisfiedCheckResults") {
                    self.satisfiedCheckResults = dict["SatisfiedCheckResults"] as! [UpdateMergeRequestResponseBody.Result.ApproveCheckResult.SatisfiedCheckResults]
                }
                if dict.keys.contains("TotalCheckResult") {
                    self.totalCheckResult = dict["TotalCheckResult"] as! String
                }
                if dict.keys.contains("UnsatisfiedCheckResults") {
                    self.unsatisfiedCheckResults = dict["UnsatisfiedCheckResults"] as! [UpdateMergeRequestResponseBody.Result.ApproveCheckResult.UnsatisfiedCheckResults]
                }
            }
        }
        public class AssigneeList : Tea.TeaModel {
            public var avatarUrl: String?

            public var externUserId: String?

            public var id: String?

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
                if self.avatarUrl != nil {
                    map["AvatarUrl"] = self.avatarUrl!
                }
                if self.externUserId != nil {
                    map["ExternUserId"] = self.externUserId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvatarUrl") {
                    self.avatarUrl = dict["AvatarUrl"] as! String
                }
                if dict.keys.contains("ExternUserId") {
                    self.externUserId = dict["ExternUserId"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Author : Tea.TeaModel {
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
                if self.avatarUrl != nil {
                    map["AvatarUrl"] = self.avatarUrl!
                }
                if self.externUserId != nil {
                    map["ExternUserId"] = self.externUserId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvatarUrl") {
                    self.avatarUrl = dict["AvatarUrl"] as! String
                }
                if dict.keys.contains("ExternUserId") {
                    self.externUserId = dict["ExternUserId"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var acceptedRevision: String?

        public var aheadCommitCount: Int32?

        public var approveCheckResult: UpdateMergeRequestResponseBody.Result.ApproveCheckResult?

        public var assigneeList: [UpdateMergeRequestResponseBody.Result.AssigneeList]?

        public var author: UpdateMergeRequestResponseBody.Result.Author?

        public var behindCommitCount: Int32?

        public var createdAt: String?

        public var description_: String?

        public var id: Int64?

        public var mergeError: String?

        public var mergeStatus: String?

        public var mergeType: String?

        public var mergedRevision: String?

        public var nameWithNamespace: String?

        public var projectId: Int64?

        public var sourceBranch: String?

        public var state: String?

        public var targetBranch: String?

        public var title: String?

        public var updatedAt: String?

        public var webUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.approveCheckResult?.validate()
            try self.author?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceptedRevision != nil {
                map["AcceptedRevision"] = self.acceptedRevision!
            }
            if self.aheadCommitCount != nil {
                map["AheadCommitCount"] = self.aheadCommitCount!
            }
            if self.approveCheckResult != nil {
                map["ApproveCheckResult"] = self.approveCheckResult?.toMap()
            }
            if self.assigneeList != nil {
                var tmp : [Any] = []
                for k in self.assigneeList! {
                    tmp.append(k.toMap())
                }
                map["AssigneeList"] = tmp
            }
            if self.author != nil {
                map["Author"] = self.author?.toMap()
            }
            if self.behindCommitCount != nil {
                map["BehindCommitCount"] = self.behindCommitCount!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.mergeError != nil {
                map["MergeError"] = self.mergeError!
            }
            if self.mergeStatus != nil {
                map["MergeStatus"] = self.mergeStatus!
            }
            if self.mergeType != nil {
                map["MergeType"] = self.mergeType!
            }
            if self.mergedRevision != nil {
                map["MergedRevision"] = self.mergedRevision!
            }
            if self.nameWithNamespace != nil {
                map["NameWithNamespace"] = self.nameWithNamespace!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.sourceBranch != nil {
                map["SourceBranch"] = self.sourceBranch!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.targetBranch != nil {
                map["TargetBranch"] = self.targetBranch!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.webUrl != nil {
                map["WebUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceptedRevision") {
                self.acceptedRevision = dict["AcceptedRevision"] as! String
            }
            if dict.keys.contains("AheadCommitCount") {
                self.aheadCommitCount = dict["AheadCommitCount"] as! Int32
            }
            if dict.keys.contains("ApproveCheckResult") {
                var model = UpdateMergeRequestResponseBody.Result.ApproveCheckResult()
                model.fromMap(dict["ApproveCheckResult"] as! [String: Any])
                self.approveCheckResult = model
            }
            if dict.keys.contains("AssigneeList") {
                self.assigneeList = dict["AssigneeList"] as! [UpdateMergeRequestResponseBody.Result.AssigneeList]
            }
            if dict.keys.contains("Author") {
                var model = UpdateMergeRequestResponseBody.Result.Author()
                model.fromMap(dict["Author"] as! [String: Any])
                self.author = model
            }
            if dict.keys.contains("BehindCommitCount") {
                self.behindCommitCount = dict["BehindCommitCount"] as! Int32
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("MergeError") {
                self.mergeError = dict["MergeError"] as! String
            }
            if dict.keys.contains("MergeStatus") {
                self.mergeStatus = dict["MergeStatus"] as! String
            }
            if dict.keys.contains("MergeType") {
                self.mergeType = dict["MergeType"] as! String
            }
            if dict.keys.contains("MergedRevision") {
                self.mergedRevision = dict["MergedRevision"] as! String
            }
            if dict.keys.contains("NameWithNamespace") {
                self.nameWithNamespace = dict["NameWithNamespace"] as! String
            }
            if dict.keys.contains("ProjectId") {
                self.projectId = dict["ProjectId"] as! Int64
            }
            if dict.keys.contains("SourceBranch") {
                self.sourceBranch = dict["SourceBranch"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("TargetBranch") {
                self.targetBranch = dict["TargetBranch"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("UpdatedAt") {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
            if dict.keys.contains("WebUrl") {
                self.webUrl = dict["WebUrl"] as! String
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: UpdateMergeRequestResponseBody.Result?

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
            var model = UpdateMergeRequestResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateMergeRequestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMergeRequestResponseBody?

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
            var model = UpdateMergeRequestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateMergeRequestCommentRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class UpdateMergeRequestCommentResponseBody : Tea.TeaModel {
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
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: UpdateMergeRequestCommentResponseBody.Result?

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
            var model = UpdateMergeRequestCommentResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateMergeRequestCommentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMergeRequestCommentResponseBody?

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
            var model = UpdateMergeRequestCommentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateMergeRequestSettingRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
    }
}

public class UpdateMergeRequestSettingResponseBody : Tea.TeaModel {
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
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! Bool
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var result: UpdateMergeRequestSettingResponseBody.Result?

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
            var model = UpdateMergeRequestSettingResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateMergeRequestSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMergeRequestSettingResponseBody?

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
            var model = UpdateMergeRequestSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateRepositoryRequest : Tea.TeaModel {
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
            map["AccessToken"] = self.accessToken!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
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
                    map["Avatar"] = self.avatar!
                }
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.public_ != nil {
                    map["Public"] = self.public_!
                }
                if self.updatedAt != nil {
                    map["UpdatedAt"] = self.updatedAt!
                }
                if self.visibilityLevel != nil {
                    map["VisibilityLevel"] = self.visibilityLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Avatar") {
                    self.avatar = dict["Avatar"] as! String
                }
                if dict.keys.contains("CreatedAt") {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! Int64
                }
                if dict.keys.contains("Path") {
                    self.path = dict["Path"] as! String
                }
                if dict.keys.contains("Public") {
                    self.public_ = dict["Public"] as! Bool
                }
                if dict.keys.contains("UpdatedAt") {
                    self.updatedAt = dict["UpdatedAt"] as! String
                }
                if dict.keys.contains("VisibilityLevel") {
                    self.visibilityLevel = dict["VisibilityLevel"] as! String
                }
            }
        }
        public var archive: Bool?

        public var avatarUrl: String?

        public var createdAt: String?

        public var creatorId: Int64?

        public var defaultBranch: String?

        public var description_: String?

        public var httpUrlToRepo: String?

        public var id: Int64?

        public var lastActivityAt: String?

        public var name: String?

        public var nameWithNamespace: String?

        public var namespace: UpdateRepositoryResponseBody.Result.Namespace?

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
            if self.archive != nil {
                map["Archive"] = self.archive!
            }
            if self.avatarUrl != nil {
                map["AvatarUrl"] = self.avatarUrl!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.creatorId != nil {
                map["CreatorId"] = self.creatorId!
            }
            if self.defaultBranch != nil {
                map["DefaultBranch"] = self.defaultBranch!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.httpUrlToRepo != nil {
                map["HttpUrlToRepo"] = self.httpUrlToRepo!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.lastActivityAt != nil {
                map["LastActivityAt"] = self.lastActivityAt!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nameWithNamespace != nil {
                map["NameWithNamespace"] = self.nameWithNamespace!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace?.toMap()
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.pathWithNamespace != nil {
                map["PathWithNamespace"] = self.pathWithNamespace!
            }
            if self.sshUrlToRepo != nil {
                map["SshUrlToRepo"] = self.sshUrlToRepo!
            }
            if self.visibilityLevel != nil {
                map["VisibilityLevel"] = self.visibilityLevel!
            }
            if self.webUrl != nil {
                map["WebUrl"] = self.webUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Archive") {
                self.archive = dict["Archive"] as! Bool
            }
            if dict.keys.contains("AvatarUrl") {
                self.avatarUrl = dict["AvatarUrl"] as! String
            }
            if dict.keys.contains("CreatedAt") {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("CreatorId") {
                self.creatorId = dict["CreatorId"] as! Int64
            }
            if dict.keys.contains("DefaultBranch") {
                self.defaultBranch = dict["DefaultBranch"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("HttpUrlToRepo") {
                self.httpUrlToRepo = dict["HttpUrlToRepo"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LastActivityAt") {
                self.lastActivityAt = dict["LastActivityAt"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NameWithNamespace") {
                self.nameWithNamespace = dict["NameWithNamespace"] as! String
            }
            if dict.keys.contains("Namespace") {
                var model = UpdateRepositoryResponseBody.Result.Namespace()
                model.fromMap(dict["Namespace"] as! [String: Any])
                self.namespace = model
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("PathWithNamespace") {
                self.pathWithNamespace = dict["PathWithNamespace"] as! String
            }
            if dict.keys.contains("SshUrlToRepo") {
                self.sshUrlToRepo = dict["SshUrlToRepo"] as! String
            }
            if dict.keys.contains("VisibilityLevel") {
                self.visibilityLevel = dict["VisibilityLevel"] as! String
            }
            if dict.keys.contains("WebUrl") {
                self.webUrl = dict["WebUrl"] as! String
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
            var model = UpdateRepositoryResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
    public var accessToken: String?

    public var organizationId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class UpdateRepositoryMemberResponseBody : Tea.TeaModel {
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
            var model = UpdateRepositoryMemberResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
