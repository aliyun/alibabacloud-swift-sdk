import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BatchEnrollAccountsRequest : Tea.TeaModel {
    public class Accounts : Tea.TeaModel {
        public var accountUid: Int64?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountUid") {
                self.accountUid = dict["AccountUid"] as! Int64
            }
        }
    }
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
    public var accounts: [BatchEnrollAccountsRequest.Accounts]?

    public var baselineId: String?

    public var baselineItems: [BatchEnrollAccountsRequest.BaselineItems]?

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
        if self.accounts != nil {
            var tmp : [Any] = []
            for k in self.accounts! {
                tmp.append(k.toMap())
            }
            map["Accounts"] = tmp
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accounts") {
            var tmp : [BatchEnrollAccountsRequest.Accounts] = []
            for v in dict["Accounts"] as! [Any] {
                var model = BatchEnrollAccountsRequest.Accounts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.accounts = tmp
        }
        if dict.keys.contains("BaselineId") {
            self.baselineId = dict["BaselineId"] as! String
        }
        if dict.keys.contains("BaselineItems") {
            var tmp : [BatchEnrollAccountsRequest.BaselineItems] = []
            for v in dict["BaselineItems"] as! [Any] {
                var model = BatchEnrollAccountsRequest.BaselineItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.baselineItems = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class BatchEnrollAccountsResponseBody : Tea.TeaModel {
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

public class BatchEnrollAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchEnrollAccountsResponseBody?

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
            var model = BatchEnrollAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAccountFactoryBaselineRequest : Tea.TeaModel {
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
    public var baselineItems: [CreateAccountFactoryBaselineRequest.BaselineItems]?

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
        if dict.keys.contains("BaselineItems") {
            var tmp : [CreateAccountFactoryBaselineRequest.BaselineItems] = []
            for v in dict["BaselineItems"] as! [Any] {
                var model = CreateAccountFactoryBaselineRequest.BaselineItems()
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

public class CreateAccountFactoryBaselineResponseBody : Tea.TeaModel {
    public var baselineId: String?

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
        if self.baselineId != nil {
            map["BaselineId"] = self.baselineId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaselineId") {
            self.baselineId = dict["BaselineId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAccountFactoryBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccountFactoryBaselineResponseBody?

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
            var model = CreateAccountFactoryBaselineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccountFactoryBaselineRequest : Tea.TeaModel {
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

public class DeleteAccountFactoryBaselineResponseBody : Tea.TeaModel {
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

public class DeleteAccountFactoryBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccountFactoryBaselineResponseBody?

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
            var model = DeleteAccountFactoryBaselineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

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

public class ListAccountFactoryBaselineItemsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var names: [String]?

    public var nextToken: String?

    public var regionId: String?

    public var type: String?

    public var versions: [String]?

    public override init() {
        super.init()
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
        if self.names != nil {
            map["Names"] = self.names!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.versions != nil {
            map["Versions"] = self.versions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Names") {
            self.names = dict["Names"] as! [String]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Versions") {
            self.versions = dict["Versions"] as! [String]
        }
    }
}

public class ListAccountFactoryBaselineItemsResponseBody : Tea.TeaModel {
    public class BaselineItems : Tea.TeaModel {
        public class DependsOn : Tea.TeaModel {
            public var name: String?

            public var type: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public var dependsOn: [ListAccountFactoryBaselineItemsResponseBody.BaselineItems.DependsOn]?

        public var description_: String?

        public var name: String?

        public var type: String?

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
            if self.dependsOn != nil {
                var tmp : [Any] = []
                for k in self.dependsOn! {
                    tmp.append(k.toMap())
                }
                map["DependsOn"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DependsOn") {
                var tmp : [ListAccountFactoryBaselineItemsResponseBody.BaselineItems.DependsOn] = []
                for v in dict["DependsOn"] as! [Any] {
                    var model = ListAccountFactoryBaselineItemsResponseBody.BaselineItems.DependsOn()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dependsOn = tmp
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var baselineItems: [ListAccountFactoryBaselineItemsResponseBody.BaselineItems]?

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
        if self.baselineItems != nil {
            var tmp : [Any] = []
            for k in self.baselineItems! {
                tmp.append(k.toMap())
            }
            map["BaselineItems"] = tmp
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
        if dict.keys.contains("BaselineItems") {
            var tmp : [ListAccountFactoryBaselineItemsResponseBody.BaselineItems] = []
            for v in dict["BaselineItems"] as! [Any] {
                var model = ListAccountFactoryBaselineItemsResponseBody.BaselineItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.baselineItems = tmp
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAccountFactoryBaselineItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccountFactoryBaselineItemsResponseBody?

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
            var model = ListAccountFactoryBaselineItemsResponseBody()
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

public class ListEvaluationMetadataRequest : Tea.TeaModel {
    public var language: String?

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
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListEvaluationMetadataResponseBody : Tea.TeaModel {
    public class EvaluationMetadata : Tea.TeaModel {
        public class Metadata : Tea.TeaModel {
            public class RemediationMetadata : Tea.TeaModel {
                public class Remediation : Tea.TeaModel {
                    public class Actions : Tea.TeaModel {
                        public class Guidance : Tea.TeaModel {
                            public var buttonName: String?

                            public var buttonRef: String?

                            public var content: String?

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
                                if self.buttonName != nil {
                                    map["ButtonName"] = self.buttonName!
                                }
                                if self.buttonRef != nil {
                                    map["ButtonRef"] = self.buttonRef!
                                }
                                if self.content != nil {
                                    map["Content"] = self.content!
                                }
                                if self.title != nil {
                                    map["Title"] = self.title!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("ButtonName") {
                                    self.buttonName = dict["ButtonName"] as! String
                                }
                                if dict.keys.contains("ButtonRef") {
                                    self.buttonRef = dict["ButtonRef"] as! String
                                }
                                if dict.keys.contains("Content") {
                                    self.content = dict["Content"] as! String
                                }
                                if dict.keys.contains("Title") {
                                    self.title = dict["Title"] as! String
                                }
                            }
                        }
                        public var classification: String?

                        public var costDescription: String?

                        public var description_: String?

                        public var guidance: [ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata.Remediation.Actions.Guidance]?

                        public var notice: String?

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
                            if self.classification != nil {
                                map["Classification"] = self.classification!
                            }
                            if self.costDescription != nil {
                                map["CostDescription"] = self.costDescription!
                            }
                            if self.description_ != nil {
                                map["Description"] = self.description_!
                            }
                            if self.guidance != nil {
                                var tmp : [Any] = []
                                for k in self.guidance! {
                                    tmp.append(k.toMap())
                                }
                                map["Guidance"] = tmp
                            }
                            if self.notice != nil {
                                map["Notice"] = self.notice!
                            }
                            if self.suggestion != nil {
                                map["Suggestion"] = self.suggestion!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Classification") {
                                self.classification = dict["Classification"] as! String
                            }
                            if dict.keys.contains("CostDescription") {
                                self.costDescription = dict["CostDescription"] as! String
                            }
                            if dict.keys.contains("Description") {
                                self.description_ = dict["Description"] as! String
                            }
                            if dict.keys.contains("Guidance") {
                                var tmp : [ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata.Remediation.Actions.Guidance] = []
                                for v in dict["Guidance"] as! [Any] {
                                    var model = ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata.Remediation.Actions.Guidance()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.guidance = tmp
                            }
                            if dict.keys.contains("Notice") {
                                self.notice = dict["Notice"] as! String
                            }
                            if dict.keys.contains("Suggestion") {
                                self.suggestion = dict["Suggestion"] as! String
                            }
                        }
                    }
                    public var actions: [ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata.Remediation.Actions]?

                    public var remediationType: String?

                    public override init() {
                        super.init()
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
                            map["Actions"] = tmp
                        }
                        if self.remediationType != nil {
                            map["RemediationType"] = self.remediationType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Actions") {
                            var tmp : [ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata.Remediation.Actions] = []
                            for v in dict["Actions"] as! [Any] {
                                var model = ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata.Remediation.Actions()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.actions = tmp
                        }
                        if dict.keys.contains("RemediationType") {
                            self.remediationType = dict["RemediationType"] as! String
                        }
                    }
                }
                public var remediation: [ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata.Remediation]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.remediation != nil {
                        var tmp : [Any] = []
                        for k in self.remediation! {
                            tmp.append(k.toMap())
                        }
                        map["Remediation"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Remediation") {
                        var tmp : [ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata.Remediation] = []
                        for v in dict["Remediation"] as! [Any] {
                            var model = ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata.Remediation()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.remediation = tmp
                    }
                }
            }
            public class ResourceMetadata : Tea.TeaModel {
                public class ResourcePropertyMetadata : Tea.TeaModel {
                    public var displayName: String?

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
                            map["DisplayName"] = self.displayName!
                        }
                        if self.propertyName != nil {
                            map["PropertyName"] = self.propertyName!
                        }
                        if self.propertyType != nil {
                            map["PropertyType"] = self.propertyType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DisplayName") {
                            self.displayName = dict["DisplayName"] as! String
                        }
                        if dict.keys.contains("PropertyName") {
                            self.propertyName = dict["PropertyName"] as! String
                        }
                        if dict.keys.contains("PropertyType") {
                            self.propertyType = dict["PropertyType"] as! String
                        }
                    }
                }
                public var resourcePropertyMetadata: [ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.ResourceMetadata.ResourcePropertyMetadata]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.resourcePropertyMetadata != nil {
                        var tmp : [Any] = []
                        for k in self.resourcePropertyMetadata! {
                            tmp.append(k.toMap())
                        }
                        map["ResourcePropertyMetadata"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ResourcePropertyMetadata") {
                        var tmp : [ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.ResourceMetadata.ResourcePropertyMetadata] = []
                        for v in dict["ResourcePropertyMetadata"] as! [Any] {
                            var model = ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.ResourceMetadata.ResourcePropertyMetadata()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.resourcePropertyMetadata = tmp
                    }
                }
            }
            public var category: String?

            public var description_: String?

            public var displayName: String?

            public var id: String?

            public var recommendationLevel: String?

            public var remediationMetadata: ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata?

            public var resourceMetadata: ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.ResourceMetadata?

            public var scope: String?

            public var stage: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.remediationMetadata?.validate()
                try self.resourceMetadata?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.recommendationLevel != nil {
                    map["RecommendationLevel"] = self.recommendationLevel!
                }
                if self.remediationMetadata != nil {
                    map["RemediationMetadata"] = self.remediationMetadata?.toMap()
                }
                if self.resourceMetadata != nil {
                    map["ResourceMetadata"] = self.resourceMetadata?.toMap()
                }
                if self.scope != nil {
                    map["Scope"] = self.scope!
                }
                if self.stage != nil {
                    map["Stage"] = self.stage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Category") {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("RecommendationLevel") {
                    self.recommendationLevel = dict["RecommendationLevel"] as! String
                }
                if dict.keys.contains("RemediationMetadata") {
                    var model = ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata()
                    model.fromMap(dict["RemediationMetadata"] as! [String: Any])
                    self.remediationMetadata = model
                }
                if dict.keys.contains("ResourceMetadata") {
                    var model = ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.ResourceMetadata()
                    model.fromMap(dict["ResourceMetadata"] as! [String: Any])
                    self.resourceMetadata = model
                }
                if dict.keys.contains("Scope") {
                    self.scope = dict["Scope"] as! String
                }
                if dict.keys.contains("Stage") {
                    self.stage = dict["Stage"] as! String
                }
            }
        }
        public var metadata: [ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata]?

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
            if self.metadata != nil {
                var tmp : [Any] = []
                for k in self.metadata! {
                    tmp.append(k.toMap())
                }
                map["Metadata"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Metadata") {
                var tmp : [ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata] = []
                for v in dict["Metadata"] as! [Any] {
                    var model = ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.metadata = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var evaluationMetadata: [ListEvaluationMetadataResponseBody.EvaluationMetadata]?

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
        if self.evaluationMetadata != nil {
            var tmp : [Any] = []
            for k in self.evaluationMetadata! {
                tmp.append(k.toMap())
            }
            map["EvaluationMetadata"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EvaluationMetadata") {
            var tmp : [ListEvaluationMetadataResponseBody.EvaluationMetadata] = []
            for v in dict["EvaluationMetadata"] as! [Any] {
                var model = ListEvaluationMetadataResponseBody.EvaluationMetadata()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.evaluationMetadata = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListEvaluationMetadataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEvaluationMetadataResponseBody?

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
            var model = ListEvaluationMetadataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEvaluationMetricDetailsRequest : Tea.TeaModel {
    public var accountId: Int64?

    public var id: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
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
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
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

public class ListEvaluationMetricDetailsResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public class ResourceProperties : Tea.TeaModel {
            public var propertyName: String?

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
                if self.propertyName != nil {
                    map["PropertyName"] = self.propertyName!
                }
                if self.propertyValue != nil {
                    map["PropertyValue"] = self.propertyValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PropertyName") {
                    self.propertyName = dict["PropertyName"] as! String
                }
                if dict.keys.contains("PropertyValue") {
                    self.propertyValue = dict["PropertyValue"] as! String
                }
            }
        }
        public var regionId: String?

        public var resourceClassification: String?

        public var resourceId: String?

        public var resourceName: String?

        public var resourceOwnerId: Int64?

        public var resourceProperties: [ListEvaluationMetricDetailsResponseBody.Resources.ResourceProperties]?

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
            if self.resourceClassification != nil {
                map["ResourceClassification"] = self.resourceClassification!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceOwnerId != nil {
                map["ResourceOwnerId"] = self.resourceOwnerId!
            }
            if self.resourceProperties != nil {
                var tmp : [Any] = []
                for k in self.resourceProperties! {
                    tmp.append(k.toMap())
                }
                map["ResourceProperties"] = tmp
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceClassification") {
                self.resourceClassification = dict["ResourceClassification"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceName") {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceOwnerId") {
                self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
            }
            if dict.keys.contains("ResourceProperties") {
                var tmp : [ListEvaluationMetricDetailsResponseBody.Resources.ResourceProperties] = []
                for v in dict["ResourceProperties"] as! [Any] {
                    var model = ListEvaluationMetricDetailsResponseBody.Resources.ResourceProperties()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resourceProperties = tmp
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var resources: [ListEvaluationMetricDetailsResponseBody.Resources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") {
            var tmp : [ListEvaluationMetricDetailsResponseBody.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = ListEvaluationMetricDetailsResponseBody.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
        }
    }
}

public class ListEvaluationMetricDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEvaluationMetricDetailsResponseBody?

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
            var model = ListEvaluationMetricDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEvaluationResultsRequest : Tea.TeaModel {
    public var accountId: Int64?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListEvaluationResultsResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class MetricResults : Tea.TeaModel {
            public class ResourcesSummary : Tea.TeaModel {
                public var nonCompliant: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.nonCompliant != nil {
                        map["NonCompliant"] = self.nonCompliant!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("NonCompliant") {
                        self.nonCompliant = dict["NonCompliant"] as! Int32
                    }
                }
            }
            public var evaluationTime: String?

            public var id: String?

            public var resourcesSummary: ListEvaluationResultsResponseBody.Results.MetricResults.ResourcesSummary?

            public var result: Double?

            public var risk: String?

            public var status: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.resourcesSummary?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.evaluationTime != nil {
                    map["EvaluationTime"] = self.evaluationTime!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.resourcesSummary != nil {
                    map["ResourcesSummary"] = self.resourcesSummary?.toMap()
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                if self.risk != nil {
                    map["Risk"] = self.risk!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EvaluationTime") {
                    self.evaluationTime = dict["EvaluationTime"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("ResourcesSummary") {
                    var model = ListEvaluationResultsResponseBody.Results.MetricResults.ResourcesSummary()
                    model.fromMap(dict["ResourcesSummary"] as! [String: Any])
                    self.resourcesSummary = model
                }
                if dict.keys.contains("Result") {
                    self.result = dict["Result"] as! Double
                }
                if dict.keys.contains("Risk") {
                    self.risk = dict["Risk"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var evaluationTime: String?

        public var metricResults: [ListEvaluationResultsResponseBody.Results.MetricResults]?

        public var status: String?

        public var totalScore: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.evaluationTime != nil {
                map["EvaluationTime"] = self.evaluationTime!
            }
            if self.metricResults != nil {
                var tmp : [Any] = []
                for k in self.metricResults! {
                    tmp.append(k.toMap())
                }
                map["MetricResults"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.totalScore != nil {
                map["TotalScore"] = self.totalScore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EvaluationTime") {
                self.evaluationTime = dict["EvaluationTime"] as! String
            }
            if dict.keys.contains("MetricResults") {
                var tmp : [ListEvaluationResultsResponseBody.Results.MetricResults] = []
                for v in dict["MetricResults"] as! [Any] {
                    var model = ListEvaluationResultsResponseBody.Results.MetricResults()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.metricResults = tmp
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TotalScore") {
                self.totalScore = dict["TotalScore"] as! Double
            }
        }
    }
    public var accountId: Int64?

    public var requestId: String?

    public var results: ListEvaluationResultsResponseBody.Results?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.results?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            map["Results"] = self.results?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") {
            var model = ListEvaluationResultsResponseBody.Results()
            model.fromMap(dict["Results"] as! [String: Any])
            self.results = model
        }
    }
}

public class ListEvaluationResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEvaluationResultsResponseBody?

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
            var model = ListEvaluationResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEvaluationScoreHistoryRequest : Tea.TeaModel {
    public var endDate: String?

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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class ListEvaluationScoreHistoryResponseBody : Tea.TeaModel {
    public class ScoreHistory : Tea.TeaModel {
        public class TotalScoreHistory : Tea.TeaModel {
            public var evaluationTime: String?

            public var score: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.evaluationTime != nil {
                    map["EvaluationTime"] = self.evaluationTime!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EvaluationTime") {
                    self.evaluationTime = dict["EvaluationTime"] as! String
                }
                if dict.keys.contains("Score") {
                    self.score = dict["Score"] as! Double
                }
            }
        }
        public var totalScoreHistory: [ListEvaluationScoreHistoryResponseBody.ScoreHistory.TotalScoreHistory]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.totalScoreHistory != nil {
                var tmp : [Any] = []
                for k in self.totalScoreHistory! {
                    tmp.append(k.toMap())
                }
                map["TotalScoreHistory"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TotalScoreHistory") {
                var tmp : [ListEvaluationScoreHistoryResponseBody.ScoreHistory.TotalScoreHistory] = []
                for v in dict["TotalScoreHistory"] as! [Any] {
                    var model = ListEvaluationScoreHistoryResponseBody.ScoreHistory.TotalScoreHistory()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.totalScoreHistory = tmp
            }
        }
    }
    public var requestId: String?

    public var scoreHistory: ListEvaluationScoreHistoryResponseBody.ScoreHistory?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.scoreHistory?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scoreHistory != nil {
            map["ScoreHistory"] = self.scoreHistory?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScoreHistory") {
            var model = ListEvaluationScoreHistoryResponseBody.ScoreHistory()
            model.fromMap(dict["ScoreHistory"] as! [String: Any])
            self.scoreHistory = model
        }
    }
}

public class ListEvaluationScoreHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEvaluationScoreHistoryResponseBody?

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
            var model = ListEvaluationScoreHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunEvaluationRequest : Tea.TeaModel {
    public var accountId: Int64?

    public var regionId: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Scope") {
            self.scope = dict["Scope"] as! String
        }
    }
}

public class RunEvaluationResponseBody : Tea.TeaModel {
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

public class RunEvaluationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunEvaluationResponseBody?

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
            var model = RunEvaluationResponseBody()
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
