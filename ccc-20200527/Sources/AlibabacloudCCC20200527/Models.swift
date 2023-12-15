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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeletionTaskId") && dict["DeletionTaskId"] != nil {
            self.deletionTaskId = dict["DeletionTaskId"] as! String
        }
        if dict.keys.contains("RoleArn") && dict["RoleArn"] != nil {
            self.roleArn = dict["RoleArn"] as! String
        }
        if dict.keys.contains("SPIRegionId") && dict["SPIRegionId"] != nil {
            self.SPIRegionId = dict["SPIRegionId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Resources") && dict["Resources"] != nil {
                self.resources = dict["Resources"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeleTable") && dict["DeleTable"] != nil {
            self.deleTable = dict["DeleTable"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleUsages") && dict["RoleUsages"] != nil {
            var tmp : [CheckServiceLinkedRoleForDeletingResponseBody.RoleUsages] = []
            for v in dict["RoleUsages"] as! [Any] {
                var model = CheckServiceLinkedRoleForDeletingResponseBody.RoleUsages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckServiceLinkedRoleForDeletingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
