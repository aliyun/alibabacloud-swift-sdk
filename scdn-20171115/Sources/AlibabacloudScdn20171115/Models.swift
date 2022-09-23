import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddScdnDomainRequest : Tea.TeaModel {
    public var checkUrl: String?

    public var domainName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceGroupId: String?

    public var scope: String?

    public var securityToken: String?

    public var sources: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkUrl != nil {
            map["CheckUrl"] = self.checkUrl!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sources != nil {
            map["Sources"] = self.sources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckUrl") {
            self.checkUrl = dict["CheckUrl"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Scope") {
            self.scope = dict["Scope"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sources = dict["Sources"] as! String
        }
    }
}

public class AddScdnDomainResponseBody : Tea.TeaModel {
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

public class AddScdnDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddScdnDomainResponseBody?

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
            var model = AddScdnDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchDeleteScdnDomainConfigsRequest : Tea.TeaModel {
    public var domainNames: String?

    public var functionNames: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainNames != nil {
            map["DomainNames"] = self.domainNames!
        }
        if self.functionNames != nil {
            map["FunctionNames"] = self.functionNames!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainNames") {
            self.domainNames = dict["DomainNames"] as! String
        }
        if dict.keys.contains("FunctionNames") {
            self.functionNames = dict["FunctionNames"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class BatchDeleteScdnDomainConfigsResponseBody : Tea.TeaModel {
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

public class BatchDeleteScdnDomainConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteScdnDomainConfigsResponseBody?

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
            var model = BatchDeleteScdnDomainConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchSetScdnDomainConfigsRequest : Tea.TeaModel {
    public var domainNames: String?

    public var functions: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainNames != nil {
            map["DomainNames"] = self.domainNames!
        }
        if self.functions != nil {
            map["Functions"] = self.functions!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainNames") {
            self.domainNames = dict["DomainNames"] as! String
        }
        if dict.keys.contains("Functions") {
            self.functions = dict["Functions"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class BatchSetScdnDomainConfigsResponseBody : Tea.TeaModel {
    public class DomainConfigList : Tea.TeaModel {
        public class DomainConfigModel : Tea.TeaModel {
            public var configId: Int64?

            public var domainName: String?

            public var functionName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configId != nil {
                    map["ConfigId"] = self.configId!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.functionName != nil {
                    map["FunctionName"] = self.functionName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigId") {
                    self.configId = dict["ConfigId"] as! Int64
                }
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("FunctionName") {
                    self.functionName = dict["FunctionName"] as! String
                }
            }
        }
        public var domainConfigModel: [BatchSetScdnDomainConfigsResponseBody.DomainConfigList.DomainConfigModel]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainConfigModel != nil {
                var tmp : [Any] = []
                for k in self.domainConfigModel! {
                    tmp.append(k.toMap())
                }
                map["DomainConfigModel"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainConfigModel") {
                self.domainConfigModel = dict["DomainConfigModel"] as! [BatchSetScdnDomainConfigsResponseBody.DomainConfigList.DomainConfigModel]
            }
        }
    }
    public var domainConfigList: BatchSetScdnDomainConfigsResponseBody.DomainConfigList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainConfigList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainConfigList != nil {
            map["DomainConfigList"] = self.domainConfigList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainConfigList") {
            var model = BatchSetScdnDomainConfigsResponseBody.DomainConfigList()
            model.fromMap(dict["DomainConfigList"] as! [String: Any])
            self.domainConfigList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchSetScdnDomainConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchSetScdnDomainConfigsResponseBody?

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
            var model = BatchSetScdnDomainConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchStartScdnDomainRequest : Tea.TeaModel {
    public var domainNames: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainNames != nil {
            map["DomainNames"] = self.domainNames!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainNames") {
            self.domainNames = dict["DomainNames"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class BatchStartScdnDomainResponseBody : Tea.TeaModel {
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

public class BatchStartScdnDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchStartScdnDomainResponseBody?

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
            var model = BatchStartScdnDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchStopScdnDomainRequest : Tea.TeaModel {
    public var domainNames: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainNames != nil {
            map["DomainNames"] = self.domainNames!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainNames") {
            self.domainNames = dict["DomainNames"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class BatchStopScdnDomainResponseBody : Tea.TeaModel {
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

public class BatchStopScdnDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchStopScdnDomainResponseBody?

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
            var model = BatchStopScdnDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchUpdateScdnDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var ownerId: Int64?

    public var resourceGroupId: String?

    public var securityToken: String?

    public var sources: String?

    public var topLevelDomain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sources != nil {
            map["Sources"] = self.sources!
        }
        if self.topLevelDomain != nil {
            map["TopLevelDomain"] = self.topLevelDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sources = dict["Sources"] as! String
        }
        if dict.keys.contains("TopLevelDomain") {
            self.topLevelDomain = dict["TopLevelDomain"] as! String
        }
    }
}

public class BatchUpdateScdnDomainResponseBody : Tea.TeaModel {
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

public class BatchUpdateScdnDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchUpdateScdnDomainResponseBody?

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
            var model = BatchUpdateScdnDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckScdnServiceRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class CheckScdnServiceResponseBody : Tea.TeaModel {
    public var enabled: Bool?

    public var inDebt: Bool?

    public var inDebtOverdue: Bool?

    public var onService: Bool?

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
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.inDebt != nil {
            map["InDebt"] = self.inDebt!
        }
        if self.inDebtOverdue != nil {
            map["InDebtOverdue"] = self.inDebtOverdue!
        }
        if self.onService != nil {
            map["OnService"] = self.onService!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Bool
        }
        if dict.keys.contains("InDebt") {
            self.inDebt = dict["InDebt"] as! Bool
        }
        if dict.keys.contains("InDebtOverdue") {
            self.inDebtOverdue = dict["InDebtOverdue"] as! Bool
        }
        if dict.keys.contains("OnService") {
            self.onService = dict["OnService"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckScdnServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckScdnServiceResponseBody?

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
            var model = CheckScdnServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteScdnDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteScdnDomainResponseBody : Tea.TeaModel {
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

public class DeleteScdnDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScdnDomainResponseBody?

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
            var model = DeleteScdnDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteScdnSpecificConfigRequest : Tea.TeaModel {
    public var configId: String?

    public var domainName: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configId != nil {
            map["ConfigId"] = self.configId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigId") {
            self.configId = dict["ConfigId"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DeleteScdnSpecificConfigResponseBody : Tea.TeaModel {
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

public class DeleteScdnSpecificConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScdnSpecificConfigResponseBody?

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
            var model = DeleteScdnSpecificConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnCcInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeScdnCcInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnCcInfoResponseBody?

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
            var model = DescribeScdnCcInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnCcQpsInfoRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnCcQpsInfoResponseBody : Tea.TeaModel {
    public class Attacks : Tea.TeaModel {
        public var attack: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attack != nil {
                map["Attack"] = self.attack!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Attack") {
                self.attack = dict["Attack"] as! [String]
            }
        }
    }
    public class TimeScopes : Tea.TeaModel {
        public class TimeScope : Tea.TeaModel {
            public var interval: String?

            public var start: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.interval != nil {
                    map["Interval"] = self.interval!
                }
                if self.start != nil {
                    map["Start"] = self.start!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Interval") {
                    self.interval = dict["Interval"] as! String
                }
                if dict.keys.contains("Start") {
                    self.start = dict["Start"] as! String
                }
            }
        }
        public var timeScope: [DescribeScdnCcQpsInfoResponseBody.TimeScopes.TimeScope]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.timeScope != nil {
                var tmp : [Any] = []
                for k in self.timeScope! {
                    tmp.append(k.toMap())
                }
                map["TimeScope"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TimeScope") {
                self.timeScope = dict["TimeScope"] as! [DescribeScdnCcQpsInfoResponseBody.TimeScopes.TimeScope]
            }
        }
    }
    public class Totals : Tea.TeaModel {
        public var total: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! [String]
            }
        }
    }
    public var attacks: DescribeScdnCcQpsInfoResponseBody.Attacks?

    public var requestId: String?

    public var timeScopes: DescribeScdnCcQpsInfoResponseBody.TimeScopes?

    public var totals: DescribeScdnCcQpsInfoResponseBody.Totals?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.attacks?.validate()
        try self.timeScopes?.validate()
        try self.totals?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attacks != nil {
            map["Attacks"] = self.attacks?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.timeScopes != nil {
            map["TimeScopes"] = self.timeScopes?.toMap()
        }
        if self.totals != nil {
            map["Totals"] = self.totals?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Attacks") {
            var model = DescribeScdnCcQpsInfoResponseBody.Attacks()
            model.fromMap(dict["Attacks"] as! [String: Any])
            self.attacks = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TimeScopes") {
            var model = DescribeScdnCcQpsInfoResponseBody.TimeScopes()
            model.fromMap(dict["TimeScopes"] as! [String: Any])
            self.timeScopes = model
        }
        if dict.keys.contains("Totals") {
            var model = DescribeScdnCcQpsInfoResponseBody.Totals()
            model.fromMap(dict["Totals"] as! [String: Any])
            self.totals = model
        }
    }
}

public class DescribeScdnCcQpsInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnCcQpsInfoResponseBody?

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
            var model = DescribeScdnCcQpsInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnCcTopIpRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var pageNumber: String?

    public var pageSize: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnCcTopIpResponseBody : Tea.TeaModel {
    public class AttackIpDataList : Tea.TeaModel {
        public class AttackIpDatas : Tea.TeaModel {
            public var attackCount: String?

            public var ip: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attackCount != nil {
                    map["AttackCount"] = self.attackCount!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttackCount") {
                    self.attackCount = dict["AttackCount"] as! String
                }
                if dict.keys.contains("Ip") {
                    self.ip = dict["Ip"] as! String
                }
            }
        }
        public var attackIpDatas: [DescribeScdnCcTopIpResponseBody.AttackIpDataList.AttackIpDatas]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attackIpDatas != nil {
                var tmp : [Any] = []
                for k in self.attackIpDatas! {
                    tmp.append(k.toMap())
                }
                map["AttackIpDatas"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttackIpDatas") {
                self.attackIpDatas = dict["AttackIpDatas"] as! [DescribeScdnCcTopIpResponseBody.AttackIpDataList.AttackIpDatas]
            }
        }
    }
    public var attackIpDataList: DescribeScdnCcTopIpResponseBody.AttackIpDataList?

    public var domainName: String?

    public var requestId: String?

    public var total: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.attackIpDataList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attackIpDataList != nil {
            map["AttackIpDataList"] = self.attackIpDataList?.toMap()
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttackIpDataList") {
            var model = DescribeScdnCcTopIpResponseBody.AttackIpDataList()
            model.fromMap(dict["AttackIpDataList"] as! [String: Any])
            self.attackIpDataList = model
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! String
        }
    }
}

public class DescribeScdnCcTopIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnCcTopIpResponseBody?

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
            var model = DescribeScdnCcTopIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnCcTopUrlRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var pageNumber: String?

    public var pageSize: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnCcTopUrlResponseBody : Tea.TeaModel {
    public class AttackUrlDataList : Tea.TeaModel {
        public class AttackUrlDatas : Tea.TeaModel {
            public var attackCount: String?

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
                if self.attackCount != nil {
                    map["AttackCount"] = self.attackCount!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttackCount") {
                    self.attackCount = dict["AttackCount"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var attackUrlDatas: [DescribeScdnCcTopUrlResponseBody.AttackUrlDataList.AttackUrlDatas]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attackUrlDatas != nil {
                var tmp : [Any] = []
                for k in self.attackUrlDatas! {
                    tmp.append(k.toMap())
                }
                map["AttackUrlDatas"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttackUrlDatas") {
                self.attackUrlDatas = dict["AttackUrlDatas"] as! [DescribeScdnCcTopUrlResponseBody.AttackUrlDataList.AttackUrlDatas]
            }
        }
    }
    public var attackUrlDataList: DescribeScdnCcTopUrlResponseBody.AttackUrlDataList?

    public var domainName: String?

    public var requestId: String?

    public var total: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.attackUrlDataList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attackUrlDataList != nil {
            map["AttackUrlDataList"] = self.attackUrlDataList?.toMap()
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttackUrlDataList") {
            var model = DescribeScdnCcTopUrlResponseBody.AttackUrlDataList()
            model.fromMap(dict["AttackUrlDataList"] as! [String: Any])
            self.attackUrlDataList = model
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! String
        }
    }
}

public class DescribeScdnCcTopUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnCcTopUrlResponseBody?

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
            var model = DescribeScdnCcTopUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnCertificateDetailRequest : Tea.TeaModel {
    public var certName: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certName != nil {
            map["CertName"] = self.certName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertName") {
            self.certName = dict["CertName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeScdnCertificateDetailResponseBody : Tea.TeaModel {
    public var cert: String?

    public var certId: Int64?

    public var certName: String?

    public var key: String?

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
        if self.cert != nil {
            map["Cert"] = self.cert!
        }
        if self.certId != nil {
            map["CertId"] = self.certId!
        }
        if self.certName != nil {
            map["CertName"] = self.certName!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cert") {
            self.cert = dict["Cert"] as! String
        }
        if dict.keys.contains("CertId") {
            self.certId = dict["CertId"] as! Int64
        }
        if dict.keys.contains("CertName") {
            self.certName = dict["CertName"] as! String
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScdnCertificateDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnCertificateDetailResponseBody?

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
            var model = DescribeScdnCertificateDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnCertificateListRequest : Tea.TeaModel {
    public var domainName: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeScdnCertificateListResponseBody : Tea.TeaModel {
    public class CertificateListModel : Tea.TeaModel {
        public class CertList : Tea.TeaModel {
            public class Cert : Tea.TeaModel {
                public var certId: Int64?

                public var certName: String?

                public var common: String?

                public var fingerprint: String?

                public var issuer: String?

                public var lastTime: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.certId != nil {
                        map["CertId"] = self.certId!
                    }
                    if self.certName != nil {
                        map["CertName"] = self.certName!
                    }
                    if self.common != nil {
                        map["Common"] = self.common!
                    }
                    if self.fingerprint != nil {
                        map["Fingerprint"] = self.fingerprint!
                    }
                    if self.issuer != nil {
                        map["Issuer"] = self.issuer!
                    }
                    if self.lastTime != nil {
                        map["LastTime"] = self.lastTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CertId") {
                        self.certId = dict["CertId"] as! Int64
                    }
                    if dict.keys.contains("CertName") {
                        self.certName = dict["CertName"] as! String
                    }
                    if dict.keys.contains("Common") {
                        self.common = dict["Common"] as! String
                    }
                    if dict.keys.contains("Fingerprint") {
                        self.fingerprint = dict["Fingerprint"] as! String
                    }
                    if dict.keys.contains("Issuer") {
                        self.issuer = dict["Issuer"] as! String
                    }
                    if dict.keys.contains("LastTime") {
                        self.lastTime = dict["LastTime"] as! Int64
                    }
                }
            }
            public var cert: [DescribeScdnCertificateListResponseBody.CertificateListModel.CertList.Cert]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cert != nil {
                    var tmp : [Any] = []
                    for k in self.cert! {
                        tmp.append(k.toMap())
                    }
                    map["Cert"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cert") {
                    self.cert = dict["Cert"] as! [DescribeScdnCertificateListResponseBody.CertificateListModel.CertList.Cert]
                }
            }
        }
        public var certList: DescribeScdnCertificateListResponseBody.CertificateListModel.CertList?

        public var count: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.certList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certList != nil {
                map["CertList"] = self.certList?.toMap()
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertList") {
                var model = DescribeScdnCertificateListResponseBody.CertificateListModel.CertList()
                model.fromMap(dict["CertList"] as! [String: Any])
                self.certList = model
            }
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
            }
        }
    }
    public var certificateListModel: DescribeScdnCertificateListResponseBody.CertificateListModel?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certificateListModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateListModel != nil {
            map["CertificateListModel"] = self.certificateListModel?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateListModel") {
            var model = DescribeScdnCertificateListResponseBody.CertificateListModel()
            model.fromMap(dict["CertificateListModel"] as! [String: Any])
            self.certificateListModel = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScdnCertificateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnCertificateListResponseBody?

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
            var model = DescribeScdnCertificateListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDDoSInfoResponseBody : Tea.TeaModel {
    public var elasticBandwidth: Int32?

    public var requestId: String?

    public var secBandwidth: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.elasticBandwidth != nil {
            map["ElasticBandwidth"] = self.elasticBandwidth!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secBandwidth != nil {
            map["SecBandwidth"] = self.secBandwidth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ElasticBandwidth") {
            self.elasticBandwidth = dict["ElasticBandwidth"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecBandwidth") {
            self.secBandwidth = dict["SecBandwidth"] as! Int32
        }
    }
}

public class DescribeScdnDDoSInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDDoSInfoResponseBody?

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
            var model = DescribeScdnDDoSInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDDoSTrafficInfoRequest : Tea.TeaModel {
    public var endTime: String?

    public var line: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.line != nil {
            map["Line"] = self.line!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Line") {
            self.line = dict["Line"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDDoSTrafficInfoResponseBody : Tea.TeaModel {
    public class BpsDrops : Tea.TeaModel {
        public var bpsDrop: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bpsDrop != nil {
                map["BpsDrop"] = self.bpsDrop!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BpsDrop") {
                self.bpsDrop = dict["BpsDrop"] as! [String]
            }
        }
    }
    public class BpsTotals : Tea.TeaModel {
        public var bpsTotal: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bpsTotal != nil {
                map["BpsTotal"] = self.bpsTotal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BpsTotal") {
                self.bpsTotal = dict["BpsTotal"] as! [String]
            }
        }
    }
    public class PpsDrops : Tea.TeaModel {
        public var ppsDrop: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ppsDrop != nil {
                map["PpsDrop"] = self.ppsDrop!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PpsDrop") {
                self.ppsDrop = dict["PpsDrop"] as! [String]
            }
        }
    }
    public class PpsTotals : Tea.TeaModel {
        public var ppsTotal: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ppsTotal != nil {
                map["PpsTotal"] = self.ppsTotal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PpsTotal") {
                self.ppsTotal = dict["PpsTotal"] as! [String]
            }
        }
    }
    public class TimeScopes : Tea.TeaModel {
        public class TimeScope : Tea.TeaModel {
            public var interval: String?

            public var start: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.interval != nil {
                    map["Interval"] = self.interval!
                }
                if self.start != nil {
                    map["Start"] = self.start!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Interval") {
                    self.interval = dict["Interval"] as! String
                }
                if dict.keys.contains("Start") {
                    self.start = dict["Start"] as! String
                }
            }
        }
        public var timeScope: [DescribeScdnDDoSTrafficInfoResponseBody.TimeScopes.TimeScope]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.timeScope != nil {
                var tmp : [Any] = []
                for k in self.timeScope! {
                    tmp.append(k.toMap())
                }
                map["TimeScope"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TimeScope") {
                self.timeScope = dict["TimeScope"] as! [DescribeScdnDDoSTrafficInfoResponseBody.TimeScopes.TimeScope]
            }
        }
    }
    public var bpsDrops: DescribeScdnDDoSTrafficInfoResponseBody.BpsDrops?

    public var bpsTotals: DescribeScdnDDoSTrafficInfoResponseBody.BpsTotals?

    public var ppsDrops: DescribeScdnDDoSTrafficInfoResponseBody.PpsDrops?

    public var ppsTotals: DescribeScdnDDoSTrafficInfoResponseBody.PpsTotals?

    public var requestId: String?

    public var timeScopes: DescribeScdnDDoSTrafficInfoResponseBody.TimeScopes?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bpsDrops?.validate()
        try self.bpsTotals?.validate()
        try self.ppsDrops?.validate()
        try self.ppsTotals?.validate()
        try self.timeScopes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bpsDrops != nil {
            map["BpsDrops"] = self.bpsDrops?.toMap()
        }
        if self.bpsTotals != nil {
            map["BpsTotals"] = self.bpsTotals?.toMap()
        }
        if self.ppsDrops != nil {
            map["PpsDrops"] = self.ppsDrops?.toMap()
        }
        if self.ppsTotals != nil {
            map["PpsTotals"] = self.ppsTotals?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.timeScopes != nil {
            map["TimeScopes"] = self.timeScopes?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BpsDrops") {
            var model = DescribeScdnDDoSTrafficInfoResponseBody.BpsDrops()
            model.fromMap(dict["BpsDrops"] as! [String: Any])
            self.bpsDrops = model
        }
        if dict.keys.contains("BpsTotals") {
            var model = DescribeScdnDDoSTrafficInfoResponseBody.BpsTotals()
            model.fromMap(dict["BpsTotals"] as! [String: Any])
            self.bpsTotals = model
        }
        if dict.keys.contains("PpsDrops") {
            var model = DescribeScdnDDoSTrafficInfoResponseBody.PpsDrops()
            model.fromMap(dict["PpsDrops"] as! [String: Any])
            self.ppsDrops = model
        }
        if dict.keys.contains("PpsTotals") {
            var model = DescribeScdnDDoSTrafficInfoResponseBody.PpsTotals()
            model.fromMap(dict["PpsTotals"] as! [String: Any])
            self.ppsTotals = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TimeScopes") {
            var model = DescribeScdnDDoSTrafficInfoResponseBody.TimeScopes()
            model.fromMap(dict["TimeScopes"] as! [String: Any])
            self.timeScopes = model
        }
    }
}

public class DescribeScdnDDoSTrafficInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDDoSTrafficInfoResponseBody?

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
            var model = DescribeScdnDDoSTrafficInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainBpsDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var interval: String?

    public var ispNameEn: String?

    public var locationNameEn: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainBpsDataResponseBody : Tea.TeaModel {
    public class BpsDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var bpsValue: String?

            public var httpBpsValue: String?

            public var httpsBpsValue: String?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bpsValue != nil {
                    map["BpsValue"] = self.bpsValue!
                }
                if self.httpBpsValue != nil {
                    map["HttpBpsValue"] = self.httpBpsValue!
                }
                if self.httpsBpsValue != nil {
                    map["HttpsBpsValue"] = self.httpsBpsValue!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BpsValue") {
                    self.bpsValue = dict["BpsValue"] as! String
                }
                if dict.keys.contains("HttpBpsValue") {
                    self.httpBpsValue = dict["HttpBpsValue"] as! String
                }
                if dict.keys.contains("HttpsBpsValue") {
                    self.httpsBpsValue = dict["HttpsBpsValue"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var dataModule: [DescribeScdnDomainBpsDataResponseBody.BpsDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeScdnDomainBpsDataResponseBody.BpsDataPerInterval.DataModule]
            }
        }
    }
    public var bpsDataPerInterval: DescribeScdnDomainBpsDataResponseBody.BpsDataPerInterval?

    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bpsDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bpsDataPerInterval != nil {
            map["BpsDataPerInterval"] = self.bpsDataPerInterval?.toMap()
        }
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BpsDataPerInterval") {
            var model = DescribeScdnDomainBpsDataResponseBody.BpsDataPerInterval()
            model.fromMap(dict["BpsDataPerInterval"] as! [String: Any])
            self.bpsDataPerInterval = model
        }
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainBpsDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainBpsDataResponseBody?

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
            var model = DescribeScdnDomainBpsDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainCertificateInfoRequest : Tea.TeaModel {
    public var domainName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
    }
}

public class DescribeScdnDomainCertificateInfoResponseBody : Tea.TeaModel {
    public class CertInfos : Tea.TeaModel {
        public class CertInfo : Tea.TeaModel {
            public var certDomainName: String?

            public var certExpireTime: String?

            public var certLife: String?

            public var certName: String?

            public var certOrg: String?

            public var certType: String?

            public var domainName: String?

            public var SSLProtocol: String?

            public var SSLPub: String?

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
                if self.certDomainName != nil {
                    map["CertDomainName"] = self.certDomainName!
                }
                if self.certExpireTime != nil {
                    map["CertExpireTime"] = self.certExpireTime!
                }
                if self.certLife != nil {
                    map["CertLife"] = self.certLife!
                }
                if self.certName != nil {
                    map["CertName"] = self.certName!
                }
                if self.certOrg != nil {
                    map["CertOrg"] = self.certOrg!
                }
                if self.certType != nil {
                    map["CertType"] = self.certType!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.SSLProtocol != nil {
                    map["SSLProtocol"] = self.SSLProtocol!
                }
                if self.SSLPub != nil {
                    map["SSLPub"] = self.SSLPub!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CertDomainName") {
                    self.certDomainName = dict["CertDomainName"] as! String
                }
                if dict.keys.contains("CertExpireTime") {
                    self.certExpireTime = dict["CertExpireTime"] as! String
                }
                if dict.keys.contains("CertLife") {
                    self.certLife = dict["CertLife"] as! String
                }
                if dict.keys.contains("CertName") {
                    self.certName = dict["CertName"] as! String
                }
                if dict.keys.contains("CertOrg") {
                    self.certOrg = dict["CertOrg"] as! String
                }
                if dict.keys.contains("CertType") {
                    self.certType = dict["CertType"] as! String
                }
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("SSLProtocol") {
                    self.SSLProtocol = dict["SSLProtocol"] as! String
                }
                if dict.keys.contains("SSLPub") {
                    self.SSLPub = dict["SSLPub"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var certInfo: [DescribeScdnDomainCertificateInfoResponseBody.CertInfos.CertInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certInfo != nil {
                var tmp : [Any] = []
                for k in self.certInfo! {
                    tmp.append(k.toMap())
                }
                map["CertInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertInfo") {
                self.certInfo = dict["CertInfo"] as! [DescribeScdnDomainCertificateInfoResponseBody.CertInfos.CertInfo]
            }
        }
    }
    public var certInfos: DescribeScdnDomainCertificateInfoResponseBody.CertInfos?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certInfos != nil {
            map["CertInfos"] = self.certInfos?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertInfos") {
            var model = DescribeScdnDomainCertificateInfoResponseBody.CertInfos()
            model.fromMap(dict["CertInfos"] as! [String: Any])
            self.certInfos = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScdnDomainCertificateInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainCertificateInfoResponseBody?

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
            var model = DescribeScdnDomainCertificateInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainCnameRequest : Tea.TeaModel {
    public var domainName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
    }
}

public class DescribeScdnDomainCnameResponseBody : Tea.TeaModel {
    public class CnameDatas : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var cname: String?

            public var domain: String?

            public var status: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cname != nil {
                    map["Cname"] = self.cname!
                }
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cname") {
                    self.cname = dict["Cname"] as! String
                }
                if dict.keys.contains("Domain") {
                    self.domain = dict["Domain"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
            }
        }
        public var data: [DescribeScdnDomainCnameResponseBody.CnameDatas.Data]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                self.data = dict["Data"] as! [DescribeScdnDomainCnameResponseBody.CnameDatas.Data]
            }
        }
    }
    public var cnameDatas: DescribeScdnDomainCnameResponseBody.CnameDatas?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cnameDatas?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cnameDatas != nil {
            map["CnameDatas"] = self.cnameDatas?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CnameDatas") {
            var model = DescribeScdnDomainCnameResponseBody.CnameDatas()
            model.fromMap(dict["CnameDatas"] as! [String: Any])
            self.cnameDatas = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScdnDomainCnameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainCnameResponseBody?

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
            var model = DescribeScdnDomainCnameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainConfigsRequest : Tea.TeaModel {
    public var configId: String?

    public var domainName: String?

    public var functionNames: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configId != nil {
            map["ConfigId"] = self.configId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.functionNames != nil {
            map["FunctionNames"] = self.functionNames!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigId") {
            self.configId = dict["ConfigId"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("FunctionNames") {
            self.functionNames = dict["FunctionNames"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeScdnDomainConfigsResponseBody : Tea.TeaModel {
    public class DomainConfigs : Tea.TeaModel {
        public class DomainConfig : Tea.TeaModel {
            public class FunctionArgs : Tea.TeaModel {
                public class FunctionArg : Tea.TeaModel {
                    public var argName: String?

                    public var argValue: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.argName != nil {
                            map["ArgName"] = self.argName!
                        }
                        if self.argValue != nil {
                            map["ArgValue"] = self.argValue!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ArgName") {
                            self.argName = dict["ArgName"] as! String
                        }
                        if dict.keys.contains("ArgValue") {
                            self.argValue = dict["ArgValue"] as! String
                        }
                    }
                }
                public var functionArg: [DescribeScdnDomainConfigsResponseBody.DomainConfigs.DomainConfig.FunctionArgs.FunctionArg]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.functionArg != nil {
                        var tmp : [Any] = []
                        for k in self.functionArg! {
                            tmp.append(k.toMap())
                        }
                        map["FunctionArg"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FunctionArg") {
                        self.functionArg = dict["FunctionArg"] as! [DescribeScdnDomainConfigsResponseBody.DomainConfigs.DomainConfig.FunctionArgs.FunctionArg]
                    }
                }
            }
            public var configId: String?

            public var functionArgs: DescribeScdnDomainConfigsResponseBody.DomainConfigs.DomainConfig.FunctionArgs?

            public var functionName: String?

            public var parentId: String?

            public var status: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.functionArgs?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configId != nil {
                    map["ConfigId"] = self.configId!
                }
                if self.functionArgs != nil {
                    map["FunctionArgs"] = self.functionArgs?.toMap()
                }
                if self.functionName != nil {
                    map["FunctionName"] = self.functionName!
                }
                if self.parentId != nil {
                    map["ParentId"] = self.parentId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigId") {
                    self.configId = dict["ConfigId"] as! String
                }
                if dict.keys.contains("FunctionArgs") {
                    var model = DescribeScdnDomainConfigsResponseBody.DomainConfigs.DomainConfig.FunctionArgs()
                    model.fromMap(dict["FunctionArgs"] as! [String: Any])
                    self.functionArgs = model
                }
                if dict.keys.contains("FunctionName") {
                    self.functionName = dict["FunctionName"] as! String
                }
                if dict.keys.contains("ParentId") {
                    self.parentId = dict["ParentId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var domainConfig: [DescribeScdnDomainConfigsResponseBody.DomainConfigs.DomainConfig]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainConfig != nil {
                var tmp : [Any] = []
                for k in self.domainConfig! {
                    tmp.append(k.toMap())
                }
                map["DomainConfig"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainConfig") {
                self.domainConfig = dict["DomainConfig"] as! [DescribeScdnDomainConfigsResponseBody.DomainConfigs.DomainConfig]
            }
        }
    }
    public var domainConfigs: DescribeScdnDomainConfigsResponseBody.DomainConfigs?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainConfigs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainConfigs != nil {
            map["DomainConfigs"] = self.domainConfigs?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainConfigs") {
            var model = DescribeScdnDomainConfigsResponseBody.DomainConfigs()
            model.fromMap(dict["DomainConfigs"] as! [String: Any])
            self.domainConfigs = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScdnDomainConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainConfigsResponseBody?

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
            var model = DescribeScdnDomainConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainDetailRequest : Tea.TeaModel {
    public var domainName: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeScdnDomainDetailResponseBody : Tea.TeaModel {
    public class DomainDetail : Tea.TeaModel {
        public class Sources : Tea.TeaModel {
            public class Source : Tea.TeaModel {
                public var content: String?

                public var enabled: String?

                public var port: Int32?

                public var priority: String?

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
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.enabled != nil {
                        map["Enabled"] = self.enabled!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.priority != nil {
                        map["Priority"] = self.priority!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("Enabled") {
                        self.enabled = dict["Enabled"] as! String
                    }
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                    if dict.keys.contains("Priority") {
                        self.priority = dict["Priority"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var source: [DescribeScdnDomainDetailResponseBody.DomainDetail.Sources.Source]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.source != nil {
                    var tmp : [Any] = []
                    for k in self.source! {
                        tmp.append(k.toMap())
                    }
                    map["Source"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! [DescribeScdnDomainDetailResponseBody.DomainDetail.Sources.Source]
                }
            }
        }
        public var certName: String?

        public var cname: String?

        public var description_: String?

        public var domainName: String?

        public var domainStatus: String?

        public var gmtCreated: String?

        public var gmtModified: String?

        public var resourceGroupId: String?

        public var SSLProtocol: String?

        public var SSLPub: String?

        public var scope: String?

        public var sources: DescribeScdnDomainDetailResponseBody.DomainDetail.Sources?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.sources?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certName != nil {
                map["CertName"] = self.certName!
            }
            if self.cname != nil {
                map["Cname"] = self.cname!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.domainStatus != nil {
                map["DomainStatus"] = self.domainStatus!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.SSLProtocol != nil {
                map["SSLProtocol"] = self.SSLProtocol!
            }
            if self.SSLPub != nil {
                map["SSLPub"] = self.SSLPub!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            if self.sources != nil {
                map["Sources"] = self.sources?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertName") {
                self.certName = dict["CertName"] as! String
            }
            if dict.keys.contains("Cname") {
                self.cname = dict["Cname"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("DomainStatus") {
                self.domainStatus = dict["DomainStatus"] as! String
            }
            if dict.keys.contains("GmtCreated") {
                self.gmtCreated = dict["GmtCreated"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SSLProtocol") {
                self.SSLProtocol = dict["SSLProtocol"] as! String
            }
            if dict.keys.contains("SSLPub") {
                self.SSLPub = dict["SSLPub"] as! String
            }
            if dict.keys.contains("Scope") {
                self.scope = dict["Scope"] as! String
            }
            if dict.keys.contains("Sources") {
                var model = DescribeScdnDomainDetailResponseBody.DomainDetail.Sources()
                model.fromMap(dict["Sources"] as! [String: Any])
                self.sources = model
            }
        }
    }
    public var domainDetail: DescribeScdnDomainDetailResponseBody.DomainDetail?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainDetail != nil {
            map["DomainDetail"] = self.domainDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainDetail") {
            var model = DescribeScdnDomainDetailResponseBody.DomainDetail()
            model.fromMap(dict["DomainDetail"] as! [String: Any])
            self.domainDetail = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScdnDomainDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainDetailResponseBody?

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
            var model = DescribeScdnDomainDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainHitRateDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var interval: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainHitRateDataResponseBody : Tea.TeaModel {
    public class HitRatePerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var byteHitRate: String?

            public var reqHitRate: String?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.byteHitRate != nil {
                    map["ByteHitRate"] = self.byteHitRate!
                }
                if self.reqHitRate != nil {
                    map["ReqHitRate"] = self.reqHitRate!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ByteHitRate") {
                    self.byteHitRate = dict["ByteHitRate"] as! String
                }
                if dict.keys.contains("ReqHitRate") {
                    self.reqHitRate = dict["ReqHitRate"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var dataModule: [DescribeScdnDomainHitRateDataResponseBody.HitRatePerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeScdnDomainHitRateDataResponseBody.HitRatePerInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var hitRatePerInterval: DescribeScdnDomainHitRateDataResponseBody.HitRatePerInterval?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.hitRatePerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.hitRatePerInterval != nil {
            map["HitRatePerInterval"] = self.hitRatePerInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("HitRatePerInterval") {
            var model = DescribeScdnDomainHitRateDataResponseBody.HitRatePerInterval()
            model.fromMap(dict["HitRatePerInterval"] as! [String: Any])
            self.hitRatePerInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainHitRateDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainHitRateDataResponseBody?

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
            var model = DescribeScdnDomainHitRateDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainHttpCodeDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var interval: String?

    public var ispNameEn: String?

    public var locationNameEn: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainHttpCodeDataResponseBody : Tea.TeaModel {
    public class DataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public class HttpCodeDataPerInterval : Tea.TeaModel {
                public class HttpCodeDataModule : Tea.TeaModel {
                    public var code: String?

                    public var count: String?

                    public var proportion: String?

                    public override init() {
                        super.init()
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
                        if self.count != nil {
                            map["Count"] = self.count!
                        }
                        if self.proportion != nil {
                            map["Proportion"] = self.proportion!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Code") {
                            self.code = dict["Code"] as! String
                        }
                        if dict.keys.contains("Count") {
                            self.count = dict["Count"] as! String
                        }
                        if dict.keys.contains("Proportion") {
                            self.proportion = dict["Proportion"] as! String
                        }
                    }
                }
                public var httpCodeDataModule: [DescribeScdnDomainHttpCodeDataResponseBody.DataPerInterval.DataModule.HttpCodeDataPerInterval.HttpCodeDataModule]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.httpCodeDataModule != nil {
                        var tmp : [Any] = []
                        for k in self.httpCodeDataModule! {
                            tmp.append(k.toMap())
                        }
                        map["HttpCodeDataModule"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("HttpCodeDataModule") {
                        self.httpCodeDataModule = dict["HttpCodeDataModule"] as! [DescribeScdnDomainHttpCodeDataResponseBody.DataPerInterval.DataModule.HttpCodeDataPerInterval.HttpCodeDataModule]
                    }
                }
            }
            public var httpCodeDataPerInterval: DescribeScdnDomainHttpCodeDataResponseBody.DataPerInterval.DataModule.HttpCodeDataPerInterval?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.httpCodeDataPerInterval?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.httpCodeDataPerInterval != nil {
                    map["HttpCodeDataPerInterval"] = self.httpCodeDataPerInterval?.toMap()
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HttpCodeDataPerInterval") {
                    var model = DescribeScdnDomainHttpCodeDataResponseBody.DataPerInterval.DataModule.HttpCodeDataPerInterval()
                    model.fromMap(dict["HttpCodeDataPerInterval"] as! [String: Any])
                    self.httpCodeDataPerInterval = model
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var dataModule: [DescribeScdnDomainHttpCodeDataResponseBody.DataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeScdnDomainHttpCodeDataResponseBody.DataPerInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var dataPerInterval: DescribeScdnDomainHttpCodeDataResponseBody.DataPerInterval?

    public var domainName: String?

    public var endTime: String?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.dataPerInterval != nil {
            map["DataPerInterval"] = self.dataPerInterval?.toMap()
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DataPerInterval") {
            var model = DescribeScdnDomainHttpCodeDataResponseBody.DataPerInterval()
            model.fromMap(dict["DataPerInterval"] as! [String: Any])
            self.dataPerInterval = model
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainHttpCodeDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainHttpCodeDataResponseBody?

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
            var model = DescribeScdnDomainHttpCodeDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainIspDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainIspDataResponseBody : Tea.TeaModel {
    public class Value : Tea.TeaModel {
        public class ISPProportionData : Tea.TeaModel {
            public var avgObjectSize: String?

            public var avgResponseRate: String?

            public var avgResponseTime: String?

            public var bps: String?

            public var bytesProportion: String?

            public var ISP: String?

            public var ispEname: String?

            public var proportion: String?

            public var qps: String?

            public var reqErrRate: String?

            public var totalBytes: String?

            public var totalQuery: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avgObjectSize != nil {
                    map["AvgObjectSize"] = self.avgObjectSize!
                }
                if self.avgResponseRate != nil {
                    map["AvgResponseRate"] = self.avgResponseRate!
                }
                if self.avgResponseTime != nil {
                    map["AvgResponseTime"] = self.avgResponseTime!
                }
                if self.bps != nil {
                    map["Bps"] = self.bps!
                }
                if self.bytesProportion != nil {
                    map["BytesProportion"] = self.bytesProportion!
                }
                if self.ISP != nil {
                    map["ISP"] = self.ISP!
                }
                if self.ispEname != nil {
                    map["IspEname"] = self.ispEname!
                }
                if self.proportion != nil {
                    map["Proportion"] = self.proportion!
                }
                if self.qps != nil {
                    map["Qps"] = self.qps!
                }
                if self.reqErrRate != nil {
                    map["ReqErrRate"] = self.reqErrRate!
                }
                if self.totalBytes != nil {
                    map["TotalBytes"] = self.totalBytes!
                }
                if self.totalQuery != nil {
                    map["TotalQuery"] = self.totalQuery!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvgObjectSize") {
                    self.avgObjectSize = dict["AvgObjectSize"] as! String
                }
                if dict.keys.contains("AvgResponseRate") {
                    self.avgResponseRate = dict["AvgResponseRate"] as! String
                }
                if dict.keys.contains("AvgResponseTime") {
                    self.avgResponseTime = dict["AvgResponseTime"] as! String
                }
                if dict.keys.contains("Bps") {
                    self.bps = dict["Bps"] as! String
                }
                if dict.keys.contains("BytesProportion") {
                    self.bytesProportion = dict["BytesProportion"] as! String
                }
                if dict.keys.contains("ISP") {
                    self.ISP = dict["ISP"] as! String
                }
                if dict.keys.contains("IspEname") {
                    self.ispEname = dict["IspEname"] as! String
                }
                if dict.keys.contains("Proportion") {
                    self.proportion = dict["Proportion"] as! String
                }
                if dict.keys.contains("Qps") {
                    self.qps = dict["Qps"] as! String
                }
                if dict.keys.contains("ReqErrRate") {
                    self.reqErrRate = dict["ReqErrRate"] as! String
                }
                if dict.keys.contains("TotalBytes") {
                    self.totalBytes = dict["TotalBytes"] as! String
                }
                if dict.keys.contains("TotalQuery") {
                    self.totalQuery = dict["TotalQuery"] as! String
                }
            }
        }
        public var ISPProportionData: [DescribeScdnDomainIspDataResponseBody.Value.ISPProportionData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ISPProportionData != nil {
                var tmp : [Any] = []
                for k in self.ISPProportionData! {
                    tmp.append(k.toMap())
                }
                map["ISPProportionData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ISPProportionData") {
                self.ISPProportionData = dict["ISPProportionData"] as! [DescribeScdnDomainIspDataResponseBody.Value.ISPProportionData]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var requestId: String?

    public var startTime: String?

    public var value: DescribeScdnDomainIspDataResponseBody.Value?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.value?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.value != nil {
            map["Value"] = self.value?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Value") {
            var model = DescribeScdnDomainIspDataResponseBody.Value()
            model.fromMap(dict["Value"] as! [String: Any])
            self.value = model
        }
    }
}

public class DescribeScdnDomainIspDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainIspDataResponseBody?

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
            var model = DescribeScdnDomainIspDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainLogRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainLogResponseBody : Tea.TeaModel {
    public class DomainLogDetails : Tea.TeaModel {
        public class DomainLogDetail : Tea.TeaModel {
            public class LogInfos : Tea.TeaModel {
                public class LogInfoDetail : Tea.TeaModel {
                    public var endTime: String?

                    public var logName: String?

                    public var logPath: String?

                    public var logSize: Int64?

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
                        if self.endTime != nil {
                            map["EndTime"] = self.endTime!
                        }
                        if self.logName != nil {
                            map["LogName"] = self.logName!
                        }
                        if self.logPath != nil {
                            map["LogPath"] = self.logPath!
                        }
                        if self.logSize != nil {
                            map["LogSize"] = self.logSize!
                        }
                        if self.startTime != nil {
                            map["StartTime"] = self.startTime!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("EndTime") {
                            self.endTime = dict["EndTime"] as! String
                        }
                        if dict.keys.contains("LogName") {
                            self.logName = dict["LogName"] as! String
                        }
                        if dict.keys.contains("LogPath") {
                            self.logPath = dict["LogPath"] as! String
                        }
                        if dict.keys.contains("LogSize") {
                            self.logSize = dict["LogSize"] as! Int64
                        }
                        if dict.keys.contains("StartTime") {
                            self.startTime = dict["StartTime"] as! String
                        }
                    }
                }
                public var logInfoDetail: [DescribeScdnDomainLogResponseBody.DomainLogDetails.DomainLogDetail.LogInfos.LogInfoDetail]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.logInfoDetail != nil {
                        var tmp : [Any] = []
                        for k in self.logInfoDetail! {
                            tmp.append(k.toMap())
                        }
                        map["LogInfoDetail"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LogInfoDetail") {
                        self.logInfoDetail = dict["LogInfoDetail"] as! [DescribeScdnDomainLogResponseBody.DomainLogDetails.DomainLogDetail.LogInfos.LogInfoDetail]
                    }
                }
            }
            public class PageInfos : Tea.TeaModel {
                public var pageNumber: Int64?

                public var pageSize: Int64?

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
                    if self.pageNumber != nil {
                        map["PageNumber"] = self.pageNumber!
                    }
                    if self.pageSize != nil {
                        map["PageSize"] = self.pageSize!
                    }
                    if self.total != nil {
                        map["Total"] = self.total!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PageNumber") {
                        self.pageNumber = dict["PageNumber"] as! Int64
                    }
                    if dict.keys.contains("PageSize") {
                        self.pageSize = dict["PageSize"] as! Int64
                    }
                    if dict.keys.contains("Total") {
                        self.total = dict["Total"] as! Int64
                    }
                }
            }
            public var logCount: Int64?

            public var logInfos: DescribeScdnDomainLogResponseBody.DomainLogDetails.DomainLogDetail.LogInfos?

            public var pageInfos: DescribeScdnDomainLogResponseBody.DomainLogDetails.DomainLogDetail.PageInfos?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.logInfos?.validate()
                try self.pageInfos?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.logCount != nil {
                    map["LogCount"] = self.logCount!
                }
                if self.logInfos != nil {
                    map["LogInfos"] = self.logInfos?.toMap()
                }
                if self.pageInfos != nil {
                    map["PageInfos"] = self.pageInfos?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LogCount") {
                    self.logCount = dict["LogCount"] as! Int64
                }
                if dict.keys.contains("LogInfos") {
                    var model = DescribeScdnDomainLogResponseBody.DomainLogDetails.DomainLogDetail.LogInfos()
                    model.fromMap(dict["LogInfos"] as! [String: Any])
                    self.logInfos = model
                }
                if dict.keys.contains("PageInfos") {
                    var model = DescribeScdnDomainLogResponseBody.DomainLogDetails.DomainLogDetail.PageInfos()
                    model.fromMap(dict["PageInfos"] as! [String: Any])
                    self.pageInfos = model
                }
            }
        }
        public var domainLogDetail: [DescribeScdnDomainLogResponseBody.DomainLogDetails.DomainLogDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainLogDetail != nil {
                var tmp : [Any] = []
                for k in self.domainLogDetail! {
                    tmp.append(k.toMap())
                }
                map["DomainLogDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainLogDetail") {
                self.domainLogDetail = dict["DomainLogDetail"] as! [DescribeScdnDomainLogResponseBody.DomainLogDetails.DomainLogDetail]
            }
        }
    }
    public var domainLogDetails: DescribeScdnDomainLogResponseBody.DomainLogDetails?

    public var domainName: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainLogDetails?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainLogDetails != nil {
            map["DomainLogDetails"] = self.domainLogDetails?.toMap()
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainLogDetails") {
            var model = DescribeScdnDomainLogResponseBody.DomainLogDetails()
            model.fromMap(dict["DomainLogDetails"] as! [String: Any])
            self.domainLogDetails = model
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScdnDomainLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainLogResponseBody?

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
            var model = DescribeScdnDomainLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainOriginBpsDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var interval: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainOriginBpsDataResponseBody : Tea.TeaModel {
    public class OriginBpsDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var httpOriginBpsValue: String?

            public var httpsOriginBpsValue: String?

            public var originBpsValue: String?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.httpOriginBpsValue != nil {
                    map["HttpOriginBpsValue"] = self.httpOriginBpsValue!
                }
                if self.httpsOriginBpsValue != nil {
                    map["HttpsOriginBpsValue"] = self.httpsOriginBpsValue!
                }
                if self.originBpsValue != nil {
                    map["OriginBpsValue"] = self.originBpsValue!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HttpOriginBpsValue") {
                    self.httpOriginBpsValue = dict["HttpOriginBpsValue"] as! String
                }
                if dict.keys.contains("HttpsOriginBpsValue") {
                    self.httpsOriginBpsValue = dict["HttpsOriginBpsValue"] as! String
                }
                if dict.keys.contains("OriginBpsValue") {
                    self.originBpsValue = dict["OriginBpsValue"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var dataModule: [DescribeScdnDomainOriginBpsDataResponseBody.OriginBpsDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeScdnDomainOriginBpsDataResponseBody.OriginBpsDataPerInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var originBpsDataPerInterval: DescribeScdnDomainOriginBpsDataResponseBody.OriginBpsDataPerInterval?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.originBpsDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.originBpsDataPerInterval != nil {
            map["OriginBpsDataPerInterval"] = self.originBpsDataPerInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OriginBpsDataPerInterval") {
            var model = DescribeScdnDomainOriginBpsDataResponseBody.OriginBpsDataPerInterval()
            model.fromMap(dict["OriginBpsDataPerInterval"] as! [String: Any])
            self.originBpsDataPerInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainOriginBpsDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainOriginBpsDataResponseBody?

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
            var model = DescribeScdnDomainOriginBpsDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainOriginTrafficDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var interval: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainOriginTrafficDataResponseBody : Tea.TeaModel {
    public class OriginTrafficDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var httpTrafficValue: String?

            public var httpsTrafficValue: String?

            public var timeStamp: String?

            public var trafficValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.httpTrafficValue != nil {
                    map["HttpTrafficValue"] = self.httpTrafficValue!
                }
                if self.httpsTrafficValue != nil {
                    map["HttpsTrafficValue"] = self.httpsTrafficValue!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.trafficValue != nil {
                    map["TrafficValue"] = self.trafficValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HttpTrafficValue") {
                    self.httpTrafficValue = dict["HttpTrafficValue"] as! String
                }
                if dict.keys.contains("HttpsTrafficValue") {
                    self.httpsTrafficValue = dict["HttpsTrafficValue"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("TrafficValue") {
                    self.trafficValue = dict["TrafficValue"] as! String
                }
            }
        }
        public var dataModule: [DescribeScdnDomainOriginTrafficDataResponseBody.OriginTrafficDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeScdnDomainOriginTrafficDataResponseBody.OriginTrafficDataPerInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var originTrafficDataPerInterval: DescribeScdnDomainOriginTrafficDataResponseBody.OriginTrafficDataPerInterval?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.originTrafficDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.originTrafficDataPerInterval != nil {
            map["OriginTrafficDataPerInterval"] = self.originTrafficDataPerInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OriginTrafficDataPerInterval") {
            var model = DescribeScdnDomainOriginTrafficDataResponseBody.OriginTrafficDataPerInterval()
            model.fromMap(dict["OriginTrafficDataPerInterval"] as! [String: Any])
            self.originTrafficDataPerInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainOriginTrafficDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainOriginTrafficDataResponseBody?

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
            var model = DescribeScdnDomainOriginTrafficDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainPvDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainPvDataResponseBody : Tea.TeaModel {
    public class PvDataInterval : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public var timeStamp: String?

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
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var usageData: [DescribeScdnDomainPvDataResponseBody.PvDataInterval.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [DescribeScdnDomainPvDataResponseBody.PvDataInterval.UsageData]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var pvDataInterval: DescribeScdnDomainPvDataResponseBody.PvDataInterval?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pvDataInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pvDataInterval != nil {
            map["PvDataInterval"] = self.pvDataInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PvDataInterval") {
            var model = DescribeScdnDomainPvDataResponseBody.PvDataInterval()
            model.fromMap(dict["PvDataInterval"] as! [String: Any])
            self.pvDataInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainPvDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainPvDataResponseBody?

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
            var model = DescribeScdnDomainPvDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainQpsDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var interval: String?

    public var ispNameEn: String?

    public var locationNameEn: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainQpsDataResponseBody : Tea.TeaModel {
    public class QpsDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var accValue: String?

            public var httpAccValue: String?

            public var httpQpsValue: String?

            public var httpsAccValue: String?

            public var httpsQpsValue: String?

            public var qpsValue: String?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accValue != nil {
                    map["AccValue"] = self.accValue!
                }
                if self.httpAccValue != nil {
                    map["HttpAccValue"] = self.httpAccValue!
                }
                if self.httpQpsValue != nil {
                    map["HttpQpsValue"] = self.httpQpsValue!
                }
                if self.httpsAccValue != nil {
                    map["HttpsAccValue"] = self.httpsAccValue!
                }
                if self.httpsQpsValue != nil {
                    map["HttpsQpsValue"] = self.httpsQpsValue!
                }
                if self.qpsValue != nil {
                    map["QpsValue"] = self.qpsValue!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccValue") {
                    self.accValue = dict["AccValue"] as! String
                }
                if dict.keys.contains("HttpAccValue") {
                    self.httpAccValue = dict["HttpAccValue"] as! String
                }
                if dict.keys.contains("HttpQpsValue") {
                    self.httpQpsValue = dict["HttpQpsValue"] as! String
                }
                if dict.keys.contains("HttpsAccValue") {
                    self.httpsAccValue = dict["HttpsAccValue"] as! String
                }
                if dict.keys.contains("HttpsQpsValue") {
                    self.httpsQpsValue = dict["HttpsQpsValue"] as! String
                }
                if dict.keys.contains("QpsValue") {
                    self.qpsValue = dict["QpsValue"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var dataModule: [DescribeScdnDomainQpsDataResponseBody.QpsDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeScdnDomainQpsDataResponseBody.QpsDataPerInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var qpsDataPerInterval: DescribeScdnDomainQpsDataResponseBody.QpsDataPerInterval?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.qpsDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.qpsDataPerInterval != nil {
            map["QpsDataPerInterval"] = self.qpsDataPerInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("QpsDataPerInterval") {
            var model = DescribeScdnDomainQpsDataResponseBody.QpsDataPerInterval()
            model.fromMap(dict["QpsDataPerInterval"] as! [String: Any])
            self.qpsDataPerInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainQpsDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainQpsDataResponseBody?

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
            var model = DescribeScdnDomainQpsDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainRealTimeBpsDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var ispNameEn: String?

    public var locationNameEn: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainRealTimeBpsDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BpsModel : Tea.TeaModel {
            public var bps: Double?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bps != nil {
                    map["Bps"] = self.bps!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bps") {
                    self.bps = dict["Bps"] as! Double
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var bpsModel: [DescribeScdnDomainRealTimeBpsDataResponseBody.Data.BpsModel]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bpsModel != nil {
                var tmp : [Any] = []
                for k in self.bpsModel! {
                    tmp.append(k.toMap())
                }
                map["BpsModel"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BpsModel") {
                self.bpsModel = dict["BpsModel"] as! [DescribeScdnDomainRealTimeBpsDataResponseBody.Data.BpsModel]
            }
        }
    }
    public var data: DescribeScdnDomainRealTimeBpsDataResponseBody.Data?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeScdnDomainRealTimeBpsDataResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScdnDomainRealTimeBpsDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainRealTimeBpsDataResponseBody?

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
            var model = DescribeScdnDomainRealTimeBpsDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainRealTimeByteHitRateDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainRealTimeByteHitRateDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ByteHitRateDataModel : Tea.TeaModel {
            public var byteHitRate: Double?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.byteHitRate != nil {
                    map["ByteHitRate"] = self.byteHitRate!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ByteHitRate") {
                    self.byteHitRate = dict["ByteHitRate"] as! Double
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var byteHitRateDataModel: [DescribeScdnDomainRealTimeByteHitRateDataResponseBody.Data.ByteHitRateDataModel]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.byteHitRateDataModel != nil {
                var tmp : [Any] = []
                for k in self.byteHitRateDataModel! {
                    tmp.append(k.toMap())
                }
                map["ByteHitRateDataModel"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ByteHitRateDataModel") {
                self.byteHitRateDataModel = dict["ByteHitRateDataModel"] as! [DescribeScdnDomainRealTimeByteHitRateDataResponseBody.Data.ByteHitRateDataModel]
            }
        }
    }
    public var data: DescribeScdnDomainRealTimeByteHitRateDataResponseBody.Data?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeScdnDomainRealTimeByteHitRateDataResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScdnDomainRealTimeByteHitRateDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainRealTimeByteHitRateDataResponseBody?

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
            var model = DescribeScdnDomainRealTimeByteHitRateDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainRealTimeHttpCodeDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var ispNameEn: String?

    public var locationNameEn: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainRealTimeHttpCodeDataResponseBody : Tea.TeaModel {
    public class RealTimeHttpCodeData : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public class Value : Tea.TeaModel {
                public class RealTimeCodeProportionData : Tea.TeaModel {
                    public var code: String?

                    public var count: String?

                    public var proportion: String?

                    public override init() {
                        super.init()
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
                        if self.count != nil {
                            map["Count"] = self.count!
                        }
                        if self.proportion != nil {
                            map["Proportion"] = self.proportion!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Code") {
                            self.code = dict["Code"] as! String
                        }
                        if dict.keys.contains("Count") {
                            self.count = dict["Count"] as! String
                        }
                        if dict.keys.contains("Proportion") {
                            self.proportion = dict["Proportion"] as! String
                        }
                    }
                }
                public var realTimeCodeProportionData: [DescribeScdnDomainRealTimeHttpCodeDataResponseBody.RealTimeHttpCodeData.UsageData.Value.RealTimeCodeProportionData]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.realTimeCodeProportionData != nil {
                        var tmp : [Any] = []
                        for k in self.realTimeCodeProportionData! {
                            tmp.append(k.toMap())
                        }
                        map["RealTimeCodeProportionData"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RealTimeCodeProportionData") {
                        self.realTimeCodeProportionData = dict["RealTimeCodeProportionData"] as! [DescribeScdnDomainRealTimeHttpCodeDataResponseBody.RealTimeHttpCodeData.UsageData.Value.RealTimeCodeProportionData]
                    }
                }
            }
            public var timeStamp: String?

            public var value: DescribeScdnDomainRealTimeHttpCodeDataResponseBody.RealTimeHttpCodeData.UsageData.Value?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.value?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    var model = DescribeScdnDomainRealTimeHttpCodeDataResponseBody.RealTimeHttpCodeData.UsageData.Value()
                    model.fromMap(dict["Value"] as! [String: Any])
                    self.value = model
                }
            }
        }
        public var usageData: [DescribeScdnDomainRealTimeHttpCodeDataResponseBody.RealTimeHttpCodeData.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [DescribeScdnDomainRealTimeHttpCodeDataResponseBody.RealTimeHttpCodeData.UsageData]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var realTimeHttpCodeData: DescribeScdnDomainRealTimeHttpCodeDataResponseBody.RealTimeHttpCodeData?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.realTimeHttpCodeData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.realTimeHttpCodeData != nil {
            map["RealTimeHttpCodeData"] = self.realTimeHttpCodeData?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RealTimeHttpCodeData") {
            var model = DescribeScdnDomainRealTimeHttpCodeDataResponseBody.RealTimeHttpCodeData()
            model.fromMap(dict["RealTimeHttpCodeData"] as! [String: Any])
            self.realTimeHttpCodeData = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainRealTimeHttpCodeDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainRealTimeHttpCodeDataResponseBody?

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
            var model = DescribeScdnDomainRealTimeHttpCodeDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainRealTimeQpsDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var ispNameEn: String?

    public var locationNameEn: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainRealTimeQpsDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class QpsModel : Tea.TeaModel {
            public var qps: Double?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.qps != nil {
                    map["Qps"] = self.qps!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Qps") {
                    self.qps = dict["Qps"] as! Double
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var qpsModel: [DescribeScdnDomainRealTimeQpsDataResponseBody.Data.QpsModel]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.qpsModel != nil {
                var tmp : [Any] = []
                for k in self.qpsModel! {
                    tmp.append(k.toMap())
                }
                map["QpsModel"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("QpsModel") {
                self.qpsModel = dict["QpsModel"] as! [DescribeScdnDomainRealTimeQpsDataResponseBody.Data.QpsModel]
            }
        }
    }
    public var data: DescribeScdnDomainRealTimeQpsDataResponseBody.Data?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeScdnDomainRealTimeQpsDataResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScdnDomainRealTimeQpsDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainRealTimeQpsDataResponseBody?

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
            var model = DescribeScdnDomainRealTimeQpsDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainRealTimeReqHitRateDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainRealTimeReqHitRateDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ReqHitRateDataModel : Tea.TeaModel {
            public var reqHitRate: Double?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.reqHitRate != nil {
                    map["ReqHitRate"] = self.reqHitRate!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ReqHitRate") {
                    self.reqHitRate = dict["ReqHitRate"] as! Double
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var reqHitRateDataModel: [DescribeScdnDomainRealTimeReqHitRateDataResponseBody.Data.ReqHitRateDataModel]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.reqHitRateDataModel != nil {
                var tmp : [Any] = []
                for k in self.reqHitRateDataModel! {
                    tmp.append(k.toMap())
                }
                map["ReqHitRateDataModel"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ReqHitRateDataModel") {
                self.reqHitRateDataModel = dict["ReqHitRateDataModel"] as! [DescribeScdnDomainRealTimeReqHitRateDataResponseBody.Data.ReqHitRateDataModel]
            }
        }
    }
    public var data: DescribeScdnDomainRealTimeReqHitRateDataResponseBody.Data?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeScdnDomainRealTimeReqHitRateDataResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScdnDomainRealTimeReqHitRateDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainRealTimeReqHitRateDataResponseBody?

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
            var model = DescribeScdnDomainRealTimeReqHitRateDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainRealTimeSrcBpsDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainRealTimeSrcBpsDataResponseBody : Tea.TeaModel {
    public class RealTimeSrcBpsDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var timeStamp: String?

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
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var dataModule: [DescribeScdnDomainRealTimeSrcBpsDataResponseBody.RealTimeSrcBpsDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeScdnDomainRealTimeSrcBpsDataResponseBody.RealTimeSrcBpsDataPerInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var realTimeSrcBpsDataPerInterval: DescribeScdnDomainRealTimeSrcBpsDataResponseBody.RealTimeSrcBpsDataPerInterval?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.realTimeSrcBpsDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.realTimeSrcBpsDataPerInterval != nil {
            map["RealTimeSrcBpsDataPerInterval"] = self.realTimeSrcBpsDataPerInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RealTimeSrcBpsDataPerInterval") {
            var model = DescribeScdnDomainRealTimeSrcBpsDataResponseBody.RealTimeSrcBpsDataPerInterval()
            model.fromMap(dict["RealTimeSrcBpsDataPerInterval"] as! [String: Any])
            self.realTimeSrcBpsDataPerInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainRealTimeSrcBpsDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainRealTimeSrcBpsDataResponseBody?

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
            var model = DescribeScdnDomainRealTimeSrcBpsDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainRealTimeSrcTrafficDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainRealTimeSrcTrafficDataResponseBody : Tea.TeaModel {
    public class RealTimeSrcTrafficDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var timeStamp: String?

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
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var dataModule: [DescribeScdnDomainRealTimeSrcTrafficDataResponseBody.RealTimeSrcTrafficDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeScdnDomainRealTimeSrcTrafficDataResponseBody.RealTimeSrcTrafficDataPerInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var realTimeSrcTrafficDataPerInterval: DescribeScdnDomainRealTimeSrcTrafficDataResponseBody.RealTimeSrcTrafficDataPerInterval?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.realTimeSrcTrafficDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.realTimeSrcTrafficDataPerInterval != nil {
            map["RealTimeSrcTrafficDataPerInterval"] = self.realTimeSrcTrafficDataPerInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RealTimeSrcTrafficDataPerInterval") {
            var model = DescribeScdnDomainRealTimeSrcTrafficDataResponseBody.RealTimeSrcTrafficDataPerInterval()
            model.fromMap(dict["RealTimeSrcTrafficDataPerInterval"] as! [String: Any])
            self.realTimeSrcTrafficDataPerInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainRealTimeSrcTrafficDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainRealTimeSrcTrafficDataResponseBody?

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
            var model = DescribeScdnDomainRealTimeSrcTrafficDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainRealTimeTrafficDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainRealTimeTrafficDataResponseBody : Tea.TeaModel {
    public class RealTimeTrafficDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var timeStamp: String?

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
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var dataModule: [DescribeScdnDomainRealTimeTrafficDataResponseBody.RealTimeTrafficDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeScdnDomainRealTimeTrafficDataResponseBody.RealTimeTrafficDataPerInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var realTimeTrafficDataPerInterval: DescribeScdnDomainRealTimeTrafficDataResponseBody.RealTimeTrafficDataPerInterval?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.realTimeTrafficDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.realTimeTrafficDataPerInterval != nil {
            map["RealTimeTrafficDataPerInterval"] = self.realTimeTrafficDataPerInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RealTimeTrafficDataPerInterval") {
            var model = DescribeScdnDomainRealTimeTrafficDataResponseBody.RealTimeTrafficDataPerInterval()
            model.fromMap(dict["RealTimeTrafficDataPerInterval"] as! [String: Any])
            self.realTimeTrafficDataPerInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainRealTimeTrafficDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainRealTimeTrafficDataResponseBody?

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
            var model = DescribeScdnDomainRealTimeTrafficDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainRegionDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainRegionDataResponseBody : Tea.TeaModel {
    public class Value : Tea.TeaModel {
        public class RegionProportionData : Tea.TeaModel {
            public var avgObjectSize: String?

            public var avgResponseRate: String?

            public var avgResponseTime: String?

            public var bps: String?

            public var bytesProportion: String?

            public var proportion: String?

            public var qps: String?

            public var region: String?

            public var regionEname: String?

            public var reqErrRate: String?

            public var totalBytes: String?

            public var totalQuery: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avgObjectSize != nil {
                    map["AvgObjectSize"] = self.avgObjectSize!
                }
                if self.avgResponseRate != nil {
                    map["AvgResponseRate"] = self.avgResponseRate!
                }
                if self.avgResponseTime != nil {
                    map["AvgResponseTime"] = self.avgResponseTime!
                }
                if self.bps != nil {
                    map["Bps"] = self.bps!
                }
                if self.bytesProportion != nil {
                    map["BytesProportion"] = self.bytesProportion!
                }
                if self.proportion != nil {
                    map["Proportion"] = self.proportion!
                }
                if self.qps != nil {
                    map["Qps"] = self.qps!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.regionEname != nil {
                    map["RegionEname"] = self.regionEname!
                }
                if self.reqErrRate != nil {
                    map["ReqErrRate"] = self.reqErrRate!
                }
                if self.totalBytes != nil {
                    map["TotalBytes"] = self.totalBytes!
                }
                if self.totalQuery != nil {
                    map["TotalQuery"] = self.totalQuery!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvgObjectSize") {
                    self.avgObjectSize = dict["AvgObjectSize"] as! String
                }
                if dict.keys.contains("AvgResponseRate") {
                    self.avgResponseRate = dict["AvgResponseRate"] as! String
                }
                if dict.keys.contains("AvgResponseTime") {
                    self.avgResponseTime = dict["AvgResponseTime"] as! String
                }
                if dict.keys.contains("Bps") {
                    self.bps = dict["Bps"] as! String
                }
                if dict.keys.contains("BytesProportion") {
                    self.bytesProportion = dict["BytesProportion"] as! String
                }
                if dict.keys.contains("Proportion") {
                    self.proportion = dict["Proportion"] as! String
                }
                if dict.keys.contains("Qps") {
                    self.qps = dict["Qps"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("RegionEname") {
                    self.regionEname = dict["RegionEname"] as! String
                }
                if dict.keys.contains("ReqErrRate") {
                    self.reqErrRate = dict["ReqErrRate"] as! String
                }
                if dict.keys.contains("TotalBytes") {
                    self.totalBytes = dict["TotalBytes"] as! String
                }
                if dict.keys.contains("TotalQuery") {
                    self.totalQuery = dict["TotalQuery"] as! String
                }
            }
        }
        public var regionProportionData: [DescribeScdnDomainRegionDataResponseBody.Value.RegionProportionData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.regionProportionData != nil {
                var tmp : [Any] = []
                for k in self.regionProportionData! {
                    tmp.append(k.toMap())
                }
                map["RegionProportionData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionProportionData") {
                self.regionProportionData = dict["RegionProportionData"] as! [DescribeScdnDomainRegionDataResponseBody.Value.RegionProportionData]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var requestId: String?

    public var startTime: String?

    public var value: DescribeScdnDomainRegionDataResponseBody.Value?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.value?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.value != nil {
            map["Value"] = self.value?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Value") {
            var model = DescribeScdnDomainRegionDataResponseBody.Value()
            model.fromMap(dict["Value"] as! [String: Any])
            self.value = model
        }
    }
}

public class DescribeScdnDomainRegionDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainRegionDataResponseBody?

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
            var model = DescribeScdnDomainRegionDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainTopReferVisitRequest : Tea.TeaModel {
    public var domainName: String?

    public var sortBy: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainTopReferVisitResponseBody : Tea.TeaModel {
    public class TopReferList : Tea.TeaModel {
        public class ReferList : Tea.TeaModel {
            public var flow: String?

            public var flowProportion: Double?

            public var referDetail: String?

            public var visitData: String?

            public var visitProportion: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.flow != nil {
                    map["Flow"] = self.flow!
                }
                if self.flowProportion != nil {
                    map["FlowProportion"] = self.flowProportion!
                }
                if self.referDetail != nil {
                    map["ReferDetail"] = self.referDetail!
                }
                if self.visitData != nil {
                    map["VisitData"] = self.visitData!
                }
                if self.visitProportion != nil {
                    map["VisitProportion"] = self.visitProportion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Flow") {
                    self.flow = dict["Flow"] as! String
                }
                if dict.keys.contains("FlowProportion") {
                    self.flowProportion = dict["FlowProportion"] as! Double
                }
                if dict.keys.contains("ReferDetail") {
                    self.referDetail = dict["ReferDetail"] as! String
                }
                if dict.keys.contains("VisitData") {
                    self.visitData = dict["VisitData"] as! String
                }
                if dict.keys.contains("VisitProportion") {
                    self.visitProportion = dict["VisitProportion"] as! Double
                }
            }
        }
        public var referList: [DescribeScdnDomainTopReferVisitResponseBody.TopReferList.ReferList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.referList != nil {
                var tmp : [Any] = []
                for k in self.referList! {
                    tmp.append(k.toMap())
                }
                map["ReferList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ReferList") {
                self.referList = dict["ReferList"] as! [DescribeScdnDomainTopReferVisitResponseBody.TopReferList.ReferList]
            }
        }
    }
    public var domainName: String?

    public var requestId: String?

    public var startTime: String?

    public var topReferList: DescribeScdnDomainTopReferVisitResponseBody.TopReferList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.topReferList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.topReferList != nil {
            map["TopReferList"] = self.topReferList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TopReferList") {
            var model = DescribeScdnDomainTopReferVisitResponseBody.TopReferList()
            model.fromMap(dict["TopReferList"] as! [String: Any])
            self.topReferList = model
        }
    }
}

public class DescribeScdnDomainTopReferVisitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainTopReferVisitResponseBody?

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
            var model = DescribeScdnDomainTopReferVisitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainTopUrlVisitRequest : Tea.TeaModel {
    public var domainName: String?

    public var sortBy: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainTopUrlVisitResponseBody : Tea.TeaModel {
    public class AllUrlList : Tea.TeaModel {
        public class UrlList : Tea.TeaModel {
            public var flow: String?

            public var flowProportion: Double?

            public var urlDetail: String?

            public var visitData: String?

            public var visitProportion: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.flow != nil {
                    map["Flow"] = self.flow!
                }
                if self.flowProportion != nil {
                    map["FlowProportion"] = self.flowProportion!
                }
                if self.urlDetail != nil {
                    map["UrlDetail"] = self.urlDetail!
                }
                if self.visitData != nil {
                    map["VisitData"] = self.visitData!
                }
                if self.visitProportion != nil {
                    map["VisitProportion"] = self.visitProportion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Flow") {
                    self.flow = dict["Flow"] as! String
                }
                if dict.keys.contains("FlowProportion") {
                    self.flowProportion = dict["FlowProportion"] as! Double
                }
                if dict.keys.contains("UrlDetail") {
                    self.urlDetail = dict["UrlDetail"] as! String
                }
                if dict.keys.contains("VisitData") {
                    self.visitData = dict["VisitData"] as! String
                }
                if dict.keys.contains("VisitProportion") {
                    self.visitProportion = dict["VisitProportion"] as! Double
                }
            }
        }
        public var urlList: [DescribeScdnDomainTopUrlVisitResponseBody.AllUrlList.UrlList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.urlList != nil {
                var tmp : [Any] = []
                for k in self.urlList! {
                    tmp.append(k.toMap())
                }
                map["UrlList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UrlList") {
                self.urlList = dict["UrlList"] as! [DescribeScdnDomainTopUrlVisitResponseBody.AllUrlList.UrlList]
            }
        }
    }
    public class Url200List : Tea.TeaModel {
        public class UrlList : Tea.TeaModel {
            public var flow: String?

            public var flowProportion: Double?

            public var urlDetail: String?

            public var visitData: String?

            public var visitProportion: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.flow != nil {
                    map["Flow"] = self.flow!
                }
                if self.flowProportion != nil {
                    map["FlowProportion"] = self.flowProportion!
                }
                if self.urlDetail != nil {
                    map["UrlDetail"] = self.urlDetail!
                }
                if self.visitData != nil {
                    map["VisitData"] = self.visitData!
                }
                if self.visitProportion != nil {
                    map["VisitProportion"] = self.visitProportion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Flow") {
                    self.flow = dict["Flow"] as! String
                }
                if dict.keys.contains("FlowProportion") {
                    self.flowProportion = dict["FlowProportion"] as! Double
                }
                if dict.keys.contains("UrlDetail") {
                    self.urlDetail = dict["UrlDetail"] as! String
                }
                if dict.keys.contains("VisitData") {
                    self.visitData = dict["VisitData"] as! String
                }
                if dict.keys.contains("VisitProportion") {
                    self.visitProportion = dict["VisitProportion"] as! Double
                }
            }
        }
        public var urlList: [DescribeScdnDomainTopUrlVisitResponseBody.Url200List.UrlList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.urlList != nil {
                var tmp : [Any] = []
                for k in self.urlList! {
                    tmp.append(k.toMap())
                }
                map["UrlList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UrlList") {
                self.urlList = dict["UrlList"] as! [DescribeScdnDomainTopUrlVisitResponseBody.Url200List.UrlList]
            }
        }
    }
    public class Url300List : Tea.TeaModel {
        public class UrlList : Tea.TeaModel {
            public var flow: String?

            public var flowProportion: Double?

            public var urlDetail: String?

            public var visitData: String?

            public var visitProportion: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.flow != nil {
                    map["Flow"] = self.flow!
                }
                if self.flowProportion != nil {
                    map["FlowProportion"] = self.flowProportion!
                }
                if self.urlDetail != nil {
                    map["UrlDetail"] = self.urlDetail!
                }
                if self.visitData != nil {
                    map["VisitData"] = self.visitData!
                }
                if self.visitProportion != nil {
                    map["VisitProportion"] = self.visitProportion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Flow") {
                    self.flow = dict["Flow"] as! String
                }
                if dict.keys.contains("FlowProportion") {
                    self.flowProportion = dict["FlowProportion"] as! Double
                }
                if dict.keys.contains("UrlDetail") {
                    self.urlDetail = dict["UrlDetail"] as! String
                }
                if dict.keys.contains("VisitData") {
                    self.visitData = dict["VisitData"] as! String
                }
                if dict.keys.contains("VisitProportion") {
                    self.visitProportion = dict["VisitProportion"] as! Double
                }
            }
        }
        public var urlList: [DescribeScdnDomainTopUrlVisitResponseBody.Url300List.UrlList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.urlList != nil {
                var tmp : [Any] = []
                for k in self.urlList! {
                    tmp.append(k.toMap())
                }
                map["UrlList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UrlList") {
                self.urlList = dict["UrlList"] as! [DescribeScdnDomainTopUrlVisitResponseBody.Url300List.UrlList]
            }
        }
    }
    public class Url400List : Tea.TeaModel {
        public class UrlList : Tea.TeaModel {
            public var flow: String?

            public var flowProportion: Double?

            public var urlDetail: String?

            public var visitData: String?

            public var visitProportion: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.flow != nil {
                    map["Flow"] = self.flow!
                }
                if self.flowProportion != nil {
                    map["FlowProportion"] = self.flowProportion!
                }
                if self.urlDetail != nil {
                    map["UrlDetail"] = self.urlDetail!
                }
                if self.visitData != nil {
                    map["VisitData"] = self.visitData!
                }
                if self.visitProportion != nil {
                    map["VisitProportion"] = self.visitProportion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Flow") {
                    self.flow = dict["Flow"] as! String
                }
                if dict.keys.contains("FlowProportion") {
                    self.flowProportion = dict["FlowProportion"] as! Double
                }
                if dict.keys.contains("UrlDetail") {
                    self.urlDetail = dict["UrlDetail"] as! String
                }
                if dict.keys.contains("VisitData") {
                    self.visitData = dict["VisitData"] as! String
                }
                if dict.keys.contains("VisitProportion") {
                    self.visitProportion = dict["VisitProportion"] as! Double
                }
            }
        }
        public var urlList: [DescribeScdnDomainTopUrlVisitResponseBody.Url400List.UrlList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.urlList != nil {
                var tmp : [Any] = []
                for k in self.urlList! {
                    tmp.append(k.toMap())
                }
                map["UrlList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UrlList") {
                self.urlList = dict["UrlList"] as! [DescribeScdnDomainTopUrlVisitResponseBody.Url400List.UrlList]
            }
        }
    }
    public class Url500List : Tea.TeaModel {
        public class UrlList : Tea.TeaModel {
            public var flow: String?

            public var flowProportion: Double?

            public var urlDetail: String?

            public var visitData: String?

            public var visitProportion: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.flow != nil {
                    map["Flow"] = self.flow!
                }
                if self.flowProportion != nil {
                    map["FlowProportion"] = self.flowProportion!
                }
                if self.urlDetail != nil {
                    map["UrlDetail"] = self.urlDetail!
                }
                if self.visitData != nil {
                    map["VisitData"] = self.visitData!
                }
                if self.visitProportion != nil {
                    map["VisitProportion"] = self.visitProportion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Flow") {
                    self.flow = dict["Flow"] as! String
                }
                if dict.keys.contains("FlowProportion") {
                    self.flowProportion = dict["FlowProportion"] as! Double
                }
                if dict.keys.contains("UrlDetail") {
                    self.urlDetail = dict["UrlDetail"] as! String
                }
                if dict.keys.contains("VisitData") {
                    self.visitData = dict["VisitData"] as! String
                }
                if dict.keys.contains("VisitProportion") {
                    self.visitProportion = dict["VisitProportion"] as! Double
                }
            }
        }
        public var urlList: [DescribeScdnDomainTopUrlVisitResponseBody.Url500List.UrlList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.urlList != nil {
                var tmp : [Any] = []
                for k in self.urlList! {
                    tmp.append(k.toMap())
                }
                map["UrlList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UrlList") {
                self.urlList = dict["UrlList"] as! [DescribeScdnDomainTopUrlVisitResponseBody.Url500List.UrlList]
            }
        }
    }
    public var allUrlList: DescribeScdnDomainTopUrlVisitResponseBody.AllUrlList?

    public var domainName: String?

    public var requestId: String?

    public var startTime: String?

    public var url200List: DescribeScdnDomainTopUrlVisitResponseBody.Url200List?

    public var url300List: DescribeScdnDomainTopUrlVisitResponseBody.Url300List?

    public var url400List: DescribeScdnDomainTopUrlVisitResponseBody.Url400List?

    public var url500List: DescribeScdnDomainTopUrlVisitResponseBody.Url500List?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.allUrlList?.validate()
        try self.url200List?.validate()
        try self.url300List?.validate()
        try self.url400List?.validate()
        try self.url500List?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allUrlList != nil {
            map["AllUrlList"] = self.allUrlList?.toMap()
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.url200List != nil {
            map["Url200List"] = self.url200List?.toMap()
        }
        if self.url300List != nil {
            map["Url300List"] = self.url300List?.toMap()
        }
        if self.url400List != nil {
            map["Url400List"] = self.url400List?.toMap()
        }
        if self.url500List != nil {
            map["Url500List"] = self.url500List?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllUrlList") {
            var model = DescribeScdnDomainTopUrlVisitResponseBody.AllUrlList()
            model.fromMap(dict["AllUrlList"] as! [String: Any])
            self.allUrlList = model
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Url200List") {
            var model = DescribeScdnDomainTopUrlVisitResponseBody.Url200List()
            model.fromMap(dict["Url200List"] as! [String: Any])
            self.url200List = model
        }
        if dict.keys.contains("Url300List") {
            var model = DescribeScdnDomainTopUrlVisitResponseBody.Url300List()
            model.fromMap(dict["Url300List"] as! [String: Any])
            self.url300List = model
        }
        if dict.keys.contains("Url400List") {
            var model = DescribeScdnDomainTopUrlVisitResponseBody.Url400List()
            model.fromMap(dict["Url400List"] as! [String: Any])
            self.url400List = model
        }
        if dict.keys.contains("Url500List") {
            var model = DescribeScdnDomainTopUrlVisitResponseBody.Url500List()
            model.fromMap(dict["Url500List"] as! [String: Any])
            self.url500List = model
        }
    }
}

public class DescribeScdnDomainTopUrlVisitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainTopUrlVisitResponseBody?

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
            var model = DescribeScdnDomainTopUrlVisitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainTrafficDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var interval: String?

    public var ispNameEn: String?

    public var locationNameEn: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainTrafficDataResponseBody : Tea.TeaModel {
    public class TrafficDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var httpTrafficValue: String?

            public var httpsTrafficValue: String?

            public var timeStamp: String?

            public var trafficValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.httpTrafficValue != nil {
                    map["HttpTrafficValue"] = self.httpTrafficValue!
                }
                if self.httpsTrafficValue != nil {
                    map["HttpsTrafficValue"] = self.httpsTrafficValue!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.trafficValue != nil {
                    map["TrafficValue"] = self.trafficValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HttpTrafficValue") {
                    self.httpTrafficValue = dict["HttpTrafficValue"] as! String
                }
                if dict.keys.contains("HttpsTrafficValue") {
                    self.httpsTrafficValue = dict["HttpsTrafficValue"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("TrafficValue") {
                    self.trafficValue = dict["TrafficValue"] as! String
                }
            }
        }
        public var dataModule: [DescribeScdnDomainTrafficDataResponseBody.TrafficDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeScdnDomainTrafficDataResponseBody.TrafficDataPerInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var requestId: String?

    public var startTime: String?

    public var trafficDataPerInterval: DescribeScdnDomainTrafficDataResponseBody.TrafficDataPerInterval?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.trafficDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.trafficDataPerInterval != nil {
            map["TrafficDataPerInterval"] = self.trafficDataPerInterval?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TrafficDataPerInterval") {
            var model = DescribeScdnDomainTrafficDataResponseBody.TrafficDataPerInterval()
            model.fromMap(dict["TrafficDataPerInterval"] as! [String: Any])
            self.trafficDataPerInterval = model
        }
    }
}

public class DescribeScdnDomainTrafficDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainTrafficDataResponseBody?

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
            var model = DescribeScdnDomainTrafficDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnDomainUvDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnDomainUvDataResponseBody : Tea.TeaModel {
    public class UvDataInterval : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public var timeStamp: String?

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
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var usageData: [DescribeScdnDomainUvDataResponseBody.UvDataInterval.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [DescribeScdnDomainUvDataResponseBody.UvDataInterval.UsageData]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var requestId: String?

    public var startTime: String?

    public var uvDataInterval: DescribeScdnDomainUvDataResponseBody.UvDataInterval?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.uvDataInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.uvDataInterval != nil {
            map["UvDataInterval"] = self.uvDataInterval?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("UvDataInterval") {
            var model = DescribeScdnDomainUvDataResponseBody.UvDataInterval()
            model.fromMap(dict["UvDataInterval"] as! [String: Any])
            self.uvDataInterval = model
        }
    }
}

public class DescribeScdnDomainUvDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnDomainUvDataResponseBody?

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
            var model = DescribeScdnDomainUvDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnRefreshQuotaRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeScdnRefreshQuotaResponseBody : Tea.TeaModel {
    public var blockQuota: String?

    public var dirQuota: String?

    public var dirRemain: String?

    public var preloadQuota: String?

    public var preloadRemain: String?

    public var requestId: String?

    public var urlQuota: String?

    public var urlRemain: String?

    public var blockRemain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blockQuota != nil {
            map["BlockQuota"] = self.blockQuota!
        }
        if self.dirQuota != nil {
            map["DirQuota"] = self.dirQuota!
        }
        if self.dirRemain != nil {
            map["DirRemain"] = self.dirRemain!
        }
        if self.preloadQuota != nil {
            map["PreloadQuota"] = self.preloadQuota!
        }
        if self.preloadRemain != nil {
            map["PreloadRemain"] = self.preloadRemain!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.urlQuota != nil {
            map["UrlQuota"] = self.urlQuota!
        }
        if self.urlRemain != nil {
            map["UrlRemain"] = self.urlRemain!
        }
        if self.blockRemain != nil {
            map["blockRemain"] = self.blockRemain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlockQuota") {
            self.blockQuota = dict["BlockQuota"] as! String
        }
        if dict.keys.contains("DirQuota") {
            self.dirQuota = dict["DirQuota"] as! String
        }
        if dict.keys.contains("DirRemain") {
            self.dirRemain = dict["DirRemain"] as! String
        }
        if dict.keys.contains("PreloadQuota") {
            self.preloadQuota = dict["PreloadQuota"] as! String
        }
        if dict.keys.contains("PreloadRemain") {
            self.preloadRemain = dict["PreloadRemain"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UrlQuota") {
            self.urlQuota = dict["UrlQuota"] as! String
        }
        if dict.keys.contains("UrlRemain") {
            self.urlRemain = dict["UrlRemain"] as! String
        }
        if dict.keys.contains("blockRemain") {
            self.blockRemain = dict["blockRemain"] as! String
        }
    }
}

public class DescribeScdnRefreshQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnRefreshQuotaResponseBody?

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
            var model = DescribeScdnRefreshQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnRefreshTasksRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var objectPath: String?

    public var objectType: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var securityToken: String?

    public var startTime: String?

    public var status: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.objectPath != nil {
            map["ObjectPath"] = self.objectPath!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ObjectPath") {
            self.objectPath = dict["ObjectPath"] as! String
        }
        if dict.keys.contains("ObjectType") {
            self.objectType = dict["ObjectType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DescribeScdnRefreshTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public class Task : Tea.TeaModel {
            public var creationTime: String?

            public var description_: String?

            public var objectPath: String?

            public var objectType: String?

            public var process: String?

            public var status: String?

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
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.objectPath != nil {
                    map["ObjectPath"] = self.objectPath!
                }
                if self.objectType != nil {
                    map["ObjectType"] = self.objectType!
                }
                if self.process != nil {
                    map["Process"] = self.process!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ObjectPath") {
                    self.objectPath = dict["ObjectPath"] as! String
                }
                if dict.keys.contains("ObjectType") {
                    self.objectType = dict["ObjectType"] as! String
                }
                if dict.keys.contains("Process") {
                    self.process = dict["Process"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
            }
        }
        public var task: [DescribeScdnRefreshTasksResponseBody.Tasks.Task]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.task != nil {
                var tmp : [Any] = []
                for k in self.task! {
                    tmp.append(k.toMap())
                }
                map["Task"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Task") {
                self.task = dict["Task"] as! [DescribeScdnRefreshTasksResponseBody.Tasks.Task]
            }
        }
    }
    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var tasks: DescribeScdnRefreshTasksResponseBody.Tasks?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tasks?.validate()
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
        if self.tasks != nil {
            map["Tasks"] = self.tasks?.toMap()
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tasks") {
            var model = DescribeScdnRefreshTasksResponseBody.Tasks()
            model.fromMap(dict["Tasks"] as! [String: Any])
            self.tasks = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeScdnRefreshTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnRefreshTasksResponseBody?

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
            var model = DescribeScdnRefreshTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnServiceRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeScdnServiceResponseBody : Tea.TeaModel {
    public class OperationLocks : Tea.TeaModel {
        public class LockReason : Tea.TeaModel {
            public var lockReason: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LockReason") {
                    self.lockReason = dict["LockReason"] as! String
                }
            }
        }
        public var lockReason: [DescribeScdnServiceResponseBody.OperationLocks.LockReason]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lockReason != nil {
                var tmp : [Any] = []
                for k in self.lockReason! {
                    tmp.append(k.toMap())
                }
                map["LockReason"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LockReason") {
                self.lockReason = dict["LockReason"] as! [DescribeScdnServiceResponseBody.OperationLocks.LockReason]
            }
        }
    }
    public var bandwidth: String?

    public var bandwidthValue: String?

    public var ccProtection: String?

    public var ccProtectionValue: String?

    public var changingAffectTime: String?

    public var changingChargeType: String?

    public var currentBandwidth: String?

    public var currentBandwidthValue: String?

    public var currentCcProtection: String?

    public var currentCcProtectionValue: String?

    public var currentDDoSBasic: String?

    public var currentDDoSBasicValue: String?

    public var currentDomainCount: String?

    public var currentDomainCountValue: String?

    public var currentElasticProtection: String?

    public var currentElasticProtectionValue: String?

    public var currentProtectType: String?

    public var currentProtectTypeValue: String?

    public var DDoSBasic: String?

    public var DDoSBasicValue: String?

    public var domainCount: String?

    public var domainCountValue: String?

    public var elasticProtection: String?

    public var elasticProtectionValue: String?

    public var endTime: String?

    public var instanceId: String?

    public var internetChargeType: String?

    public var openTime: String?

    public var operationLocks: DescribeScdnServiceResponseBody.OperationLocks?

    public var priceType: String?

    public var pricingCycle: String?

    public var protectType: String?

    public var protectTypeValue: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operationLocks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.bandwidthValue != nil {
            map["BandwidthValue"] = self.bandwidthValue!
        }
        if self.ccProtection != nil {
            map["CcProtection"] = self.ccProtection!
        }
        if self.ccProtectionValue != nil {
            map["CcProtectionValue"] = self.ccProtectionValue!
        }
        if self.changingAffectTime != nil {
            map["ChangingAffectTime"] = self.changingAffectTime!
        }
        if self.changingChargeType != nil {
            map["ChangingChargeType"] = self.changingChargeType!
        }
        if self.currentBandwidth != nil {
            map["CurrentBandwidth"] = self.currentBandwidth!
        }
        if self.currentBandwidthValue != nil {
            map["CurrentBandwidthValue"] = self.currentBandwidthValue!
        }
        if self.currentCcProtection != nil {
            map["CurrentCcProtection"] = self.currentCcProtection!
        }
        if self.currentCcProtectionValue != nil {
            map["CurrentCcProtectionValue"] = self.currentCcProtectionValue!
        }
        if self.currentDDoSBasic != nil {
            map["CurrentDDoSBasic"] = self.currentDDoSBasic!
        }
        if self.currentDDoSBasicValue != nil {
            map["CurrentDDoSBasicValue"] = self.currentDDoSBasicValue!
        }
        if self.currentDomainCount != nil {
            map["CurrentDomainCount"] = self.currentDomainCount!
        }
        if self.currentDomainCountValue != nil {
            map["CurrentDomainCountValue"] = self.currentDomainCountValue!
        }
        if self.currentElasticProtection != nil {
            map["CurrentElasticProtection"] = self.currentElasticProtection!
        }
        if self.currentElasticProtectionValue != nil {
            map["CurrentElasticProtectionValue"] = self.currentElasticProtectionValue!
        }
        if self.currentProtectType != nil {
            map["CurrentProtectType"] = self.currentProtectType!
        }
        if self.currentProtectTypeValue != nil {
            map["CurrentProtectTypeValue"] = self.currentProtectTypeValue!
        }
        if self.DDoSBasic != nil {
            map["DDoSBasic"] = self.DDoSBasic!
        }
        if self.DDoSBasicValue != nil {
            map["DDoSBasicValue"] = self.DDoSBasicValue!
        }
        if self.domainCount != nil {
            map["DomainCount"] = self.domainCount!
        }
        if self.domainCountValue != nil {
            map["DomainCountValue"] = self.domainCountValue!
        }
        if self.elasticProtection != nil {
            map["ElasticProtection"] = self.elasticProtection!
        }
        if self.elasticProtectionValue != nil {
            map["ElasticProtectionValue"] = self.elasticProtectionValue!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.openTime != nil {
            map["OpenTime"] = self.openTime!
        }
        if self.operationLocks != nil {
            map["OperationLocks"] = self.operationLocks?.toMap()
        }
        if self.priceType != nil {
            map["PriceType"] = self.priceType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.protectType != nil {
            map["ProtectType"] = self.protectType!
        }
        if self.protectTypeValue != nil {
            map["ProtectTypeValue"] = self.protectTypeValue!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! String
        }
        if dict.keys.contains("BandwidthValue") {
            self.bandwidthValue = dict["BandwidthValue"] as! String
        }
        if dict.keys.contains("CcProtection") {
            self.ccProtection = dict["CcProtection"] as! String
        }
        if dict.keys.contains("CcProtectionValue") {
            self.ccProtectionValue = dict["CcProtectionValue"] as! String
        }
        if dict.keys.contains("ChangingAffectTime") {
            self.changingAffectTime = dict["ChangingAffectTime"] as! String
        }
        if dict.keys.contains("ChangingChargeType") {
            self.changingChargeType = dict["ChangingChargeType"] as! String
        }
        if dict.keys.contains("CurrentBandwidth") {
            self.currentBandwidth = dict["CurrentBandwidth"] as! String
        }
        if dict.keys.contains("CurrentBandwidthValue") {
            self.currentBandwidthValue = dict["CurrentBandwidthValue"] as! String
        }
        if dict.keys.contains("CurrentCcProtection") {
            self.currentCcProtection = dict["CurrentCcProtection"] as! String
        }
        if dict.keys.contains("CurrentCcProtectionValue") {
            self.currentCcProtectionValue = dict["CurrentCcProtectionValue"] as! String
        }
        if dict.keys.contains("CurrentDDoSBasic") {
            self.currentDDoSBasic = dict["CurrentDDoSBasic"] as! String
        }
        if dict.keys.contains("CurrentDDoSBasicValue") {
            self.currentDDoSBasicValue = dict["CurrentDDoSBasicValue"] as! String
        }
        if dict.keys.contains("CurrentDomainCount") {
            self.currentDomainCount = dict["CurrentDomainCount"] as! String
        }
        if dict.keys.contains("CurrentDomainCountValue") {
            self.currentDomainCountValue = dict["CurrentDomainCountValue"] as! String
        }
        if dict.keys.contains("CurrentElasticProtection") {
            self.currentElasticProtection = dict["CurrentElasticProtection"] as! String
        }
        if dict.keys.contains("CurrentElasticProtectionValue") {
            self.currentElasticProtectionValue = dict["CurrentElasticProtectionValue"] as! String
        }
        if dict.keys.contains("CurrentProtectType") {
            self.currentProtectType = dict["CurrentProtectType"] as! String
        }
        if dict.keys.contains("CurrentProtectTypeValue") {
            self.currentProtectTypeValue = dict["CurrentProtectTypeValue"] as! String
        }
        if dict.keys.contains("DDoSBasic") {
            self.DDoSBasic = dict["DDoSBasic"] as! String
        }
        if dict.keys.contains("DDoSBasicValue") {
            self.DDoSBasicValue = dict["DDoSBasicValue"] as! String
        }
        if dict.keys.contains("DomainCount") {
            self.domainCount = dict["DomainCount"] as! String
        }
        if dict.keys.contains("DomainCountValue") {
            self.domainCountValue = dict["DomainCountValue"] as! String
        }
        if dict.keys.contains("ElasticProtection") {
            self.elasticProtection = dict["ElasticProtection"] as! String
        }
        if dict.keys.contains("ElasticProtectionValue") {
            self.elasticProtectionValue = dict["ElasticProtectionValue"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InternetChargeType") {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("OpenTime") {
            self.openTime = dict["OpenTime"] as! String
        }
        if dict.keys.contains("OperationLocks") {
            var model = DescribeScdnServiceResponseBody.OperationLocks()
            model.fromMap(dict["OperationLocks"] as! [String: Any])
            self.operationLocks = model
        }
        if dict.keys.contains("PriceType") {
            self.priceType = dict["PriceType"] as! String
        }
        if dict.keys.contains("PricingCycle") {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("ProtectType") {
            self.protectType = dict["ProtectType"] as! String
        }
        if dict.keys.contains("ProtectTypeValue") {
            self.protectTypeValue = dict["ProtectTypeValue"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScdnServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnServiceResponseBody?

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
            var model = DescribeScdnServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnTopDomainsByFlowRequest : Tea.TeaModel {
    public var endTime: String?

    public var limit: Int64?

    public var product: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int64
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeScdnTopDomainsByFlowResponseBody : Tea.TeaModel {
    public class TopDomains : Tea.TeaModel {
        public class TopDomain : Tea.TeaModel {
            public var domainName: String?

            public var maxBps: Int64?

            public var maxBpsTime: String?

            public var rank: Int64?

            public var totalAccess: Int64?

            public var totalTraffic: String?

            public var trafficPercent: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.maxBps != nil {
                    map["MaxBps"] = self.maxBps!
                }
                if self.maxBpsTime != nil {
                    map["MaxBpsTime"] = self.maxBpsTime!
                }
                if self.rank != nil {
                    map["Rank"] = self.rank!
                }
                if self.totalAccess != nil {
                    map["TotalAccess"] = self.totalAccess!
                }
                if self.totalTraffic != nil {
                    map["TotalTraffic"] = self.totalTraffic!
                }
                if self.trafficPercent != nil {
                    map["TrafficPercent"] = self.trafficPercent!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("MaxBps") {
                    self.maxBps = dict["MaxBps"] as! Int64
                }
                if dict.keys.contains("MaxBpsTime") {
                    self.maxBpsTime = dict["MaxBpsTime"] as! String
                }
                if dict.keys.contains("Rank") {
                    self.rank = dict["Rank"] as! Int64
                }
                if dict.keys.contains("TotalAccess") {
                    self.totalAccess = dict["TotalAccess"] as! Int64
                }
                if dict.keys.contains("TotalTraffic") {
                    self.totalTraffic = dict["TotalTraffic"] as! String
                }
                if dict.keys.contains("TrafficPercent") {
                    self.trafficPercent = dict["TrafficPercent"] as! String
                }
            }
        }
        public var topDomain: [DescribeScdnTopDomainsByFlowResponseBody.TopDomains.TopDomain]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.topDomain != nil {
                var tmp : [Any] = []
                for k in self.topDomain! {
                    tmp.append(k.toMap())
                }
                map["TopDomain"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TopDomain") {
                self.topDomain = dict["TopDomain"] as! [DescribeScdnTopDomainsByFlowResponseBody.TopDomains.TopDomain]
            }
        }
    }
    public var domainCount: Int64?

    public var domainOnlineCount: Int64?

    public var endTime: String?

    public var requestId: String?

    public var startTime: String?

    public var topDomains: DescribeScdnTopDomainsByFlowResponseBody.TopDomains?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.topDomains?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainCount != nil {
            map["DomainCount"] = self.domainCount!
        }
        if self.domainOnlineCount != nil {
            map["DomainOnlineCount"] = self.domainOnlineCount!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.topDomains != nil {
            map["TopDomains"] = self.topDomains?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainCount") {
            self.domainCount = dict["DomainCount"] as! Int64
        }
        if dict.keys.contains("DomainOnlineCount") {
            self.domainOnlineCount = dict["DomainOnlineCount"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TopDomains") {
            var model = DescribeScdnTopDomainsByFlowResponseBody.TopDomains()
            model.fromMap(dict["TopDomains"] as! [String: Any])
            self.topDomains = model
        }
    }
}

public class DescribeScdnTopDomainsByFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnTopDomainsByFlowResponseBody?

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
            var model = DescribeScdnTopDomainsByFlowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnUserDomainsRequest : Tea.TeaModel {
    public var changeEndTime: String?

    public var changeStartTime: String?

    public var checkDomainShow: Bool?

    public var domainName: String?

    public var domainSearchType: String?

    public var domainStatus: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeEndTime != nil {
            map["ChangeEndTime"] = self.changeEndTime!
        }
        if self.changeStartTime != nil {
            map["ChangeStartTime"] = self.changeStartTime!
        }
        if self.checkDomainShow != nil {
            map["CheckDomainShow"] = self.checkDomainShow!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainSearchType != nil {
            map["DomainSearchType"] = self.domainSearchType!
        }
        if self.domainStatus != nil {
            map["DomainStatus"] = self.domainStatus!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeEndTime") {
            self.changeEndTime = dict["ChangeEndTime"] as! String
        }
        if dict.keys.contains("ChangeStartTime") {
            self.changeStartTime = dict["ChangeStartTime"] as! String
        }
        if dict.keys.contains("CheckDomainShow") {
            self.checkDomainShow = dict["CheckDomainShow"] as! Bool
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainSearchType") {
            self.domainSearchType = dict["DomainSearchType"] as! String
        }
        if dict.keys.contains("DomainStatus") {
            self.domainStatus = dict["DomainStatus"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeScdnUserDomainsResponseBody : Tea.TeaModel {
    public class Domains : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public class Sources : Tea.TeaModel {
                public class Source : Tea.TeaModel {
                    public var content: String?

                    public var port: Int32?

                    public var priority: String?

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
                        if self.content != nil {
                            map["Content"] = self.content!
                        }
                        if self.port != nil {
                            map["Port"] = self.port!
                        }
                        if self.priority != nil {
                            map["Priority"] = self.priority!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Content") {
                            self.content = dict["Content"] as! String
                        }
                        if dict.keys.contains("Port") {
                            self.port = dict["Port"] as! Int32
                        }
                        if dict.keys.contains("Priority") {
                            self.priority = dict["Priority"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                    }
                }
                public var source: [DescribeScdnUserDomainsResponseBody.Domains.PageData.Sources.Source]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.source != nil {
                        var tmp : [Any] = []
                        for k in self.source! {
                            tmp.append(k.toMap())
                        }
                        map["Source"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Source") {
                        self.source = dict["Source"] as! [DescribeScdnUserDomainsResponseBody.Domains.PageData.Sources.Source]
                    }
                }
            }
            public var cname: String?

            public var description_: String?

            public var domainName: String?

            public var domainStatus: String?

            public var gmtCreated: String?

            public var gmtModified: String?

            public var resourceGroupId: String?

            public var SSLProtocol: String?

            public var sandbox: String?

            public var sources: DescribeScdnUserDomainsResponseBody.Domains.PageData.Sources?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.sources?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cname != nil {
                    map["Cname"] = self.cname!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.domainStatus != nil {
                    map["DomainStatus"] = self.domainStatus!
                }
                if self.gmtCreated != nil {
                    map["GmtCreated"] = self.gmtCreated!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.SSLProtocol != nil {
                    map["SSLProtocol"] = self.SSLProtocol!
                }
                if self.sandbox != nil {
                    map["Sandbox"] = self.sandbox!
                }
                if self.sources != nil {
                    map["Sources"] = self.sources?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cname") {
                    self.cname = dict["Cname"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("DomainStatus") {
                    self.domainStatus = dict["DomainStatus"] as! String
                }
                if dict.keys.contains("GmtCreated") {
                    self.gmtCreated = dict["GmtCreated"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("SSLProtocol") {
                    self.SSLProtocol = dict["SSLProtocol"] as! String
                }
                if dict.keys.contains("Sandbox") {
                    self.sandbox = dict["Sandbox"] as! String
                }
                if dict.keys.contains("Sources") {
                    var model = DescribeScdnUserDomainsResponseBody.Domains.PageData.Sources()
                    model.fromMap(dict["Sources"] as! [String: Any])
                    self.sources = model
                }
            }
        }
        public var pageData: [DescribeScdnUserDomainsResponseBody.Domains.PageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageData") {
                self.pageData = dict["PageData"] as! [DescribeScdnUserDomainsResponseBody.Domains.PageData]
            }
        }
    }
    public var domains: DescribeScdnUserDomainsResponseBody.Domains?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domains?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domains != nil {
            map["Domains"] = self.domains?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domains") {
            var model = DescribeScdnUserDomainsResponseBody.Domains()
            model.fromMap(dict["Domains"] as! [String: Any])
            self.domains = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeScdnUserDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnUserDomainsResponseBody?

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
            var model = DescribeScdnUserDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnUserProtectInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var serviceDDoS: Int32?

    public override init() {
        super.init()
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
        if self.serviceDDoS != nil {
            map["ServiceDDoS"] = self.serviceDDoS!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceDDoS") {
            self.serviceDDoS = dict["ServiceDDoS"] as! Int32
        }
    }
}

public class DescribeScdnUserProtectInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnUserProtectInfoResponseBody?

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
            var model = DescribeScdnUserProtectInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnUserQuotaRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeScdnUserQuotaResponseBody : Tea.TeaModel {
    public var blockQuota: Int32?

    public var blockRemain: Int32?

    public var domainQuota: Int32?

    public var preloadQuota: Int32?

    public var preloadRemain: Int32?

    public var refreshDirQuota: Int32?

    public var refreshDirRemain: Int32?

    public var refreshUrlQuota: Int32?

    public var refreshUrlRemain: Int32?

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
        if self.blockQuota != nil {
            map["BlockQuota"] = self.blockQuota!
        }
        if self.blockRemain != nil {
            map["BlockRemain"] = self.blockRemain!
        }
        if self.domainQuota != nil {
            map["DomainQuota"] = self.domainQuota!
        }
        if self.preloadQuota != nil {
            map["PreloadQuota"] = self.preloadQuota!
        }
        if self.preloadRemain != nil {
            map["PreloadRemain"] = self.preloadRemain!
        }
        if self.refreshDirQuota != nil {
            map["RefreshDirQuota"] = self.refreshDirQuota!
        }
        if self.refreshDirRemain != nil {
            map["RefreshDirRemain"] = self.refreshDirRemain!
        }
        if self.refreshUrlQuota != nil {
            map["RefreshUrlQuota"] = self.refreshUrlQuota!
        }
        if self.refreshUrlRemain != nil {
            map["RefreshUrlRemain"] = self.refreshUrlRemain!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BlockQuota") {
            self.blockQuota = dict["BlockQuota"] as! Int32
        }
        if dict.keys.contains("BlockRemain") {
            self.blockRemain = dict["BlockRemain"] as! Int32
        }
        if dict.keys.contains("DomainQuota") {
            self.domainQuota = dict["DomainQuota"] as! Int32
        }
        if dict.keys.contains("PreloadQuota") {
            self.preloadQuota = dict["PreloadQuota"] as! Int32
        }
        if dict.keys.contains("PreloadRemain") {
            self.preloadRemain = dict["PreloadRemain"] as! Int32
        }
        if dict.keys.contains("RefreshDirQuota") {
            self.refreshDirQuota = dict["RefreshDirQuota"] as! Int32
        }
        if dict.keys.contains("RefreshDirRemain") {
            self.refreshDirRemain = dict["RefreshDirRemain"] as! Int32
        }
        if dict.keys.contains("RefreshUrlQuota") {
            self.refreshUrlQuota = dict["RefreshUrlQuota"] as! Int32
        }
        if dict.keys.contains("RefreshUrlRemain") {
            self.refreshUrlRemain = dict["RefreshUrlRemain"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScdnUserQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnUserQuotaResponseBody?

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
            var model = DescribeScdnUserQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeScdnVerifyContentRequest : Tea.TeaModel {
    public var domainName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
    }
}

public class DescribeScdnVerifyContentResponseBody : Tea.TeaModel {
    public var content: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeScdnVerifyContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScdnVerifyContentResponseBody?

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
            var model = DescribeScdnVerifyContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PreloadScdnObjectCachesRequest : Tea.TeaModel {
    public var area: String?

    public var l2Preload: Bool?

    public var objectPath: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.area != nil {
            map["Area"] = self.area!
        }
        if self.l2Preload != nil {
            map["L2Preload"] = self.l2Preload!
        }
        if self.objectPath != nil {
            map["ObjectPath"] = self.objectPath!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Area") {
            self.area = dict["Area"] as! String
        }
        if dict.keys.contains("L2Preload") {
            self.l2Preload = dict["L2Preload"] as! Bool
        }
        if dict.keys.contains("ObjectPath") {
            self.objectPath = dict["ObjectPath"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class PreloadScdnObjectCachesResponseBody : Tea.TeaModel {
    public var preloadTaskId: String?

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
        if self.preloadTaskId != nil {
            map["PreloadTaskId"] = self.preloadTaskId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PreloadTaskId") {
            self.preloadTaskId = dict["PreloadTaskId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PreloadScdnObjectCachesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PreloadScdnObjectCachesResponseBody?

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
            var model = PreloadScdnObjectCachesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshScdnObjectCachesRequest : Tea.TeaModel {
    public var objectPath: String?

    public var objectType: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.objectPath != nil {
            map["ObjectPath"] = self.objectPath!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ObjectPath") {
            self.objectPath = dict["ObjectPath"] as! String
        }
        if dict.keys.contains("ObjectType") {
            self.objectType = dict["ObjectType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class RefreshScdnObjectCachesResponseBody : Tea.TeaModel {
    public var refreshTaskId: String?

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
        if self.refreshTaskId != nil {
            map["RefreshTaskId"] = self.refreshTaskId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RefreshTaskId") {
            self.refreshTaskId = dict["RefreshTaskId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RefreshScdnObjectCachesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshScdnObjectCachesResponseBody?

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
            var model = RefreshScdnObjectCachesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetScdnBotInfoRequest : Tea.TeaModel {
    public var domainName: String?

    public var enable: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class SetScdnBotInfoResponseBody : Tea.TeaModel {
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

public class SetScdnBotInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetScdnBotInfoResponseBody?

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
            var model = SetScdnBotInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetScdnCcInfoRequest : Tea.TeaModel {
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class SetScdnCcInfoResponseBody : Tea.TeaModel {
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

public class SetScdnCcInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetScdnCcInfoResponseBody?

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
            var model = SetScdnCcInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetScdnDDoSInfoRequest : Tea.TeaModel {
    public var elasticBandwidth: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.elasticBandwidth != nil {
            map["ElasticBandwidth"] = self.elasticBandwidth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ElasticBandwidth") {
            self.elasticBandwidth = dict["ElasticBandwidth"] as! Int32
        }
    }
}

public class SetScdnDDoSInfoResponseBody : Tea.TeaModel {
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

public class SetScdnDDoSInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetScdnDDoSInfoResponseBody?

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
            var model = SetScdnDDoSInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetScdnDomainCertificateRequest : Tea.TeaModel {
    public var certName: String?

    public var certType: String?

    public var domainName: String?

    public var forceSet: String?

    public var ownerId: Int64?

    public var region: String?

    public var SSLPri: String?

    public var SSLProtocol: String?

    public var SSLPub: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certName != nil {
            map["CertName"] = self.certName!
        }
        if self.certType != nil {
            map["CertType"] = self.certType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.forceSet != nil {
            map["ForceSet"] = self.forceSet!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.SSLPri != nil {
            map["SSLPri"] = self.SSLPri!
        }
        if self.SSLProtocol != nil {
            map["SSLProtocol"] = self.SSLProtocol!
        }
        if self.SSLPub != nil {
            map["SSLPub"] = self.SSLPub!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertName") {
            self.certName = dict["CertName"] as! String
        }
        if dict.keys.contains("CertType") {
            self.certType = dict["CertType"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("ForceSet") {
            self.forceSet = dict["ForceSet"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SSLPri") {
            self.SSLPri = dict["SSLPri"] as! String
        }
        if dict.keys.contains("SSLProtocol") {
            self.SSLProtocol = dict["SSLProtocol"] as! String
        }
        if dict.keys.contains("SSLPub") {
            self.SSLPub = dict["SSLPub"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class SetScdnDomainCertificateResponseBody : Tea.TeaModel {
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

public class SetScdnDomainCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetScdnDomainCertificateResponseBody?

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
            var model = SetScdnDomainCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartScdnDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class StartScdnDomainResponseBody : Tea.TeaModel {
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

public class StartScdnDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartScdnDomainResponseBody?

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
            var model = StartScdnDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopScdnDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class StopScdnDomainResponseBody : Tea.TeaModel {
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

public class StopScdnDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopScdnDomainResponseBody?

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
            var model = StopScdnDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TestAmpDescribeScdnDomainIspDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class TestAmpDescribeScdnDomainIspDataResponseBody : Tea.TeaModel {
    public class Value : Tea.TeaModel {
        public class ISPProportionData : Tea.TeaModel {
            public var avgObjectSize: String?

            public var avgResponseRate: String?

            public var avgResponseTime: String?

            public var bps: String?

            public var bytesProportion: String?

            public var ISP: String?

            public var ispEname: String?

            public var proportion: String?

            public var qps: String?

            public var reqErrRate: String?

            public var totalBytes: String?

            public var totalQuery: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avgObjectSize != nil {
                    map["AvgObjectSize"] = self.avgObjectSize!
                }
                if self.avgResponseRate != nil {
                    map["AvgResponseRate"] = self.avgResponseRate!
                }
                if self.avgResponseTime != nil {
                    map["AvgResponseTime"] = self.avgResponseTime!
                }
                if self.bps != nil {
                    map["Bps"] = self.bps!
                }
                if self.bytesProportion != nil {
                    map["BytesProportion"] = self.bytesProportion!
                }
                if self.ISP != nil {
                    map["ISP"] = self.ISP!
                }
                if self.ispEname != nil {
                    map["IspEname"] = self.ispEname!
                }
                if self.proportion != nil {
                    map["Proportion"] = self.proportion!
                }
                if self.qps != nil {
                    map["Qps"] = self.qps!
                }
                if self.reqErrRate != nil {
                    map["ReqErrRate"] = self.reqErrRate!
                }
                if self.totalBytes != nil {
                    map["TotalBytes"] = self.totalBytes!
                }
                if self.totalQuery != nil {
                    map["TotalQuery"] = self.totalQuery!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvgObjectSize") {
                    self.avgObjectSize = dict["AvgObjectSize"] as! String
                }
                if dict.keys.contains("AvgResponseRate") {
                    self.avgResponseRate = dict["AvgResponseRate"] as! String
                }
                if dict.keys.contains("AvgResponseTime") {
                    self.avgResponseTime = dict["AvgResponseTime"] as! String
                }
                if dict.keys.contains("Bps") {
                    self.bps = dict["Bps"] as! String
                }
                if dict.keys.contains("BytesProportion") {
                    self.bytesProportion = dict["BytesProportion"] as! String
                }
                if dict.keys.contains("ISP") {
                    self.ISP = dict["ISP"] as! String
                }
                if dict.keys.contains("IspEname") {
                    self.ispEname = dict["IspEname"] as! String
                }
                if dict.keys.contains("Proportion") {
                    self.proportion = dict["Proportion"] as! String
                }
                if dict.keys.contains("Qps") {
                    self.qps = dict["Qps"] as! String
                }
                if dict.keys.contains("ReqErrRate") {
                    self.reqErrRate = dict["ReqErrRate"] as! String
                }
                if dict.keys.contains("TotalBytes") {
                    self.totalBytes = dict["TotalBytes"] as! String
                }
                if dict.keys.contains("TotalQuery") {
                    self.totalQuery = dict["TotalQuery"] as! String
                }
            }
        }
        public var ISPProportionData: [TestAmpDescribeScdnDomainIspDataResponseBody.Value.ISPProportionData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ISPProportionData != nil {
                var tmp : [Any] = []
                for k in self.ISPProportionData! {
                    tmp.append(k.toMap())
                }
                map["ISPProportionData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ISPProportionData") {
                self.ISPProportionData = dict["ISPProportionData"] as! [TestAmpDescribeScdnDomainIspDataResponseBody.Value.ISPProportionData]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var requestId: String?

    public var startTime: String?

    public var value: TestAmpDescribeScdnDomainIspDataResponseBody.Value?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.value?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.value != nil {
            map["Value"] = self.value?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Value") {
            var model = TestAmpDescribeScdnDomainIspDataResponseBody.Value()
            model.fromMap(dict["Value"] as! [String: Any])
            self.value = model
        }
    }
}

public class TestAmpDescribeScdnDomainIspDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TestAmpDescribeScdnDomainIspDataResponseBody?

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
            var model = TestAmpDescribeScdnDomainIspDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateScdnDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var ownerId: Int64?

    public var resourceGroupId: String?

    public var securityToken: String?

    public var sources: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sources != nil {
            map["Sources"] = self.sources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sources = dict["Sources"] as! String
        }
    }
}

public class UpdateScdnDomainResponseBody : Tea.TeaModel {
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

public class UpdateScdnDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateScdnDomainResponseBody?

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
            var model = UpdateScdnDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyScdnDomainOwnerRequest : Tea.TeaModel {
    public var domainName: String?

    public var verifyType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.verifyType != nil {
            map["VerifyType"] = self.verifyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("VerifyType") {
            self.verifyType = dict["VerifyType"] as! String
        }
    }
}

public class VerifyScdnDomainOwnerResponseBody : Tea.TeaModel {
    public var content: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifyScdnDomainOwnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyScdnDomainOwnerResponseBody?

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
            var model = VerifyScdnDomainOwnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
