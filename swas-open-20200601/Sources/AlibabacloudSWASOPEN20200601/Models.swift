import Foundation
import Tea
import TeaUtils
import AlibabacloudGatewayPOP
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddCustomImageShareAccountRequest : Tea.TeaModel {
    public var account: [Int64]?

    public var clientToken: String?

    public var imageId: String?

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
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? [Int64] {
            self.account = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class AddCustomImageShareAccountResponseBody : Tea.TeaModel {
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

public class AddCustomImageShareAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddCustomImageShareAccountResponseBody?

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
            var model = AddCustomImageShareAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AllocatePublicConnectionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var databaseInstanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.databaseInstanceId != nil {
            map["DatabaseInstanceId"] = self.databaseInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DatabaseInstanceId"] as? String {
            self.databaseInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class AllocatePublicConnectionResponseBody : Tea.TeaModel {
    public var publicConnection: String?

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
        if self.publicConnection != nil {
            map["PublicConnection"] = self.publicConnection!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PublicConnection"] as? String {
            self.publicConnection = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AllocatePublicConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllocatePublicConnectionResponseBody?

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
            var model = AllocatePublicConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ApplyFirewallTemplateRequest : Tea.TeaModel {
    public var clientToken: String?

    public var firewallTemplateId: String?

    public var instanceIds: [String]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.firewallTemplateId != nil {
            map["FirewallTemplateId"] = self.firewallTemplateId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["FirewallTemplateId"] as? String {
            self.firewallTemplateId = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ApplyFirewallTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class ApplyFirewallTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyFirewallTemplateResponseBody?

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
            var model = ApplyFirewallTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AttachKeyPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceIds: [String]?

    public var keyPairName: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class AttachKeyPairResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var instanceId: String?

        public var message: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.message != nil {
                map["Message"] = self.message!
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
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? String {
                self.success = value
            }
        }
    }
    public var failCount: Int32?

    public var requestId: String?

    public var results: [AttachKeyPairResponseBody.Results]?

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
        if self.failCount != nil {
            map["FailCount"] = self.failCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailCount"] as? Int32 {
            self.failCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [AttachKeyPairResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = AttachKeyPairResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.results = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class AttachKeyPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachKeyPairResponseBody?

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
            var model = AttachKeyPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCommandRequest : Tea.TeaModel {
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
    public var commandContent: String?

    public var description_: String?

    public var enableParameter: Bool?

    public var name: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [CreateCommandRequest.Tag]?

    public var timeout: Int64?

    public var type: String?

    public var workingDir: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commandContent != nil {
            map["CommandContent"] = self.commandContent!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enableParameter != nil {
            map["EnableParameter"] = self.enableParameter!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.workingDir != nil {
            map["WorkingDir"] = self.workingDir!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandContent"] as? String {
            self.commandContent = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EnableParameter"] as? Bool {
            self.enableParameter = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateCommandRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateCommandRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["Timeout"] as? Int64 {
            self.timeout = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["WorkingDir"] as? String {
            self.workingDir = value
        }
    }
}

public class CreateCommandResponseBody : Tea.TeaModel {
    public var commandId: String?

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
        if self.commandId != nil {
            map["CommandId"] = self.commandId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandId"] as? String {
            self.commandId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCommandResponseBody?

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
            var model = CreateCommandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCustomImageRequest : Tea.TeaModel {
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
    public var clientToken: String?

    public var dataSnapshotId: String?

    public var description_: String?

    public var imageName: String?

    public var instanceId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var systemSnapshotId: String?

    public var tag: [CreateCustomImageRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dataSnapshotId != nil {
            map["DataSnapshotId"] = self.dataSnapshotId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.systemSnapshotId != nil {
            map["SystemSnapshotId"] = self.systemSnapshotId!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataSnapshotId"] as? String {
            self.dataSnapshotId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ImageName"] as? String {
            self.imageName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SystemSnapshotId"] as? String {
            self.systemSnapshotId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateCustomImageRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateCustomImageRequest.Tag()
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

public class CreateCustomImageResponseBody : Tea.TeaModel {
    public var imageId: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateCustomImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomImageResponseBody?

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
            var model = CreateCustomImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFirewallRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var port: String?

    public var regionId: String?

    public var remark: String?

    public var ruleProtocol: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.ruleProtocol != nil {
            map["RuleProtocol"] = self.ruleProtocol!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["RuleProtocol"] as? String {
            self.ruleProtocol = value
        }
    }
}

public class CreateFirewallRuleResponseBody : Tea.TeaModel {
    public var firewallId: String?

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
        if self.firewallId != nil {
            map["FirewallId"] = self.firewallId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallId"] as? String {
            self.firewallId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateFirewallRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFirewallRuleResponseBody?

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
            var model = CreateFirewallRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFirewallRulesRequest : Tea.TeaModel {
    public class FirewallRules : Tea.TeaModel {
        public var port: String?

        public var remark: String?

        public var ruleProtocol: String?

        public var sourceCidrIp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.ruleProtocol != nil {
                map["RuleProtocol"] = self.ruleProtocol!
            }
            if self.sourceCidrIp != nil {
                map["SourceCidrIp"] = self.sourceCidrIp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["RuleProtocol"] as? String {
                self.ruleProtocol = value
            }
            if let value = dict["SourceCidrIp"] as? String {
                self.sourceCidrIp = value
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
    public var clientToken: String?

    public var firewallRules: [CreateFirewallRulesRequest.FirewallRules]?

    public var instanceId: String?

    public var regionId: String?

    public var tag: [CreateFirewallRulesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.firewallRules != nil {
            var tmp : [Any] = []
            for k in self.firewallRules! {
                tmp.append(k.toMap())
            }
            map["FirewallRules"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["FirewallRules"] as? [Any?] {
            var tmp : [CreateFirewallRulesRequest.FirewallRules] = []
            for v in value {
                if v != nil {
                    var model = CreateFirewallRulesRequest.FirewallRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.firewallRules = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateFirewallRulesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateFirewallRulesRequest.Tag()
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

public class CreateFirewallRulesShrinkRequest : Tea.TeaModel {
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
    public var clientToken: String?

    public var firewallRulesShrink: String?

    public var instanceId: String?

    public var regionId: String?

    public var tag: [CreateFirewallRulesShrinkRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.firewallRulesShrink != nil {
            map["FirewallRules"] = self.firewallRulesShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["FirewallRules"] as? String {
            self.firewallRulesShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateFirewallRulesShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateFirewallRulesShrinkRequest.Tag()
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

public class CreateFirewallRulesResponseBody : Tea.TeaModel {
    public var firewallRuleIds: [String]?

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
        if self.firewallRuleIds != nil {
            map["FirewallRuleIds"] = self.firewallRuleIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallRuleIds"] as? [String] {
            self.firewallRuleIds = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateFirewallRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFirewallRulesResponseBody?

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
            var model = CreateFirewallRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFirewallTemplateRequest : Tea.TeaModel {
    public class FirewallRule : Tea.TeaModel {
        public var port: String?

        public var remark: String?

        public var ruleProtocol: String?

        public var sourceCidrIp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.ruleProtocol != nil {
                map["RuleProtocol"] = self.ruleProtocol!
            }
            if self.sourceCidrIp != nil {
                map["SourceCidrIp"] = self.sourceCidrIp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["RuleProtocol"] as? String {
                self.ruleProtocol = value
            }
            if let value = dict["SourceCidrIp"] as? String {
                self.sourceCidrIp = value
            }
        }
    }
    public var description_: String?

    public var firewallRule: [CreateFirewallTemplateRequest.FirewallRule]?

    public var name: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.firewallRule != nil {
            var tmp : [Any] = []
            for k in self.firewallRule! {
                tmp.append(k.toMap())
            }
            map["FirewallRule"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FirewallRule"] as? [Any?] {
            var tmp : [CreateFirewallTemplateRequest.FirewallRule] = []
            for v in value {
                if v != nil {
                    var model = CreateFirewallTemplateRequest.FirewallRule()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.firewallRule = tmp
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateFirewallTemplateResponseBody : Tea.TeaModel {
    public var firewallTemplateId: String?

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
        if self.firewallTemplateId != nil {
            map["FirewallTemplateId"] = self.firewallTemplateId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallTemplateId"] as? String {
            self.firewallTemplateId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateFirewallTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFirewallTemplateResponseBody?

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
            var model = CreateFirewallTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFirewallTemplateRulesRequest : Tea.TeaModel {
    public class FirewallRule : Tea.TeaModel {
        public var port: String?

        public var remark: String?

        public var ruleProtocol: String?

        public var sourceCidrIp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.ruleProtocol != nil {
                map["RuleProtocol"] = self.ruleProtocol!
            }
            if self.sourceCidrIp != nil {
                map["SourceCidrIp"] = self.sourceCidrIp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["RuleProtocol"] as? String {
                self.ruleProtocol = value
            }
            if let value = dict["SourceCidrIp"] as? String {
                self.sourceCidrIp = value
            }
        }
    }
    public var firewallRule: [CreateFirewallTemplateRulesRequest.FirewallRule]?

    public var firewallTemplateId: String?

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
        if self.firewallRule != nil {
            var tmp : [Any] = []
            for k in self.firewallRule! {
                tmp.append(k.toMap())
            }
            map["FirewallRule"] = tmp
        }
        if self.firewallTemplateId != nil {
            map["FirewallTemplateId"] = self.firewallTemplateId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallRule"] as? [Any?] {
            var tmp : [CreateFirewallTemplateRulesRequest.FirewallRule] = []
            for v in value {
                if v != nil {
                    var model = CreateFirewallTemplateRulesRequest.FirewallRule()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.firewallRule = tmp
        }
        if let value = dict["FirewallTemplateId"] as? String {
            self.firewallTemplateId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateFirewallTemplateRulesResponseBody : Tea.TeaModel {
    public class FirewallTemplateRules : Tea.TeaModel {
        public var firewallTemplateRuleId: String?

        public var port: String?

        public var remark: String?

        public var ruleProtocol: String?

        public var sourceCidrIp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.firewallTemplateRuleId != nil {
                map["FirewallTemplateRuleId"] = self.firewallTemplateRuleId!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.ruleProtocol != nil {
                map["RuleProtocol"] = self.ruleProtocol!
            }
            if self.sourceCidrIp != nil {
                map["SourceCidrIp"] = self.sourceCidrIp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FirewallTemplateRuleId"] as? String {
                self.firewallTemplateRuleId = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["RuleProtocol"] as? String {
                self.ruleProtocol = value
            }
            if let value = dict["SourceCidrIp"] as? String {
                self.sourceCidrIp = value
            }
        }
    }
    public var firewallTemplateRules: [CreateFirewallTemplateRulesResponseBody.FirewallTemplateRules]?

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
        if self.firewallTemplateRules != nil {
            var tmp : [Any] = []
            for k in self.firewallTemplateRules! {
                tmp.append(k.toMap())
            }
            map["FirewallTemplateRules"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallTemplateRules"] as? [Any?] {
            var tmp : [CreateFirewallTemplateRulesResponseBody.FirewallTemplateRules] = []
            for v in value {
                if v != nil {
                    var model = CreateFirewallTemplateRulesResponseBody.FirewallTemplateRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.firewallTemplateRules = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateFirewallTemplateRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFirewallTemplateRulesResponseBody?

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
            var model = CreateFirewallTemplateRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceKeyPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var keyPairName: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateInstanceKeyPairResponseBody : Tea.TeaModel {
    public var fingerprint: String?

    public var keyPairName: String?

    public var privateKey: String?

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
        if self.fingerprint != nil {
            map["Fingerprint"] = self.fingerprint!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Fingerprint"] as? String {
            self.fingerprint = value
        }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
        if let value = dict["PrivateKey"] as? String {
            self.privateKey = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateInstanceKeyPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceKeyPairResponseBody?

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
            var model = CreateInstanceKeyPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstancesRequest : Tea.TeaModel {
    public var amount: Int32?

    public var autoRenew: Bool?

    public var autoRenewPeriod: Int32?

    public var chargeType: String?

    public var clientToken: String?

    public var dataDiskSize: Int64?

    public var imageId: String?

    public var period: Int32?

    public var planId: String?

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
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dataDiskSize != nil {
            map["DataDiskSize"] = self.dataDiskSize!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Amount"] as? Int32 {
            self.amount = value
        }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["AutoRenewPeriod"] as? Int32 {
            self.autoRenewPeriod = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataDiskSize"] as? Int64 {
            self.dataDiskSize = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateInstancesResponseBody : Tea.TeaModel {
    public var instanceIds: [String]?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstancesResponseBody?

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
            var model = CreateInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateKeyPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var keyPairName: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateKeyPairResponseBody : Tea.TeaModel {
    public var keyPairName: String?

    public var privateKeyBody: String?

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
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.privateKeyBody != nil {
            map["PrivateKeyBody"] = self.privateKeyBody!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
        if let value = dict["PrivateKeyBody"] as? String {
            self.privateKeyBody = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateKeyPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKeyPairResponseBody?

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
            var model = CreateKeyPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOrderRequest : Tea.TeaModel {
    public class BusinessInfo : Tea.TeaModel {
        public class PromotionOptions : Tea.TeaModel {
            public class PromotionFilter : Tea.TeaModel {
                public var useCoupon: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.useCoupon != nil {
                        map["UseCoupon"] = self.useCoupon!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["UseCoupon"] as? Bool {
                        self.useCoupon = value
                    }
                }
            }
            public var activityId: String?

            public var promotionFilter: CreateOrderRequest.BusinessInfo.PromotionOptions.PromotionFilter?

            public var promotionOptionCode: String?

            public var promotionOptionNo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.promotionFilter?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activityId != nil {
                    map["ActivityId"] = self.activityId!
                }
                if self.promotionFilter != nil {
                    map["PromotionFilter"] = self.promotionFilter?.toMap()
                }
                if self.promotionOptionCode != nil {
                    map["PromotionOptionCode"] = self.promotionOptionCode!
                }
                if self.promotionOptionNo != nil {
                    map["PromotionOptionNo"] = self.promotionOptionNo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActivityId"] as? String {
                    self.activityId = value
                }
                if let value = dict["PromotionFilter"] as? [String: Any?] {
                    var model = CreateOrderRequest.BusinessInfo.PromotionOptions.PromotionFilter()
                    model.fromMap(value)
                    self.promotionFilter = model
                }
                if let value = dict["PromotionOptionCode"] as? String {
                    self.promotionOptionCode = value
                }
                if let value = dict["PromotionOptionNo"] as? String {
                    self.promotionOptionNo = value
                }
            }
        }
        public var aliyunLang: String?

        public var orderSource: String?

        public var promotionOptions: CreateOrderRequest.BusinessInfo.PromotionOptions?

        public var useCoupon: Bool?

        public var weChatProType: String?

        public var lxChannelCookieValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.promotionOptions?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunLang != nil {
                map["AliyunLang"] = self.aliyunLang!
            }
            if self.orderSource != nil {
                map["OrderSource"] = self.orderSource!
            }
            if self.promotionOptions != nil {
                map["PromotionOptions"] = self.promotionOptions?.toMap()
            }
            if self.useCoupon != nil {
                map["UseCoupon"] = self.useCoupon!
            }
            if self.weChatProType != nil {
                map["WeChatProType"] = self.weChatProType!
            }
            if self.lxChannelCookieValue != nil {
                map["lx_channel_cookie_value"] = self.lxChannelCookieValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliyunLang"] as? String {
                self.aliyunLang = value
            }
            if let value = dict["OrderSource"] as? String {
                self.orderSource = value
            }
            if let value = dict["PromotionOptions"] as? [String: Any?] {
                var model = CreateOrderRequest.BusinessInfo.PromotionOptions()
                model.fromMap(value)
                self.promotionOptions = model
            }
            if let value = dict["UseCoupon"] as? Bool {
                self.useCoupon = value
            }
            if let value = dict["WeChatProType"] as? String {
                self.weChatProType = value
            }
            if let value = dict["lx_channel_cookie_value"] as? String {
                self.lxChannelCookieValue = value
            }
        }
    }
    public class Commodity : Tea.TeaModel {
        public var amount: Int32?

        public var autoPay: Bool?

        public var autoRenew: Bool?

        public var autoRenewPeriod: Int32?

        public var commodityType: String?

        public var dataDiskSize: Int32?

        public var imageId: String?

        public var instanceIds: [String]?

        public var payType: String?

        public var period: Int32?

        public var periodUnit: String?

        public var planId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.autoPay != nil {
                map["AutoPay"] = self.autoPay!
            }
            if self.autoRenew != nil {
                map["AutoRenew"] = self.autoRenew!
            }
            if self.autoRenewPeriod != nil {
                map["AutoRenewPeriod"] = self.autoRenewPeriod!
            }
            if self.commodityType != nil {
                map["CommodityType"] = self.commodityType!
            }
            if self.dataDiskSize != nil {
                map["DataDiskSize"] = self.dataDiskSize!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.instanceIds != nil {
                map["InstanceIds"] = self.instanceIds!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.period != nil {
                map["Period"] = self.period!
            }
            if self.periodUnit != nil {
                map["PeriodUnit"] = self.periodUnit!
            }
            if self.planId != nil {
                map["PlanId"] = self.planId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Amount"] as? Int32 {
                self.amount = value
            }
            if let value = dict["AutoPay"] as? Bool {
                self.autoPay = value
            }
            if let value = dict["AutoRenew"] as? Bool {
                self.autoRenew = value
            }
            if let value = dict["AutoRenewPeriod"] as? Int32 {
                self.autoRenewPeriod = value
            }
            if let value = dict["CommodityType"] as? String {
                self.commodityType = value
            }
            if let value = dict["DataDiskSize"] as? Int32 {
                self.dataDiskSize = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["InstanceIds"] as? [String] {
                self.instanceIds = value
            }
            if let value = dict["PayType"] as? String {
                self.payType = value
            }
            if let value = dict["Period"] as? Int32 {
                self.period = value
            }
            if let value = dict["PeriodUnit"] as? String {
                self.periodUnit = value
            }
            if let value = dict["PlanId"] as? String {
                self.planId = value
            }
        }
    }
    public var businessInfo: CreateOrderRequest.BusinessInfo?

    public var commodity: CreateOrderRequest.Commodity?

    public var couponNo: String?

    public var fromApp: String?

    public var orderType: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.businessInfo?.validate()
        try self.commodity?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessInfo != nil {
            map["BusinessInfo"] = self.businessInfo?.toMap()
        }
        if self.commodity != nil {
            map["Commodity"] = self.commodity?.toMap()
        }
        if self.couponNo != nil {
            map["CouponNo"] = self.couponNo!
        }
        if self.fromApp != nil {
            map["FromApp"] = self.fromApp!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessInfo"] as? [String: Any?] {
            var model = CreateOrderRequest.BusinessInfo()
            model.fromMap(value)
            self.businessInfo = model
        }
        if let value = dict["Commodity"] as? [String: Any?] {
            var model = CreateOrderRequest.Commodity()
            model.fromMap(value)
            self.commodity = model
        }
        if let value = dict["CouponNo"] as? String {
            self.couponNo = value
        }
        if let value = dict["FromApp"] as? String {
            self.fromApp = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateOrderResponseBody : Tea.TeaModel {
    public var orderId: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOrderResponseBody?

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
            var model = CreateOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSnapshotRequest : Tea.TeaModel {
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
    public var clientToken: String?

    public var diskId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var snapshotName: String?

    public var tag: [CreateSnapshotRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.diskId != nil {
            map["DiskId"] = self.diskId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.snapshotName != nil {
            map["SnapshotName"] = self.snapshotName!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DiskId"] as? String {
            self.diskId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SnapshotName"] as? String {
            self.snapshotName = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateSnapshotRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateSnapshotRequest.Tag()
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

public class CreateSnapshotResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
    }
}

public class CreateSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSnapshotResponseBody?

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
            var model = CreateSnapshotResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCommandRequest : Tea.TeaModel {
    public var commandId: String?

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
        if self.commandId != nil {
            map["CommandId"] = self.commandId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandId"] as? String {
            self.commandId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteCommandResponseBody : Tea.TeaModel {
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

public class DeleteCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCommandResponseBody?

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
            var model = DeleteCommandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCustomImageRequest : Tea.TeaModel {
    public var clientToken: String?

    public var imageId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteCustomImageResponseBody : Tea.TeaModel {
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

public class DeleteCustomImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomImageResponseBody?

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
            var model = DeleteCustomImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCustomImagesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var imageIds: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.imageIds != nil {
            map["ImageIds"] = self.imageIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ImageIds"] as? String {
            self.imageIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteCustomImagesResponseBody : Tea.TeaModel {
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

public class DeleteCustomImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomImagesResponseBody?

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
            var model = DeleteCustomImagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFirewallRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var regionId: String?

    public var ruleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class DeleteFirewallRuleResponseBody : Tea.TeaModel {
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

public class DeleteFirewallRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFirewallRuleResponseBody?

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
            var model = DeleteFirewallRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFirewallRulesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var regionId: String?

    public var ruleIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleIds != nil {
            map["RuleIds"] = self.ruleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RuleIds"] as? [String] {
            self.ruleIds = value
        }
    }
}

public class DeleteFirewallRulesShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var regionId: String?

    public var ruleIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.ruleIdsShrink != nil {
            map["RuleIds"] = self.ruleIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RuleIds"] as? String {
            self.ruleIdsShrink = value
        }
    }
}

public class DeleteFirewallRulesResponseBody : Tea.TeaModel {
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

public class DeleteFirewallRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFirewallRulesResponseBody?

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
            var model = DeleteFirewallRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFirewallTemplateRulesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var firewallTemplateId: String?

    public var firewallTemplateRuleId: [String]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.firewallTemplateId != nil {
            map["FirewallTemplateId"] = self.firewallTemplateId!
        }
        if self.firewallTemplateRuleId != nil {
            map["FirewallTemplateRuleId"] = self.firewallTemplateRuleId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["FirewallTemplateId"] as? String {
            self.firewallTemplateId = value
        }
        if let value = dict["FirewallTemplateRuleId"] as? [String] {
            self.firewallTemplateRuleId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteFirewallTemplateRulesResponseBody : Tea.TeaModel {
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

public class DeleteFirewallTemplateRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFirewallTemplateRulesResponseBody?

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
            var model = DeleteFirewallTemplateRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFirewallTemplatesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var firewallTemplateId: [String]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.firewallTemplateId != nil {
            map["FirewallTemplateId"] = self.firewallTemplateId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["FirewallTemplateId"] as? [String] {
            self.firewallTemplateId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteFirewallTemplatesResponseBody : Tea.TeaModel {
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

public class DeleteFirewallTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFirewallTemplatesResponseBody?

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
            var model = DeleteFirewallTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceKeyPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteInstanceKeyPairResponseBody : Tea.TeaModel {
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

public class DeleteInstanceKeyPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceKeyPairResponseBody?

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
            var model = DeleteInstanceKeyPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteKeyPairsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var keyPairNames: [String]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.keyPairNames != nil {
            map["KeyPairNames"] = self.keyPairNames!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["KeyPairNames"] as? [String] {
            self.keyPairNames = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteKeyPairsResponseBody : Tea.TeaModel {
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

public class DeleteKeyPairsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteKeyPairsResponseBody?

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
            var model = DeleteKeyPairsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSnapshotRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
    }
}

public class DeleteSnapshotResponseBody : Tea.TeaModel {
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

public class DeleteSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSnapshotResponseBody?

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
            var model = DeleteSnapshotResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSnapshotsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var snapshotIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.snapshotIds != nil {
            map["SnapshotIds"] = self.snapshotIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SnapshotIds"] as? String {
            self.snapshotIds = value
        }
    }
}

public class DeleteSnapshotsResponseBody : Tea.TeaModel {
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

public class DeleteSnapshotsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSnapshotsResponseBody?

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
            var model = DeleteSnapshotsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCloudAssistantAttributesRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeCloudAssistantAttributesShrinkRequest : Tea.TeaModel {
    public var instanceIdsShrink: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.instanceIdsShrink != nil {
            map["InstanceIds"] = self.instanceIdsShrink!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIdsShrink = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeCloudAssistantAttributesResponseBody : Tea.TeaModel {
    public class CloudAssistant : Tea.TeaModel {
        public var activeTaskCount: Int64?

        public var cloudAssistantStatus: String?

        public var cloudAssistantVersion: String?

        public var instanceId: String?

        public var invocationCount: Int64?

        public var lastHeartbeatTime: String?

        public var lastInvokedTime: String?

        public var OSType: String?

        public var supportSessionManager: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeTaskCount != nil {
                map["ActiveTaskCount"] = self.activeTaskCount!
            }
            if self.cloudAssistantStatus != nil {
                map["CloudAssistantStatus"] = self.cloudAssistantStatus!
            }
            if self.cloudAssistantVersion != nil {
                map["CloudAssistantVersion"] = self.cloudAssistantVersion!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.invocationCount != nil {
                map["InvocationCount"] = self.invocationCount!
            }
            if self.lastHeartbeatTime != nil {
                map["LastHeartbeatTime"] = self.lastHeartbeatTime!
            }
            if self.lastInvokedTime != nil {
                map["LastInvokedTime"] = self.lastInvokedTime!
            }
            if self.OSType != nil {
                map["OSType"] = self.OSType!
            }
            if self.supportSessionManager != nil {
                map["SupportSessionManager"] = self.supportSessionManager!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveTaskCount"] as? Int64 {
                self.activeTaskCount = value
            }
            if let value = dict["CloudAssistantStatus"] as? String {
                self.cloudAssistantStatus = value
            }
            if let value = dict["CloudAssistantVersion"] as? String {
                self.cloudAssistantVersion = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InvocationCount"] as? Int64 {
                self.invocationCount = value
            }
            if let value = dict["LastHeartbeatTime"] as? String {
                self.lastHeartbeatTime = value
            }
            if let value = dict["LastInvokedTime"] as? String {
                self.lastInvokedTime = value
            }
            if let value = dict["OSType"] as? String {
                self.OSType = value
            }
            if let value = dict["SupportSessionManager"] as? Bool {
                self.supportSessionManager = value
            }
        }
    }
    public var cloudAssistant: [DescribeCloudAssistantAttributesResponseBody.CloudAssistant]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.cloudAssistant != nil {
            var tmp : [Any] = []
            for k in self.cloudAssistant! {
                tmp.append(k.toMap())
            }
            map["CloudAssistant"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloudAssistant"] as? [Any?] {
            var tmp : [DescribeCloudAssistantAttributesResponseBody.CloudAssistant] = []
            for v in value {
                if v != nil {
                    var model = DescribeCloudAssistantAttributesResponseBody.CloudAssistant()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cloudAssistant = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeCloudAssistantAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudAssistantAttributesResponseBody?

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
            var model = DescribeCloudAssistantAttributesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCloudAssistantStatusRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeCloudAssistantStatusShrinkRequest : Tea.TeaModel {
    public var instanceIdsShrink: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.instanceIdsShrink != nil {
            map["InstanceIds"] = self.instanceIdsShrink!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIdsShrink = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeCloudAssistantStatusResponseBody : Tea.TeaModel {
    public class CloudAssistantStatus : Tea.TeaModel {
        public var instanceId: String?

        public var status: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Status"] as? Bool {
                self.status = value
            }
        }
    }
    public var cloudAssistantStatus: [DescribeCloudAssistantStatusResponseBody.CloudAssistantStatus]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.cloudAssistantStatus != nil {
            var tmp : [Any] = []
            for k in self.cloudAssistantStatus! {
                tmp.append(k.toMap())
            }
            map["CloudAssistantStatus"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloudAssistantStatus"] as? [Any?] {
            var tmp : [DescribeCloudAssistantStatusResponseBody.CloudAssistantStatus] = []
            for v in value {
                if v != nil {
                    var model = DescribeCloudAssistantStatusResponseBody.CloudAssistantStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cloudAssistantStatus = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeCloudAssistantStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudAssistantStatusResponseBody?

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
            var model = DescribeCloudAssistantStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCloudMonitorAgentStatusesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceIds: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeCloudMonitorAgentStatusesResponseBody : Tea.TeaModel {
    public class InstanceStatusList : Tea.TeaModel {
        public var autoInstall: Bool?

        public var instanceId: String?

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
            if self.autoInstall != nil {
                map["AutoInstall"] = self.autoInstall!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoInstall"] as? Bool {
                self.autoInstall = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var instanceStatusList: [DescribeCloudMonitorAgentStatusesResponseBody.InstanceStatusList]?

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
        if self.instanceStatusList != nil {
            var tmp : [Any] = []
            for k in self.instanceStatusList! {
                tmp.append(k.toMap())
            }
            map["InstanceStatusList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceStatusList"] as? [Any?] {
            var tmp : [DescribeCloudMonitorAgentStatusesResponseBody.InstanceStatusList] = []
            for v in value {
                if v != nil {
                    var model = DescribeCloudMonitorAgentStatusesResponseBody.InstanceStatusList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceStatusList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeCloudMonitorAgentStatusesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudMonitorAgentStatusesResponseBody?

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
            var model = DescribeCloudMonitorAgentStatusesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCommandInvocationsRequest : Tea.TeaModel {
    public var commandId: String?

    public var commandName: String?

    public var commandType: String?

    public var instanceId: String?

    public var invocationStatus: String?

    public var invokeId: String?

    public var pageNumber: String?

    public var pageSize: String?

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
        if self.commandId != nil {
            map["CommandId"] = self.commandId!
        }
        if self.commandName != nil {
            map["CommandName"] = self.commandName!
        }
        if self.commandType != nil {
            map["CommandType"] = self.commandType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.invocationStatus != nil {
            map["InvocationStatus"] = self.invocationStatus!
        }
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandId"] as? String {
            self.commandId = value
        }
        if let value = dict["CommandName"] as? String {
            self.commandName = value
        }
        if let value = dict["CommandType"] as? String {
            self.commandType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InvocationStatus"] as? String {
            self.invocationStatus = value
        }
        if let value = dict["InvokeId"] as? String {
            self.invokeId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeCommandInvocationsResponseBody : Tea.TeaModel {
    public class CommandInvocations : Tea.TeaModel {
        public class InvokeInstances : Tea.TeaModel {
            public var errorCode: String?

            public var errorInfo: String?

            public var exitCode: Int64?

            public var finishTime: String?

            public var instanceId: String?

            public var invocationStatus: String?

            public var output: String?

            public var startTime: String?

            public override init() {
                super.init()
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
                if self.errorInfo != nil {
                    map["ErrorInfo"] = self.errorInfo!
                }
                if self.exitCode != nil {
                    map["ExitCode"] = self.exitCode!
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.invocationStatus != nil {
                    map["InvocationStatus"] = self.invocationStatus!
                }
                if self.output != nil {
                    map["Output"] = self.output!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ErrorInfo"] as? String {
                    self.errorInfo = value
                }
                if let value = dict["ExitCode"] as? Int64 {
                    self.exitCode = value
                }
                if let value = dict["FinishTime"] as? String {
                    self.finishTime = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InvocationStatus"] as? String {
                    self.invocationStatus = value
                }
                if let value = dict["Output"] as? String {
                    self.output = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
            }
        }
        public var commandContent: String?

        public var commandDescription: String?

        public var commandId: String?

        public var commandName: String?

        public var commandType: String?

        public var creationTime: String?

        public var invocationStatus: String?

        public var invokeId: String?

        public var invokeInstances: [DescribeCommandInvocationsResponseBody.CommandInvocations.InvokeInstances]?

        public var parameters: String?

        public var timeout: Int64?

        public var username: String?

        public var workingDir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commandContent != nil {
                map["CommandContent"] = self.commandContent!
            }
            if self.commandDescription != nil {
                map["CommandDescription"] = self.commandDescription!
            }
            if self.commandId != nil {
                map["CommandId"] = self.commandId!
            }
            if self.commandName != nil {
                map["CommandName"] = self.commandName!
            }
            if self.commandType != nil {
                map["CommandType"] = self.commandType!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.invocationStatus != nil {
                map["InvocationStatus"] = self.invocationStatus!
            }
            if self.invokeId != nil {
                map["InvokeId"] = self.invokeId!
            }
            if self.invokeInstances != nil {
                var tmp : [Any] = []
                for k in self.invokeInstances! {
                    tmp.append(k.toMap())
                }
                map["InvokeInstances"] = tmp
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.timeout != nil {
                map["Timeout"] = self.timeout!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            if self.workingDir != nil {
                map["WorkingDir"] = self.workingDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommandContent"] as? String {
                self.commandContent = value
            }
            if let value = dict["CommandDescription"] as? String {
                self.commandDescription = value
            }
            if let value = dict["CommandId"] as? String {
                self.commandId = value
            }
            if let value = dict["CommandName"] as? String {
                self.commandName = value
            }
            if let value = dict["CommandType"] as? String {
                self.commandType = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["InvocationStatus"] as? String {
                self.invocationStatus = value
            }
            if let value = dict["InvokeId"] as? String {
                self.invokeId = value
            }
            if let value = dict["InvokeInstances"] as? [Any?] {
                var tmp : [DescribeCommandInvocationsResponseBody.CommandInvocations.InvokeInstances] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCommandInvocationsResponseBody.CommandInvocations.InvokeInstances()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.invokeInstances = tmp
            }
            if let value = dict["Parameters"] as? String {
                self.parameters = value
            }
            if let value = dict["Timeout"] as? Int64 {
                self.timeout = value
            }
            if let value = dict["Username"] as? String {
                self.username = value
            }
            if let value = dict["WorkingDir"] as? String {
                self.workingDir = value
            }
        }
    }
    public var commandInvocations: [DescribeCommandInvocationsResponseBody.CommandInvocations]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.commandInvocations != nil {
            var tmp : [Any] = []
            for k in self.commandInvocations! {
                tmp.append(k.toMap())
            }
            map["CommandInvocations"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandInvocations"] as? [Any?] {
            var tmp : [DescribeCommandInvocationsResponseBody.CommandInvocations] = []
            for v in value {
                if v != nil {
                    var model = DescribeCommandInvocationsResponseBody.CommandInvocations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.commandInvocations = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeCommandInvocationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCommandInvocationsResponseBody?

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
            var model = DescribeCommandInvocationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCommandsRequest : Tea.TeaModel {
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
    public var commandId: String?

    public var name: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var provider: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [DescribeCommandsRequest.Tag]?

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
        if self.commandId != nil {
            map["CommandId"] = self.commandId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandId"] as? String {
            self.commandId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeCommandsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeCommandsRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class DescribeCommandsResponseBody : Tea.TeaModel {
    public class Commands : Tea.TeaModel {
        public class ParameterDefinitions : Tea.TeaModel {
            public var defaultValue: String?

            public var description_: String?

            public var parameterName: String?

            public var possibleValues: [String]?

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
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.possibleValues != nil {
                    map["PossibleValues"] = self.possibleValues!
                }
                if self.required_ != nil {
                    map["Required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DefaultValue"] as? String {
                    self.defaultValue = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ParameterName"] as? String {
                    self.parameterName = value
                }
                if let value = dict["PossibleValues"] as? [String] {
                    self.possibleValues = value
                }
                if let value = dict["Required"] as? Bool {
                    self.required_ = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
        public var commandContent: String?

        public var commandId: String?

        public var creationTime: String?

        public var description_: String?

        public var enableParameter: Bool?

        public var name: String?

        public var parameterDefinitions: [DescribeCommandsResponseBody.Commands.ParameterDefinitions]?

        public var parameterNames: [String]?

        public var provider: String?

        public var resourceGroupId: String?

        public var tags: [DescribeCommandsResponseBody.Commands.Tags]?

        public var timeout: Int64?

        public var type: String?

        public var workingDir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commandContent != nil {
                map["CommandContent"] = self.commandContent!
            }
            if self.commandId != nil {
                map["CommandId"] = self.commandId!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.enableParameter != nil {
                map["EnableParameter"] = self.enableParameter!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameterDefinitions != nil {
                var tmp : [Any] = []
                for k in self.parameterDefinitions! {
                    tmp.append(k.toMap())
                }
                map["ParameterDefinitions"] = tmp
            }
            if self.parameterNames != nil {
                map["ParameterNames"] = self.parameterNames!
            }
            if self.provider != nil {
                map["Provider"] = self.provider!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.timeout != nil {
                map["Timeout"] = self.timeout!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.workingDir != nil {
                map["WorkingDir"] = self.workingDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommandContent"] as? String {
                self.commandContent = value
            }
            if let value = dict["CommandId"] as? String {
                self.commandId = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EnableParameter"] as? Bool {
                self.enableParameter = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParameterDefinitions"] as? [Any?] {
                var tmp : [DescribeCommandsResponseBody.Commands.ParameterDefinitions] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCommandsResponseBody.Commands.ParameterDefinitions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.parameterDefinitions = tmp
            }
            if let value = dict["ParameterNames"] as? [String] {
                self.parameterNames = value
            }
            if let value = dict["Provider"] as? String {
                self.provider = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeCommandsResponseBody.Commands.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCommandsResponseBody.Commands.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["Timeout"] as? Int64 {
                self.timeout = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["WorkingDir"] as? String {
                self.workingDir = value
            }
        }
    }
    public var commands: [DescribeCommandsResponseBody.Commands]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.commands != nil {
            var tmp : [Any] = []
            for k in self.commands! {
                tmp.append(k.toMap())
            }
            map["Commands"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Commands"] as? [Any?] {
            var tmp : [DescribeCommandsResponseBody.Commands] = []
            for v in value {
                if v != nil {
                    var model = DescribeCommandsResponseBody.Commands()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.commands = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeCommandsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCommandsResponseBody?

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
            var model = DescribeCommandsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDatabaseErrorLogsRequest : Tea.TeaModel {
    public var databaseInstanceId: String?

    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseInstanceId != nil {
            map["DatabaseInstanceId"] = self.databaseInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseInstanceId"] as? String {
            self.databaseInstanceId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeDatabaseErrorLogsResponseBody : Tea.TeaModel {
    public class ErrorLogs : Tea.TeaModel {
        public var createTime: String?

        public var errorInfo: String?

        public override init() {
            super.init()
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
            if self.errorInfo != nil {
                map["ErrorInfo"] = self.errorInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ErrorInfo"] as? String {
                self.errorInfo = value
            }
        }
    }
    public var errorLogs: [DescribeDatabaseErrorLogsResponseBody.ErrorLogs]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.errorLogs != nil {
            var tmp : [Any] = []
            for k in self.errorLogs! {
                tmp.append(k.toMap())
            }
            map["ErrorLogs"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorLogs"] as? [Any?] {
            var tmp : [DescribeDatabaseErrorLogsResponseBody.ErrorLogs] = []
            for v in value {
                if v != nil {
                    var model = DescribeDatabaseErrorLogsResponseBody.ErrorLogs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.errorLogs = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeDatabaseErrorLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDatabaseErrorLogsResponseBody?

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
            var model = DescribeDatabaseErrorLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDatabaseInstanceMetricDataRequest : Tea.TeaModel {
    public var databaseInstanceId: String?

    public var endTime: String?

    public var metricName: String?

    public var regionId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseInstanceId != nil {
            map["DatabaseInstanceId"] = self.databaseInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseInstanceId"] as? String {
            self.databaseInstanceId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["MetricName"] as? String {
            self.metricName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeDatabaseInstanceMetricDataResponseBody : Tea.TeaModel {
    public var dataFormat: String?

    public var metricData: String?

    public var metricName: String?

    public var requestId: String?

    public var unit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.metricData != nil {
            map["MetricData"] = self.metricData!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.unit != nil {
            map["Unit"] = self.unit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["MetricData"] as? String {
            self.metricData = value
        }
        if let value = dict["MetricName"] as? String {
            self.metricName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Unit"] as? String {
            self.unit = value
        }
    }
}

public class DescribeDatabaseInstanceMetricDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDatabaseInstanceMetricDataResponseBody?

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
            var model = DescribeDatabaseInstanceMetricDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDatabaseInstanceParametersRequest : Tea.TeaModel {
    public var databaseInstanceId: String?

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
        if self.databaseInstanceId != nil {
            map["DatabaseInstanceId"] = self.databaseInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseInstanceId"] as? String {
            self.databaseInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDatabaseInstanceParametersResponseBody : Tea.TeaModel {
    public class ConfigParameters : Tea.TeaModel {
        public var checkingCode: String?

        public var forceModify: String?

        public var forceRestart: String?

        public var parameterDescription: String?

        public var parameterName: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkingCode != nil {
                map["CheckingCode"] = self.checkingCode!
            }
            if self.forceModify != nil {
                map["ForceModify"] = self.forceModify!
            }
            if self.forceRestart != nil {
                map["ForceRestart"] = self.forceRestart!
            }
            if self.parameterDescription != nil {
                map["ParameterDescription"] = self.parameterDescription!
            }
            if self.parameterName != nil {
                map["ParameterName"] = self.parameterName!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CheckingCode"] as? String {
                self.checkingCode = value
            }
            if let value = dict["ForceModify"] as? String {
                self.forceModify = value
            }
            if let value = dict["ForceRestart"] as? String {
                self.forceRestart = value
            }
            if let value = dict["ParameterDescription"] as? String {
                self.parameterDescription = value
            }
            if let value = dict["ParameterName"] as? String {
                self.parameterName = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
            }
        }
    }
    public class RunningParameters : Tea.TeaModel {
        public var checkingCode: String?

        public var forceModify: String?

        public var forceRestart: String?

        public var parameterDescription: String?

        public var parameterName: String?

        public var parameterValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkingCode != nil {
                map["CheckingCode"] = self.checkingCode!
            }
            if self.forceModify != nil {
                map["ForceModify"] = self.forceModify!
            }
            if self.forceRestart != nil {
                map["ForceRestart"] = self.forceRestart!
            }
            if self.parameterDescription != nil {
                map["ParameterDescription"] = self.parameterDescription!
            }
            if self.parameterName != nil {
                map["ParameterName"] = self.parameterName!
            }
            if self.parameterValue != nil {
                map["ParameterValue"] = self.parameterValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CheckingCode"] as? String {
                self.checkingCode = value
            }
            if let value = dict["ForceModify"] as? String {
                self.forceModify = value
            }
            if let value = dict["ForceRestart"] as? String {
                self.forceRestart = value
            }
            if let value = dict["ParameterDescription"] as? String {
                self.parameterDescription = value
            }
            if let value = dict["ParameterName"] as? String {
                self.parameterName = value
            }
            if let value = dict["ParameterValue"] as? String {
                self.parameterValue = value
            }
        }
    }
    public var configParameters: [DescribeDatabaseInstanceParametersResponseBody.ConfigParameters]?

    public var engine: String?

    public var engineVersion: String?

    public var requestId: String?

    public var runningParameters: [DescribeDatabaseInstanceParametersResponseBody.RunningParameters]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configParameters != nil {
            var tmp : [Any] = []
            for k in self.configParameters! {
                tmp.append(k.toMap())
            }
            map["ConfigParameters"] = tmp
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.runningParameters != nil {
            var tmp : [Any] = []
            for k in self.runningParameters! {
                tmp.append(k.toMap())
            }
            map["RunningParameters"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigParameters"] as? [Any?] {
            var tmp : [DescribeDatabaseInstanceParametersResponseBody.ConfigParameters] = []
            for v in value {
                if v != nil {
                    var model = DescribeDatabaseInstanceParametersResponseBody.ConfigParameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configParameters = tmp
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RunningParameters"] as? [Any?] {
            var tmp : [DescribeDatabaseInstanceParametersResponseBody.RunningParameters] = []
            for v in value {
                if v != nil {
                    var model = DescribeDatabaseInstanceParametersResponseBody.RunningParameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.runningParameters = tmp
        }
    }
}

public class DescribeDatabaseInstanceParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDatabaseInstanceParametersResponseBody?

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
            var model = DescribeDatabaseInstanceParametersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDatabaseInstancesRequest : Tea.TeaModel {
    public var databaseInstanceIds: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.databaseInstanceIds != nil {
            map["DatabaseInstanceIds"] = self.databaseInstanceIds!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseInstanceIds"] as? String {
            self.databaseInstanceIds = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDatabaseInstancesResponseBody : Tea.TeaModel {
    public class DatabaseInstances : Tea.TeaModel {
        public var businessStatus: String?

        public var chargeType: String?

        public var cpu: String?

        public var creationTime: String?

        public var databaseInstanceEdition: String?

        public var databaseInstanceId: String?

        public var databaseInstanceName: String?

        public var databaseInstanceStatus: String?

        public var databaseVersion: String?

        public var expiredTime: String?

        public var memory: String?

        public var privateConnection: String?

        public var publicConnection: String?

        public var regionId: String?

        public var storage: Int32?

        public var superAccountName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessStatus != nil {
                map["BusinessStatus"] = self.businessStatus!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.databaseInstanceEdition != nil {
                map["DatabaseInstanceEdition"] = self.databaseInstanceEdition!
            }
            if self.databaseInstanceId != nil {
                map["DatabaseInstanceId"] = self.databaseInstanceId!
            }
            if self.databaseInstanceName != nil {
                map["DatabaseInstanceName"] = self.databaseInstanceName!
            }
            if self.databaseInstanceStatus != nil {
                map["DatabaseInstanceStatus"] = self.databaseInstanceStatus!
            }
            if self.databaseVersion != nil {
                map["DatabaseVersion"] = self.databaseVersion!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.privateConnection != nil {
                map["PrivateConnection"] = self.privateConnection!
            }
            if self.publicConnection != nil {
                map["PublicConnection"] = self.publicConnection!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.storage != nil {
                map["Storage"] = self.storage!
            }
            if self.superAccountName != nil {
                map["SuperAccountName"] = self.superAccountName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BusinessStatus"] as? String {
                self.businessStatus = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["Cpu"] as? String {
                self.cpu = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["DatabaseInstanceEdition"] as? String {
                self.databaseInstanceEdition = value
            }
            if let value = dict["DatabaseInstanceId"] as? String {
                self.databaseInstanceId = value
            }
            if let value = dict["DatabaseInstanceName"] as? String {
                self.databaseInstanceName = value
            }
            if let value = dict["DatabaseInstanceStatus"] as? String {
                self.databaseInstanceStatus = value
            }
            if let value = dict["DatabaseVersion"] as? String {
                self.databaseVersion = value
            }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["Memory"] as? String {
                self.memory = value
            }
            if let value = dict["PrivateConnection"] as? String {
                self.privateConnection = value
            }
            if let value = dict["PublicConnection"] as? String {
                self.publicConnection = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Storage"] as? Int32 {
                self.storage = value
            }
            if let value = dict["SuperAccountName"] as? String {
                self.superAccountName = value
            }
        }
    }
    public var databaseInstances: [DescribeDatabaseInstancesResponseBody.DatabaseInstances]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.databaseInstances != nil {
            var tmp : [Any] = []
            for k in self.databaseInstances! {
                tmp.append(k.toMap())
            }
            map["DatabaseInstances"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseInstances"] as? [Any?] {
            var tmp : [DescribeDatabaseInstancesResponseBody.DatabaseInstances] = []
            for v in value {
                if v != nil {
                    var model = DescribeDatabaseInstancesResponseBody.DatabaseInstances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databaseInstances = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeDatabaseInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDatabaseInstancesResponseBody?

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
            var model = DescribeDatabaseInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDatabaseSlowLogRecordsRequest : Tea.TeaModel {
    public var databaseInstanceId: String?

    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseInstanceId != nil {
            map["DatabaseInstanceId"] = self.databaseInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseInstanceId"] as? String {
            self.databaseInstanceId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeDatabaseSlowLogRecordsResponseBody : Tea.TeaModel {
    public class SlowLogs : Tea.TeaModel {
        public var DBName: String?

        public var executionStartTime: String?

        public var hostAddress: String?

        public var lockTimes: Int64?

        public var parseRowCounts: Int64?

        public var queryTimeMS: Int64?

        public var queryTimes: Int64?

        public var returnRowCounts: Int64?

        public var SQLText: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            if self.executionStartTime != nil {
                map["ExecutionStartTime"] = self.executionStartTime!
            }
            if self.hostAddress != nil {
                map["HostAddress"] = self.hostAddress!
            }
            if self.lockTimes != nil {
                map["LockTimes"] = self.lockTimes!
            }
            if self.parseRowCounts != nil {
                map["ParseRowCounts"] = self.parseRowCounts!
            }
            if self.queryTimeMS != nil {
                map["QueryTimeMS"] = self.queryTimeMS!
            }
            if self.queryTimes != nil {
                map["QueryTimes"] = self.queryTimes!
            }
            if self.returnRowCounts != nil {
                map["ReturnRowCounts"] = self.returnRowCounts!
            }
            if self.SQLText != nil {
                map["SQLText"] = self.SQLText!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBName"] as? String {
                self.DBName = value
            }
            if let value = dict["ExecutionStartTime"] as? String {
                self.executionStartTime = value
            }
            if let value = dict["HostAddress"] as? String {
                self.hostAddress = value
            }
            if let value = dict["LockTimes"] as? Int64 {
                self.lockTimes = value
            }
            if let value = dict["ParseRowCounts"] as? Int64 {
                self.parseRowCounts = value
            }
            if let value = dict["QueryTimeMS"] as? Int64 {
                self.queryTimeMS = value
            }
            if let value = dict["QueryTimes"] as? Int64 {
                self.queryTimes = value
            }
            if let value = dict["ReturnRowCounts"] as? Int64 {
                self.returnRowCounts = value
            }
            if let value = dict["SQLText"] as? String {
                self.SQLText = value
            }
        }
    }
    public var engine: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var physicalIORead: Int64?

    public var requestId: String?

    public var slowLogs: [DescribeDatabaseSlowLogRecordsResponseBody.SlowLogs]?

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
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.physicalIORead != nil {
            map["PhysicalIORead"] = self.physicalIORead!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slowLogs != nil {
            var tmp : [Any] = []
            for k in self.slowLogs! {
                tmp.append(k.toMap())
            }
            map["SlowLogs"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PhysicalIORead"] as? Int64 {
            self.physicalIORead = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SlowLogs"] as? [Any?] {
            var tmp : [DescribeDatabaseSlowLogRecordsResponseBody.SlowLogs] = []
            for v in value {
                if v != nil {
                    var model = DescribeDatabaseSlowLogRecordsResponseBody.SlowLogs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.slowLogs = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeDatabaseSlowLogRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDatabaseSlowLogRecordsResponseBody?

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
            var model = DescribeDatabaseSlowLogRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFirewallTemplateApplyResultsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var firewallTemplateId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var taskId: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.firewallTemplateId != nil {
            map["FirewallTemplateId"] = self.firewallTemplateId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["FirewallTemplateId"] as? String {
            self.firewallTemplateId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TaskId"] as? [String] {
            self.taskId = value
        }
    }
}

public class DescribeFirewallTemplateApplyResultsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InstanceApplyResults : Tea.TeaModel {
            public var instanceId: String?

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
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var createTime: String?

        public var failedCount: String?

        public var firewallTemplateId: String?

        public var instanceApplyResults: [DescribeFirewallTemplateApplyResultsResponseBody.Data.InstanceApplyResults]?

        public var status: String?

        public var taskId: String?

        public var totalCount: String?

        public override init() {
            super.init()
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
            if self.failedCount != nil {
                map["FailedCount"] = self.failedCount!
            }
            if self.firewallTemplateId != nil {
                map["FirewallTemplateId"] = self.firewallTemplateId!
            }
            if self.instanceApplyResults != nil {
                var tmp : [Any] = []
                for k in self.instanceApplyResults! {
                    tmp.append(k.toMap())
                }
                map["InstanceApplyResults"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["FailedCount"] as? String {
                self.failedCount = value
            }
            if let value = dict["FirewallTemplateId"] as? String {
                self.firewallTemplateId = value
            }
            if let value = dict["InstanceApplyResults"] as? [Any?] {
                var tmp : [DescribeFirewallTemplateApplyResultsResponseBody.Data.InstanceApplyResults] = []
                for v in value {
                    if v != nil {
                        var model = DescribeFirewallTemplateApplyResultsResponseBody.Data.InstanceApplyResults()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instanceApplyResults = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TotalCount"] as? String {
                self.totalCount = value
            }
        }
    }
    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var totalCount: String?

    public var data: [DescribeFirewallTemplateApplyResultsResponseBody.Data]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [DescribeFirewallTemplateApplyResultsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeFirewallTemplateApplyResultsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
    }
}

public class DescribeFirewallTemplateApplyResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFirewallTemplateApplyResultsResponseBody?

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
            var model = DescribeFirewallTemplateApplyResultsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFirewallTemplateRulesApplyResultRequest : Tea.TeaModel {
    public var clientToken: String?

    public var firewallTemplateId: String?

    public var instanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.firewallTemplateId != nil {
            map["FirewallTemplateId"] = self.firewallTemplateId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["FirewallTemplateId"] as? String {
            self.firewallTemplateId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class DescribeFirewallTemplateRulesApplyResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var errorCode: String?

        public var errorInfo: String?

        public var port: String?

        public var remark: String?

        public var ruleProtocol: String?

        public var sourceCidrIp: String?

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
            if self.errorInfo != nil {
                map["ErrorInfo"] = self.errorInfo!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.ruleProtocol != nil {
                map["RuleProtocol"] = self.ruleProtocol!
            }
            if self.sourceCidrIp != nil {
                map["SourceCidrIp"] = self.sourceCidrIp!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorInfo"] as? String {
                self.errorInfo = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["RuleProtocol"] as? String {
                self.ruleProtocol = value
            }
            if let value = dict["SourceCidrIp"] as? String {
                self.sourceCidrIp = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var requestId: String?

    public var data: [DescribeFirewallTemplateRulesApplyResultResponseBody.Data]?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [DescribeFirewallTemplateRulesApplyResultResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeFirewallTemplateRulesApplyResultResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
    }
}

public class DescribeFirewallTemplateRulesApplyResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFirewallTemplateRulesApplyResultResponseBody?

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
            var model = DescribeFirewallTemplateRulesApplyResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFirewallTemplatesRequest : Tea.TeaModel {
    public var firewallTemplateId: [String]?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.firewallTemplateId != nil {
            map["FirewallTemplateId"] = self.firewallTemplateId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallTemplateId"] as? [String] {
            self.firewallTemplateId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeFirewallTemplatesResponseBody : Tea.TeaModel {
    public class FirewallTemplates : Tea.TeaModel {
        public class FirewallTemplateRules : Tea.TeaModel {
            public var firewallTemplateRuleId: String?

            public var port: String?

            public var remark: String?

            public var ruleProtocol: String?

            public var sourceCidrIp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.firewallTemplateRuleId != nil {
                    map["FirewallTemplateRuleId"] = self.firewallTemplateRuleId!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.ruleProtocol != nil {
                    map["RuleProtocol"] = self.ruleProtocol!
                }
                if self.sourceCidrIp != nil {
                    map["SourceCidrIp"] = self.sourceCidrIp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FirewallTemplateRuleId"] as? String {
                    self.firewallTemplateRuleId = value
                }
                if let value = dict["Port"] as? String {
                    self.port = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["RuleProtocol"] as? String {
                    self.ruleProtocol = value
                }
                if let value = dict["SourceCidrIp"] as? String {
                    self.sourceCidrIp = value
                }
            }
        }
        public var createTime: String?

        public var creationTime: String?

        public var description_: String?

        public var firewallTemplateId: String?

        public var firewallTemplateRules: [DescribeFirewallTemplatesResponseBody.FirewallTemplates.FirewallTemplateRules]?

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
                map["CreateTime"] = self.createTime!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.firewallTemplateId != nil {
                map["FirewallTemplateId"] = self.firewallTemplateId!
            }
            if self.firewallTemplateRules != nil {
                var tmp : [Any] = []
                for k in self.firewallTemplateRules! {
                    tmp.append(k.toMap())
                }
                map["FirewallTemplateRules"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FirewallTemplateId"] as? String {
                self.firewallTemplateId = value
            }
            if let value = dict["FirewallTemplateRules"] as? [Any?] {
                var tmp : [DescribeFirewallTemplatesResponseBody.FirewallTemplates.FirewallTemplateRules] = []
                for v in value {
                    if v != nil {
                        var model = DescribeFirewallTemplatesResponseBody.FirewallTemplates.FirewallTemplateRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.firewallTemplateRules = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var firewallTemplates: [DescribeFirewallTemplatesResponseBody.FirewallTemplates]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.firewallTemplates != nil {
            var tmp : [Any] = []
            for k in self.firewallTemplates! {
                tmp.append(k.toMap())
            }
            map["FirewallTemplates"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallTemplates"] as? [Any?] {
            var tmp : [DescribeFirewallTemplatesResponseBody.FirewallTemplates] = []
            for v in value {
                if v != nil {
                    var model = DescribeFirewallTemplatesResponseBody.FirewallTemplates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.firewallTemplates = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeFirewallTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFirewallTemplatesResponseBody?

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
            var model = DescribeFirewallTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceKeyPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeInstanceKeyPairResponseBody : Tea.TeaModel {
    public var fingerprint: String?

    public var keyPairName: String?

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
        if self.fingerprint != nil {
            map["Fingerprint"] = self.fingerprint!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Fingerprint"] as? String {
            self.fingerprint = value
        }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInstanceKeyPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceKeyPairResponseBody?

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
            var model = DescribeInstanceKeyPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstancePasswordsSettingRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeInstancePasswordsSettingResponseBody : Tea.TeaModel {
    public var instancePasswordSetting: Bool?

    public var requestId: String?

    public var vncPasswordSetting: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instancePasswordSetting != nil {
            map["InstancePasswordSetting"] = self.instancePasswordSetting!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.vncPasswordSetting != nil {
            map["VncPasswordSetting"] = self.vncPasswordSetting!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstancePasswordSetting"] as? Bool {
            self.instancePasswordSetting = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VncPasswordSetting"] as? Bool {
            self.vncPasswordSetting = value
        }
    }
}

public class DescribeInstancePasswordsSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstancePasswordsSettingResponseBody?

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
            var model = DescribeInstancePasswordsSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceVncUrlRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeInstanceVncUrlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var vncUrl: String?

    public override init() {
        super.init()
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
        if self.vncUrl != nil {
            map["VncUrl"] = self.vncUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VncUrl"] as? String {
            self.vncUrl = value
        }
    }
}

public class DescribeInstanceVncUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceVncUrlResponseBody?

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
            var model = DescribeInstanceVncUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInvocationResultRequest : Tea.TeaModel {
    public var instanceId: String?

    public var invokeId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InvokeId"] as? String {
            self.invokeId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeInvocationResultResponseBody : Tea.TeaModel {
    public class InvocationResult : Tea.TeaModel {
        public var errorCode: String?

        public var errorInfo: String?

        public var exitCode: Int64?

        public var finishedTime: String?

        public var instanceId: String?

        public var invocationStatus: String?

        public var invokeId: String?

        public var invokeRecordStatus: String?

        public var invokeUser: String?

        public var output: String?

        public var startTime: String?

        public override init() {
            super.init()
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
            if self.errorInfo != nil {
                map["ErrorInfo"] = self.errorInfo!
            }
            if self.exitCode != nil {
                map["ExitCode"] = self.exitCode!
            }
            if self.finishedTime != nil {
                map["FinishedTime"] = self.finishedTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.invocationStatus != nil {
                map["InvocationStatus"] = self.invocationStatus!
            }
            if self.invokeId != nil {
                map["InvokeId"] = self.invokeId!
            }
            if self.invokeRecordStatus != nil {
                map["InvokeRecordStatus"] = self.invokeRecordStatus!
            }
            if self.invokeUser != nil {
                map["InvokeUser"] = self.invokeUser!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorInfo"] as? String {
                self.errorInfo = value
            }
            if let value = dict["ExitCode"] as? Int64 {
                self.exitCode = value
            }
            if let value = dict["FinishedTime"] as? String {
                self.finishedTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InvocationStatus"] as? String {
                self.invocationStatus = value
            }
            if let value = dict["InvokeId"] as? String {
                self.invokeId = value
            }
            if let value = dict["InvokeRecordStatus"] as? String {
                self.invokeRecordStatus = value
            }
            if let value = dict["InvokeUser"] as? String {
                self.invokeUser = value
            }
            if let value = dict["Output"] as? String {
                self.output = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
        }
    }
    public var invocationResult: DescribeInvocationResultResponseBody.InvocationResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.invocationResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.invocationResult != nil {
            map["InvocationResult"] = self.invocationResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InvocationResult"] as? [String: Any?] {
            var model = DescribeInvocationResultResponseBody.InvocationResult()
            model.fromMap(value)
            self.invocationResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInvocationResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInvocationResultResponseBody?

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
            var model = DescribeInvocationResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInvocationsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var invokeStatus: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.invokeStatus != nil {
            map["InvokeStatus"] = self.invokeStatus!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InvokeStatus"] as? String {
            self.invokeStatus = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeInvocationsResponseBody : Tea.TeaModel {
    public class Invocations : Tea.TeaModel {
        public var commandContent: String?

        public var commandName: String?

        public var commandType: String?

        public var creationTime: String?

        public var invocationStatus: String?

        public var invokeId: String?

        public var invokeStatus: String?

        public var parameters: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commandContent != nil {
                map["CommandContent"] = self.commandContent!
            }
            if self.commandName != nil {
                map["CommandName"] = self.commandName!
            }
            if self.commandType != nil {
                map["CommandType"] = self.commandType!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.invocationStatus != nil {
                map["InvocationStatus"] = self.invocationStatus!
            }
            if self.invokeId != nil {
                map["InvokeId"] = self.invokeId!
            }
            if self.invokeStatus != nil {
                map["InvokeStatus"] = self.invokeStatus!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommandContent"] as? String {
                self.commandContent = value
            }
            if let value = dict["CommandName"] as? String {
                self.commandName = value
            }
            if let value = dict["CommandType"] as? String {
                self.commandType = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["InvocationStatus"] as? String {
                self.invocationStatus = value
            }
            if let value = dict["InvokeId"] as? String {
                self.invokeId = value
            }
            if let value = dict["InvokeStatus"] as? String {
                self.invokeStatus = value
            }
            if let value = dict["Parameters"] as? [String: Any] {
                self.parameters = value
            }
        }
    }
    public var invocations: [DescribeInvocationsResponseBody.Invocations]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.invocations != nil {
            var tmp : [Any] = []
            for k in self.invocations! {
                tmp.append(k.toMap())
            }
            map["Invocations"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Invocations"] as? [Any?] {
            var tmp : [DescribeInvocationsResponseBody.Invocations] = []
            for v in value {
                if v != nil {
                    var model = DescribeInvocationsResponseBody.Invocations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.invocations = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeInvocationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInvocationsResponseBody?

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
            var model = DescribeInvocationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMonitorDataRequest : Tea.TeaModel {
    public var clientToken: String?

    public var endTime: String?

    public var instanceId: String?

    public var length: String?

    public var metricName: String?

    public var nextToken: String?

    public var period: String?

    public var regionId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.length != nil {
            map["Length"] = self.length!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Length"] as? String {
            self.length = value
        }
        if let value = dict["MetricName"] as? String {
            self.metricName = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeMonitorDataResponseBody : Tea.TeaModel {
    public var datapoints: String?

    public var nextToken: String?

    public var period: String?

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
        if self.datapoints != nil {
            map["Datapoints"] = self.datapoints!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Datapoints"] as? String {
            self.datapoints = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeMonitorDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMonitorDataResponseBody?

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
            var model = DescribeMonitorDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePriceRequest : Tea.TeaModel {
    public class PromotionOptions : Tea.TeaModel {
        public var activityId: String?

        public var couponNo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activityId != nil {
                map["ActivityId"] = self.activityId!
            }
            if self.couponNo != nil {
                map["CouponNo"] = self.couponNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActivityId"] as? String {
                self.activityId = value
            }
            if let value = dict["CouponNo"] as? String {
                self.couponNo = value
            }
        }
    }
    public var acceptLanguage: String?

    public var amount: Int32?

    public var commodityType: String?

    public var dataDiskSize: Int32?

    public var instanceId: String?

    public var orderType: String?

    public var payType: String?

    public var period: Int32?

    public var planId: String?

    public var priceUnit: String?

    public var promotionOptions: DescribePriceRequest.PromotionOptions?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.promotionOptions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.commodityType != nil {
            map["CommodityType"] = self.commodityType!
        }
        if self.dataDiskSize != nil {
            map["DataDiskSize"] = self.dataDiskSize!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.priceUnit != nil {
            map["PriceUnit"] = self.priceUnit!
        }
        if self.promotionOptions != nil {
            map["PromotionOptions"] = self.promotionOptions?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["Amount"] as? Int32 {
            self.amount = value
        }
        if let value = dict["CommodityType"] as? String {
            self.commodityType = value
        }
        if let value = dict["DataDiskSize"] as? Int32 {
            self.dataDiskSize = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["PriceUnit"] as? String {
            self.priceUnit = value
        }
        if let value = dict["PromotionOptions"] as? [String: Any?] {
            var model = DescribePriceRequest.PromotionOptions()
            model.fromMap(value)
            self.promotionOptions = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribePriceResponseBody : Tea.TeaModel {
    public class PriceInfo : Tea.TeaModel {
        public class Price : Tea.TeaModel {
            public class Coupons : Tea.TeaModel {
                public var couponNo: String?

                public var description_: String?

                public var discountOff: Double?

                public var isSelected: Bool?

                public var name: String?

                public var optionCode: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.couponNo != nil {
                        map["CouponNo"] = self.couponNo!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.discountOff != nil {
                        map["DiscountOff"] = self.discountOff!
                    }
                    if self.isSelected != nil {
                        map["IsSelected"] = self.isSelected!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.optionCode != nil {
                        map["OptionCode"] = self.optionCode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CouponNo"] as? String {
                        self.couponNo = value
                    }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["DiscountOff"] as? Double {
                        self.discountOff = value
                    }
                    if let value = dict["IsSelected"] as? Bool {
                        self.isSelected = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["OptionCode"] as? String {
                        self.optionCode = value
                    }
                }
            }
            public class DetailInfos : Tea.TeaModel {
                public class Promotions : Tea.TeaModel {
                    public var discountOff: Double?

                    public var name: String?

                    public var ruleId: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.discountOff != nil {
                            map["DiscountOff"] = self.discountOff!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.ruleId != nil {
                            map["RuleId"] = self.ruleId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DiscountOff"] as? Double {
                            self.discountOff = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["RuleId"] as? Int64 {
                            self.ruleId = value
                        }
                    }
                }
                public var commodityType: String?

                public var discountPrice: Double?

                public var originalPrice: Double?

                public var promotions: [DescribePriceResponseBody.PriceInfo.Price.DetailInfos.Promotions]?

                public var tradePrice: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.commodityType != nil {
                        map["CommodityType"] = self.commodityType!
                    }
                    if self.discountPrice != nil {
                        map["DiscountPrice"] = self.discountPrice!
                    }
                    if self.originalPrice != nil {
                        map["OriginalPrice"] = self.originalPrice!
                    }
                    if self.promotions != nil {
                        var tmp : [Any] = []
                        for k in self.promotions! {
                            tmp.append(k.toMap())
                        }
                        map["Promotions"] = tmp
                    }
                    if self.tradePrice != nil {
                        map["TradePrice"] = self.tradePrice!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CommodityType"] as? String {
                        self.commodityType = value
                    }
                    if let value = dict["DiscountPrice"] as? Double {
                        self.discountPrice = value
                    }
                    if let value = dict["OriginalPrice"] as? Double {
                        self.originalPrice = value
                    }
                    if let value = dict["Promotions"] as? [Any?] {
                        var tmp : [DescribePriceResponseBody.PriceInfo.Price.DetailInfos.Promotions] = []
                        for v in value {
                            if v != nil {
                                var model = DescribePriceResponseBody.PriceInfo.Price.DetailInfos.Promotions()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.promotions = tmp
                    }
                    if let value = dict["TradePrice"] as? Double {
                        self.tradePrice = value
                    }
                }
            }
            public class Promotions : Tea.TeaModel {
                public var discountOff: Double?

                public var name: String?

                public var ruleIds: [Int64]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.discountOff != nil {
                        map["DiscountOff"] = self.discountOff!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.ruleIds != nil {
                        map["RuleIds"] = self.ruleIds!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DiscountOff"] as? Double {
                        self.discountOff = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["RuleIds"] as? [Int64] {
                        self.ruleIds = value
                    }
                }
            }
            public class SubPrices : Tea.TeaModel {
                public class Promotions : Tea.TeaModel {
                    public var discountOff: Double?

                    public var name: String?

                    public var ruleIds: [Int64]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.discountOff != nil {
                            map["DiscountOff"] = self.discountOff!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.ruleIds != nil {
                            map["RuleIds"] = self.ruleIds!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DiscountOff"] as? Double {
                            self.discountOff = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["RuleIds"] as? [Int64] {
                            self.ruleIds = value
                        }
                    }
                }
                public var discountPrice: Double?

                public var instanceId: String?

                public var isContractPromotion: Bool?

                public var originalPrice: Double?

                public var promotions: [DescribePriceResponseBody.PriceInfo.Price.SubPrices.Promotions]?

                public var ruleIds: [Int64]?

                public var standardDiscountPrice: Double?

                public var standardPrice: Double?

                public var tradePrice: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.discountPrice != nil {
                        map["DiscountPrice"] = self.discountPrice!
                    }
                    if self.instanceId != nil {
                        map["InstanceId"] = self.instanceId!
                    }
                    if self.isContractPromotion != nil {
                        map["IsContractPromotion"] = self.isContractPromotion!
                    }
                    if self.originalPrice != nil {
                        map["OriginalPrice"] = self.originalPrice!
                    }
                    if self.promotions != nil {
                        var tmp : [Any] = []
                        for k in self.promotions! {
                            tmp.append(k.toMap())
                        }
                        map["Promotions"] = tmp
                    }
                    if self.ruleIds != nil {
                        map["RuleIds"] = self.ruleIds!
                    }
                    if self.standardDiscountPrice != nil {
                        map["StandardDiscountPrice"] = self.standardDiscountPrice!
                    }
                    if self.standardPrice != nil {
                        map["StandardPrice"] = self.standardPrice!
                    }
                    if self.tradePrice != nil {
                        map["TradePrice"] = self.tradePrice!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DiscountPrice"] as? Double {
                        self.discountPrice = value
                    }
                    if let value = dict["InstanceId"] as? String {
                        self.instanceId = value
                    }
                    if let value = dict["IsContractPromotion"] as? Bool {
                        self.isContractPromotion = value
                    }
                    if let value = dict["OriginalPrice"] as? Double {
                        self.originalPrice = value
                    }
                    if let value = dict["Promotions"] as? [Any?] {
                        var tmp : [DescribePriceResponseBody.PriceInfo.Price.SubPrices.Promotions] = []
                        for v in value {
                            if v != nil {
                                var model = DescribePriceResponseBody.PriceInfo.Price.SubPrices.Promotions()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.promotions = tmp
                    }
                    if let value = dict["RuleIds"] as? [Int64] {
                        self.ruleIds = value
                    }
                    if let value = dict["StandardDiscountPrice"] as? Double {
                        self.standardDiscountPrice = value
                    }
                    if let value = dict["StandardPrice"] as? Double {
                        self.standardPrice = value
                    }
                    if let value = dict["TradePrice"] as? Double {
                        self.tradePrice = value
                    }
                }
            }
            public var coupons: [DescribePriceResponseBody.PriceInfo.Price.Coupons]?

            public var currency: String?

            public var detailInfos: [DescribePriceResponseBody.PriceInfo.Price.DetailInfos]?

            public var discountPrice: Double?

            public var isContractPromotion: Bool?

            public var originalPrice: Double?

            public var promotions: [DescribePriceResponseBody.PriceInfo.Price.Promotions]?

            public var standardDiscountPrice: Double?

            public var standardPrice: Double?

            public var subPrices: [DescribePriceResponseBody.PriceInfo.Price.SubPrices]?

            public var tradePrice: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.coupons != nil {
                    var tmp : [Any] = []
                    for k in self.coupons! {
                        tmp.append(k.toMap())
                    }
                    map["Coupons"] = tmp
                }
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.detailInfos != nil {
                    var tmp : [Any] = []
                    for k in self.detailInfos! {
                        tmp.append(k.toMap())
                    }
                    map["DetailInfos"] = tmp
                }
                if self.discountPrice != nil {
                    map["DiscountPrice"] = self.discountPrice!
                }
                if self.isContractPromotion != nil {
                    map["IsContractPromotion"] = self.isContractPromotion!
                }
                if self.originalPrice != nil {
                    map["OriginalPrice"] = self.originalPrice!
                }
                if self.promotions != nil {
                    var tmp : [Any] = []
                    for k in self.promotions! {
                        tmp.append(k.toMap())
                    }
                    map["Promotions"] = tmp
                }
                if self.standardDiscountPrice != nil {
                    map["StandardDiscountPrice"] = self.standardDiscountPrice!
                }
                if self.standardPrice != nil {
                    map["StandardPrice"] = self.standardPrice!
                }
                if self.subPrices != nil {
                    var tmp : [Any] = []
                    for k in self.subPrices! {
                        tmp.append(k.toMap())
                    }
                    map["SubPrices"] = tmp
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Coupons"] as? [Any?] {
                    var tmp : [DescribePriceResponseBody.PriceInfo.Price.Coupons] = []
                    for v in value {
                        if v != nil {
                            var model = DescribePriceResponseBody.PriceInfo.Price.Coupons()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.coupons = tmp
                }
                if let value = dict["Currency"] as? String {
                    self.currency = value
                }
                if let value = dict["DetailInfos"] as? [Any?] {
                    var tmp : [DescribePriceResponseBody.PriceInfo.Price.DetailInfos] = []
                    for v in value {
                        if v != nil {
                            var model = DescribePriceResponseBody.PriceInfo.Price.DetailInfos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.detailInfos = tmp
                }
                if let value = dict["DiscountPrice"] as? Double {
                    self.discountPrice = value
                }
                if let value = dict["IsContractPromotion"] as? Bool {
                    self.isContractPromotion = value
                }
                if let value = dict["OriginalPrice"] as? Double {
                    self.originalPrice = value
                }
                if let value = dict["Promotions"] as? [Any?] {
                    var tmp : [DescribePriceResponseBody.PriceInfo.Price.Promotions] = []
                    for v in value {
                        if v != nil {
                            var model = DescribePriceResponseBody.PriceInfo.Price.Promotions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.promotions = tmp
                }
                if let value = dict["StandardDiscountPrice"] as? Double {
                    self.standardDiscountPrice = value
                }
                if let value = dict["StandardPrice"] as? Double {
                    self.standardPrice = value
                }
                if let value = dict["SubPrices"] as? [Any?] {
                    var tmp : [DescribePriceResponseBody.PriceInfo.Price.SubPrices] = []
                    for v in value {
                        if v != nil {
                            var model = DescribePriceResponseBody.PriceInfo.Price.SubPrices()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.subPrices = tmp
                }
                if let value = dict["TradePrice"] as? Double {
                    self.tradePrice = value
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public var description_: String?

            public var ruleId: Int64?

            public override init() {
                super.init()
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
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["RuleId"] as? Int64 {
                    self.ruleId = value
                }
            }
        }
        public var price: DescribePriceResponseBody.PriceInfo.Price?

        public var rules: [DescribePriceResponseBody.PriceInfo.Rules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.price?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.price != nil {
                map["Price"] = self.price?.toMap()
            }
            if self.rules != nil {
                var tmp : [Any] = []
                for k in self.rules! {
                    tmp.append(k.toMap())
                }
                map["Rules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Price"] as? [String: Any?] {
                var model = DescribePriceResponseBody.PriceInfo.Price()
                model.fromMap(value)
                self.price = model
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [DescribePriceResponseBody.PriceInfo.Rules] = []
                for v in value {
                    if v != nil {
                        var model = DescribePriceResponseBody.PriceInfo.Rules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rules = tmp
            }
        }
    }
    public var priceInfo: DescribePriceResponseBody.PriceInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.priceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.priceInfo != nil {
            map["PriceInfo"] = self.priceInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PriceInfo"] as? [String: Any?] {
            var model = DescribePriceResponseBody.PriceInfo()
            model.fromMap(value)
            self.priceInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePriceResponseBody?

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
            var model = DescribePriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSecurityAgentStatusRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeSecurityAgentStatusResponseBody : Tea.TeaModel {
    public var clientStatus: String?

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
        if self.clientStatus != nil {
            map["ClientStatus"] = self.clientStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientStatus"] as? String {
            self.clientStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeSecurityAgentStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecurityAgentStatusResponseBody?

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
            var model = DescribeSecurityAgentStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetachKeyPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceIds: [String]?

    public var keyPairName: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DetachKeyPairResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var code: String?

        public var instanceId: String?

        public var message: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.message != nil {
                map["Message"] = self.message!
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
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? String {
                self.success = value
            }
        }
    }
    public var failCount: Int32?

    public var requestId: String?

    public var results: [DetachKeyPairResponseBody.Results]?

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
        if self.failCount != nil {
            map["FailCount"] = self.failCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailCount"] as? Int32 {
            self.failCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [DetachKeyPairResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = DetachKeyPairResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.results = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DetachKeyPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachKeyPairResponseBody?

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
            var model = DetachKeyPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableFirewallRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var regionId: String?

    public var remark: String?

    public var ruleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class DisableFirewallRuleResponseBody : Tea.TeaModel {
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

public class DisableFirewallRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableFirewallRuleResponseBody?

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
            var model = DisableFirewallRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableFirewallRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var regionId: String?

    public var remark: String?

    public var ruleId: String?

    public var sourceCidrIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.sourceCidrIp != nil {
            map["SourceCidrIp"] = self.sourceCidrIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["SourceCidrIp"] as? String {
            self.sourceCidrIp = value
        }
    }
}

public class EnableFirewallRuleResponseBody : Tea.TeaModel {
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

public class EnableFirewallRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableFirewallRuleResponseBody?

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
            var model = EnableFirewallRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImportKeyPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var keyPairName: String?

    public var publicKeyBody: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.publicKeyBody != nil {
            map["PublicKeyBody"] = self.publicKeyBody!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
        if let value = dict["PublicKeyBody"] as? String {
            self.publicKeyBody = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ImportKeyPairResponseBody : Tea.TeaModel {
    public var keyPairName: String?

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
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ImportKeyPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportKeyPairResponseBody?

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
            var model = ImportKeyPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InstallCloudAssistantRequest : Tea.TeaModel {
    public var instanceIds: [String]?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class InstallCloudAssistantShrinkRequest : Tea.TeaModel {
    public var instanceIdsShrink: String?

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
        if self.instanceIdsShrink != nil {
            map["InstanceIds"] = self.instanceIdsShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIdsShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class InstallCloudAssistantResponseBody : Tea.TeaModel {
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

public class InstallCloudAssistantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallCloudAssistantResponseBody?

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
            var model = InstallCloudAssistantResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InstallCloudMonitorAgentRequest : Tea.TeaModel {
    public var clientToken: String?

    public var force: Bool?

    public var instanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Force"] as? Bool {
            self.force = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class InstallCloudMonitorAgentResponseBody : Tea.TeaModel {
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

public class InstallCloudMonitorAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallCloudMonitorAgentResponseBody?

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
            var model = InstallCloudMonitorAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InvokeCommandRequest : Tea.TeaModel {
    public var commandId: String?

    public var instanceIds: String?

    public var parameters: [String: Any]?

    public var regionId: String?

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
        if self.commandId != nil {
            map["CommandId"] = self.commandId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandId"] as? String {
            self.commandId = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIds = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
    }
}

public class InvokeCommandShrinkRequest : Tea.TeaModel {
    public var commandId: String?

    public var instanceIds: String?

    public var parametersShrink: String?

    public var regionId: String?

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
        if self.commandId != nil {
            map["CommandId"] = self.commandId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandId"] as? String {
            self.commandId = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIds = value
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
    }
}

public class InvokeCommandResponseBody : Tea.TeaModel {
    public var invokeId: String?

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
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InvokeId"] as? String {
            self.invokeId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class InvokeCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvokeCommandResponseBody?

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
            var model = InvokeCommandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCustomImageShareAccountsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var imageId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListCustomImageShareAccountsResponseBody : Tea.TeaModel {
    public class ImageShareUsers : Tea.TeaModel {
        public var sharedTime: String?

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
            if self.sharedTime != nil {
                map["SharedTime"] = self.sharedTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SharedTime"] as? String {
                self.sharedTime = value
            }
            if let value = dict["UserId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public var imageShareUsers: [ListCustomImageShareAccountsResponseBody.ImageShareUsers]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.imageShareUsers != nil {
            var tmp : [Any] = []
            for k in self.imageShareUsers! {
                tmp.append(k.toMap())
            }
            map["ImageShareUsers"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageShareUsers"] as? [Any?] {
            var tmp : [ListCustomImageShareAccountsResponseBody.ImageShareUsers] = []
            for v in value {
                if v != nil {
                    var model = ListCustomImageShareAccountsResponseBody.ImageShareUsers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.imageShareUsers = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListCustomImageShareAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomImageShareAccountsResponseBody?

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
            var model = ListCustomImageShareAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCustomImagesRequest : Tea.TeaModel {
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
    public var clientToken: String?

    public var dataSnapshotId: String?

    public var imageIds: String?

    public var imageNames: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var share: Bool?

    public var systemSnapshotId: String?

    public var tag: [ListCustomImagesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dataSnapshotId != nil {
            map["DataSnapshotId"] = self.dataSnapshotId!
        }
        if self.imageIds != nil {
            map["ImageIds"] = self.imageIds!
        }
        if self.imageNames != nil {
            map["ImageNames"] = self.imageNames!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.share != nil {
            map["Share"] = self.share!
        }
        if self.systemSnapshotId != nil {
            map["SystemSnapshotId"] = self.systemSnapshotId!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataSnapshotId"] as? String {
            self.dataSnapshotId = value
        }
        if let value = dict["ImageIds"] as? String {
            self.imageIds = value
        }
        if let value = dict["ImageNames"] as? String {
            self.imageNames = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Share"] as? Bool {
            self.share = value
        }
        if let value = dict["SystemSnapshotId"] as? String {
            self.systemSnapshotId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListCustomImagesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListCustomImagesRequest.Tag()
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

public class ListCustomImagesResponseBody : Tea.TeaModel {
    public class CustomImages : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
        public var createInstances: [String]?

        public var creationTime: String?

        public var dataSnapshotId: String?

        public var dataSnapshotName: String?

        public var description_: String?

        public var imageId: String?

        public var inShare: Bool?

        public var inShareUser: Bool?

        public var instanceId: String?

        public var instanceName: String?

        public var name: String?

        public var osType: String?

        public var regionId: String?

        public var requiredDataDiskSize: Int32?

        public var requiredSystemDiskSize: Int32?

        public var resourceGroupId: String?

        public var sourceImageName: String?

        public var sourceImageVersion: String?

        public var status: String?

        public var systemSnapshotId: String?

        public var systemSnapshotName: String?

        public var tags: [ListCustomImagesResponseBody.CustomImages.Tags]?

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
            if self.createInstances != nil {
                map["CreateInstances"] = self.createInstances!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.dataSnapshotId != nil {
                map["DataSnapshotId"] = self.dataSnapshotId!
            }
            if self.dataSnapshotName != nil {
                map["DataSnapshotName"] = self.dataSnapshotName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.inShare != nil {
                map["InShare"] = self.inShare!
            }
            if self.inShareUser != nil {
                map["InShareUser"] = self.inShareUser!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.requiredDataDiskSize != nil {
                map["RequiredDataDiskSize"] = self.requiredDataDiskSize!
            }
            if self.requiredSystemDiskSize != nil {
                map["RequiredSystemDiskSize"] = self.requiredSystemDiskSize!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.sourceImageName != nil {
                map["SourceImageName"] = self.sourceImageName!
            }
            if self.sourceImageVersion != nil {
                map["SourceImageVersion"] = self.sourceImageVersion!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.systemSnapshotId != nil {
                map["SystemSnapshotId"] = self.systemSnapshotId!
            }
            if self.systemSnapshotName != nil {
                map["SystemSnapshotName"] = self.systemSnapshotName!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateInstances"] as? [String] {
                self.createInstances = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["DataSnapshotId"] as? String {
                self.dataSnapshotId = value
            }
            if let value = dict["DataSnapshotName"] as? String {
                self.dataSnapshotName = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["InShare"] as? Bool {
                self.inShare = value
            }
            if let value = dict["InShareUser"] as? Bool {
                self.inShareUser = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OsType"] as? String {
                self.osType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RequiredDataDiskSize"] as? Int32 {
                self.requiredDataDiskSize = value
            }
            if let value = dict["RequiredSystemDiskSize"] as? Int32 {
                self.requiredSystemDiskSize = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["SourceImageName"] as? String {
                self.sourceImageName = value
            }
            if let value = dict["SourceImageVersion"] as? String {
                self.sourceImageVersion = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SystemSnapshotId"] as? String {
                self.systemSnapshotId = value
            }
            if let value = dict["SystemSnapshotName"] as? String {
                self.systemSnapshotName = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListCustomImagesResponseBody.CustomImages.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListCustomImagesResponseBody.CustomImages.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UserId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public var customImages: [ListCustomImagesResponseBody.CustomImages]?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customImages != nil {
            var tmp : [Any] = []
            for k in self.customImages! {
                tmp.append(k.toMap())
            }
            map["CustomImages"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomImages"] as? [Any?] {
            var tmp : [ListCustomImagesResponseBody.CustomImages] = []
            for v in value {
                if v != nil {
                    var model = ListCustomImagesResponseBody.CustomImages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.customImages = tmp
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListCustomImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomImagesResponseBody?

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
            var model = ListCustomImagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDisksRequest : Tea.TeaModel {
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
    public var diskIds: String?

    public var diskType: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [ListDisksRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diskIds != nil {
            map["DiskIds"] = self.diskIds!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if let value = dict["DiskIds"] as? String {
            self.diskIds = value
        }
        if let value = dict["DiskType"] as? String {
            self.diskType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListDisksRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListDisksRequest.Tag()
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

public class ListDisksResponseBody : Tea.TeaModel {
    public class Disks : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
        public var category: String?

        public var creationTime: String?

        public var device: String?

        public var diskChargeType: String?

        public var diskId: String?

        public var diskName: String?

        public var diskType: String?

        public var instanceId: String?

        public var instanceName: String?

        public var regionId: String?

        public var remark: String?

        public var resourceGroupId: String?

        public var size: Int32?

        public var status: String?

        public var tags: [ListDisksResponseBody.Disks.Tags]?

        public override init() {
            super.init()
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
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.device != nil {
                map["Device"] = self.device!
            }
            if self.diskChargeType != nil {
                map["DiskChargeType"] = self.diskChargeType!
            }
            if self.diskId != nil {
                map["DiskId"] = self.diskId!
            }
            if self.diskName != nil {
                map["DiskName"] = self.diskName!
            }
            if self.diskType != nil {
                map["DiskType"] = self.diskType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["Device"] as? String {
                self.device = value
            }
            if let value = dict["DiskChargeType"] as? String {
                self.diskChargeType = value
            }
            if let value = dict["DiskId"] as? String {
                self.diskId = value
            }
            if let value = dict["DiskName"] as? String {
                self.diskName = value
            }
            if let value = dict["DiskType"] as? String {
                self.diskType = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListDisksResponseBody.Disks.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListDisksResponseBody.Disks.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
        }
    }
    public var disks: [ListDisksResponseBody.Disks]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.disks != nil {
            var tmp : [Any] = []
            for k in self.disks! {
                tmp.append(k.toMap())
            }
            map["Disks"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Disks"] as? [Any?] {
            var tmp : [ListDisksResponseBody.Disks] = []
            for v in value {
                if v != nil {
                    var model = ListDisksResponseBody.Disks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.disks = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDisksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDisksResponseBody?

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
            var model = ListDisksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFirewallRulesRequest : Tea.TeaModel {
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
    public var firewallRuleId: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var tag: [ListFirewallRulesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.firewallRuleId != nil {
            map["FirewallRuleId"] = self.firewallRuleId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if let value = dict["FirewallRuleId"] as? String {
            self.firewallRuleId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListFirewallRulesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListFirewallRulesRequest.Tag()
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

public class ListFirewallRulesResponseBody : Tea.TeaModel {
    public class FirewallRules : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
        public var instanceId: String?

        public var policy: String?

        public var port: String?

        public var remark: String?

        public var ruleId: String?

        public var ruleProtocol: String?

        public var sourceCidrIp: String?

        public var tags: [ListFirewallRulesResponseBody.FirewallRules.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleProtocol != nil {
                map["RuleProtocol"] = self.ruleProtocol!
            }
            if self.sourceCidrIp != nil {
                map["SourceCidrIp"] = self.sourceCidrIp!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Policy"] as? String {
                self.policy = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleProtocol"] as? String {
                self.ruleProtocol = value
            }
            if let value = dict["SourceCidrIp"] as? String {
                self.sourceCidrIp = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListFirewallRulesResponseBody.FirewallRules.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListFirewallRulesResponseBody.FirewallRules.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
        }
    }
    public var firewallRules: [ListFirewallRulesResponseBody.FirewallRules]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.firewallRules != nil {
            var tmp : [Any] = []
            for k in self.firewallRules! {
                tmp.append(k.toMap())
            }
            map["FirewallRules"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FirewallRules"] as? [Any?] {
            var tmp : [ListFirewallRulesResponseBody.FirewallRules] = []
            for v in value {
                if v != nil {
                    var model = ListFirewallRulesResponseBody.FirewallRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.firewallRules = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListFirewallRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFirewallRulesResponseBody?

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
            var model = ListFirewallRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListImagesRequest : Tea.TeaModel {
    public var imageIds: String?

    public var imageType: String?

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
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageIds"] as? String {
            self.imageIds = value
        }
        if let value = dict["ImageType"] as? String {
            self.imageType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListImagesResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public var description_: String?

        public var imageId: String?

        public var imageName: String?

        public var imageType: String?

        public var platform: String?

        public override init() {
            super.init()
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
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageName != nil {
                map["ImageName"] = self.imageName!
            }
            if self.imageType != nil {
                map["ImageType"] = self.imageType!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageName"] as? String {
                self.imageName = value
            }
            if let value = dict["ImageType"] as? String {
                self.imageType = value
            }
            if let value = dict["Platform"] as? String {
                self.platform = value
            }
        }
    }
    public var images: [ListImagesResponseBody.Images]?

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
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Images"] as? [Any?] {
            var tmp : [ListImagesResponseBody.Images] = []
            for v in value {
                if v != nil {
                    var model = ListImagesResponseBody.Images()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.images = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListImagesResponseBody?

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
            var model = ListImagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancePlansModificationRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListInstancePlansModificationResponseBody : Tea.TeaModel {
    public class Plans : Tea.TeaModel {
        public var bandwidth: Int32?

        public var core: Int32?

        public var currency: String?

        public var diskSize: Int32?

        public var diskType: String?

        public var flow: Int32?

        public var memory: Int32?

        public var originPrice: Double?

        public var planId: String?

        public var supportPlatform: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.core != nil {
                map["Core"] = self.core!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.diskSize != nil {
                map["DiskSize"] = self.diskSize!
            }
            if self.diskType != nil {
                map["DiskType"] = self.diskType!
            }
            if self.flow != nil {
                map["Flow"] = self.flow!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.originPrice != nil {
                map["OriginPrice"] = self.originPrice!
            }
            if self.planId != nil {
                map["PlanId"] = self.planId!
            }
            if self.supportPlatform != nil {
                map["SupportPlatform"] = self.supportPlatform!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bandwidth"] as? Int32 {
                self.bandwidth = value
            }
            if let value = dict["Core"] as? Int32 {
                self.core = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DiskSize"] as? Int32 {
                self.diskSize = value
            }
            if let value = dict["DiskType"] as? String {
                self.diskType = value
            }
            if let value = dict["Flow"] as? Int32 {
                self.flow = value
            }
            if let value = dict["Memory"] as? Int32 {
                self.memory = value
            }
            if let value = dict["OriginPrice"] as? Double {
                self.originPrice = value
            }
            if let value = dict["PlanId"] as? String {
                self.planId = value
            }
            if let value = dict["SupportPlatform"] as? String {
                self.supportPlatform = value
            }
        }
    }
    public var plans: [ListInstancePlansModificationResponseBody.Plans]?

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
        if self.plans != nil {
            var tmp : [Any] = []
            for k in self.plans! {
                tmp.append(k.toMap())
            }
            map["Plans"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Plans"] as? [Any?] {
            var tmp : [ListInstancePlansModificationResponseBody.Plans] = []
            for v in value {
                if v != nil {
                    var model = ListInstancePlansModificationResponseBody.Plans()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.plans = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListInstancePlansModificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancePlansModificationResponseBody?

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
            var model = ListInstancePlansModificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceStatusRequest : Tea.TeaModel {
    public var instanceIds: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIds = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListInstanceStatusResponseBody : Tea.TeaModel {
    public class InstanceStatuses : Tea.TeaModel {
        public var instanceId: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var instanceStatuses: [ListInstanceStatusResponseBody.InstanceStatuses]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.instanceStatuses != nil {
            var tmp : [Any] = []
            for k in self.instanceStatuses! {
                tmp.append(k.toMap())
            }
            map["InstanceStatuses"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceStatuses"] as? [Any?] {
            var tmp : [ListInstanceStatusResponseBody.InstanceStatuses] = []
            for v in value {
                if v != nil {
                    var model = ListInstanceStatusResponseBody.InstanceStatuses()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceStatuses = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListInstanceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceStatusResponseBody?

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
            var model = ListInstanceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
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
    public var chargeType: String?

    public var instanceIds: String?

    public var instanceName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var planType: String?

    public var publicIpAddresses: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var status: String?

    public var tag: [ListInstancesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.planType != nil {
            map["PlanType"] = self.planType!
        }
        if self.publicIpAddresses != nil {
            map["PublicIpAddresses"] = self.publicIpAddresses!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIds = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PlanType"] as? String {
            self.planType = value
        }
        if let value = dict["PublicIpAddresses"] as? String {
            self.publicIpAddresses = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListInstancesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesRequest.Tag()
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

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class Disks : Tea.TeaModel {
            public class DiskTags : Tea.TeaModel {
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
            public var category: String?

            public var creationTime: String?

            public var device: String?

            public var diskChargeType: String?

            public var diskId: String?

            public var diskName: String?

            public var diskTags: [ListInstancesResponseBody.Instances.Disks.DiskTags]?

            public var diskType: String?

            public var regionId: String?

            public var remark: String?

            public var resourceGroupId: String?

            public var size: Int32?

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
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.device != nil {
                    map["Device"] = self.device!
                }
                if self.diskChargeType != nil {
                    map["DiskChargeType"] = self.diskChargeType!
                }
                if self.diskId != nil {
                    map["DiskId"] = self.diskId!
                }
                if self.diskName != nil {
                    map["DiskName"] = self.diskName!
                }
                if self.diskTags != nil {
                    var tmp : [Any] = []
                    for k in self.diskTags! {
                        tmp.append(k.toMap())
                    }
                    map["DiskTags"] = tmp
                }
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["CreationTime"] as? String {
                    self.creationTime = value
                }
                if let value = dict["Device"] as? String {
                    self.device = value
                }
                if let value = dict["DiskChargeType"] as? String {
                    self.diskChargeType = value
                }
                if let value = dict["DiskId"] as? String {
                    self.diskId = value
                }
                if let value = dict["DiskName"] as? String {
                    self.diskName = value
                }
                if let value = dict["DiskTags"] as? [Any?] {
                    var tmp : [ListInstancesResponseBody.Instances.Disks.DiskTags] = []
                    for v in value {
                        if v != nil {
                            var model = ListInstancesResponseBody.Instances.Disks.DiskTags()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.diskTags = tmp
                }
                if let value = dict["DiskType"] as? String {
                    self.diskType = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["Size"] as? Int32 {
                    self.size = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public class Image : Tea.TeaModel {
            public var imageContact: String?

            public var imageIconUrl: String?

            public var imageName: String?

            public var imageType: String?

            public var imageVersion: String?

            public var osType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.imageContact != nil {
                    map["ImageContact"] = self.imageContact!
                }
                if self.imageIconUrl != nil {
                    map["ImageIconUrl"] = self.imageIconUrl!
                }
                if self.imageName != nil {
                    map["ImageName"] = self.imageName!
                }
                if self.imageType != nil {
                    map["ImageType"] = self.imageType!
                }
                if self.imageVersion != nil {
                    map["ImageVersion"] = self.imageVersion!
                }
                if self.osType != nil {
                    map["OsType"] = self.osType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ImageContact"] as? String {
                    self.imageContact = value
                }
                if let value = dict["ImageIconUrl"] as? String {
                    self.imageIconUrl = value
                }
                if let value = dict["ImageName"] as? String {
                    self.imageName = value
                }
                if let value = dict["ImageType"] as? String {
                    self.imageType = value
                }
                if let value = dict["ImageVersion"] as? String {
                    self.imageVersion = value
                }
                if let value = dict["OsType"] as? String {
                    self.osType = value
                }
            }
        }
        public class NetworkAttributes : Tea.TeaModel {
            public var peakBandwidth: Int32?

            public var privateIpAddress: String?

            public var publicIpAddress: String?

            public var publicIpDdosStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.peakBandwidth != nil {
                    map["PeakBandwidth"] = self.peakBandwidth!
                }
                if self.privateIpAddress != nil {
                    map["PrivateIpAddress"] = self.privateIpAddress!
                }
                if self.publicIpAddress != nil {
                    map["PublicIpAddress"] = self.publicIpAddress!
                }
                if self.publicIpDdosStatus != nil {
                    map["PublicIpDdosStatus"] = self.publicIpDdosStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PeakBandwidth"] as? Int32 {
                    self.peakBandwidth = value
                }
                if let value = dict["PrivateIpAddress"] as? String {
                    self.privateIpAddress = value
                }
                if let value = dict["PublicIpAddress"] as? String {
                    self.publicIpAddress = value
                }
                if let value = dict["PublicIpDdosStatus"] as? String {
                    self.publicIpDdosStatus = value
                }
            }
        }
        public class ResourceSpec : Tea.TeaModel {
            public var bandwidth: Int32?

            public var cpu: Int32?

            public var diskCategory: String?

            public var diskSize: Int32?

            public var flow: Double?

            public var memory: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bandwidth != nil {
                    map["Bandwidth"] = self.bandwidth!
                }
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.diskCategory != nil {
                    map["DiskCategory"] = self.diskCategory!
                }
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize!
                }
                if self.flow != nil {
                    map["Flow"] = self.flow!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Bandwidth"] as? Int32 {
                    self.bandwidth = value
                }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["DiskCategory"] as? String {
                    self.diskCategory = value
                }
                if let value = dict["DiskSize"] as? Int32 {
                    self.diskSize = value
                }
                if let value = dict["Flow"] as? Double {
                    self.flow = value
                }
                if let value = dict["Memory"] as? Double {
                    self.memory = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
        public var businessStatus: String?

        public var chargeType: String?

        public var combination: Bool?

        public var combinationInstanceId: String?

        public var commodityCode: String?

        public var creationTime: String?

        public var ddosStatus: String?

        public var disableReason: String?

        public var disks: [ListInstancesResponseBody.Instances.Disks]?

        public var expiredTime: String?

        public var image: ListInstancesResponseBody.Instances.Image?

        public var imageId: String?

        public var innerIpAddress: String?

        public var instanceId: String?

        public var instanceName: String?

        public var networkAttributes: [ListInstancesResponseBody.Instances.NetworkAttributes]?

        public var planId: String?

        public var planType: String?

        public var publicIpAddress: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var resourceSpec: ListInstancesResponseBody.Instances.ResourceSpec?

        public var status: String?

        public var tags: [ListInstancesResponseBody.Instances.Tags]?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.image?.validate()
            try self.resourceSpec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessStatus != nil {
                map["BusinessStatus"] = self.businessStatus!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.combination != nil {
                map["Combination"] = self.combination!
            }
            if self.combinationInstanceId != nil {
                map["CombinationInstanceId"] = self.combinationInstanceId!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.ddosStatus != nil {
                map["DdosStatus"] = self.ddosStatus!
            }
            if self.disableReason != nil {
                map["DisableReason"] = self.disableReason!
            }
            if self.disks != nil {
                var tmp : [Any] = []
                for k in self.disks! {
                    tmp.append(k.toMap())
                }
                map["Disks"] = tmp
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.image != nil {
                map["Image"] = self.image?.toMap()
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.innerIpAddress != nil {
                map["InnerIpAddress"] = self.innerIpAddress!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.networkAttributes != nil {
                var tmp : [Any] = []
                for k in self.networkAttributes! {
                    tmp.append(k.toMap())
                }
                map["NetworkAttributes"] = tmp
            }
            if self.planId != nil {
                map["PlanId"] = self.planId!
            }
            if self.planType != nil {
                map["PlanType"] = self.planType!
            }
            if self.publicIpAddress != nil {
                map["PublicIpAddress"] = self.publicIpAddress!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceSpec != nil {
                map["ResourceSpec"] = self.resourceSpec?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BusinessStatus"] as? String {
                self.businessStatus = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["Combination"] as? Bool {
                self.combination = value
            }
            if let value = dict["CombinationInstanceId"] as? String {
                self.combinationInstanceId = value
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["DdosStatus"] as? String {
                self.ddosStatus = value
            }
            if let value = dict["DisableReason"] as? String {
                self.disableReason = value
            }
            if let value = dict["Disks"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.Instances.Disks] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.Instances.Disks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.disks = tmp
            }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["Image"] as? [String: Any?] {
                var model = ListInstancesResponseBody.Instances.Image()
                model.fromMap(value)
                self.image = model
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["InnerIpAddress"] as? String {
                self.innerIpAddress = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["NetworkAttributes"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.Instances.NetworkAttributes] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.Instances.NetworkAttributes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.networkAttributes = tmp
            }
            if let value = dict["PlanId"] as? String {
                self.planId = value
            }
            if let value = dict["PlanType"] as? String {
                self.planType = value
            }
            if let value = dict["PublicIpAddress"] as? String {
                self.publicIpAddress = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceSpec"] as? [String: Any?] {
                var model = ListInstancesResponseBody.Instances.ResourceSpec()
                model.fromMap(value)
                self.resourceSpec = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.Instances.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.Instances.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var instances: [ListInstancesResponseBody.Instances]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [ListInstancesResponseBody.Instances] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesResponseBody.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesResponseBody?

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
            var model = ListInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancesTrafficPackagesRequest : Tea.TeaModel {
    public var instanceIds: String?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListInstancesTrafficPackagesResponseBody : Tea.TeaModel {
    public class InstanceTrafficPackageUsages : Tea.TeaModel {
        public var instanceId: String?

        public var trafficOverflow: Int64?

        public var trafficPackageRemaining: Int64?

        public var trafficPackageTotal: Int64?

        public var trafficUsed: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.trafficOverflow != nil {
                map["TrafficOverflow"] = self.trafficOverflow!
            }
            if self.trafficPackageRemaining != nil {
                map["TrafficPackageRemaining"] = self.trafficPackageRemaining!
            }
            if self.trafficPackageTotal != nil {
                map["TrafficPackageTotal"] = self.trafficPackageTotal!
            }
            if self.trafficUsed != nil {
                map["TrafficUsed"] = self.trafficUsed!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["TrafficOverflow"] as? Int64 {
                self.trafficOverflow = value
            }
            if let value = dict["TrafficPackageRemaining"] as? Int64 {
                self.trafficPackageRemaining = value
            }
            if let value = dict["TrafficPackageTotal"] as? Int64 {
                self.trafficPackageTotal = value
            }
            if let value = dict["TrafficUsed"] as? Int64 {
                self.trafficUsed = value
            }
        }
    }
    public var instanceTrafficPackageUsages: [ListInstancesTrafficPackagesResponseBody.InstanceTrafficPackageUsages]?

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
        if self.instanceTrafficPackageUsages != nil {
            var tmp : [Any] = []
            for k in self.instanceTrafficPackageUsages! {
                tmp.append(k.toMap())
            }
            map["InstanceTrafficPackageUsages"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceTrafficPackageUsages"] as? [Any?] {
            var tmp : [ListInstancesTrafficPackagesResponseBody.InstanceTrafficPackageUsages] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesTrafficPackagesResponseBody.InstanceTrafficPackageUsages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceTrafficPackageUsages = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListInstancesTrafficPackagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesTrafficPackagesResponseBody?

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
            var model = ListInstancesTrafficPackagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKeyPairsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var keyPairName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListKeyPairsResponseBody : Tea.TeaModel {
    public class KeyPairs : Tea.TeaModel {
        public var creationTime: String?

        public var instanceIds: [String]?

        public var keyPairName: String?

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
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.instanceIds != nil {
                map["InstanceIds"] = self.instanceIds!
            }
            if self.keyPairName != nil {
                map["KeyPairName"] = self.keyPairName!
            }
            if self.publicKey != nil {
                map["PublicKey"] = self.publicKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["InstanceIds"] as? [String] {
                self.instanceIds = value
            }
            if let value = dict["KeyPairName"] as? String {
                self.keyPairName = value
            }
            if let value = dict["PublicKey"] as? String {
                self.publicKey = value
            }
        }
    }
    public var keyPairs: [ListKeyPairsResponseBody.KeyPairs]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.keyPairs != nil {
            var tmp : [Any] = []
            for k in self.keyPairs! {
                tmp.append(k.toMap())
            }
            map["KeyPairs"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyPairs"] as? [Any?] {
            var tmp : [ListKeyPairsResponseBody.KeyPairs] = []
            for v in value {
                if v != nil {
                    var model = ListKeyPairsResponseBody.KeyPairs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.keyPairs = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListKeyPairsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKeyPairsResponseBody?

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
            var model = ListKeyPairsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPlansRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListPlansResponseBody : Tea.TeaModel {
    public class Plans : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var cnTitle: String?

            public var color: String?

            public var enTitle: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cnTitle != nil {
                    map["CnTitle"] = self.cnTitle!
                }
                if self.color != nil {
                    map["Color"] = self.color!
                }
                if self.enTitle != nil {
                    map["EnTitle"] = self.enTitle!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CnTitle"] as? String {
                    self.cnTitle = value
                }
                if let value = dict["Color"] as? String {
                    self.color = value
                }
                if let value = dict["EnTitle"] as? String {
                    self.enTitle = value
                }
            }
        }
        public var bandwidth: Int32?

        public var core: Int32?

        public var credits: Int32?

        public var currency: String?

        public var diskSize: Int32?

        public var diskType: String?

        public var flow: Int32?

        public var ispType: String?

        public var memory: Double?

        public var originPrice: String?

        public var planId: String?

        public var planType: String?

        public var publicIpNum: String?

        public var supportPlatform: String?

        public var tags: [ListPlansResponseBody.Plans.Tags]?

        public var tokens: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.core != nil {
                map["Core"] = self.core!
            }
            if self.credits != nil {
                map["Credits"] = self.credits!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.diskSize != nil {
                map["DiskSize"] = self.diskSize!
            }
            if self.diskType != nil {
                map["DiskType"] = self.diskType!
            }
            if self.flow != nil {
                map["Flow"] = self.flow!
            }
            if self.ispType != nil {
                map["IspType"] = self.ispType!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.originPrice != nil {
                map["OriginPrice"] = self.originPrice!
            }
            if self.planId != nil {
                map["PlanId"] = self.planId!
            }
            if self.planType != nil {
                map["PlanType"] = self.planType!
            }
            if self.publicIpNum != nil {
                map["PublicIpNum"] = self.publicIpNum!
            }
            if self.supportPlatform != nil {
                map["SupportPlatform"] = self.supportPlatform!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.tokens != nil {
                map["Tokens"] = self.tokens!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bandwidth"] as? Int32 {
                self.bandwidth = value
            }
            if let value = dict["Core"] as? Int32 {
                self.core = value
            }
            if let value = dict["Credits"] as? Int32 {
                self.credits = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DiskSize"] as? Int32 {
                self.diskSize = value
            }
            if let value = dict["DiskType"] as? String {
                self.diskType = value
            }
            if let value = dict["Flow"] as? Int32 {
                self.flow = value
            }
            if let value = dict["IspType"] as? String {
                self.ispType = value
            }
            if let value = dict["Memory"] as? Double {
                self.memory = value
            }
            if let value = dict["OriginPrice"] as? String {
                self.originPrice = value
            }
            if let value = dict["PlanId"] as? String {
                self.planId = value
            }
            if let value = dict["PlanType"] as? String {
                self.planType = value
            }
            if let value = dict["PublicIpNum"] as? String {
                self.publicIpNum = value
            }
            if let value = dict["SupportPlatform"] as? String {
                self.supportPlatform = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListPlansResponseBody.Plans.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListPlansResponseBody.Plans.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["Tokens"] as? Int32 {
                self.tokens = value
            }
        }
    }
    public var plans: [ListPlansResponseBody.Plans]?

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
        if self.plans != nil {
            var tmp : [Any] = []
            for k in self.plans! {
                tmp.append(k.toMap())
            }
            map["Plans"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Plans"] as? [Any?] {
            var tmp : [ListPlansResponseBody.Plans] = []
            for v in value {
                if v != nil {
                    var model = ListPlansResponseBody.Plans()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.plans = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPlansResponseBody?

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
            var model = ListPlansResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

        public var regionEndpoint: String?

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
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.regionEndpoint != nil {
                map["RegionEndpoint"] = self.regionEndpoint!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["RegionEndpoint"] as? String {
                self.regionEndpoint = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var regions: [ListRegionsResponseBody.Regions]?

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
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [ListRegionsResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = ListRegionsResponseBody.Regions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegionsResponseBody?

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
            var model = ListRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSnapshotsRequest : Tea.TeaModel {
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
    public var diskId: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var snapshotIds: String?

    public var sourceDiskType: String?

    public var tag: [ListSnapshotsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diskId != nil {
            map["DiskId"] = self.diskId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.snapshotIds != nil {
            map["SnapshotIds"] = self.snapshotIds!
        }
        if self.sourceDiskType != nil {
            map["SourceDiskType"] = self.sourceDiskType!
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
        if let value = dict["DiskId"] as? String {
            self.diskId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SnapshotIds"] as? String {
            self.snapshotIds = value
        }
        if let value = dict["SourceDiskType"] as? String {
            self.sourceDiskType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListSnapshotsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListSnapshotsRequest.Tag()
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

public class ListSnapshotsResponseBody : Tea.TeaModel {
    public class Snapshots : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
        public var creationTime: String?

        public var instanceId: String?

        public var progress: String?

        public var regionId: String?

        public var remark: String?

        public var resourceGroupId: String?

        public var rollbackTime: String?

        public var snapshotId: String?

        public var snapshotName: String?

        public var sourceDiskId: String?

        public var sourceDiskType: String?

        public var status: String?

        public var tags: [ListSnapshotsResponseBody.Snapshots.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.rollbackTime != nil {
                map["RollbackTime"] = self.rollbackTime!
            }
            if self.snapshotId != nil {
                map["SnapshotId"] = self.snapshotId!
            }
            if self.snapshotName != nil {
                map["SnapshotName"] = self.snapshotName!
            }
            if self.sourceDiskId != nil {
                map["SourceDiskId"] = self.sourceDiskId!
            }
            if self.sourceDiskType != nil {
                map["SourceDiskType"] = self.sourceDiskType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Progress"] as? String {
                self.progress = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["RollbackTime"] as? String {
                self.rollbackTime = value
            }
            if let value = dict["SnapshotId"] as? String {
                self.snapshotId = value
            }
            if let value = dict["SnapshotName"] as? String {
                self.snapshotName = value
            }
            if let value = dict["SourceDiskId"] as? String {
                self.sourceDiskId = value
            }
            if let value = dict["SourceDiskType"] as? String {
                self.sourceDiskType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListSnapshotsResponseBody.Snapshots.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListSnapshotsResponseBody.Snapshots.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var snapshots: [ListSnapshotsResponseBody.Snapshots]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.snapshots != nil {
            var tmp : [Any] = []
            for k in self.snapshots! {
                tmp.append(k.toMap())
            }
            map["Snapshots"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Snapshots"] as? [Any?] {
            var tmp : [ListSnapshotsResponseBody.Snapshots] = []
            for v in value {
                if v != nil {
                    var model = ListSnapshotsResponseBody.Snapshots()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.snapshots = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListSnapshotsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSnapshotsResponseBody?

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
            var model = ListSnapshotsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
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
    public var clientToken: String?

    public var nextToken: String?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tag()
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

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public class TagResource : Tea.TeaModel {
            public var resourceId: String?

            public var resourceType: String?

            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var tagResource: [ListTagResourcesResponseBody.TagResources.TagResource]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagResource != nil {
                var tmp : [Any] = []
                for k in self.tagResource! {
                    tmp.append(k.toMap())
                }
                map["TagResource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagResource"] as? [Any?] {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in value {
                    if v != nil {
                        var model = ListTagResourcesResponseBody.TagResources.TagResource()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagResource = tmp
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: ListTagResourcesResponseBody.TagResources?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagResources?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            map["TagResources"] = self.tagResources?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(value)
            self.tagResources = model
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

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
            var model = ListTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LoginInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var password: String?

    public var port: Int32?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Port"] as? Int32 {
            self.port = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
    }
}

public class LoginInstanceResponseBody : Tea.TeaModel {
    public var protocol_: String?

    public var redirectUrl: String?

    public var requestId: String?

    public var securityToken: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.redirectUrl != nil {
            map["RedirectUrl"] = self.redirectUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["RedirectUrl"] as? String {
            self.redirectUrl = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class LoginInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LoginInstanceResponseBody?

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
            var model = LoginInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDatabaseInstanceDescriptionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var databaseInstanceDescription: String?

    public var databaseInstanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.databaseInstanceDescription != nil {
            map["DatabaseInstanceDescription"] = self.databaseInstanceDescription!
        }
        if self.databaseInstanceId != nil {
            map["DatabaseInstanceId"] = self.databaseInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DatabaseInstanceDescription"] as? String {
            self.databaseInstanceDescription = value
        }
        if let value = dict["DatabaseInstanceId"] as? String {
            self.databaseInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyDatabaseInstanceDescriptionResponseBody : Tea.TeaModel {
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

public class ModifyDatabaseInstanceDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDatabaseInstanceDescriptionResponseBody?

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
            var model = ModifyDatabaseInstanceDescriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDatabaseInstanceParameterRequest : Tea.TeaModel {
    public var clientToken: String?

    public var databaseInstanceId: String?

    public var forceRestart: Bool?

    public var parameters: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.databaseInstanceId != nil {
            map["DatabaseInstanceId"] = self.databaseInstanceId!
        }
        if self.forceRestart != nil {
            map["ForceRestart"] = self.forceRestart!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DatabaseInstanceId"] as? String {
            self.databaseInstanceId = value
        }
        if let value = dict["ForceRestart"] as? Bool {
            self.forceRestart = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyDatabaseInstanceParameterResponseBody : Tea.TeaModel {
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

public class ModifyDatabaseInstanceParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDatabaseInstanceParameterResponseBody?

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
            var model = ModifyDatabaseInstanceParameterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyFirewallRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var port: String?

    public var regionId: String?

    public var remark: String?

    public var ruleId: String?

    public var ruleProtocol: String?

    public var sourceCidrIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleProtocol != nil {
            map["RuleProtocol"] = self.ruleProtocol!
        }
        if self.sourceCidrIp != nil {
            map["SourceCidrIp"] = self.sourceCidrIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["RuleProtocol"] as? String {
            self.ruleProtocol = value
        }
        if let value = dict["SourceCidrIp"] as? String {
            self.sourceCidrIp = value
        }
    }
}

public class ModifyFirewallRuleResponseBody : Tea.TeaModel {
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

public class ModifyFirewallRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFirewallRuleResponseBody?

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
            var model = ModifyFirewallRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyFirewallTemplateRequest : Tea.TeaModel {
    public class FirewallTemplateRule : Tea.TeaModel {
        public var firewallTemplateRuleId: String?

        public var port: String?

        public var remark: String?

        public var ruleProtocol: String?

        public var sourceCidrIp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.firewallTemplateRuleId != nil {
                map["FirewallTemplateRuleId"] = self.firewallTemplateRuleId!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.ruleProtocol != nil {
                map["RuleProtocol"] = self.ruleProtocol!
            }
            if self.sourceCidrIp != nil {
                map["SourceCidrIp"] = self.sourceCidrIp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FirewallTemplateRuleId"] as? String {
                self.firewallTemplateRuleId = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["RuleProtocol"] as? String {
                self.ruleProtocol = value
            }
            if let value = dict["SourceCidrIp"] as? String {
                self.sourceCidrIp = value
            }
        }
    }
    public var clientToken: String?

    public var description_: String?

    public var firewallTemplateId: String?

    public var firewallTemplateRule: [ModifyFirewallTemplateRequest.FirewallTemplateRule]?

    public var name: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.firewallTemplateId != nil {
            map["FirewallTemplateId"] = self.firewallTemplateId!
        }
        if self.firewallTemplateRule != nil {
            var tmp : [Any] = []
            for k in self.firewallTemplateRule! {
                tmp.append(k.toMap())
            }
            map["FirewallTemplateRule"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FirewallTemplateId"] as? String {
            self.firewallTemplateId = value
        }
        if let value = dict["FirewallTemplateRule"] as? [Any?] {
            var tmp : [ModifyFirewallTemplateRequest.FirewallTemplateRule] = []
            for v in value {
                if v != nil {
                    var model = ModifyFirewallTemplateRequest.FirewallTemplateRule()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.firewallTemplateRule = tmp
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyFirewallTemplateResponseBody : Tea.TeaModel {
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

public class ModifyFirewallTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFirewallTemplateResponseBody?

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
            var model = ModifyFirewallTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyImageShareStatusRequest : Tea.TeaModel {
    public var clientToken: String?

    public var imageId: String?

    public var operation: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.operation != nil {
            map["Operation"] = self.operation!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["Operation"] as? String {
            self.operation = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyImageShareStatusResponseBody : Tea.TeaModel {
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

public class ModifyImageShareStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyImageShareStatusResponseBody?

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
            var model = ModifyImageShareStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceVncPasswordRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var regionId: String?

    public var vncPassword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vncPassword != nil {
            map["VncPassword"] = self.vncPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VncPassword"] as? String {
            self.vncPassword = value
        }
    }
}

public class ModifyInstanceVncPasswordResponseBody : Tea.TeaModel {
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

public class ModifyInstanceVncPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceVncPasswordResponseBody?

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
            var model = ModifyInstanceVncPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RebootInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class RebootInstanceResponseBody : Tea.TeaModel {
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

public class RebootInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebootInstanceResponseBody?

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
            var model = RebootInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RebootInstancesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var forceReboot: Bool?

    public var instanceIds: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.forceReboot != nil {
            map["ForceReboot"] = self.forceReboot!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ForceReboot"] as? Bool {
            self.forceReboot = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class RebootInstancesResponseBody : Tea.TeaModel {
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

public class RebootInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebootInstancesResponseBody?

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
            var model = RebootInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleasePublicConnectionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var databaseInstanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.databaseInstanceId != nil {
            map["DatabaseInstanceId"] = self.databaseInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DatabaseInstanceId"] as? String {
            self.databaseInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ReleasePublicConnectionResponseBody : Tea.TeaModel {
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

public class ReleasePublicConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleasePublicConnectionResponseBody?

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
            var model = ReleasePublicConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveCustomImageShareAccountRequest : Tea.TeaModel {
    public var account: [Int64]?

    public var clientToken: String?

    public var imageId: String?

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
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? [Int64] {
            self.account = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class RemoveCustomImageShareAccountResponseBody : Tea.TeaModel {
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

public class RemoveCustomImageShareAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveCustomImageShareAccountResponseBody?

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
            var model = RemoveCustomImageShareAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenewInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var period: Int32?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class RenewInstanceResponseBody : Tea.TeaModel {
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

public class RenewInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewInstanceResponseBody?

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
            var model = RenewInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetDatabaseAccountPasswordRequest : Tea.TeaModel {
    public var accountPassword: String?

    public var clientToken: String?

    public var databaseInstanceId: String?

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
        if self.accountPassword != nil {
            map["AccountPassword"] = self.accountPassword!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.databaseInstanceId != nil {
            map["DatabaseInstanceId"] = self.databaseInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountPassword"] as? String {
            self.accountPassword = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DatabaseInstanceId"] as? String {
            self.databaseInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ResetDatabaseAccountPasswordResponseBody : Tea.TeaModel {
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

public class ResetDatabaseAccountPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetDatabaseAccountPasswordResponseBody?

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
            var model = ResetDatabaseAccountPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetDiskRequest : Tea.TeaModel {
    public var clientToken: String?

    public var diskId: String?

    public var regionId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.diskId != nil {
            map["DiskId"] = self.diskId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DiskId"] as? String {
            self.diskId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
    }
}

public class ResetDiskResponseBody : Tea.TeaModel {
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

public class ResetDiskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetDiskResponseBody?

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
            var model = ResetDiskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetSystemRequest : Tea.TeaModel {
    public class LoginCredentials : Tea.TeaModel {
        public var keyPairName: String?

        public var password: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.keyPairName != nil {
                map["KeyPairName"] = self.keyPairName!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["KeyPairName"] as? String {
                self.keyPairName = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
        }
    }
    public var clientToken: String?

    public var imageId: String?

    public var instanceId: String?

    public var loginCredentials: ResetSystemRequest.LoginCredentials?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.loginCredentials?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.loginCredentials != nil {
            map["LoginCredentials"] = self.loginCredentials?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LoginCredentials"] as? [String: Any?] {
            var model = ResetSystemRequest.LoginCredentials()
            model.fromMap(value)
            self.loginCredentials = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ResetSystemResponseBody : Tea.TeaModel {
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

public class ResetSystemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetSystemResponseBody?

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
            var model = ResetSystemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartDatabaseInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var databaseInstanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.databaseInstanceId != nil {
            map["DatabaseInstanceId"] = self.databaseInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DatabaseInstanceId"] as? String {
            self.databaseInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class RestartDatabaseInstanceResponseBody : Tea.TeaModel {
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

public class RestartDatabaseInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartDatabaseInstanceResponseBody?

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
            var model = RestartDatabaseInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunCommandRequest : Tea.TeaModel {
    public var commandContent: String?

    public var enableParameter: Bool?

    public var instanceId: String?

    public var name: String?

    public var parameters: [String: Any]?

    public var regionId: String?

    public var timeout: Int32?

    public var type: String?

    public var windowsPasswordName: String?

    public var workingDir: String?

    public var workingUser: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commandContent != nil {
            map["CommandContent"] = self.commandContent!
        }
        if self.enableParameter != nil {
            map["EnableParameter"] = self.enableParameter!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.windowsPasswordName != nil {
            map["WindowsPasswordName"] = self.windowsPasswordName!
        }
        if self.workingDir != nil {
            map["WorkingDir"] = self.workingDir!
        }
        if self.workingUser != nil {
            map["WorkingUser"] = self.workingUser!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandContent"] as? String {
            self.commandContent = value
        }
        if let value = dict["EnableParameter"] as? Bool {
            self.enableParameter = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Parameters"] as? [String: Any] {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["WindowsPasswordName"] as? String {
            self.windowsPasswordName = value
        }
        if let value = dict["WorkingDir"] as? String {
            self.workingDir = value
        }
        if let value = dict["WorkingUser"] as? String {
            self.workingUser = value
        }
    }
}

public class RunCommandShrinkRequest : Tea.TeaModel {
    public var commandContent: String?

    public var enableParameter: Bool?

    public var instanceId: String?

    public var name: String?

    public var parametersShrink: String?

    public var regionId: String?

    public var timeout: Int32?

    public var type: String?

    public var windowsPasswordName: String?

    public var workingDir: String?

    public var workingUser: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commandContent != nil {
            map["CommandContent"] = self.commandContent!
        }
        if self.enableParameter != nil {
            map["EnableParameter"] = self.enableParameter!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.windowsPasswordName != nil {
            map["WindowsPasswordName"] = self.windowsPasswordName!
        }
        if self.workingDir != nil {
            map["WorkingDir"] = self.workingDir!
        }
        if self.workingUser != nil {
            map["WorkingUser"] = self.workingUser!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandContent"] as? String {
            self.commandContent = value
        }
        if let value = dict["EnableParameter"] as? Bool {
            self.enableParameter = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["WindowsPasswordName"] as? String {
            self.windowsPasswordName = value
        }
        if let value = dict["WorkingDir"] as? String {
            self.workingDir = value
        }
        if let value = dict["WorkingUser"] as? String {
            self.workingUser = value
        }
    }
}

public class RunCommandResponseBody : Tea.TeaModel {
    public var invokeId: String?

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
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InvokeId"] as? String {
            self.invokeId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RunCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunCommandResponseBody?

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
            var model = RunCommandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartDatabaseInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var databaseInstanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.databaseInstanceId != nil {
            map["DatabaseInstanceId"] = self.databaseInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DatabaseInstanceId"] as? String {
            self.databaseInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class StartDatabaseInstanceResponseBody : Tea.TeaModel {
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

public class StartDatabaseInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDatabaseInstanceResponseBody?

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
            var model = StartDatabaseInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class StartInstanceResponseBody : Tea.TeaModel {
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

public class StartInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartInstanceResponseBody?

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
            var model = StartInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartInstancesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceIds: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class StartInstancesResponseBody : Tea.TeaModel {
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

public class StartInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartInstancesResponseBody?

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
            var model = StartInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartTerminalSessionRequest : Tea.TeaModel {
    public var commandLine: String?

    public var instanceId: String?

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
        if self.commandLine != nil {
            map["CommandLine"] = self.commandLine!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandLine"] as? String {
            self.commandLine = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class StartTerminalSessionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var securityToken: String?

    public var sessionId: String?

    public var webSocketUrl: String?

    public override init() {
        super.init()
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.webSocketUrl != nil {
            map["WebSocketUrl"] = self.webSocketUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["WebSocketUrl"] as? String {
            self.webSocketUrl = value
        }
    }
}

public class StartTerminalSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartTerminalSessionResponseBody?

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
            var model = StartTerminalSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopDatabaseInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var databaseInstanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.databaseInstanceId != nil {
            map["DatabaseInstanceId"] = self.databaseInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DatabaseInstanceId"] as? String {
            self.databaseInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class StopDatabaseInstanceResponseBody : Tea.TeaModel {
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

public class StopDatabaseInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDatabaseInstanceResponseBody?

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
            var model = StopDatabaseInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class StopInstanceResponseBody : Tea.TeaModel {
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

public class StopInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopInstanceResponseBody?

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
            var model = StopInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopInstancesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var forceStop: Bool?

    public var instanceIds: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.forceStop != nil {
            map["ForceStop"] = self.forceStop!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ForceStop"] as? Bool {
            self.forceStop = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class StopInstancesResponseBody : Tea.TeaModel {
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

public class StopInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopInstancesResponseBody?

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
            var model = StopInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
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
    public var clientToken: String?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
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

public class TagResourcesResponseBody : Tea.TeaModel {
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

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

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
            var model = TagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var clientToken: String?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
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

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

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
            var model = UntagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCommandAttributeRequest : Tea.TeaModel {
    public var commandId: String?

    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var timeout: Int64?

    public var workingDir: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commandId != nil {
            map["CommandId"] = self.commandId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.workingDir != nil {
            map["WorkingDir"] = self.workingDir!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommandId"] as? String {
            self.commandId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Timeout"] as? Int64 {
            self.timeout = value
        }
        if let value = dict["WorkingDir"] as? String {
            self.workingDir = value
        }
    }
}

public class UpdateCommandAttributeResponseBody : Tea.TeaModel {
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

public class UpdateCommandAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCommandAttributeResponseBody?

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
            var model = UpdateCommandAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDiskAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var diskId: String?

    public var regionId: String?

    public var remark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.diskId != nil {
            map["DiskId"] = self.diskId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DiskId"] as? String {
            self.diskId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
    }
}

public class UpdateDiskAttributeResponseBody : Tea.TeaModel {
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

public class UpdateDiskAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDiskAttributeResponseBody?

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
            var model = UpdateDiskAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var instanceName: String?

    public var password: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateInstanceAttributeResponseBody : Tea.TeaModel {
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

public class UpdateInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceAttributeResponseBody?

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
            var model = UpdateInstanceAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSnapshotAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var regionId: String?

    public var remark: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
    }
}

public class UpdateSnapshotAttributeResponseBody : Tea.TeaModel {
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

public class UpdateSnapshotAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSnapshotAttributeResponseBody?

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
            var model = UpdateSnapshotAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var planId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PlanId"] as? String {
            self.planId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpgradeInstanceResponseBody : Tea.TeaModel {
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

public class UpgradeInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeInstanceResponseBody?

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
            var model = UpgradeInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UploadInstanceKeyPairRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var keyPairName: String?

    public var publicKey: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.publicKey != nil {
            map["PublicKey"] = self.publicKey!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
        if let value = dict["PublicKey"] as? String {
            self.publicKey = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UploadInstanceKeyPairResponseBody : Tea.TeaModel {
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

public class UploadInstanceKeyPairResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadInstanceKeyPairResponseBody?

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
            var model = UploadInstanceKeyPairResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
