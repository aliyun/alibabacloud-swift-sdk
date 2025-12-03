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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountUid"] as? Int64 {
                self.accountUid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Skip"] as? Bool {
                self.skip = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accounts"] as? [Any?] {
            var tmp : [BatchEnrollAccountsRequest.Accounts] = []
            for v in value {
                if v != nil {
                    var model = BatchEnrollAccountsRequest.Accounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.accounts = tmp
        }
        if let value = dict["BaselineId"] as? String {
            self.baselineId = value
        }
        if let value = dict["BaselineItems"] as? [Any?] {
            var tmp : [BatchEnrollAccountsRequest.BaselineItems] = []
            for v in value {
                if v != nil {
                    var model = BatchEnrollAccountsRequest.BaselineItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.baselineItems = tmp
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BatchEnrollAccountsResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BaselineItems"] as? [Any?] {
            var tmp : [CreateAccountFactoryBaselineRequest.BaselineItems] = []
            for v in value {
                if v != nil {
                    var model = CreateAccountFactoryBaselineRequest.BaselineItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.baselineItems = tmp
        }
        if let value = dict["BaselineName"] as? String {
            self.baselineName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BaselineId"] as? String {
            self.baselineId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAccountFactoryBaselineResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BaselineId"] as? String {
            self.baselineId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAccountFactoryBaselineResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Skip"] as? Bool {
                self.skip = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public class Tag : Tea.TeaModel {
        public var key: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public var tag: [EnrollAccountRequest.Tag]?

    public override init() {
        super.init()
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
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountNamePrefix"] as? String {
            self.accountNamePrefix = value
        }
        if let value = dict["AccountUid"] as? Int64 {
            self.accountUid = value
        }
        if let value = dict["BaselineId"] as? String {
            self.baselineId = value
        }
        if let value = dict["BaselineItems"] as? [Any?] {
            var tmp : [EnrollAccountRequest.BaselineItems] = []
            for v in value {
                if v != nil {
                    var model = EnrollAccountRequest.BaselineItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.baselineItems = tmp
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["FolderId"] as? String {
            self.folderId = value
        }
        if let value = dict["PayerAccountUid"] as? Int64 {
            self.payerAccountUid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResellAccountType"] as? String {
            self.resellAccountType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [EnrollAccountRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = EnrollAccountRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class EnrollAccountShrinkRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Skip"] as? Bool {
                self.skip = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var accountNamePrefix: String?

    public var accountUid: Int64?

    public var baselineId: String?

    public var baselineItems: [EnrollAccountShrinkRequest.BaselineItems]?

    public var displayName: String?

    public var folderId: String?

    public var payerAccountUid: Int64?

    public var regionId: String?

    public var resellAccountType: String?

    public var tagShrink: String?

    public override init() {
        super.init()
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
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountNamePrefix"] as? String {
            self.accountNamePrefix = value
        }
        if let value = dict["AccountUid"] as? Int64 {
            self.accountUid = value
        }
        if let value = dict["BaselineId"] as? String {
            self.baselineId = value
        }
        if let value = dict["BaselineItems"] as? [Any?] {
            var tmp : [EnrollAccountShrinkRequest.BaselineItems] = []
            for v in value {
                if v != nil {
                    var model = EnrollAccountShrinkRequest.BaselineItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.baselineItems = tmp
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["FolderId"] as? String {
            self.folderId = value
        }
        if let value = dict["PayerAccountUid"] as? Int64 {
            self.payerAccountUid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResellAccountType"] as? String {
            self.resellAccountType = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountUid"] as? Int64 {
            self.accountUid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnrollAccountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BaselineId"] as? String {
            self.baselineId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BaselineId"] as? String {
            self.baselineId = value
        }
        if let value = dict["BaselineItems"] as? [Any?] {
            var tmp : [GetAccountFactoryBaselineResponseBody.BaselineItems] = []
            for v in value {
                if v != nil {
                    var model = GetAccountFactoryBaselineResponseBody.BaselineItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.baselineItems = tmp
        }
        if let value = dict["BaselineName"] as? String {
            self.baselineName = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccountFactoryBaselineResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountUid"] as? Int64 {
            self.accountUid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Skip"] as? Bool {
                self.skip = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Recommend"] as? String {
                self.recommend = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Config"] as? String {
                    self.config = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Skip"] as? Bool {
                    self.skip = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public class Tag : Tea.TeaModel {
            public var key: String?

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
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var accountNamePrefix: String?

        public var accountUid: Int64?

        public var baselineItems: [GetEnrolledAccountResponseBody.Inputs.BaselineItems]?

        public var displayName: String?

        public var folderId: String?

        public var payerAccountUid: Int64?

        public var tag: [GetEnrolledAccountResponseBody.Inputs.Tag]?

        public override init() {
            super.init()
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
            if self.tag != nil {
                var tmp : [Any] = []
                for k in self.tag! {
                    tmp.append(k.toMap())
                }
                map["Tag"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountNamePrefix"] as? String {
                self.accountNamePrefix = value
            }
            if let value = dict["AccountUid"] as? Int64 {
                self.accountUid = value
            }
            if let value = dict["BaselineItems"] as? [Any?] {
                var tmp : [GetEnrolledAccountResponseBody.Inputs.BaselineItems] = []
                for v in value {
                    if v != nil {
                        var model = GetEnrolledAccountResponseBody.Inputs.BaselineItems()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.baselineItems = tmp
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["FolderId"] as? String {
                self.folderId = value
            }
            if let value = dict["PayerAccountUid"] as? Int64 {
                self.payerAccountUid = value
            }
            if let value = dict["Tag"] as? [Any?] {
                var tmp : [GetEnrolledAccountResponseBody.Inputs.Tag] = []
                for v in value {
                    if v != nil {
                        var model = GetEnrolledAccountResponseBody.Inputs.Tag()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tag = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountUid"] as? Int64 {
            self.accountUid = value
        }
        if let value = dict["BaselineId"] as? String {
            self.baselineId = value
        }
        if let value = dict["BaselineItems"] as? [Any?] {
            var tmp : [GetEnrolledAccountResponseBody.BaselineItems] = []
            for v in value {
                if v != nil {
                    var model = GetEnrolledAccountResponseBody.BaselineItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.baselineItems = tmp
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["ErrorInfo"] as? [String: Any?] {
            var model = GetEnrolledAccountResponseBody.ErrorInfo()
            model.fromMap(value)
            self.errorInfo = model
        }
        if let value = dict["FolderId"] as? String {
            self.folderId = value
        }
        if let value = dict["Initialized"] as? Bool {
            self.initialized = value
        }
        if let value = dict["Inputs"] as? [String: Any?] {
            var model = GetEnrolledAccountResponseBody.Inputs()
            model.fromMap(value)
            self.inputs = model
        }
        if let value = dict["MasterAccountUid"] as? Int64 {
            self.masterAccountUid = value
        }
        if let value = dict["PayerAccountUid"] as? Int64 {
            self.payerAccountUid = value
        }
        if let value = dict["Progress"] as? [Any?] {
            var tmp : [GetEnrolledAccountResponseBody.Progress] = []
            for v in value {
                if v != nil {
                    var model = GetEnrolledAccountResponseBody.Progress()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.progress = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetEnrolledAccountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Names"] as? [String] {
            self.names = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Versions"] as? [String] {
            self.versions = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DependsOn"] as? [Any?] {
                var tmp : [ListAccountFactoryBaselineItemsResponseBody.BaselineItems.DependsOn] = []
                for v in value {
                    if v != nil {
                        var model = ListAccountFactoryBaselineItemsResponseBody.BaselineItems.DependsOn()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dependsOn = tmp
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BaselineItems"] as? [Any?] {
            var tmp : [ListAccountFactoryBaselineItemsResponseBody.BaselineItems] = []
            for v in value {
                if v != nil {
                    var model = ListAccountFactoryBaselineItemsResponseBody.BaselineItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.baselineItems = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAccountFactoryBaselineItemsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BaselineId"] as? String {
                self.baselineId = value
            }
            if let value = dict["BaselineName"] as? String {
                self.baselineName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Baselines"] as? [Any?] {
            var tmp : [ListAccountFactoryBaselinesResponseBody.Baselines] = []
            for v in value {
                if v != nil {
                    var model = ListAccountFactoryBaselinesResponseBody.Baselines()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.baselines = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAccountFactoryBaselinesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountUid"] as? Int64 {
                self.accountUid = value
            }
            if let value = dict["BaselineId"] as? String {
                self.baselineId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["FolderId"] as? String {
                self.folderId = value
            }
            if let value = dict["PayerAccountUid"] as? Int64 {
                self.payerAccountUid = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnrolledAccounts"] as? [Any?] {
            var tmp : [ListEnrolledAccountsResponseBody.EnrolledAccounts] = []
            for v in value {
                if v != nil {
                    var model = ListEnrolledAccountsResponseBody.EnrolledAccounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.enrolledAccounts = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEnrolledAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEvaluationMetadataRequest : Tea.TeaModel {
    public var language: String?

    public var lensCode: String?

    public var regionId: String?

    public var topicCode: String?

    public override init() {
        super.init()
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
        if self.lensCode != nil {
            map["LensCode"] = self.lensCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.topicCode != nil {
            map["TopicCode"] = self.topicCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["LensCode"] as? String {
            self.lensCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TopicCode"] as? String {
            self.topicCode = value
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

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["ButtonName"] as? String {
                                    self.buttonName = value
                                }
                                if let value = dict["ButtonRef"] as? String {
                                    self.buttonRef = value
                                }
                                if let value = dict["Content"] as? String {
                                    self.content = value
                                }
                                if let value = dict["Title"] as? String {
                                    self.title = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Classification"] as? String {
                                self.classification = value
                            }
                            if let value = dict["CostDescription"] as? String {
                                self.costDescription = value
                            }
                            if let value = dict["Description"] as? String {
                                self.description_ = value
                            }
                            if let value = dict["Guidance"] as? [Any?] {
                                var tmp : [ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata.Remediation.Actions.Guidance] = []
                                for v in value {
                                    if v != nil {
                                        var model = ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata.Remediation.Actions.Guidance()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
                                }
                                self.guidance = tmp
                            }
                            if let value = dict["Notice"] as? String {
                                self.notice = value
                            }
                            if let value = dict["Suggestion"] as? String {
                                self.suggestion = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Actions"] as? [Any?] {
                            var tmp : [ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata.Remediation.Actions] = []
                            for v in value {
                                if v != nil {
                                    var model = ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata.Remediation.Actions()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.actions = tmp
                        }
                        if let value = dict["RemediationType"] as? String {
                            self.remediationType = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Remediation"] as? [Any?] {
                        var tmp : [ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata.Remediation] = []
                        for v in value {
                            if v != nil {
                                var model = ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata.Remediation()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DisplayName"] as? String {
                            self.displayName = value
                        }
                        if let value = dict["PropertyName"] as? String {
                            self.propertyName = value
                        }
                        if let value = dict["PropertyType"] as? String {
                            self.propertyType = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ResourcePropertyMetadata"] as? [Any?] {
                        var tmp : [ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.ResourceMetadata.ResourcePropertyMetadata] = []
                        for v in value {
                            if v != nil {
                                var model = ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.ResourceMetadata.ResourcePropertyMetadata()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

            public var topicCode: String?

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
                if self.topicCode != nil {
                    map["TopicCode"] = self.topicCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["RecommendationLevel"] as? String {
                    self.recommendationLevel = value
                }
                if let value = dict["RemediationMetadata"] as? [String: Any?] {
                    var model = ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.RemediationMetadata()
                    model.fromMap(value)
                    self.remediationMetadata = model
                }
                if let value = dict["ResourceMetadata"] as? [String: Any?] {
                    var model = ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata.ResourceMetadata()
                    model.fromMap(value)
                    self.resourceMetadata = model
                }
                if let value = dict["Scope"] as? String {
                    self.scope = value
                }
                if let value = dict["Stage"] as? String {
                    self.stage = value
                }
                if let value = dict["TopicCode"] as? String {
                    self.topicCode = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Metadata"] as? [Any?] {
                var tmp : [ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata] = []
                for v in value {
                    if v != nil {
                        var model = ListEvaluationMetadataResponseBody.EvaluationMetadata.Metadata()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.metadata = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EvaluationMetadata"] as? [Any?] {
            var tmp : [ListEvaluationMetadataResponseBody.EvaluationMetadata] = []
            for v in value {
                if v != nil {
                    var model = ListEvaluationMetadataResponseBody.EvaluationMetadata()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.evaluationMetadata = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEvaluationMetadataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEvaluationMetricDetailsRequest : Tea.TeaModel {
    public var accountId: Int64?

    public var date: String?

    public var id: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var scope: String?

    public var snapshotId: String?

    public override init() {
        super.init()
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
        if self.date != nil {
            map["Date"] = self.date!
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
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? Int64 {
            self.accountId = value
        }
        if let value = dict["Date"] as? String {
            self.date = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PropertyName"] as? String {
                    self.propertyName = value
                }
                if let value = dict["PropertyValue"] as? String {
                    self.propertyValue = value
                }
            }
        }
        public var complianceType: String?

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
            if self.complianceType != nil {
                map["ComplianceType"] = self.complianceType!
            }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ComplianceType"] as? String {
                self.complianceType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceClassification"] as? String {
                self.resourceClassification = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["ResourceOwnerId"] as? Int64 {
                self.resourceOwnerId = value
            }
            if let value = dict["ResourceProperties"] as? [Any?] {
                var tmp : [ListEvaluationMetricDetailsResponseBody.Resources.ResourceProperties] = []
                for v in value {
                    if v != nil {
                        var model = ListEvaluationMetricDetailsResponseBody.Resources.ResourceProperties()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.resourceProperties = tmp
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var date: String?

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
        if self.date != nil {
            map["Date"] = self.date!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Date"] as? String {
            self.date = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [ListEvaluationMetricDetailsResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = ListEvaluationMetricDetailsResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEvaluationMetricDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEvaluationResultsRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public var key: String?

        public var values: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
    public var accountId: Int64?

    public var filters: [ListEvaluationResultsRequest.Filters]?

    public var lensCode: String?

    public var regionId: String?

    public var scope: String?

    public var snapshotId: String?

    public var topicCode: String?

    public override init() {
        super.init()
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
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["Filters"] = tmp
        }
        if self.lensCode != nil {
            map["LensCode"] = self.lensCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        if self.topicCode != nil {
            map["TopicCode"] = self.topicCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? Int64 {
            self.accountId = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [ListEvaluationResultsRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = ListEvaluationResultsRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["LensCode"] as? String {
            self.lensCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
        if let value = dict["TopicCode"] as? String {
            self.topicCode = value
        }
    }
}

public class ListEvaluationResultsResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class MetricResults : Tea.TeaModel {
            public class AccountSummary : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["NonCompliant"] as? Int32 {
                        self.nonCompliant = value
                    }
                }
            }
            public class AvailableRemediation : Tea.TeaModel {
                public var remediationTemplateId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.remediationTemplateId != nil {
                        map["RemediationTemplateId"] = self.remediationTemplateId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RemediationTemplateId"] as? String {
                        self.remediationTemplateId = value
                    }
                }
            }
            public class ErrorInfo : Tea.TeaModel {
                public var code: String?

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
                    if self.code != nil {
                        map["Code"] = self.code!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
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
                }
            }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["NonCompliant"] as? Int32 {
                        self.nonCompliant = value
                    }
                }
            }
            public var accountSummary: ListEvaluationResultsResponseBody.Results.MetricResults.AccountSummary?

            public var availableRemediation: [ListEvaluationResultsResponseBody.Results.MetricResults.AvailableRemediation]?

            public var errorInfo: ListEvaluationResultsResponseBody.Results.MetricResults.ErrorInfo?

            public var evaluationTime: String?

            public var id: String?

            public var potentialScoreIncrease: Double?

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
                try self.accountSummary?.validate()
                try self.errorInfo?.validate()
                try self.resourcesSummary?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountSummary != nil {
                    map["AccountSummary"] = self.accountSummary?.toMap()
                }
                if self.availableRemediation != nil {
                    var tmp : [Any] = []
                    for k in self.availableRemediation! {
                        tmp.append(k.toMap())
                    }
                    map["AvailableRemediation"] = tmp
                }
                if self.errorInfo != nil {
                    map["ErrorInfo"] = self.errorInfo?.toMap()
                }
                if self.evaluationTime != nil {
                    map["EvaluationTime"] = self.evaluationTime!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.potentialScoreIncrease != nil {
                    map["PotentialScoreIncrease"] = self.potentialScoreIncrease!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountSummary"] as? [String: Any?] {
                    var model = ListEvaluationResultsResponseBody.Results.MetricResults.AccountSummary()
                    model.fromMap(value)
                    self.accountSummary = model
                }
                if let value = dict["AvailableRemediation"] as? [Any?] {
                    var tmp : [ListEvaluationResultsResponseBody.Results.MetricResults.AvailableRemediation] = []
                    for v in value {
                        if v != nil {
                            var model = ListEvaluationResultsResponseBody.Results.MetricResults.AvailableRemediation()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.availableRemediation = tmp
                }
                if let value = dict["ErrorInfo"] as? [String: Any?] {
                    var model = ListEvaluationResultsResponseBody.Results.MetricResults.ErrorInfo()
                    model.fromMap(value)
                    self.errorInfo = model
                }
                if let value = dict["EvaluationTime"] as? String {
                    self.evaluationTime = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["PotentialScoreIncrease"] as? Double {
                    self.potentialScoreIncrease = value
                }
                if let value = dict["ResourcesSummary"] as? [String: Any?] {
                    var model = ListEvaluationResultsResponseBody.Results.MetricResults.ResourcesSummary()
                    model.fromMap(value)
                    self.resourcesSummary = model
                }
                if let value = dict["Result"] as? Double {
                    self.result = value
                }
                if let value = dict["Risk"] as? String {
                    self.risk = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EvaluationTime"] as? String {
                self.evaluationTime = value
            }
            if let value = dict["MetricResults"] as? [Any?] {
                var tmp : [ListEvaluationResultsResponseBody.Results.MetricResults] = []
                for v in value {
                    if v != nil {
                        var model = ListEvaluationResultsResponseBody.Results.MetricResults()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.metricResults = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TotalScore"] as? Double {
                self.totalScore = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? Int64 {
            self.accountId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [String: Any?] {
            var model = ListEvaluationResultsResponseBody.Results()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEvaluationResultsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEvaluationScoreHistoryRequest : Tea.TeaModel {
    public var accountId: Int64?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? Int64 {
            self.accountId = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EvaluationTime"] as? String {
                    self.evaluationTime = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TotalScoreHistory"] as? [Any?] {
                var tmp : [ListEvaluationScoreHistoryResponseBody.ScoreHistory.TotalScoreHistory] = []
                for v in value {
                    if v != nil {
                        var model = ListEvaluationScoreHistoryResponseBody.ScoreHistory.TotalScoreHistory()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScoreHistory"] as? [String: Any?] {
            var model = ListEvaluationScoreHistoryResponseBody.ScoreHistory()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEvaluationScoreHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunEvaluationRequest : Tea.TeaModel {
    public var accountId: Int64?

    public var metricIds: [String]?

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
        if self.metricIds != nil {
            map["MetricIds"] = self.metricIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? Int64 {
            self.accountId = value
        }
        if let value = dict["MetricIds"] as? [String] {
            self.metricIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
    }
}

public class RunEvaluationShrinkRequest : Tea.TeaModel {
    public var accountId: Int64?

    public var metricIdsShrink: String?

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
        if self.metricIdsShrink != nil {
            map["MetricIds"] = self.metricIdsShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? Int64 {
            self.accountId = value
        }
        if let value = dict["MetricIds"] as? String {
            self.metricIdsShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunEvaluationResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BaselineId"] as? String {
            self.baselineId = value
        }
        if let value = dict["BaselineItems"] as? [Any?] {
            var tmp : [UpdateAccountFactoryBaselineRequest.BaselineItems] = []
            for v in value {
                if v != nil {
                    var model = UpdateAccountFactoryBaselineRequest.BaselineItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.baselineItems = tmp
        }
        if let value = dict["BaselineName"] as? String {
            self.baselineName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateAccountFactoryBaselineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
