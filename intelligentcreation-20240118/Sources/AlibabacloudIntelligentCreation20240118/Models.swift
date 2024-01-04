import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabacloudEndpointUtil

public class ActualDeductResourceCmd : Tea.TeaModel {
    public var cost: Int64?

    public var extraInfo: String?

    public var idempotentId: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.idempotentId != nil {
            map["idempotentId"] = self.idempotentId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") && dict["cost"] != nil {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("extraInfo") && dict["extraInfo"] != nil {
            self.extraInfo = dict["extraInfo"] as! String
        }
        if dict.keys.contains("idempotentId") && dict["idempotentId"] != nil {
            self.idempotentId = dict["idempotentId"] as! String
        }
        if dict.keys.contains("taskId") && dict["taskId"] != nil {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class ActualDeductResourceResult : Tea.TeaModel {
    public var errorMessage: String?

    public var errorcode: String?

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
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.errorcode != nil {
            map["errorcode"] = self.errorcode!
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
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("errorcode") && dict["errorcode"] != nil {
            self.errorcode = dict["errorcode"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DirectDeductResourceCmd : Tea.TeaModel {
    public var accountId: String?

    public var cost: Int64?

    public var extraInfo: String?

    public var idempotentId: String?

    public var resourceType: Int64?

    public var subAccountId: String?

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
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.idempotentId != nil {
            map["idempotentId"] = self.idempotentId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.subAccountId != nil {
            map["subAccountId"] = self.subAccountId!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") && dict["accountId"] != nil {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("cost") && dict["cost"] != nil {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("extraInfo") && dict["extraInfo"] != nil {
            self.extraInfo = dict["extraInfo"] as! String
        }
        if dict.keys.contains("idempotentId") && dict["idempotentId"] != nil {
            self.idempotentId = dict["idempotentId"] as! String
        }
        if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
            self.resourceType = dict["resourceType"] as! Int64
        }
        if dict.keys.contains("subAccountId") && dict["subAccountId"] != nil {
            self.subAccountId = dict["subAccountId"] as! String
        }
        if dict.keys.contains("token") && dict["token"] != nil {
            self.token = dict["token"] as! String
        }
    }
}

public class DirectDeductResourceResult : Tea.TeaModel {
    public var errorMessage: String?

    public var errorcode: String?

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
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.errorcode != nil {
            map["errorcode"] = self.errorcode!
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
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("errorcode") && dict["errorcode"] != nil {
            self.errorcode = dict["errorcode"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ExpectDeductResourceCmd : Tea.TeaModel {
    public var accountId: String?

    public var cost: Int64?

    public var extraInfo: String?

    public var idempotentId: String?

    public var resourceType: Int64?

    public var subAccountId: String?

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
        if self.accountId != nil {
            map["accountId"] = self.accountId!
        }
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.extraInfo != nil {
            map["extraInfo"] = self.extraInfo!
        }
        if self.idempotentId != nil {
            map["idempotentId"] = self.idempotentId!
        }
        if self.resourceType != nil {
            map["resourceType"] = self.resourceType!
        }
        if self.subAccountId != nil {
            map["subAccountId"] = self.subAccountId!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountId") && dict["accountId"] != nil {
            self.accountId = dict["accountId"] as! String
        }
        if dict.keys.contains("cost") && dict["cost"] != nil {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("extraInfo") && dict["extraInfo"] != nil {
            self.extraInfo = dict["extraInfo"] as! String
        }
        if dict.keys.contains("idempotentId") && dict["idempotentId"] != nil {
            self.idempotentId = dict["idempotentId"] as! String
        }
        if dict.keys.contains("resourceType") && dict["resourceType"] != nil {
            self.resourceType = dict["resourceType"] as! Int64
        }
        if dict.keys.contains("subAccountId") && dict["subAccountId"] != nil {
            self.subAccountId = dict["subAccountId"] as! String
        }
        if dict.keys.contains("token") && dict["token"] != nil {
            self.token = dict["token"] as! String
        }
    }
}

public class ExpectDeductResourceResult : Tea.TeaModel {
    public var errorMessage: String?

    public var errorcode: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.errorcode != nil {
            map["errorcode"] = self.errorcode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorMessage") && dict["errorMessage"] != nil {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("errorcode") && dict["errorcode"] != nil {
            self.errorcode = dict["errorcode"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("taskId") && dict["taskId"] != nil {
            self.taskId = dict["taskId"] as! String
        }
    }
}
