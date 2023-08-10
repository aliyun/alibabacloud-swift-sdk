import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateSheetHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: CreateSheetHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = CreateSheetHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class CreateSheetShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class CreateSheetRequest : Tea.TeaModel {
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public var name: String?

    public var tenantContext: CreateSheetRequest.TenantContext?

    public var workbookId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.workbookId != nil {
            map["WorkbookId"] = self.workbookId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = CreateSheetRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("WorkbookId") && dict["WorkbookId"] != nil {
            self.workbookId = dict["WorkbookId"] as! String
        }
    }
}

public class CreateSheetShrinkRequest : Tea.TeaModel {
    public var name: String?

    public var tenantContextShrink: String?

    public var workbookId: String?

    public override init() {
        super.init()
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
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.workbookId != nil {
            map["WorkbookId"] = self.workbookId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("WorkbookId") && dict["WorkbookId"] != nil {
            self.workbookId = dict["WorkbookId"] as! String
        }
    }
}

public class CreateSheetResponseBody : Tea.TeaModel {
    public var id: String?

    public var name: String?

    public var requestId: String?

    public var visibility: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.visibility != nil {
            map["visibility"] = self.visibility!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("visibility") && dict["visibility"] != nil {
            self.visibility = dict["visibility"] as! String
        }
    }
}

public class CreateSheetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSheetResponseBody?

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
            var model = CreateSheetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InsertRowsBeforeHeaders : Tea.TeaModel {
    public class AccountContext : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountId") && dict["accountId"] != nil {
                self.accountId = dict["accountId"] as! String
            }
        }
    }
    public var commonHeaders: [String: String]?

    public var accountContext: InsertRowsBeforeHeaders.AccountContext?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContext != nil {
            map["AccountContext"] = self.accountContext?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            var model = InsertRowsBeforeHeaders.AccountContext()
            model.fromMap(dict["AccountContext"] as! [String: Any])
            self.accountContext = model
        }
    }
}

public class InsertRowsBeforeShrinkHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var accountContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.accountContextShrink != nil {
            map["AccountContext"] = self.accountContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("AccountContext") && dict["AccountContext"] != nil {
            self.accountContextShrink = dict["AccountContext"] as! String
        }
    }
}

public class InsertRowsBeforeRequest : Tea.TeaModel {
    public class TenantContext : Tea.TeaModel {
        public var tenantId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tenantId") && dict["tenantId"] != nil {
                self.tenantId = dict["tenantId"] as! String
            }
        }
    }
    public var row: Int64?

    public var rowCount: Int64?

    public var sheetId: String?

    public var tenantContext: InsertRowsBeforeRequest.TenantContext?

    public var workbookId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tenantContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.row != nil {
            map["Row"] = self.row!
        }
        if self.rowCount != nil {
            map["RowCount"] = self.rowCount!
        }
        if self.sheetId != nil {
            map["SheetId"] = self.sheetId!
        }
        if self.tenantContext != nil {
            map["TenantContext"] = self.tenantContext?.toMap()
        }
        if self.workbookId != nil {
            map["WorkbookId"] = self.workbookId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Row") && dict["Row"] != nil {
            self.row = dict["Row"] as! Int64
        }
        if dict.keys.contains("RowCount") && dict["RowCount"] != nil {
            self.rowCount = dict["RowCount"] as! Int64
        }
        if dict.keys.contains("SheetId") && dict["SheetId"] != nil {
            self.sheetId = dict["SheetId"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            var model = InsertRowsBeforeRequest.TenantContext()
            model.fromMap(dict["TenantContext"] as! [String: Any])
            self.tenantContext = model
        }
        if dict.keys.contains("WorkbookId") && dict["WorkbookId"] != nil {
            self.workbookId = dict["WorkbookId"] as! String
        }
    }
}

public class InsertRowsBeforeShrinkRequest : Tea.TeaModel {
    public var row: Int64?

    public var rowCount: Int64?

    public var sheetId: String?

    public var tenantContextShrink: String?

    public var workbookId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.row != nil {
            map["Row"] = self.row!
        }
        if self.rowCount != nil {
            map["RowCount"] = self.rowCount!
        }
        if self.sheetId != nil {
            map["SheetId"] = self.sheetId!
        }
        if self.tenantContextShrink != nil {
            map["TenantContext"] = self.tenantContextShrink!
        }
        if self.workbookId != nil {
            map["WorkbookId"] = self.workbookId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Row") && dict["Row"] != nil {
            self.row = dict["Row"] as! Int64
        }
        if dict.keys.contains("RowCount") && dict["RowCount"] != nil {
            self.rowCount = dict["RowCount"] as! Int64
        }
        if dict.keys.contains("SheetId") && dict["SheetId"] != nil {
            self.sheetId = dict["SheetId"] as! String
        }
        if dict.keys.contains("TenantContext") && dict["TenantContext"] != nil {
            self.tenantContextShrink = dict["TenantContext"] as! String
        }
        if dict.keys.contains("WorkbookId") && dict["WorkbookId"] != nil {
            self.workbookId = dict["WorkbookId"] as! String
        }
    }
}

public class InsertRowsBeforeResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class InsertRowsBeforeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InsertRowsBeforeResponseBody?

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
            var model = InsertRowsBeforeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
