import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CheckServiceLinkedRoleForDeletingRequest : Tea.TeaModel {
    public var deletionTaskId: String?

    public var roleArn: String?

    public var SPIRegionId: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deletionTaskId != nil {
            map["DeletionTaskId"] = self.deletionTaskId!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.SPIRegionId != nil {
            map["SPIRegionId"] = self.SPIRegionId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeletionTaskId"] as? String {
            self.deletionTaskId = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["SPIRegionId"] as? String {
            self.SPIRegionId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
    }
}

public class CheckServiceLinkedRoleForDeletingResponseBody : Tea.TeaModel {
    public class RoleUsages : Tea.TeaModel {
        public var region: String?

        public var resources: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["Resources"] as? [String] {
                self.resources = value
            }
        }
    }
    public var deleTable: Bool?

    public var requestId: String?

    public var roleUsages: [CheckServiceLinkedRoleForDeletingResponseBody.RoleUsages]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleTable != nil {
            map["DeleTable"] = self.deleTable!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleUsages != nil {
            var tmp : [Any] = []
            for k in self.roleUsages! {
                tmp.append(k.toMap())
            }
            map["RoleUsages"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeleTable"] as? Bool {
            self.deleTable = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RoleUsages"] as? [Any?] {
            var tmp : [CheckServiceLinkedRoleForDeletingResponseBody.RoleUsages] = []
            for v in value {
                if v != nil {
                    var model = CheckServiceLinkedRoleForDeletingResponseBody.RoleUsages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.roleUsages = tmp
        }
    }
}

public class CheckServiceLinkedRoleForDeletingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckServiceLinkedRoleForDeletingResponseBody?

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
            var model = CheckServiceLinkedRoleForDeletingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
