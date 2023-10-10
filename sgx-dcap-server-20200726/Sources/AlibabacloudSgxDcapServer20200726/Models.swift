import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetQeIdentityRequest : Tea.TeaModel {
    public var acsHost: String?

    public var clientVpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acsHost != nil {
            map["AcsHost"] = self.acsHost!
        }
        if self.clientVpcId != nil {
            map["ClientVpcId"] = self.clientVpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcsHost") && dict["AcsHost"] != nil {
            self.acsHost = dict["AcsHost"] as! String
        }
        if dict.keys.contains("ClientVpcId") && dict["ClientVpcId"] != nil {
            self.clientVpcId = dict["ClientVpcId"] as! String
        }
    }
}

public class GetQeIdentityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
            self.body = dict["body"] as! String
        }
    }
}

public class GetQveIdentityRequest : Tea.TeaModel {
    public var acsHost: String?

    public var clientVpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acsHost != nil {
            map["AcsHost"] = self.acsHost!
        }
        if self.clientVpcId != nil {
            map["ClientVpcId"] = self.clientVpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcsHost") && dict["AcsHost"] != nil {
            self.acsHost = dict["AcsHost"] as! String
        }
        if dict.keys.contains("ClientVpcId") && dict["ClientVpcId"] != nil {
            self.clientVpcId = dict["ClientVpcId"] as! String
        }
    }
}

public class GetQveIdentityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
            self.body = dict["body"] as! String
        }
    }
}

public class GetTcbInfoRequest : Tea.TeaModel {
    public var acsHost: String?

    public var clientVpcId: String?

    public var fmspc: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acsHost != nil {
            map["AcsHost"] = self.acsHost!
        }
        if self.clientVpcId != nil {
            map["ClientVpcId"] = self.clientVpcId!
        }
        if self.fmspc != nil {
            map["fmspc"] = self.fmspc!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcsHost") && dict["AcsHost"] != nil {
            self.acsHost = dict["AcsHost"] as! String
        }
        if dict.keys.contains("ClientVpcId") && dict["ClientVpcId"] != nil {
            self.clientVpcId = dict["ClientVpcId"] as! String
        }
        if dict.keys.contains("fmspc") && dict["fmspc"] != nil {
            self.fmspc = dict["fmspc"] as! String
        }
    }
}

public class GetTcbInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
            self.body = dict["body"] as! String
        }
    }
}

public class PckCrlRequest : Tea.TeaModel {
    public var acsHost: String?

    public var clientVpcId: String?

    public var ca: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acsHost != nil {
            map["AcsHost"] = self.acsHost!
        }
        if self.clientVpcId != nil {
            map["ClientVpcId"] = self.clientVpcId!
        }
        if self.ca != nil {
            map["ca"] = self.ca!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcsHost") && dict["AcsHost"] != nil {
            self.acsHost = dict["AcsHost"] as! String
        }
        if dict.keys.contains("ClientVpcId") && dict["ClientVpcId"] != nil {
            self.clientVpcId = dict["ClientVpcId"] as! String
        }
        if dict.keys.contains("ca") && dict["ca"] != nil {
            self.ca = dict["ca"] as! String
        }
    }
}

public class PckCrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
            self.body = dict["body"] as! String
        }
    }
}

public class RootCaCrlRequest : Tea.TeaModel {
    public var acsHost: String?

    public var clientVpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acsHost != nil {
            map["AcsHost"] = self.acsHost!
        }
        if self.clientVpcId != nil {
            map["ClientVpcId"] = self.clientVpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcsHost") && dict["AcsHost"] != nil {
            self.acsHost = dict["AcsHost"] as! String
        }
        if dict.keys.contains("ClientVpcId") && dict["ClientVpcId"] != nil {
            self.clientVpcId = dict["ClientVpcId"] as! String
        }
    }
}

public class RootCaCrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
            self.body = dict["body"] as! String
        }
    }
}

public class SimplePackagePckCertRequest : Tea.TeaModel {
    public var acsHost: String?

    public var clientVpcId: String?

    public var cpusvn: String?

    public var encryptedPpid: String?

    public var pceid: String?

    public var pcesvn: String?

    public var qeid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acsHost != nil {
            map["AcsHost"] = self.acsHost!
        }
        if self.clientVpcId != nil {
            map["ClientVpcId"] = self.clientVpcId!
        }
        if self.cpusvn != nil {
            map["cpusvn"] = self.cpusvn!
        }
        if self.encryptedPpid != nil {
            map["encrypted_ppid"] = self.encryptedPpid!
        }
        if self.pceid != nil {
            map["pceid"] = self.pceid!
        }
        if self.pcesvn != nil {
            map["pcesvn"] = self.pcesvn!
        }
        if self.qeid != nil {
            map["qeid"] = self.qeid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcsHost") && dict["AcsHost"] != nil {
            self.acsHost = dict["AcsHost"] as! String
        }
        if dict.keys.contains("ClientVpcId") && dict["ClientVpcId"] != nil {
            self.clientVpcId = dict["ClientVpcId"] as! String
        }
        if dict.keys.contains("cpusvn") && dict["cpusvn"] != nil {
            self.cpusvn = dict["cpusvn"] as! String
        }
        if dict.keys.contains("encrypted_ppid") && dict["encrypted_ppid"] != nil {
            self.encryptedPpid = dict["encrypted_ppid"] as! String
        }
        if dict.keys.contains("pceid") && dict["pceid"] != nil {
            self.pceid = dict["pceid"] as! String
        }
        if dict.keys.contains("pcesvn") && dict["pcesvn"] != nil {
            self.pcesvn = dict["pcesvn"] as! String
        }
        if dict.keys.contains("qeid") && dict["qeid"] != nil {
            self.qeid = dict["qeid"] as! String
        }
    }
}

public class SimplePackagePckCertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
            self.body = dict["body"] as! String
        }
    }
}
