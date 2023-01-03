import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateSubnetRequest : Tea.TeaModel {
    public var cidr: String?

    public var name: String?

    public var regionId: String?

    public var type: String?

    public var vpdId: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cidr != nil {
            map["Cidr"] = self.cidr!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cidr") {
            self.cidr = dict["Cidr"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("VpdId") {
            self.vpdId = dict["VpdId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateSubnetResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var subnetId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.subnetId != nil {
                map["SubnetId"] = self.subnetId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SubnetId") {
                self.subnetId = dict["SubnetId"] as! String
            }
        }
    }
    public var code: Int32?

    public var content: CreateSubnetResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Content") {
            var model = CreateSubnetResponseBody.Content()
            model.fromMap(dict["Content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateSubnetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSubnetResponseBody?

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
            var model = CreateSubnetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVccRequest : Tea.TeaModel {
    public var accessCouldService: Bool?

    public var bgpCidr: String?

    public var cenId: String?

    public var description_: String?

    public var regionId: String?

    public var vSwitchId: String?

    public var vccId: String?

    public var vpcId: String?

    public var vpdId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessCouldService != nil {
            map["AccessCouldService"] = self.accessCouldService!
        }
        if self.bgpCidr != nil {
            map["BgpCidr"] = self.bgpCidr!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vccId != nil {
            map["VccId"] = self.vccId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessCouldService") {
            self.accessCouldService = dict["AccessCouldService"] as! Bool
        }
        if dict.keys.contains("BgpCidr") {
            self.bgpCidr = dict["BgpCidr"] as! String
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VccId") {
            self.vccId = dict["VccId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("VpdId") {
            self.vpdId = dict["VpdId"] as! String
        }
    }
}

public class CreateVccResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var vccId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vccId != nil {
                map["VccId"] = self.vccId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VccId") {
                self.vccId = dict["VccId"] as! String
            }
        }
    }
    public var code: Int32?

    public var content: CreateVccResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Content") {
            var model = CreateVccResponseBody.Content()
            model.fromMap(dict["Content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateVccResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVccResponseBody?

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
            var model = CreateVccResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVpdRequest : Tea.TeaModel {
    public class Subnets : Tea.TeaModel {
        public var cidr: String?

        public var name: String?

        public var regionId: String?

        public var type: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cidr != nil {
                map["Cidr"] = self.cidr!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cidr") {
                self.cidr = dict["Cidr"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var cidr: String?

    public var name: String?

    public var regionId: String?

    public var subnets: [CreateVpdRequest.Subnets]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cidr != nil {
            map["Cidr"] = self.cidr!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.subnets != nil {
            var tmp : [Any] = []
            for k in self.subnets! {
                tmp.append(k.toMap())
            }
            map["Subnets"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cidr") {
            self.cidr = dict["Cidr"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Subnets") {
            self.subnets = dict["Subnets"] as! [CreateVpdRequest.Subnets]
        }
    }
}

public class CreateVpdResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var subnetIds: [String]?

        public var vpdId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.subnetIds != nil {
                map["SubnetIds"] = self.subnetIds!
            }
            if self.vpdId != nil {
                map["VpdId"] = self.vpdId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SubnetIds") {
                self.subnetIds = dict["SubnetIds"] as! [String]
            }
            if dict.keys.contains("VpdId") {
                self.vpdId = dict["VpdId"] as! String
            }
        }
    }
    public var code: Int32?

    public var content: CreateVpdResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Content") {
            var model = CreateVpdResponseBody.Content()
            model.fromMap(dict["Content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateVpdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVpdResponseBody?

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
            var model = CreateVpdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSubnetRequest : Tea.TeaModel {
    public var regionId: String?

    public var subnetId: String?

    public var vpdId: String?

    public var zoneId: String?

    public override init() {
        super.init()
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
        if self.subnetId != nil {
            map["SubnetId"] = self.subnetId!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SubnetId") {
            self.subnetId = dict["SubnetId"] as! String
        }
        if dict.keys.contains("VpdId") {
            self.vpdId = dict["VpdId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DeleteSubnetResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var content: Any?

    public var message: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! Any
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteSubnetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSubnetResponseBody?

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
            var model = DeleteSubnetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVpdRequest : Tea.TeaModel {
    public var regionId: String?

    public var vpdId: String?

    public override init() {
        super.init()
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
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VpdId") {
            self.vpdId = dict["VpdId"] as! String
        }
    }
}

public class DeleteVpdResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var content: Any?

    public var message: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! Any
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteVpdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVpdResponseBody?

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
            var model = DeleteVpdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSubnetRequest : Tea.TeaModel {
    public var subnetId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subnetId != nil {
            map["SubnetId"] = self.subnetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubnetId") {
            self.subnetId = dict["SubnetId"] as! String
        }
    }
}

public class GetSubnetResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class VpdBaseInfo : Tea.TeaModel {
            public var cidr: String?

            public var gmtCreate: String?

            public var name: String?

            public var vpdId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cidr != nil {
                    map["Cidr"] = self.cidr!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.vpdId != nil {
                    map["VpdId"] = self.vpdId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cidr") {
                    self.cidr = dict["Cidr"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("VpdId") {
                    self.vpdId = dict["VpdId"] as! String
                }
            }
        }
        public var cidr: String?

        public var description_: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var lbCount: Int64?

        public var message: String?

        public var name: String?

        public var ncCount: Int64?

        public var regionId: String?

        public var status: String?

        public var subnetId: String?

        public var tenantId: String?

        public var type: String?

        public var vpdBaseInfo: GetSubnetResponseBody.Content.VpdBaseInfo?

        public var vpdId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.vpdBaseInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cidr != nil {
                map["Cidr"] = self.cidr!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.lbCount != nil {
                map["LbCount"] = self.lbCount!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ncCount != nil {
                map["NcCount"] = self.ncCount!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subnetId != nil {
                map["SubnetId"] = self.subnetId!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.vpdBaseInfo != nil {
                map["VpdBaseInfo"] = self.vpdBaseInfo?.toMap()
            }
            if self.vpdId != nil {
                map["VpdId"] = self.vpdId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cidr") {
                self.cidr = dict["Cidr"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LbCount") {
                self.lbCount = dict["LbCount"] as! Int64
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NcCount") {
                self.ncCount = dict["NcCount"] as! Int64
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubnetId") {
                self.subnetId = dict["SubnetId"] as! String
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("VpdBaseInfo") {
                var model = GetSubnetResponseBody.Content.VpdBaseInfo()
                model.fromMap(dict["VpdBaseInfo"] as! [String: Any])
                self.vpdBaseInfo = model
            }
            if dict.keys.contains("VpdId") {
                self.vpdId = dict["VpdId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var code: Int32?

    public var content: GetSubnetResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Content") {
            var model = GetSubnetResponseBody.Content()
            model.fromMap(dict["Content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSubnetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubnetResponseBody?

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
            var model = GetSubnetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetVccRequest : Tea.TeaModel {
    public var regionId: String?

    public var vccId: String?

    public override init() {
        super.init()
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
        if self.vccId != nil {
            map["VccId"] = self.vccId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VccId") {
            self.vccId = dict["VccId"] as! String
        }
    }
}

public class GetVccResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class AliyunRouterInfo : Tea.TeaModel {
            public var localGatewayIp: String?

            public var mask: String?

            public var pcId: String?

            public var peerGatewayIp: String?

            public var vbrId: String?

            public var vlanId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.localGatewayIp != nil {
                    map["LocalGatewayIp"] = self.localGatewayIp!
                }
                if self.mask != nil {
                    map["Mask"] = self.mask!
                }
                if self.pcId != nil {
                    map["PcId"] = self.pcId!
                }
                if self.peerGatewayIp != nil {
                    map["PeerGatewayIp"] = self.peerGatewayIp!
                }
                if self.vbrId != nil {
                    map["VbrId"] = self.vbrId!
                }
                if self.vlanId != nil {
                    map["VlanId"] = self.vlanId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalGatewayIp") {
                    self.localGatewayIp = dict["LocalGatewayIp"] as! String
                }
                if dict.keys.contains("Mask") {
                    self.mask = dict["Mask"] as! String
                }
                if dict.keys.contains("PcId") {
                    self.pcId = dict["PcId"] as! String
                }
                if dict.keys.contains("PeerGatewayIp") {
                    self.peerGatewayIp = dict["PeerGatewayIp"] as! String
                }
                if dict.keys.contains("VbrId") {
                    self.vbrId = dict["VbrId"] as! String
                }
                if dict.keys.contains("VlanId") {
                    self.vlanId = dict["VlanId"] as! String
                }
            }
        }
        public class CisRouterInfo : Tea.TeaModel {
            public class CcInfos : Tea.TeaModel {
                public var ccId: String?

                public var localGatewayIp: String?

                public var remoteGatewayIp: String?

                public var status: String?

                public var subnetMask: String?

                public var vlanId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ccId != nil {
                        map["CcId"] = self.ccId!
                    }
                    if self.localGatewayIp != nil {
                        map["LocalGatewayIp"] = self.localGatewayIp!
                    }
                    if self.remoteGatewayIp != nil {
                        map["RemoteGatewayIp"] = self.remoteGatewayIp!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.subnetMask != nil {
                        map["SubnetMask"] = self.subnetMask!
                    }
                    if self.vlanId != nil {
                        map["VlanId"] = self.vlanId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CcId") {
                        self.ccId = dict["CcId"] as! String
                    }
                    if dict.keys.contains("LocalGatewayIp") {
                        self.localGatewayIp = dict["LocalGatewayIp"] as! String
                    }
                    if dict.keys.contains("RemoteGatewayIp") {
                        self.remoteGatewayIp = dict["RemoteGatewayIp"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("SubnetMask") {
                        self.subnetMask = dict["SubnetMask"] as! String
                    }
                    if dict.keys.contains("VlanId") {
                        self.vlanId = dict["VlanId"] as! String
                    }
                }
            }
            public var ccInfos: [GetVccResponseBody.Content.CisRouterInfo.CcInfos]?

            public var ccrId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ccInfos != nil {
                    var tmp : [Any] = []
                    for k in self.ccInfos! {
                        tmp.append(k.toMap())
                    }
                    map["CcInfos"] = tmp
                }
                if self.ccrId != nil {
                    map["CcrId"] = self.ccrId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CcInfos") {
                    self.ccInfos = dict["CcInfos"] as! [GetVccResponseBody.Content.CisRouterInfo.CcInfos]
                }
                if dict.keys.contains("CcrId") {
                    self.ccrId = dict["CcrId"] as! String
                }
            }
        }
        public class VpdBaseInfo : Tea.TeaModel {
            public var cidr: String?

            public var gmtCreate: String?

            public var name: String?

            public var vpdId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cidr != nil {
                    map["Cidr"] = self.cidr!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.vpdId != nil {
                    map["VpdId"] = self.vpdId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cidr") {
                    self.cidr = dict["Cidr"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("VpdId") {
                    self.vpdId = dict["VpdId"] as! String
                }
            }
        }
        public var accessPointId: String?

        public var aliyunRouterInfo: [GetVccResponseBody.Content.AliyunRouterInfo]?

        public var bandwidthStr: String?

        public var bgpCidr: String?

        public var cenId: String?

        public var cisRouterInfo: [GetVccResponseBody.Content.CisRouterInfo]?

        public var commodityCode: String?

        public var createTime: String?

        public var currentNode: String?

        public var duration: String?

        public var gmtModified: String?

        public var internetChargeType: String?

        public var lineOperator: String?

        public var message: String?

        public var payType: String?

        public var portType: String?

        public var pricingCycle: String?

        public var regionId: String?

        public var spec: String?

        public var status: String?

        public var tenantId: String?

        public var vSwitchId: String?

        public var vccId: String?

        public var vccName: String?

        public var vpcId: String?

        public var vpdBaseInfo: GetVccResponseBody.Content.VpdBaseInfo?

        public var vpdId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.vpdBaseInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessPointId != nil {
                map["AccessPointId"] = self.accessPointId!
            }
            if self.aliyunRouterInfo != nil {
                var tmp : [Any] = []
                for k in self.aliyunRouterInfo! {
                    tmp.append(k.toMap())
                }
                map["AliyunRouterInfo"] = tmp
            }
            if self.bandwidthStr != nil {
                map["BandwidthStr"] = self.bandwidthStr!
            }
            if self.bgpCidr != nil {
                map["BgpCidr"] = self.bgpCidr!
            }
            if self.cenId != nil {
                map["CenId"] = self.cenId!
            }
            if self.cisRouterInfo != nil {
                var tmp : [Any] = []
                for k in self.cisRouterInfo! {
                    tmp.append(k.toMap())
                }
                map["CisRouterInfo"] = tmp
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.currentNode != nil {
                map["CurrentNode"] = self.currentNode!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.internetChargeType != nil {
                map["InternetChargeType"] = self.internetChargeType!
            }
            if self.lineOperator != nil {
                map["LineOperator"] = self.lineOperator!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.portType != nil {
                map["PortType"] = self.portType!
            }
            if self.pricingCycle != nil {
                map["PricingCycle"] = self.pricingCycle!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.spec != nil {
                map["Spec"] = self.spec!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vccId != nil {
                map["VccId"] = self.vccId!
            }
            if self.vccName != nil {
                map["VccName"] = self.vccName!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpdBaseInfo != nil {
                map["VpdBaseInfo"] = self.vpdBaseInfo?.toMap()
            }
            if self.vpdId != nil {
                map["VpdId"] = self.vpdId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessPointId") {
                self.accessPointId = dict["AccessPointId"] as! String
            }
            if dict.keys.contains("AliyunRouterInfo") {
                self.aliyunRouterInfo = dict["AliyunRouterInfo"] as! [GetVccResponseBody.Content.AliyunRouterInfo]
            }
            if dict.keys.contains("BandwidthStr") {
                self.bandwidthStr = dict["BandwidthStr"] as! String
            }
            if dict.keys.contains("BgpCidr") {
                self.bgpCidr = dict["BgpCidr"] as! String
            }
            if dict.keys.contains("CenId") {
                self.cenId = dict["CenId"] as! String
            }
            if dict.keys.contains("CisRouterInfo") {
                self.cisRouterInfo = dict["CisRouterInfo"] as! [GetVccResponseBody.Content.CisRouterInfo]
            }
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CurrentNode") {
                self.currentNode = dict["CurrentNode"] as! String
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("InternetChargeType") {
                self.internetChargeType = dict["InternetChargeType"] as! String
            }
            if dict.keys.contains("LineOperator") {
                self.lineOperator = dict["LineOperator"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("PortType") {
                self.portType = dict["PortType"] as! String
            }
            if dict.keys.contains("PricingCycle") {
                self.pricingCycle = dict["PricingCycle"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Spec") {
                self.spec = dict["Spec"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VccId") {
                self.vccId = dict["VccId"] as! String
            }
            if dict.keys.contains("VccName") {
                self.vccName = dict["VccName"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpdBaseInfo") {
                var model = GetVccResponseBody.Content.VpdBaseInfo()
                model.fromMap(dict["VpdBaseInfo"] as! [String: Any])
                self.vpdBaseInfo = model
            }
            if dict.keys.contains("VpdId") {
                self.vpdId = dict["VpdId"] as! String
            }
        }
    }
    public var code: Int32?

    public var content: GetVccResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Content") {
            var model = GetVccResponseBody.Content()
            model.fromMap(dict["Content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetVccResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVccResponseBody?

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
            var model = GetVccResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetVpdRequest : Tea.TeaModel {
    public var vpdId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("VpdId") {
            self.vpdId = dict["VpdId"] as! String
        }
    }
}

public class GetVpdResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var cidr: String?

        public var description_: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var lbCount: Int64?

        public var message: String?

        public var name: String?

        public var ncCount: Int64?

        public var regionId: String?

        public var route: Int32?

        public var serviceCidr: String?

        public var status: String?

        public var subnetCount: Int64?

        public var vccCount: Int64?

        public var vpdId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cidr != nil {
                map["Cidr"] = self.cidr!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.lbCount != nil {
                map["LbCount"] = self.lbCount!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ncCount != nil {
                map["NcCount"] = self.ncCount!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.route != nil {
                map["Route"] = self.route!
            }
            if self.serviceCidr != nil {
                map["ServiceCidr"] = self.serviceCidr!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subnetCount != nil {
                map["SubnetCount"] = self.subnetCount!
            }
            if self.vccCount != nil {
                map["VccCount"] = self.vccCount!
            }
            if self.vpdId != nil {
                map["VpdId"] = self.vpdId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cidr") {
                self.cidr = dict["Cidr"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("LbCount") {
                self.lbCount = dict["LbCount"] as! Int64
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NcCount") {
                self.ncCount = dict["NcCount"] as! Int64
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Route") {
                self.route = dict["Route"] as! Int32
            }
            if dict.keys.contains("ServiceCidr") {
                self.serviceCidr = dict["ServiceCidr"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubnetCount") {
                self.subnetCount = dict["SubnetCount"] as! Int64
            }
            if dict.keys.contains("VccCount") {
                self.vccCount = dict["VccCount"] as! Int64
            }
            if dict.keys.contains("VpdId") {
                self.vpdId = dict["VpdId"] as! String
            }
        }
    }
    public var code: Int32?

    public var content: GetVpdResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Content") {
            var model = GetVpdResponseBody.Content()
            model.fromMap(dict["Content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetVpdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVpdResponseBody?

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
            var model = GetVpdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InitializeVccResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var requestId: String?

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
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("RoleName") {
                self.roleName = dict["RoleName"] as! String
            }
        }
    }
    public var code: Int32?

    public var content: InitializeVccResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Content") {
            var model = InitializeVccResponseBody.Content()
            model.fromMap(dict["Content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class InitializeVccResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitializeVccResponseBody?

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
            var model = InitializeVccResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSubnetsRequest : Tea.TeaModel {
    public var enablePage: Bool?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var status: String?

    public var subnetId: String?

    public var type: String?

    public var vpdId: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subnetId != nil {
            map["SubnetId"] = self.subnetId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnablePage") {
            self.enablePage = dict["EnablePage"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SubnetId") {
            self.subnetId = dict["SubnetId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("VpdId") {
            self.vpdId = dict["VpdId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ListSubnetsResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class VpdBaseInfo : Tea.TeaModel {
                public var cidr: String?

                public var gmtCreate: String?

                public var name: String?

                public var vpdId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cidr != nil {
                        map["Cidr"] = self.cidr!
                    }
                    if self.gmtCreate != nil {
                        map["GmtCreate"] = self.gmtCreate!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.vpdId != nil {
                        map["VpdId"] = self.vpdId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Cidr") {
                        self.cidr = dict["Cidr"] as! String
                    }
                    if dict.keys.contains("GmtCreate") {
                        self.gmtCreate = dict["GmtCreate"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("VpdId") {
                        self.vpdId = dict["VpdId"] as! String
                    }
                }
            }
            public var cidr: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var message: String?

            public var name: String?

            public var ncCount: Int64?

            public var regionId: String?

            public var status: String?

            public var subnetId: String?

            public var tenantId: String?

            public var type: String?

            public var vpdBaseInfo: ListSubnetsResponseBody.Content.Data.VpdBaseInfo?

            public var vpdId: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.vpdBaseInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cidr != nil {
                    map["Cidr"] = self.cidr!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
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
                if self.ncCount != nil {
                    map["NcCount"] = self.ncCount!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.subnetId != nil {
                    map["SubnetId"] = self.subnetId!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.vpdBaseInfo != nil {
                    map["VpdBaseInfo"] = self.vpdBaseInfo?.toMap()
                }
                if self.vpdId != nil {
                    map["VpdId"] = self.vpdId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cidr") {
                    self.cidr = dict["Cidr"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NcCount") {
                    self.ncCount = dict["NcCount"] as! Int64
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SubnetId") {
                    self.subnetId = dict["SubnetId"] as! String
                }
                if dict.keys.contains("TenantId") {
                    self.tenantId = dict["TenantId"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("VpdBaseInfo") {
                    var model = ListSubnetsResponseBody.Content.Data.VpdBaseInfo()
                    model.fromMap(dict["VpdBaseInfo"] as! [String: Any])
                    self.vpdBaseInfo = model
                }
                if dict.keys.contains("VpdId") {
                    self.vpdId = dict["VpdId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var data: [ListSubnetsResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                self.data = dict["Data"] as! [ListSubnetsResponseBody.Content.Data]
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var code: Int32?

    public var content: ListSubnetsResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Content") {
            var model = ListSubnetsResponseBody.Content()
            model.fromMap(dict["Content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListSubnetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSubnetsResponseBody?

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
            var model = ListSubnetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVccsRequest : Tea.TeaModel {
    public var bandwidth: Int32?

    public var cenId: String?

    public var enablePage: Bool?

    public var exStatus: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var status: String?

    public var vccId: String?

    public var vpcId: String?

    public var vpdId: String?

    public override init() {
        super.init()
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
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
        }
        if self.exStatus != nil {
            map["ExStatus"] = self.exStatus!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.vccId != nil {
            map["VccId"] = self.vccId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("EnablePage") {
            self.enablePage = dict["EnablePage"] as! Bool
        }
        if dict.keys.contains("ExStatus") {
            self.exStatus = dict["ExStatus"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("VccId") {
            self.vccId = dict["VccId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("VpdId") {
            self.vpdId = dict["VpdId"] as! String
        }
    }
}

public class ListVccsResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class VpdBaseInfo : Tea.TeaModel {
                public var cidr: String?

                public var gmtCreate: String?

                public var name: String?

                public var vpdId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cidr != nil {
                        map["Cidr"] = self.cidr!
                    }
                    if self.gmtCreate != nil {
                        map["GmtCreate"] = self.gmtCreate!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.vpdId != nil {
                        map["VpdId"] = self.vpdId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Cidr") {
                        self.cidr = dict["Cidr"] as! String
                    }
                    if dict.keys.contains("GmtCreate") {
                        self.gmtCreate = dict["GmtCreate"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("VpdId") {
                        self.vpdId = dict["VpdId"] as! String
                    }
                }
            }
            public var accessPointId: String?

            public var bandwidthStr: String?

            public var bgpCidr: String?

            public var cenId: String?

            public var createTime: String?

            public var gmtModified: String?

            public var lineOperator: String?

            public var message: String?

            public var portType: String?

            public var rate: Double?

            public var regionId: String?

            public var spec: String?

            public var status: String?

            public var tenantId: String?

            public var vccId: String?

            public var vccName: String?

            public var vpcId: String?

            public var vpdBaseInfo: ListVccsResponseBody.Content.Data.VpdBaseInfo?

            public var vpdId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.vpdBaseInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessPointId != nil {
                    map["AccessPointId"] = self.accessPointId!
                }
                if self.bandwidthStr != nil {
                    map["BandwidthStr"] = self.bandwidthStr!
                }
                if self.bgpCidr != nil {
                    map["BgpCidr"] = self.bgpCidr!
                }
                if self.cenId != nil {
                    map["CenId"] = self.cenId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.lineOperator != nil {
                    map["LineOperator"] = self.lineOperator!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.portType != nil {
                    map["PortType"] = self.portType!
                }
                if self.rate != nil {
                    map["Rate"] = self.rate!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.spec != nil {
                    map["Spec"] = self.spec!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.vccId != nil {
                    map["VccId"] = self.vccId!
                }
                if self.vccName != nil {
                    map["VccName"] = self.vccName!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vpdBaseInfo != nil {
                    map["VpdBaseInfo"] = self.vpdBaseInfo?.toMap()
                }
                if self.vpdId != nil {
                    map["VpdId"] = self.vpdId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessPointId") {
                    self.accessPointId = dict["AccessPointId"] as! String
                }
                if dict.keys.contains("BandwidthStr") {
                    self.bandwidthStr = dict["BandwidthStr"] as! String
                }
                if dict.keys.contains("BgpCidr") {
                    self.bgpCidr = dict["BgpCidr"] as! String
                }
                if dict.keys.contains("CenId") {
                    self.cenId = dict["CenId"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("LineOperator") {
                    self.lineOperator = dict["LineOperator"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("PortType") {
                    self.portType = dict["PortType"] as! String
                }
                if dict.keys.contains("Rate") {
                    self.rate = dict["Rate"] as! Double
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Spec") {
                    self.spec = dict["Spec"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TenantId") {
                    self.tenantId = dict["TenantId"] as! String
                }
                if dict.keys.contains("VccId") {
                    self.vccId = dict["VccId"] as! String
                }
                if dict.keys.contains("VccName") {
                    self.vccName = dict["VccName"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VpdBaseInfo") {
                    var model = ListVccsResponseBody.Content.Data.VpdBaseInfo()
                    model.fromMap(dict["VpdBaseInfo"] as! [String: Any])
                    self.vpdBaseInfo = model
                }
                if dict.keys.contains("VpdId") {
                    self.vpdId = dict["VpdId"] as! String
                }
            }
        }
        public var data: [ListVccsResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                self.data = dict["Data"] as! [ListVccsResponseBody.Content.Data]
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var code: Int32?

    public var content: ListVccsResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Content") {
            var model = ListVccsResponseBody.Content()
            model.fromMap(dict["Content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListVccsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVccsResponseBody?

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
            var model = ListVccsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVpdsRequest : Tea.TeaModel {
    public var enablePage: Bool?

    public var filterErId: String?

    public var forSelect: Bool?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var status: String?

    public var vpdId: String?

    public var withDependence: Bool?

    public var withoutVcc: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enablePage != nil {
            map["EnablePage"] = self.enablePage!
        }
        if self.filterErId != nil {
            map["FilterErId"] = self.filterErId!
        }
        if self.forSelect != nil {
            map["ForSelect"] = self.forSelect!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        if self.withDependence != nil {
            map["WithDependence"] = self.withDependence!
        }
        if self.withoutVcc != nil {
            map["WithoutVcc"] = self.withoutVcc!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnablePage") {
            self.enablePage = dict["EnablePage"] as! Bool
        }
        if dict.keys.contains("FilterErId") {
            self.filterErId = dict["FilterErId"] as! String
        }
        if dict.keys.contains("ForSelect") {
            self.forSelect = dict["ForSelect"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("VpdId") {
            self.vpdId = dict["VpdId"] as! String
        }
        if dict.keys.contains("WithDependence") {
            self.withDependence = dict["WithDependence"] as! Bool
        }
        if dict.keys.contains("WithoutVcc") {
            self.withoutVcc = dict["WithoutVcc"] as! Bool
        }
    }
}

public class ListVpdsResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var cidr: String?

            public var dependence: [String: Any]?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var message: String?

            public var name: String?

            public var ncCount: Int32?

            public var regionId: String?

            public var route: Int32?

            public var serviceCidr: String?

            public var status: String?

            public var subnetCount: Int32?

            public var vpdId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cidr != nil {
                    map["Cidr"] = self.cidr!
                }
                if self.dependence != nil {
                    map["Dependence"] = self.dependence!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ncCount != nil {
                    map["NcCount"] = self.ncCount!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.route != nil {
                    map["Route"] = self.route!
                }
                if self.serviceCidr != nil {
                    map["ServiceCidr"] = self.serviceCidr!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.subnetCount != nil {
                    map["SubnetCount"] = self.subnetCount!
                }
                if self.vpdId != nil {
                    map["VpdId"] = self.vpdId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cidr") {
                    self.cidr = dict["Cidr"] as! String
                }
                if dict.keys.contains("Dependence") {
                    self.dependence = dict["Dependence"] as! [String: Any]
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NcCount") {
                    self.ncCount = dict["NcCount"] as! Int32
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Route") {
                    self.route = dict["Route"] as! Int32
                }
                if dict.keys.contains("ServiceCidr") {
                    self.serviceCidr = dict["ServiceCidr"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SubnetCount") {
                    self.subnetCount = dict["SubnetCount"] as! Int32
                }
                if dict.keys.contains("VpdId") {
                    self.vpdId = dict["VpdId"] as! String
                }
            }
        }
        public var data: [ListVpdsResponseBody.Content.Data]?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                self.data = dict["Data"] as! [ListVpdsResponseBody.Content.Data]
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var code: Int32?

    public var content: ListVpdsResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Content") {
            var model = ListVpdsResponseBody.Content()
            model.fromMap(dict["Content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListVpdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVpdsResponseBody?

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
            var model = ListVpdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSubnetRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var subnetId: String?

    public var vpdId: String?

    public var zoneId: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.subnetId != nil {
            map["SubnetId"] = self.subnetId!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SubnetId") {
            self.subnetId = dict["SubnetId"] as! String
        }
        if dict.keys.contains("VpdId") {
            self.vpdId = dict["VpdId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class UpdateSubnetResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var subnetId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.subnetId != nil {
                map["SubnetId"] = self.subnetId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SubnetId") {
                self.subnetId = dict["SubnetId"] as! String
            }
        }
    }
    public var code: Int32?

    public var content: UpdateSubnetResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Content") {
            var model = UpdateSubnetResponseBody.Content()
            model.fromMap(dict["Content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateSubnetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSubnetResponseBody?

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
            var model = UpdateSubnetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateVccRequest : Tea.TeaModel {
    public var bandwidth: Int32?

    public var orderId: String?

    public var regionId: String?

    public var vccId: String?

    public var vccName: String?

    public override init() {
        super.init()
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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vccId != nil {
            map["VccId"] = self.vccId!
        }
        if self.vccName != nil {
            map["VccName"] = self.vccName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VccId") {
            self.vccId = dict["VccId"] as! String
        }
        if dict.keys.contains("VccName") {
            self.vccName = dict["VccName"] as! String
        }
    }
}

public class UpdateVccResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var vccId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vccId != nil {
                map["VccId"] = self.vccId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VccId") {
                self.vccId = dict["VccId"] as! String
            }
        }
    }
    public var code: Int32?

    public var content: UpdateVccResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Content") {
            var model = UpdateVccResponseBody.Content()
            model.fromMap(dict["Content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateVccResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVccResponseBody?

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
            var model = UpdateVccResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateVpdRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var regionId: String?

    public var vpdId: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vpdId != nil {
            map["VpdId"] = self.vpdId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VpdId") {
            self.vpdId = dict["VpdId"] as! String
        }
    }
}

public class UpdateVpdResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var vpdId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vpdId != nil {
                map["VpdId"] = self.vpdId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VpdId") {
                self.vpdId = dict["VpdId"] as! String
            }
        }
    }
    public var code: Int32?

    public var content: UpdateVpdResponseBody.Content?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Content") {
            var model = UpdateVpdResponseBody.Content()
            model.fromMap(dict["Content"] as! [String: Any])
            self.content = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateVpdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVpdResponseBody?

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
            var model = UpdateVpdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
