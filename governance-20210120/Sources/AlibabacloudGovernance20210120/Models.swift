import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class EnrollAccountRequest : Tea.TeaModel {
    public class BaselineItems : Tea.TeaModel {
        public var config: String?

        public var name: String?

        public var skip: Bool?

        public var version: String?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.skip != nil {
                map["Skip"] = self.skip!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Skip") {
                self.skip = dict["Skip"] as! Bool
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var accountNamePrefix: String?

    public var accountUid: Int64?

    public var baselineId: String?

    public var baselineItems: [EnrollAccountRequest.BaselineItems]?

    public var displayName: String?

    public var folderId: String?

    public var payerAccountUid: Int64?

    public var regionId: String?

    public var resellAccountType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountNamePrefix != nil {
            map["AccountNamePrefix"] = self.accountNamePrefix!
        }
        if self.accountUid != nil {
            map["AccountUid"] = self.accountUid!
        }
        if self.baselineId != nil {
            map["BaselineId"] = self.baselineId!
        }
        if self.baselineItems != nil {
            var tmp : [Any] = []
            for k in self.baselineItems! {
                tmp.append(k.toMap())
            }
            map["BaselineItems"] = tmp
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.folderId != nil {
            map["FolderId"] = self.folderId!
        }
        if self.payerAccountUid != nil {
            map["PayerAccountUid"] = self.payerAccountUid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resellAccountType != nil {
            map["ResellAccountType"] = self.resellAccountType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountNamePrefix") {
            self.accountNamePrefix = dict["AccountNamePrefix"] as! String
        }
        if dict.keys.contains("AccountUid") {
            self.accountUid = dict["AccountUid"] as! Int64
        }
        if dict.keys.contains("BaselineId") {
            self.baselineId = dict["BaselineId"] as! String
        }
        if dict.keys.contains("BaselineItems") {
            var tmp : [EnrollAccountRequest.BaselineItems] = []
            for v in dict["BaselineItems"] as! [Any] {
                var model = EnrollAccountRequest.BaselineItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.baselineItems = tmp
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("FolderId") {
            self.folderId = dict["FolderId"] as! String
        }
        if dict.keys.contains("PayerAccountUid") {
            self.payerAccountUid = dict["PayerAccountUid"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResellAccountType") {
            self.resellAccountType = dict["ResellAccountType"] as! String
        }
    }
}

public class EnrollAccountResponseBody : Tea.TeaModel {
    public var accountUid: Int64?

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
        if self.accountUid != nil {
            map["AccountUid"] = self.accountUid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountUid") {
            self.accountUid = dict["AccountUid"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class EnrollAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnrollAccountResponseBody?

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
            var model = EnrollAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccountFactoryBaselineRequest : Tea.TeaModel {
    public var baselineId: String?

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
        if self.baselineId != nil {
            map["BaselineId"] = self.baselineId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaselineId") {
            self.baselineId = dict["BaselineId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetAccountFactoryBaselineResponseBody : Tea.TeaModel {
    public class BaselineItems : Tea.TeaModel {
        public var config: String?

        public var name: String?

        public var version: String?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var baselineId: String?

    public var baselineItems: [GetAccountFactoryBaselineResponseBody.BaselineItems]?

    public var baselineName: String?

    public var createTime: String?

    public var description_: String?

    public var requestId: String?

    public var type: String?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baselineId != nil {
            map["BaselineId"] = self.baselineId!
        }
        if self.baselineItems != nil {
            var tmp : [Any] = []
            for k in self.baselineItems! {
                tmp.append(k.toMap())
            }
            map["BaselineItems"] = tmp
        }
        if self.baselineName != nil {
            map["BaselineName"] = self.baselineName!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaselineId") {
            self.baselineId = dict["BaselineId"] as! String
        }
        if dict.keys.contains("BaselineItems") {
            var tmp : [GetAccountFactoryBaselineResponseBody.BaselineItems] = []
            for v in dict["BaselineItems"] as! [Any] {
                var model = GetAccountFactoryBaselineResponseBody.BaselineItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.baselineItems = tmp
        }
        if dict.keys.contains("BaselineName") {
            self.baselineName = dict["BaselineName"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class GetAccountFactoryBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountFactoryBaselineResponseBody?

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
            var model = GetAccountFactoryBaselineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEnrolledAccountRequest : Tea.TeaModel {
    public var accountUid: Int64?

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
        if self.accountUid != nil {
            map["AccountUid"] = self.accountUid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountUid") {
            self.accountUid = dict["AccountUid"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetEnrolledAccountResponseBody : Tea.TeaModel {
    public class BaselineItems : Tea.TeaModel {
        public var config: String?

        public var name: String?

        public var skip: Bool?

        public var version: String?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.skip != nil {
                map["Skip"] = self.skip!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Skip") {
                self.skip = dict["Skip"] as! Bool
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public class ErrorInfo : Tea.TeaModel {
        public var code: String?

        public var message: String?

        public var recommend: String?

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
            if self.recommend != nil {
                map["Recommend"] = self.recommend!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
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
            if dict.keys.contains("Recommend") {
                self.recommend = dict["Recommend"] as! String
            }
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
        }
    }
    public class Inputs : Tea.TeaModel {
        public class BaselineItems : Tea.TeaModel {
            public var config: String?

            public var name: String?

            public var skip: Bool?

            public var version: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.skip != nil {
                    map["Skip"] = self.skip!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Config") {
                    self.config = dict["Config"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Skip") {
                    self.skip = dict["Skip"] as! Bool
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public var accountNamePrefix: String?

        public var accountUid: Int64?

        public var baselineItems: [GetEnrolledAccountResponseBody.Inputs.BaselineItems]?

        public var displayName: String?

        public var folderId: String?

        public var payerAccountUid: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountNamePrefix != nil {
                map["AccountNamePrefix"] = self.accountNamePrefix!
            }
            if self.accountUid != nil {
                map["AccountUid"] = self.accountUid!
            }
            if self.baselineItems != nil {
                var tmp : [Any] = []
                for k in self.baselineItems! {
                    tmp.append(k.toMap())
                }
                map["BaselineItems"] = tmp
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.payerAccountUid != nil {
                map["PayerAccountUid"] = self.payerAccountUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountNamePrefix") {
                self.accountNamePrefix = dict["AccountNamePrefix"] as! String
            }
            if dict.keys.contains("AccountUid") {
                self.accountUid = dict["AccountUid"] as! Int64
            }
            if dict.keys.contains("BaselineItems") {
                var tmp : [GetEnrolledAccountResponseBody.Inputs.BaselineItems] = []
                for v in dict["BaselineItems"] as! [Any] {
                    var model = GetEnrolledAccountResponseBody.Inputs.BaselineItems()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.baselineItems = tmp
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("FolderId") {
                self.folderId = dict["FolderId"] as! String
            }
            if dict.keys.contains("PayerAccountUid") {
                self.payerAccountUid = dict["PayerAccountUid"] as! Int64
            }
        }
    }
    public class Progress : Tea.TeaModel {
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var accountUid: Int64?

    public var baselineId: String?

    public var baselineItems: [GetEnrolledAccountResponseBody.BaselineItems]?

    public var createTime: String?

    public var displayName: String?

    public var errorInfo: GetEnrolledAccountResponseBody.ErrorInfo?

    public var folderId: String?

    public var initialized: Bool?

    public var inputs: GetEnrolledAccountResponseBody.Inputs?

    public var masterAccountUid: Int64?

    public var payerAccountUid: Int64?

    public var progress: [GetEnrolledAccountResponseBody.Progress]?

    public var requestId: String?

    public var status: String?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorInfo?.validate()
        try self.inputs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountUid != nil {
            map["AccountUid"] = self.accountUid!
        }
        if self.baselineId != nil {
            map["BaselineId"] = self.baselineId!
        }
        if self.baselineItems != nil {
            var tmp : [Any] = []
            for k in self.baselineItems! {
                tmp.append(k.toMap())
            }
            map["BaselineItems"] = tmp
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.errorInfo != nil {
            map["ErrorInfo"] = self.errorInfo?.toMap()
        }
        if self.folderId != nil {
            map["FolderId"] = self.folderId!
        }
        if self.initialized != nil {
            map["Initialized"] = self.initialized!
        }
        if self.inputs != nil {
            map["Inputs"] = self.inputs?.toMap()
        }
        if self.masterAccountUid != nil {
            map["MasterAccountUid"] = self.masterAccountUid!
        }
        if self.payerAccountUid != nil {
            map["PayerAccountUid"] = self.payerAccountUid!
        }
        if self.progress != nil {
            var tmp : [Any] = []
            for k in self.progress! {
                tmp.append(k.toMap())
            }
            map["Progress"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountUid") {
            self.accountUid = dict["AccountUid"] as! Int64
        }
        if dict.keys.contains("BaselineId") {
            self.baselineId = dict["BaselineId"] as! String
        }
        if dict.keys.contains("BaselineItems") {
            var tmp : [GetEnrolledAccountResponseBody.BaselineItems] = []
            for v in dict["BaselineItems"] as! [Any] {
                var model = GetEnrolledAccountResponseBody.BaselineItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.baselineItems = tmp
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("ErrorInfo") {
            var model = GetEnrolledAccountResponseBody.ErrorInfo()
            model.fromMap(dict["ErrorInfo"] as! [String: Any])
            self.errorInfo = model
        }
        if dict.keys.contains("FolderId") {
            self.folderId = dict["FolderId"] as! String
        }
        if dict.keys.contains("Initialized") {
            self.initialized = dict["Initialized"] as! Bool
        }
        if dict.keys.contains("Inputs") {
            var model = GetEnrolledAccountResponseBody.Inputs()
            model.fromMap(dict["Inputs"] as! [String: Any])
            self.inputs = model
        }
        if dict.keys.contains("MasterAccountUid") {
            self.masterAccountUid = dict["MasterAccountUid"] as! Int64
        }
        if dict.keys.contains("PayerAccountUid") {
            self.payerAccountUid = dict["PayerAccountUid"] as! Int64
        }
        if dict.keys.contains("Progress") {
            var tmp : [GetEnrolledAccountResponseBody.Progress] = []
            for v in dict["Progress"] as! [Any] {
                var model = GetEnrolledAccountResponseBody.Progress()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.progress = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class GetEnrolledAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEnrolledAccountResponseBody?

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
            var model = GetEnrolledAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAccountFactoryBaselinesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListAccountFactoryBaselinesResponseBody : Tea.TeaModel {
    public class Baselines : Tea.TeaModel {
        public var baselineId: String?

        public var baselineName: String?

        public var createTime: String?

        public var description_: String?

        public var type: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.baselineId != nil {
                map["BaselineId"] = self.baselineId!
            }
            if self.baselineName != nil {
                map["BaselineName"] = self.baselineName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BaselineId") {
                self.baselineId = dict["BaselineId"] as! String
            }
            if dict.keys.contains("BaselineName") {
                self.baselineName = dict["BaselineName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var baselines: [ListAccountFactoryBaselinesResponseBody.Baselines]?

    public var nextToken: String?

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
        if self.baselines != nil {
            var tmp : [Any] = []
            for k in self.baselines! {
                tmp.append(k.toMap())
            }
            map["Baselines"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Baselines") {
            var tmp : [ListAccountFactoryBaselinesResponseBody.Baselines] = []
            for v in dict["Baselines"] as! [Any] {
                var model = ListAccountFactoryBaselinesResponseBody.Baselines()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.baselines = tmp
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAccountFactoryBaselinesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccountFactoryBaselinesResponseBody?

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
            var model = ListAccountFactoryBaselinesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEnrolledAccountsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListEnrolledAccountsResponseBody : Tea.TeaModel {
    public class EnrolledAccounts : Tea.TeaModel {
        public var accountUid: Int64?

        public var baselineId: String?

        public var createTime: String?

        public var displayName: String?

        public var folderId: String?

        public var payerAccountUid: Int64?

        public var status: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountUid != nil {
                map["AccountUid"] = self.accountUid!
            }
            if self.baselineId != nil {
                map["BaselineId"] = self.baselineId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.payerAccountUid != nil {
                map["PayerAccountUid"] = self.payerAccountUid!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountUid") {
                self.accountUid = dict["AccountUid"] as! Int64
            }
            if dict.keys.contains("BaselineId") {
                self.baselineId = dict["BaselineId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("FolderId") {
                self.folderId = dict["FolderId"] as! String
            }
            if dict.keys.contains("PayerAccountUid") {
                self.payerAccountUid = dict["PayerAccountUid"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var enrolledAccounts: [ListEnrolledAccountsResponseBody.EnrolledAccounts]?

    public var nextToken: String?

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
        if self.enrolledAccounts != nil {
            var tmp : [Any] = []
            for k in self.enrolledAccounts! {
                tmp.append(k.toMap())
            }
            map["EnrolledAccounts"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnrolledAccounts") {
            var tmp : [ListEnrolledAccountsResponseBody.EnrolledAccounts] = []
            for v in dict["EnrolledAccounts"] as! [Any] {
                var model = ListEnrolledAccountsResponseBody.EnrolledAccounts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.enrolledAccounts = tmp
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListEnrolledAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEnrolledAccountsResponseBody?

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
            var model = ListEnrolledAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAccountFactoryBaselineRequest : Tea.TeaModel {
    public class BaselineItems : Tea.TeaModel {
        public var config: String?

        public var name: String?

        public var version: String?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var baselineId: String?

    public var baselineItems: [UpdateAccountFactoryBaselineRequest.BaselineItems]?

    public var baselineName: String?

    public var description_: String?

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
        if self.baselineId != nil {
            map["BaselineId"] = self.baselineId!
        }
        if self.baselineItems != nil {
            var tmp : [Any] = []
            for k in self.baselineItems! {
                tmp.append(k.toMap())
            }
            map["BaselineItems"] = tmp
        }
        if self.baselineName != nil {
            map["BaselineName"] = self.baselineName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaselineId") {
            self.baselineId = dict["BaselineId"] as! String
        }
        if dict.keys.contains("BaselineItems") {
            var tmp : [UpdateAccountFactoryBaselineRequest.BaselineItems] = []
            for v in dict["BaselineItems"] as! [Any] {
                var model = UpdateAccountFactoryBaselineRequest.BaselineItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.baselineItems = tmp
        }
        if dict.keys.contains("BaselineName") {
            self.baselineName = dict["BaselineName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateAccountFactoryBaselineResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAccountFactoryBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAccountFactoryBaselineResponseBody?

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
            var model = UpdateAccountFactoryBaselineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
