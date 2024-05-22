import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ActivateApDeviceRequest : Tea.TeaModel {
    public var apMac: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApMac") {
            self.apMac = dict["ApMac"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class ActivateApDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ActivateApDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActivateApDeviceResponseBody?

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
            var model = ActivateApDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddApDeviceRequest : Tea.TeaModel {
    public var apMac: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApMac") {
            self.apMac = dict["ApMac"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class AddApDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddApDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddApDeviceResponseBody?

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
            var model = AddApDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddEslDeviceRequest : Tea.TeaModel {
    public var eslBarCode: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eslBarCode != nil {
            map["EslBarCode"] = self.eslBarCode!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EslBarCode") {
            self.eslBarCode = dict["EslBarCode"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class AddEslDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddEslDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddEslDeviceResponseBody?

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
            var model = AddEslDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddUserRequest : Tea.TeaModel {
    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class AddUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserResponseBody?

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
            var model = AddUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssignUserRequest : Tea.TeaModel {
    public var stores: String?

    public var userId: String?

    public var userType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.stores != nil {
            map["Stores"] = self.stores!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Stores") {
            self.stores = dict["Stores"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserType") {
            self.userType = dict["UserType"] as! String
        }
    }
}

public class AssignUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AssignUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssignUserResponseBody?

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
            var model = AssignUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchInsertItemsRequest : Tea.TeaModel {
    public class ItemInfo : Tea.TeaModel {
        public var actionPrice: Int32?

        public var bePromotion: Bool?

        public var beSourceCode: Bool?

        public var brandName: String?

        public var categoryName: String?

        public var companyId: String?

        public var customizeFeatureA: String?

        public var customizeFeatureB: String?

        public var customizeFeatureC: String?

        public var customizeFeatureD: String?

        public var customizeFeatureE: String?

        public var customizeFeatureF: String?

        public var customizeFeatureG: String?

        public var customizeFeatureH: String?

        public var customizeFeatureI: String?

        public var customizeFeatureJ: String?

        public var energyEfficiency: String?

        public var extraAttribute: String?

        public var forestFirstId: String?

        public var forestSecondId: String?

        public var itemBarCode: String?

        public var itemId: Int64?

        public var itemInfoIndex: Int32?

        public var itemQrCode: String?

        public var itemShortTitle: String?

        public var itemTitle: String?

        public var memberPrice: Int32?

        public var modelNumber: String?

        public var optionGroups: String?

        public var originalPrice: Int32?

        public var priceUnit: String?

        public var productionPlace: String?

        public var promotionEnd: String?

        public var promotionReason: String?

        public var promotionStart: String?

        public var promotionText: String?

        public var rank: String?

        public var saleSpec: String?

        public var skuId: String?

        public var sourceCode: String?

        public var storeId: String?

        public var suggestPrice: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionPrice != nil {
                map["ActionPrice"] = self.actionPrice!
            }
            if self.bePromotion != nil {
                map["BePromotion"] = self.bePromotion!
            }
            if self.beSourceCode != nil {
                map["BeSourceCode"] = self.beSourceCode!
            }
            if self.brandName != nil {
                map["BrandName"] = self.brandName!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.companyId != nil {
                map["CompanyId"] = self.companyId!
            }
            if self.customizeFeatureA != nil {
                map["CustomizeFeatureA"] = self.customizeFeatureA!
            }
            if self.customizeFeatureB != nil {
                map["CustomizeFeatureB"] = self.customizeFeatureB!
            }
            if self.customizeFeatureC != nil {
                map["CustomizeFeatureC"] = self.customizeFeatureC!
            }
            if self.customizeFeatureD != nil {
                map["CustomizeFeatureD"] = self.customizeFeatureD!
            }
            if self.customizeFeatureE != nil {
                map["CustomizeFeatureE"] = self.customizeFeatureE!
            }
            if self.customizeFeatureF != nil {
                map["CustomizeFeatureF"] = self.customizeFeatureF!
            }
            if self.customizeFeatureG != nil {
                map["CustomizeFeatureG"] = self.customizeFeatureG!
            }
            if self.customizeFeatureH != nil {
                map["CustomizeFeatureH"] = self.customizeFeatureH!
            }
            if self.customizeFeatureI != nil {
                map["CustomizeFeatureI"] = self.customizeFeatureI!
            }
            if self.customizeFeatureJ != nil {
                map["CustomizeFeatureJ"] = self.customizeFeatureJ!
            }
            if self.energyEfficiency != nil {
                map["EnergyEfficiency"] = self.energyEfficiency!
            }
            if self.extraAttribute != nil {
                map["ExtraAttribute"] = self.extraAttribute!
            }
            if self.forestFirstId != nil {
                map["ForestFirstId"] = self.forestFirstId!
            }
            if self.forestSecondId != nil {
                map["ForestSecondId"] = self.forestSecondId!
            }
            if self.itemBarCode != nil {
                map["ItemBarCode"] = self.itemBarCode!
            }
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.itemInfoIndex != nil {
                map["ItemInfoIndex"] = self.itemInfoIndex!
            }
            if self.itemQrCode != nil {
                map["ItemQrCode"] = self.itemQrCode!
            }
            if self.itemShortTitle != nil {
                map["ItemShortTitle"] = self.itemShortTitle!
            }
            if self.itemTitle != nil {
                map["ItemTitle"] = self.itemTitle!
            }
            if self.memberPrice != nil {
                map["MemberPrice"] = self.memberPrice!
            }
            if self.modelNumber != nil {
                map["ModelNumber"] = self.modelNumber!
            }
            if self.optionGroups != nil {
                map["OptionGroups"] = self.optionGroups!
            }
            if self.originalPrice != nil {
                map["OriginalPrice"] = self.originalPrice!
            }
            if self.priceUnit != nil {
                map["PriceUnit"] = self.priceUnit!
            }
            if self.productionPlace != nil {
                map["ProductionPlace"] = self.productionPlace!
            }
            if self.promotionEnd != nil {
                map["PromotionEnd"] = self.promotionEnd!
            }
            if self.promotionReason != nil {
                map["PromotionReason"] = self.promotionReason!
            }
            if self.promotionStart != nil {
                map["PromotionStart"] = self.promotionStart!
            }
            if self.promotionText != nil {
                map["PromotionText"] = self.promotionText!
            }
            if self.rank != nil {
                map["Rank"] = self.rank!
            }
            if self.saleSpec != nil {
                map["SaleSpec"] = self.saleSpec!
            }
            if self.skuId != nil {
                map["SkuId"] = self.skuId!
            }
            if self.sourceCode != nil {
                map["SourceCode"] = self.sourceCode!
            }
            if self.storeId != nil {
                map["StoreId"] = self.storeId!
            }
            if self.suggestPrice != nil {
                map["SuggestPrice"] = self.suggestPrice!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActionPrice") {
                self.actionPrice = dict["ActionPrice"] as! Int32
            }
            if dict.keys.contains("BePromotion") {
                self.bePromotion = dict["BePromotion"] as! Bool
            }
            if dict.keys.contains("BeSourceCode") {
                self.beSourceCode = dict["BeSourceCode"] as! Bool
            }
            if dict.keys.contains("BrandName") {
                self.brandName = dict["BrandName"] as! String
            }
            if dict.keys.contains("CategoryName") {
                self.categoryName = dict["CategoryName"] as! String
            }
            if dict.keys.contains("CompanyId") {
                self.companyId = dict["CompanyId"] as! String
            }
            if dict.keys.contains("CustomizeFeatureA") {
                self.customizeFeatureA = dict["CustomizeFeatureA"] as! String
            }
            if dict.keys.contains("CustomizeFeatureB") {
                self.customizeFeatureB = dict["CustomizeFeatureB"] as! String
            }
            if dict.keys.contains("CustomizeFeatureC") {
                self.customizeFeatureC = dict["CustomizeFeatureC"] as! String
            }
            if dict.keys.contains("CustomizeFeatureD") {
                self.customizeFeatureD = dict["CustomizeFeatureD"] as! String
            }
            if dict.keys.contains("CustomizeFeatureE") {
                self.customizeFeatureE = dict["CustomizeFeatureE"] as! String
            }
            if dict.keys.contains("CustomizeFeatureF") {
                self.customizeFeatureF = dict["CustomizeFeatureF"] as! String
            }
            if dict.keys.contains("CustomizeFeatureG") {
                self.customizeFeatureG = dict["CustomizeFeatureG"] as! String
            }
            if dict.keys.contains("CustomizeFeatureH") {
                self.customizeFeatureH = dict["CustomizeFeatureH"] as! String
            }
            if dict.keys.contains("CustomizeFeatureI") {
                self.customizeFeatureI = dict["CustomizeFeatureI"] as! String
            }
            if dict.keys.contains("CustomizeFeatureJ") {
                self.customizeFeatureJ = dict["CustomizeFeatureJ"] as! String
            }
            if dict.keys.contains("EnergyEfficiency") {
                self.energyEfficiency = dict["EnergyEfficiency"] as! String
            }
            if dict.keys.contains("ExtraAttribute") {
                self.extraAttribute = dict["ExtraAttribute"] as! String
            }
            if dict.keys.contains("ForestFirstId") {
                self.forestFirstId = dict["ForestFirstId"] as! String
            }
            if dict.keys.contains("ForestSecondId") {
                self.forestSecondId = dict["ForestSecondId"] as! String
            }
            if dict.keys.contains("ItemBarCode") {
                self.itemBarCode = dict["ItemBarCode"] as! String
            }
            if dict.keys.contains("ItemId") {
                self.itemId = dict["ItemId"] as! Int64
            }
            if dict.keys.contains("ItemInfoIndex") {
                self.itemInfoIndex = dict["ItemInfoIndex"] as! Int32
            }
            if dict.keys.contains("ItemQrCode") {
                self.itemQrCode = dict["ItemQrCode"] as! String
            }
            if dict.keys.contains("ItemShortTitle") {
                self.itemShortTitle = dict["ItemShortTitle"] as! String
            }
            if dict.keys.contains("ItemTitle") {
                self.itemTitle = dict["ItemTitle"] as! String
            }
            if dict.keys.contains("MemberPrice") {
                self.memberPrice = dict["MemberPrice"] as! Int32
            }
            if dict.keys.contains("ModelNumber") {
                self.modelNumber = dict["ModelNumber"] as! String
            }
            if dict.keys.contains("OptionGroups") {
                self.optionGroups = dict["OptionGroups"] as! String
            }
            if dict.keys.contains("OriginalPrice") {
                self.originalPrice = dict["OriginalPrice"] as! Int32
            }
            if dict.keys.contains("PriceUnit") {
                self.priceUnit = dict["PriceUnit"] as! String
            }
            if dict.keys.contains("ProductionPlace") {
                self.productionPlace = dict["ProductionPlace"] as! String
            }
            if dict.keys.contains("PromotionEnd") {
                self.promotionEnd = dict["PromotionEnd"] as! String
            }
            if dict.keys.contains("PromotionReason") {
                self.promotionReason = dict["PromotionReason"] as! String
            }
            if dict.keys.contains("PromotionStart") {
                self.promotionStart = dict["PromotionStart"] as! String
            }
            if dict.keys.contains("PromotionText") {
                self.promotionText = dict["PromotionText"] as! String
            }
            if dict.keys.contains("Rank") {
                self.rank = dict["Rank"] as! String
            }
            if dict.keys.contains("SaleSpec") {
                self.saleSpec = dict["SaleSpec"] as! String
            }
            if dict.keys.contains("SkuId") {
                self.skuId = dict["SkuId"] as! String
            }
            if dict.keys.contains("SourceCode") {
                self.sourceCode = dict["SourceCode"] as! String
            }
            if dict.keys.contains("StoreId") {
                self.storeId = dict["StoreId"] as! String
            }
            if dict.keys.contains("SuggestPrice") {
                self.suggestPrice = dict["SuggestPrice"] as! Int32
            }
        }
    }
    public var itemInfo: [BatchInsertItemsRequest.ItemInfo]?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.itemInfo != nil {
            var tmp : [Any] = []
            for k in self.itemInfo! {
                tmp.append(k.toMap())
            }
            map["ItemInfo"] = tmp
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ItemInfo") {
            var tmp : [BatchInsertItemsRequest.ItemInfo] = []
            for v in dict["ItemInfo"] as! [Any] {
                var model = BatchInsertItemsRequest.ItemInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.itemInfo = tmp
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class BatchInsertItemsResponseBody : Tea.TeaModel {
    public class BatchResults : Tea.TeaModel {
        public class BatchResult : Tea.TeaModel {
            public var errorCode: String?

            public var index: Int32?

            public var message: String?

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
                if self.index != nil {
                    map["Index"] = self.index!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Index") {
                    self.index = dict["Index"] as! Int32
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var batchResult: [BatchInsertItemsResponseBody.BatchResults.BatchResult]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchResult != nil {
                var tmp : [Any] = []
                for k in self.batchResult! {
                    tmp.append(k.toMap())
                }
                map["BatchResult"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BatchResult") {
                var tmp : [BatchInsertItemsResponseBody.BatchResults.BatchResult] = []
                for v in dict["BatchResult"] as! [Any] {
                    var model = BatchInsertItemsResponseBody.BatchResults.BatchResult()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.batchResult = tmp
            }
        }
    }
    public var batchResults: BatchInsertItemsResponseBody.BatchResults?

    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        try self.batchResults?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchResults != nil {
            map["BatchResults"] = self.batchResults?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BatchResults") {
            var model = BatchInsertItemsResponseBody.BatchResults()
            model.fromMap(dict["BatchResults"] as! [String: Any])
            self.batchResults = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BatchInsertItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchInsertItemsResponseBody?

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
            var model = BatchInsertItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindEslDeviceRequest : Tea.TeaModel {
    public var eslBarCode: String?

    public var itemBarCode: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eslBarCode != nil {
            map["EslBarCode"] = self.eslBarCode!
        }
        if self.itemBarCode != nil {
            map["ItemBarCode"] = self.itemBarCode!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EslBarCode") {
            self.eslBarCode = dict["EslBarCode"] as! String
        }
        if dict.keys.contains("ItemBarCode") {
            self.itemBarCode = dict["ItemBarCode"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class BindEslDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BindEslDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindEslDeviceResponseBody?

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
            var model = BindEslDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindEslDeviceShelfRequest : Tea.TeaModel {
    public var eslBarCode: String?

    public var shelfCode: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eslBarCode != nil {
            map["EslBarCode"] = self.eslBarCode!
        }
        if self.shelfCode != nil {
            map["ShelfCode"] = self.shelfCode!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EslBarCode") {
            self.eslBarCode = dict["EslBarCode"] as! String
        }
        if dict.keys.contains("ShelfCode") {
            self.shelfCode = dict["ShelfCode"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class BindEslDeviceShelfResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BindEslDeviceShelfResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindEslDeviceShelfResponseBody?

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
            var model = BindEslDeviceShelfResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfirmLogisticsRequest : Tea.TeaModel {
    public var logisticsDocuments: String?

    public var poNumber: String?

    public var prNumber: String?

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
        if self.logisticsDocuments != nil {
            map["LogisticsDocuments"] = self.logisticsDocuments!
        }
        if self.poNumber != nil {
            map["PoNumber"] = self.poNumber!
        }
        if self.prNumber != nil {
            map["PrNumber"] = self.prNumber!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogisticsDocuments") {
            self.logisticsDocuments = dict["LogisticsDocuments"] as! String
        }
        if dict.keys.contains("PoNumber") {
            self.poNumber = dict["PoNumber"] as! String
        }
        if dict.keys.contains("PrNumber") {
            self.prNumber = dict["PrNumber"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ConfirmLogisticsResponseBody : Tea.TeaModel {
    public var acceptance: String?

    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.acceptance != nil {
            map["Acceptance"] = self.acceptance!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Acceptance") {
            self.acceptance = dict["Acceptance"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ConfirmLogisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfirmLogisticsResponseBody?

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
            var model = ConfirmLogisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateStoreRequest : Tea.TeaModel {
    public var brand: String?

    public var comments: String?

    public var companyId: String?

    public var groups: String?

    public var outId: String?

    public var parentId: String?

    public var phone: String?

    public var storeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.brand != nil {
            map["Brand"] = self.brand!
        }
        if self.comments != nil {
            map["Comments"] = self.comments!
        }
        if self.companyId != nil {
            map["CompanyId"] = self.companyId!
        }
        if self.groups != nil {
            map["Groups"] = self.groups!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.storeName != nil {
            map["StoreName"] = self.storeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Brand") {
            self.brand = dict["Brand"] as! String
        }
        if dict.keys.contains("Comments") {
            self.comments = dict["Comments"] as! String
        }
        if dict.keys.contains("CompanyId") {
            self.companyId = dict["CompanyId"] as! String
        }
        if dict.keys.contains("Groups") {
            self.groups = dict["Groups"] as! String
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("ParentId") {
            self.parentId = dict["ParentId"] as! String
        }
        if dict.keys.contains("Phone") {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("StoreName") {
            self.storeName = dict["StoreName"] as! String
        }
    }
}

public class CreateStoreResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var requestId: String?

    public var storeId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateStoreResponseBody?

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
            var model = CreateStoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApDeviceRequest : Tea.TeaModel {
    public var apMac: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApMac") {
            self.apMac = dict["ApMac"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class DeleteApDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteApDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApDeviceResponseBody?

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
            var model = DeleteApDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEslDeviceRequest : Tea.TeaModel {
    public var eslBarCode: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eslBarCode != nil {
            map["EslBarCode"] = self.eslBarCode!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EslBarCode") {
            self.eslBarCode = dict["EslBarCode"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class DeleteEslDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteEslDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEslDeviceResponseBody?

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
            var model = DeleteEslDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteItemRequest : Tea.TeaModel {
    public var itemBarCode: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.itemBarCode != nil {
            map["ItemBarCode"] = self.itemBarCode!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ItemBarCode") {
            self.itemBarCode = dict["ItemBarCode"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class DeleteItemResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteItemResponseBody?

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
            var model = DeleteItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteItemBySkuIdRequest : Tea.TeaModel {
    public var skuId: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.skuId != nil {
            map["SkuId"] = self.skuId!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SkuId") {
            self.skuId = dict["SkuId"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class DeleteItemBySkuIdResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteItemBySkuIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteItemBySkuIdResponseBody?

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
            var model = DeleteItemBySkuIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteStoreRequest : Tea.TeaModel {
    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class DeleteStoreResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteStoreResponseBody?

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
            var model = DeleteStoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserRequest : Tea.TeaModel {
    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DeleteUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserResponseBody?

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
            var model = DeleteUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAlarmsRequest : Tea.TeaModel {
    public var alarmId: String?

    public var alarmStatus: String?

    public var alarmType: String?

    public var errorType: String?

    public var fromAlarmTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var storeId: String?

    public var toAlarmTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmId != nil {
            map["AlarmId"] = self.alarmId!
        }
        if self.alarmStatus != nil {
            map["AlarmStatus"] = self.alarmStatus!
        }
        if self.alarmType != nil {
            map["AlarmType"] = self.alarmType!
        }
        if self.errorType != nil {
            map["ErrorType"] = self.errorType!
        }
        if self.fromAlarmTime != nil {
            map["FromAlarmTime"] = self.fromAlarmTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.toAlarmTime != nil {
            map["ToAlarmTime"] = self.toAlarmTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmId") {
            self.alarmId = dict["AlarmId"] as! String
        }
        if dict.keys.contains("AlarmStatus") {
            self.alarmStatus = dict["AlarmStatus"] as! String
        }
        if dict.keys.contains("AlarmType") {
            self.alarmType = dict["AlarmType"] as! String
        }
        if dict.keys.contains("ErrorType") {
            self.errorType = dict["ErrorType"] as! String
        }
        if dict.keys.contains("FromAlarmTime") {
            self.fromAlarmTime = dict["FromAlarmTime"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("ToAlarmTime") {
            self.toAlarmTime = dict["ToAlarmTime"] as! String
        }
    }
}

public class DescribeAlarmsResponseBody : Tea.TeaModel {
    public class Alarms : Tea.TeaModel {
        public class AlarmInfo : Tea.TeaModel {
            public var alarmId: String?

            public var alarmStatus: String?

            public var alarmTime: String?

            public var alarmType: String?

            public var companyId: String?

            public var dealTime: String?

            public var dealUserId: Int64?

            public var deviceBarCode: String?

            public var deviceMac: String?

            public var deviceType: String?

            public var errorType: String?

            public var itemBarCode: String?

            public var itemTitle: String?

            public var model: String?

            public var storeId: String?

            public var vendor: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alarmId != nil {
                    map["AlarmId"] = self.alarmId!
                }
                if self.alarmStatus != nil {
                    map["AlarmStatus"] = self.alarmStatus!
                }
                if self.alarmTime != nil {
                    map["AlarmTime"] = self.alarmTime!
                }
                if self.alarmType != nil {
                    map["AlarmType"] = self.alarmType!
                }
                if self.companyId != nil {
                    map["CompanyId"] = self.companyId!
                }
                if self.dealTime != nil {
                    map["DealTime"] = self.dealTime!
                }
                if self.dealUserId != nil {
                    map["DealUserId"] = self.dealUserId!
                }
                if self.deviceBarCode != nil {
                    map["DeviceBarCode"] = self.deviceBarCode!
                }
                if self.deviceMac != nil {
                    map["DeviceMac"] = self.deviceMac!
                }
                if self.deviceType != nil {
                    map["DeviceType"] = self.deviceType!
                }
                if self.errorType != nil {
                    map["ErrorType"] = self.errorType!
                }
                if self.itemBarCode != nil {
                    map["ItemBarCode"] = self.itemBarCode!
                }
                if self.itemTitle != nil {
                    map["ItemTitle"] = self.itemTitle!
                }
                if self.model != nil {
                    map["Model"] = self.model!
                }
                if self.storeId != nil {
                    map["StoreId"] = self.storeId!
                }
                if self.vendor != nil {
                    map["Vendor"] = self.vendor!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlarmId") {
                    self.alarmId = dict["AlarmId"] as! String
                }
                if dict.keys.contains("AlarmStatus") {
                    self.alarmStatus = dict["AlarmStatus"] as! String
                }
                if dict.keys.contains("AlarmTime") {
                    self.alarmTime = dict["AlarmTime"] as! String
                }
                if dict.keys.contains("AlarmType") {
                    self.alarmType = dict["AlarmType"] as! String
                }
                if dict.keys.contains("CompanyId") {
                    self.companyId = dict["CompanyId"] as! String
                }
                if dict.keys.contains("DealTime") {
                    self.dealTime = dict["DealTime"] as! String
                }
                if dict.keys.contains("DealUserId") {
                    self.dealUserId = dict["DealUserId"] as! Int64
                }
                if dict.keys.contains("DeviceBarCode") {
                    self.deviceBarCode = dict["DeviceBarCode"] as! String
                }
                if dict.keys.contains("DeviceMac") {
                    self.deviceMac = dict["DeviceMac"] as! String
                }
                if dict.keys.contains("DeviceType") {
                    self.deviceType = dict["DeviceType"] as! String
                }
                if dict.keys.contains("ErrorType") {
                    self.errorType = dict["ErrorType"] as! String
                }
                if dict.keys.contains("ItemBarCode") {
                    self.itemBarCode = dict["ItemBarCode"] as! String
                }
                if dict.keys.contains("ItemTitle") {
                    self.itemTitle = dict["ItemTitle"] as! String
                }
                if dict.keys.contains("Model") {
                    self.model = dict["Model"] as! String
                }
                if dict.keys.contains("StoreId") {
                    self.storeId = dict["StoreId"] as! String
                }
                if dict.keys.contains("Vendor") {
                    self.vendor = dict["Vendor"] as! String
                }
            }
        }
        public var alarmInfo: [DescribeAlarmsResponseBody.Alarms.AlarmInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alarmInfo != nil {
                var tmp : [Any] = []
                for k in self.alarmInfo! {
                    tmp.append(k.toMap())
                }
                map["AlarmInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlarmInfo") {
                var tmp : [DescribeAlarmsResponseBody.Alarms.AlarmInfo] = []
                for v in dict["AlarmInfo"] as! [Any] {
                    var model = DescribeAlarmsResponseBody.Alarms.AlarmInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.alarmInfo = tmp
            }
        }
    }
    public var alarms: DescribeAlarmsResponseBody.Alarms?

    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.alarms?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarms != nil {
            map["Alarms"] = self.alarms?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Alarms") {
            var model = DescribeAlarmsResponseBody.Alarms()
            model.fromMap(dict["Alarms"] as! [String: Any])
            self.alarms = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAlarmsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlarmsResponseBody?

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
            var model = DescribeAlarmsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApDevicesRequest : Tea.TeaModel {
    public var activated: Bool?

    public var apMac: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activated != nil {
            map["Activated"] = self.activated!
        }
        if self.apMac != nil {
            map["ApMac"] = self.apMac!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Activated") {
            self.activated = dict["Activated"] as! Bool
        }
        if dict.keys.contains("ApMac") {
            self.apMac = dict["ApMac"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class DescribeApDevicesResponseBody : Tea.TeaModel {
    public class ApDevices : Tea.TeaModel {
        public class ApInfo : Tea.TeaModel {
            public var isActivate: Bool?

            public var mac: String?

            public var model: String?

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
                if self.isActivate != nil {
                    map["IsActivate"] = self.isActivate!
                }
                if self.mac != nil {
                    map["Mac"] = self.mac!
                }
                if self.model != nil {
                    map["Model"] = self.model!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IsActivate") {
                    self.isActivate = dict["IsActivate"] as! Bool
                }
                if dict.keys.contains("Mac") {
                    self.mac = dict["Mac"] as! String
                }
                if dict.keys.contains("Model") {
                    self.model = dict["Model"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Bool
                }
            }
        }
        public var apInfo: [DescribeApDevicesResponseBody.ApDevices.ApInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apInfo != nil {
                var tmp : [Any] = []
                for k in self.apInfo! {
                    tmp.append(k.toMap())
                }
                map["ApInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApInfo") {
                var tmp : [DescribeApDevicesResponseBody.ApDevices.ApInfo] = []
                for v in dict["ApInfo"] as! [Any] {
                    var model = DescribeApDevicesResponseBody.ApDevices.ApInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apInfo = tmp
            }
        }
    }
    public var apDevices: DescribeApDevicesResponseBody.ApDevices?

    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.apDevices?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apDevices != nil {
            map["ApDevices"] = self.apDevices?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApDevices") {
            var model = DescribeApDevicesResponseBody.ApDevices()
            model.fromMap(dict["ApDevices"] as! [String: Any])
            self.apDevices = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeApDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApDevicesResponseBody?

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
            var model = DescribeApDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEslDevicesRequest : Tea.TeaModel {
    public var beBind: Bool?

    public var eslBarCode: String?

    public var eslStatus: String?

    public var fromBatteryLevel: Int32?

    public var itemBarCode: String?

    public var mac: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var shelfCode: String?

    public var storeId: String?

    public var toBatteryLevel: Int32?

    public var type: String?

    public var vendor: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beBind != nil {
            map["BeBind"] = self.beBind!
        }
        if self.eslBarCode != nil {
            map["EslBarCode"] = self.eslBarCode!
        }
        if self.eslStatus != nil {
            map["EslStatus"] = self.eslStatus!
        }
        if self.fromBatteryLevel != nil {
            map["FromBatteryLevel"] = self.fromBatteryLevel!
        }
        if self.itemBarCode != nil {
            map["ItemBarCode"] = self.itemBarCode!
        }
        if self.mac != nil {
            map["Mac"] = self.mac!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.shelfCode != nil {
            map["ShelfCode"] = self.shelfCode!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.toBatteryLevel != nil {
            map["ToBatteryLevel"] = self.toBatteryLevel!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeBind") {
            self.beBind = dict["BeBind"] as! Bool
        }
        if dict.keys.contains("EslBarCode") {
            self.eslBarCode = dict["EslBarCode"] as! String
        }
        if dict.keys.contains("EslStatus") {
            self.eslStatus = dict["EslStatus"] as! String
        }
        if dict.keys.contains("FromBatteryLevel") {
            self.fromBatteryLevel = dict["FromBatteryLevel"] as! Int32
        }
        if dict.keys.contains("ItemBarCode") {
            self.itemBarCode = dict["ItemBarCode"] as! String
        }
        if dict.keys.contains("Mac") {
            self.mac = dict["Mac"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ShelfCode") {
            self.shelfCode = dict["ShelfCode"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("ToBatteryLevel") {
            self.toBatteryLevel = dict["ToBatteryLevel"] as! Int32
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Vendor") {
            self.vendor = dict["Vendor"] as! String
        }
    }
}

public class DescribeEslDevicesResponseBody : Tea.TeaModel {
    public class EslDevices : Tea.TeaModel {
        public class EslDeviceInfo : Tea.TeaModel {
            public var batteryLevel: Int32?

            public var beBind: Bool?

            public var companyId: String?

            public var connectAp: String?

            public var eslBarCode: String?

            public var eslStatus: String?

            public var itemActionPrice: Int32?

            public var itemBarCode: String?

            public var itemId: Int64?

            public var itemPriceUnit: String?

            public var itemTitle: String?

            public var lastCommunicateTime: String?

            public var mac: String?

            public var model: String?

            public var positionCode: String?

            public var screenHeight: Int32?

            public var screenWidth: Int32?

            public var shelfCode: String?

            public var storeId: String?

            public var type: String?

            public var vendor: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.batteryLevel != nil {
                    map["BatteryLevel"] = self.batteryLevel!
                }
                if self.beBind != nil {
                    map["BeBind"] = self.beBind!
                }
                if self.companyId != nil {
                    map["CompanyId"] = self.companyId!
                }
                if self.connectAp != nil {
                    map["ConnectAp"] = self.connectAp!
                }
                if self.eslBarCode != nil {
                    map["EslBarCode"] = self.eslBarCode!
                }
                if self.eslStatus != nil {
                    map["EslStatus"] = self.eslStatus!
                }
                if self.itemActionPrice != nil {
                    map["ItemActionPrice"] = self.itemActionPrice!
                }
                if self.itemBarCode != nil {
                    map["ItemBarCode"] = self.itemBarCode!
                }
                if self.itemId != nil {
                    map["ItemId"] = self.itemId!
                }
                if self.itemPriceUnit != nil {
                    map["ItemPriceUnit"] = self.itemPriceUnit!
                }
                if self.itemTitle != nil {
                    map["ItemTitle"] = self.itemTitle!
                }
                if self.lastCommunicateTime != nil {
                    map["LastCommunicateTime"] = self.lastCommunicateTime!
                }
                if self.mac != nil {
                    map["Mac"] = self.mac!
                }
                if self.model != nil {
                    map["Model"] = self.model!
                }
                if self.positionCode != nil {
                    map["PositionCode"] = self.positionCode!
                }
                if self.screenHeight != nil {
                    map["ScreenHeight"] = self.screenHeight!
                }
                if self.screenWidth != nil {
                    map["ScreenWidth"] = self.screenWidth!
                }
                if self.shelfCode != nil {
                    map["ShelfCode"] = self.shelfCode!
                }
                if self.storeId != nil {
                    map["StoreId"] = self.storeId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.vendor != nil {
                    map["Vendor"] = self.vendor!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BatteryLevel") {
                    self.batteryLevel = dict["BatteryLevel"] as! Int32
                }
                if dict.keys.contains("BeBind") {
                    self.beBind = dict["BeBind"] as! Bool
                }
                if dict.keys.contains("CompanyId") {
                    self.companyId = dict["CompanyId"] as! String
                }
                if dict.keys.contains("ConnectAp") {
                    self.connectAp = dict["ConnectAp"] as! String
                }
                if dict.keys.contains("EslBarCode") {
                    self.eslBarCode = dict["EslBarCode"] as! String
                }
                if dict.keys.contains("EslStatus") {
                    self.eslStatus = dict["EslStatus"] as! String
                }
                if dict.keys.contains("ItemActionPrice") {
                    self.itemActionPrice = dict["ItemActionPrice"] as! Int32
                }
                if dict.keys.contains("ItemBarCode") {
                    self.itemBarCode = dict["ItemBarCode"] as! String
                }
                if dict.keys.contains("ItemId") {
                    self.itemId = dict["ItemId"] as! Int64
                }
                if dict.keys.contains("ItemPriceUnit") {
                    self.itemPriceUnit = dict["ItemPriceUnit"] as! String
                }
                if dict.keys.contains("ItemTitle") {
                    self.itemTitle = dict["ItemTitle"] as! String
                }
                if dict.keys.contains("LastCommunicateTime") {
                    self.lastCommunicateTime = dict["LastCommunicateTime"] as! String
                }
                if dict.keys.contains("Mac") {
                    self.mac = dict["Mac"] as! String
                }
                if dict.keys.contains("Model") {
                    self.model = dict["Model"] as! String
                }
                if dict.keys.contains("PositionCode") {
                    self.positionCode = dict["PositionCode"] as! String
                }
                if dict.keys.contains("ScreenHeight") {
                    self.screenHeight = dict["ScreenHeight"] as! Int32
                }
                if dict.keys.contains("ScreenWidth") {
                    self.screenWidth = dict["ScreenWidth"] as! Int32
                }
                if dict.keys.contains("ShelfCode") {
                    self.shelfCode = dict["ShelfCode"] as! String
                }
                if dict.keys.contains("StoreId") {
                    self.storeId = dict["StoreId"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Vendor") {
                    self.vendor = dict["Vendor"] as! String
                }
            }
        }
        public var eslDeviceInfo: [DescribeEslDevicesResponseBody.EslDevices.EslDeviceInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eslDeviceInfo != nil {
                var tmp : [Any] = []
                for k in self.eslDeviceInfo! {
                    tmp.append(k.toMap())
                }
                map["EslDeviceInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EslDeviceInfo") {
                var tmp : [DescribeEslDevicesResponseBody.EslDevices.EslDeviceInfo] = []
                for v in dict["EslDeviceInfo"] as! [Any] {
                    var model = DescribeEslDevicesResponseBody.EslDevices.EslDeviceInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.eslDeviceInfo = tmp
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var eslDevices: DescribeEslDevicesResponseBody.EslDevices?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.eslDevices?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.eslDevices != nil {
            map["EslDevices"] = self.eslDevices?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("EslDevices") {
            var model = DescribeEslDevicesResponseBody.EslDevices()
            model.fromMap(dict["EslDevices"] as! [String: Any])
            self.eslDevices = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeEslDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEslDevicesResponseBody?

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
            var model = DescribeEslDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeItemsRequest : Tea.TeaModel {
    public var bePromotion: Bool?

    public var itemBarCode: String?

    public var itemId: Int64?

    public var itemTitle: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var skuId: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bePromotion != nil {
            map["BePromotion"] = self.bePromotion!
        }
        if self.itemBarCode != nil {
            map["ItemBarCode"] = self.itemBarCode!
        }
        if self.itemId != nil {
            map["ItemId"] = self.itemId!
        }
        if self.itemTitle != nil {
            map["ItemTitle"] = self.itemTitle!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.skuId != nil {
            map["SkuId"] = self.skuId!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BePromotion") {
            self.bePromotion = dict["BePromotion"] as! Bool
        }
        if dict.keys.contains("ItemBarCode") {
            self.itemBarCode = dict["ItemBarCode"] as! String
        }
        if dict.keys.contains("ItemId") {
            self.itemId = dict["ItemId"] as! Int64
        }
        if dict.keys.contains("ItemTitle") {
            self.itemTitle = dict["ItemTitle"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SkuId") {
            self.skuId = dict["SkuId"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class DescribeItemsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class ItemInfo : Tea.TeaModel {
            public var actionPrice: Int32?

            public var bePromotion: Bool?

            public var beSourceCode: Bool?

            public var brandName: String?

            public var categoryName: String?

            public var companyId: String?

            public var customizeFeatureA: String?

            public var customizeFeatureB: String?

            public var customizeFeatureC: String?

            public var customizeFeatureD: String?

            public var customizeFeatureE: String?

            public var customizeFeatureF: String?

            public var customizeFeatureG: String?

            public var customizeFeatureH: String?

            public var customizeFeatureI: String?

            public var customizeFeatureJ: String?

            public var energyEfficiency: String?

            public var extraAttribute: String?

            public var forestFirstId: String?

            public var forestSecondId: String?

            public var itemBarCode: String?

            public var itemId: Int64?

            public var itemInfoIndex: Int32?

            public var itemQrCode: String?

            public var itemShortTitle: String?

            public var itemTitle: String?

            public var memberPrice: Int32?

            public var modelNumber: String?

            public var optionGroups: String?

            public var originalPrice: Int32?

            public var priceUnit: String?

            public var productionPlace: String?

            public var promotionEnd: String?

            public var promotionReason: String?

            public var promotionStart: String?

            public var promotionText: String?

            public var rank: String?

            public var saleSpec: String?

            public var skuId: String?

            public var sourceCode: String?

            public var storeId: String?

            public var suggestPrice: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.actionPrice != nil {
                    map["ActionPrice"] = self.actionPrice!
                }
                if self.bePromotion != nil {
                    map["BePromotion"] = self.bePromotion!
                }
                if self.beSourceCode != nil {
                    map["BeSourceCode"] = self.beSourceCode!
                }
                if self.brandName != nil {
                    map["BrandName"] = self.brandName!
                }
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.companyId != nil {
                    map["CompanyId"] = self.companyId!
                }
                if self.customizeFeatureA != nil {
                    map["CustomizeFeatureA"] = self.customizeFeatureA!
                }
                if self.customizeFeatureB != nil {
                    map["CustomizeFeatureB"] = self.customizeFeatureB!
                }
                if self.customizeFeatureC != nil {
                    map["CustomizeFeatureC"] = self.customizeFeatureC!
                }
                if self.customizeFeatureD != nil {
                    map["CustomizeFeatureD"] = self.customizeFeatureD!
                }
                if self.customizeFeatureE != nil {
                    map["CustomizeFeatureE"] = self.customizeFeatureE!
                }
                if self.customizeFeatureF != nil {
                    map["CustomizeFeatureF"] = self.customizeFeatureF!
                }
                if self.customizeFeatureG != nil {
                    map["CustomizeFeatureG"] = self.customizeFeatureG!
                }
                if self.customizeFeatureH != nil {
                    map["CustomizeFeatureH"] = self.customizeFeatureH!
                }
                if self.customizeFeatureI != nil {
                    map["CustomizeFeatureI"] = self.customizeFeatureI!
                }
                if self.customizeFeatureJ != nil {
                    map["CustomizeFeatureJ"] = self.customizeFeatureJ!
                }
                if self.energyEfficiency != nil {
                    map["EnergyEfficiency"] = self.energyEfficiency!
                }
                if self.extraAttribute != nil {
                    map["ExtraAttribute"] = self.extraAttribute!
                }
                if self.forestFirstId != nil {
                    map["ForestFirstId"] = self.forestFirstId!
                }
                if self.forestSecondId != nil {
                    map["ForestSecondId"] = self.forestSecondId!
                }
                if self.itemBarCode != nil {
                    map["ItemBarCode"] = self.itemBarCode!
                }
                if self.itemId != nil {
                    map["ItemId"] = self.itemId!
                }
                if self.itemInfoIndex != nil {
                    map["ItemInfoIndex"] = self.itemInfoIndex!
                }
                if self.itemQrCode != nil {
                    map["ItemQrCode"] = self.itemQrCode!
                }
                if self.itemShortTitle != nil {
                    map["ItemShortTitle"] = self.itemShortTitle!
                }
                if self.itemTitle != nil {
                    map["ItemTitle"] = self.itemTitle!
                }
                if self.memberPrice != nil {
                    map["MemberPrice"] = self.memberPrice!
                }
                if self.modelNumber != nil {
                    map["ModelNumber"] = self.modelNumber!
                }
                if self.optionGroups != nil {
                    map["OptionGroups"] = self.optionGroups!
                }
                if self.originalPrice != nil {
                    map["OriginalPrice"] = self.originalPrice!
                }
                if self.priceUnit != nil {
                    map["PriceUnit"] = self.priceUnit!
                }
                if self.productionPlace != nil {
                    map["ProductionPlace"] = self.productionPlace!
                }
                if self.promotionEnd != nil {
                    map["PromotionEnd"] = self.promotionEnd!
                }
                if self.promotionReason != nil {
                    map["PromotionReason"] = self.promotionReason!
                }
                if self.promotionStart != nil {
                    map["PromotionStart"] = self.promotionStart!
                }
                if self.promotionText != nil {
                    map["PromotionText"] = self.promotionText!
                }
                if self.rank != nil {
                    map["Rank"] = self.rank!
                }
                if self.saleSpec != nil {
                    map["SaleSpec"] = self.saleSpec!
                }
                if self.skuId != nil {
                    map["SkuId"] = self.skuId!
                }
                if self.sourceCode != nil {
                    map["SourceCode"] = self.sourceCode!
                }
                if self.storeId != nil {
                    map["StoreId"] = self.storeId!
                }
                if self.suggestPrice != nil {
                    map["SuggestPrice"] = self.suggestPrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActionPrice") {
                    self.actionPrice = dict["ActionPrice"] as! Int32
                }
                if dict.keys.contains("BePromotion") {
                    self.bePromotion = dict["BePromotion"] as! Bool
                }
                if dict.keys.contains("BeSourceCode") {
                    self.beSourceCode = dict["BeSourceCode"] as! Bool
                }
                if dict.keys.contains("BrandName") {
                    self.brandName = dict["BrandName"] as! String
                }
                if dict.keys.contains("CategoryName") {
                    self.categoryName = dict["CategoryName"] as! String
                }
                if dict.keys.contains("CompanyId") {
                    self.companyId = dict["CompanyId"] as! String
                }
                if dict.keys.contains("CustomizeFeatureA") {
                    self.customizeFeatureA = dict["CustomizeFeatureA"] as! String
                }
                if dict.keys.contains("CustomizeFeatureB") {
                    self.customizeFeatureB = dict["CustomizeFeatureB"] as! String
                }
                if dict.keys.contains("CustomizeFeatureC") {
                    self.customizeFeatureC = dict["CustomizeFeatureC"] as! String
                }
                if dict.keys.contains("CustomizeFeatureD") {
                    self.customizeFeatureD = dict["CustomizeFeatureD"] as! String
                }
                if dict.keys.contains("CustomizeFeatureE") {
                    self.customizeFeatureE = dict["CustomizeFeatureE"] as! String
                }
                if dict.keys.contains("CustomizeFeatureF") {
                    self.customizeFeatureF = dict["CustomizeFeatureF"] as! String
                }
                if dict.keys.contains("CustomizeFeatureG") {
                    self.customizeFeatureG = dict["CustomizeFeatureG"] as! String
                }
                if dict.keys.contains("CustomizeFeatureH") {
                    self.customizeFeatureH = dict["CustomizeFeatureH"] as! String
                }
                if dict.keys.contains("CustomizeFeatureI") {
                    self.customizeFeatureI = dict["CustomizeFeatureI"] as! String
                }
                if dict.keys.contains("CustomizeFeatureJ") {
                    self.customizeFeatureJ = dict["CustomizeFeatureJ"] as! String
                }
                if dict.keys.contains("EnergyEfficiency") {
                    self.energyEfficiency = dict["EnergyEfficiency"] as! String
                }
                if dict.keys.contains("ExtraAttribute") {
                    self.extraAttribute = dict["ExtraAttribute"] as! String
                }
                if dict.keys.contains("ForestFirstId") {
                    self.forestFirstId = dict["ForestFirstId"] as! String
                }
                if dict.keys.contains("ForestSecondId") {
                    self.forestSecondId = dict["ForestSecondId"] as! String
                }
                if dict.keys.contains("ItemBarCode") {
                    self.itemBarCode = dict["ItemBarCode"] as! String
                }
                if dict.keys.contains("ItemId") {
                    self.itemId = dict["ItemId"] as! Int64
                }
                if dict.keys.contains("ItemInfoIndex") {
                    self.itemInfoIndex = dict["ItemInfoIndex"] as! Int32
                }
                if dict.keys.contains("ItemQrCode") {
                    self.itemQrCode = dict["ItemQrCode"] as! String
                }
                if dict.keys.contains("ItemShortTitle") {
                    self.itemShortTitle = dict["ItemShortTitle"] as! String
                }
                if dict.keys.contains("ItemTitle") {
                    self.itemTitle = dict["ItemTitle"] as! String
                }
                if dict.keys.contains("MemberPrice") {
                    self.memberPrice = dict["MemberPrice"] as! Int32
                }
                if dict.keys.contains("ModelNumber") {
                    self.modelNumber = dict["ModelNumber"] as! String
                }
                if dict.keys.contains("OptionGroups") {
                    self.optionGroups = dict["OptionGroups"] as! String
                }
                if dict.keys.contains("OriginalPrice") {
                    self.originalPrice = dict["OriginalPrice"] as! Int32
                }
                if dict.keys.contains("PriceUnit") {
                    self.priceUnit = dict["PriceUnit"] as! String
                }
                if dict.keys.contains("ProductionPlace") {
                    self.productionPlace = dict["ProductionPlace"] as! String
                }
                if dict.keys.contains("PromotionEnd") {
                    self.promotionEnd = dict["PromotionEnd"] as! String
                }
                if dict.keys.contains("PromotionReason") {
                    self.promotionReason = dict["PromotionReason"] as! String
                }
                if dict.keys.contains("PromotionStart") {
                    self.promotionStart = dict["PromotionStart"] as! String
                }
                if dict.keys.contains("PromotionText") {
                    self.promotionText = dict["PromotionText"] as! String
                }
                if dict.keys.contains("Rank") {
                    self.rank = dict["Rank"] as! String
                }
                if dict.keys.contains("SaleSpec") {
                    self.saleSpec = dict["SaleSpec"] as! String
                }
                if dict.keys.contains("SkuId") {
                    self.skuId = dict["SkuId"] as! String
                }
                if dict.keys.contains("SourceCode") {
                    self.sourceCode = dict["SourceCode"] as! String
                }
                if dict.keys.contains("StoreId") {
                    self.storeId = dict["StoreId"] as! String
                }
                if dict.keys.contains("SuggestPrice") {
                    self.suggestPrice = dict["SuggestPrice"] as! Int32
                }
            }
        }
        public var itemInfo: [DescribeItemsResponseBody.Items.ItemInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.itemInfo != nil {
                var tmp : [Any] = []
                for k in self.itemInfo! {
                    tmp.append(k.toMap())
                }
                map["ItemInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ItemInfo") {
                var tmp : [DescribeItemsResponseBody.Items.ItemInfo] = []
                for v in dict["ItemInfo"] as! [Any] {
                    var model = DescribeItemsResponseBody.Items.ItemInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.itemInfo = tmp
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var items: DescribeItemsResponseBody.Items?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Items") {
            var model = DescribeItemsResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeItemsResponseBody?

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
            var model = DescribeItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLogisticsRequest : Tea.TeaModel {
    public var orderId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
    }
}

public class DescribeLogisticsResponseBody : Tea.TeaModel {
    public class Logistics : Tea.TeaModel {
        public class LogisticsInfo : Tea.TeaModel {
            public var acceptStatus: Bool?

            public var apMacList: String?

            public var description_: String?

            public var eslMacList: String?

            public var hasSend: String?

            public var logisticsDocuments: String?

            public var orderId: String?

            public var poNumber: String?

            public var prNumber: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.acceptStatus != nil {
                    map["AcceptStatus"] = self.acceptStatus!
                }
                if self.apMacList != nil {
                    map["ApMacList"] = self.apMacList!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.eslMacList != nil {
                    map["EslMacList"] = self.eslMacList!
                }
                if self.hasSend != nil {
                    map["HasSend"] = self.hasSend!
                }
                if self.logisticsDocuments != nil {
                    map["LogisticsDocuments"] = self.logisticsDocuments!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.poNumber != nil {
                    map["PoNumber"] = self.poNumber!
                }
                if self.prNumber != nil {
                    map["PrNumber"] = self.prNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AcceptStatus") {
                    self.acceptStatus = dict["AcceptStatus"] as! Bool
                }
                if dict.keys.contains("ApMacList") {
                    self.apMacList = dict["ApMacList"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EslMacList") {
                    self.eslMacList = dict["EslMacList"] as! String
                }
                if dict.keys.contains("HasSend") {
                    self.hasSend = dict["HasSend"] as! String
                }
                if dict.keys.contains("LogisticsDocuments") {
                    self.logisticsDocuments = dict["LogisticsDocuments"] as! String
                }
                if dict.keys.contains("OrderId") {
                    self.orderId = dict["OrderId"] as! String
                }
                if dict.keys.contains("PoNumber") {
                    self.poNumber = dict["PoNumber"] as! String
                }
                if dict.keys.contains("PrNumber") {
                    self.prNumber = dict["PrNumber"] as! String
                }
            }
        }
        public var logisticsInfo: [DescribeLogisticsResponseBody.Logistics.LogisticsInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logisticsInfo != nil {
                var tmp : [Any] = []
                for k in self.logisticsInfo! {
                    tmp.append(k.toMap())
                }
                map["LogisticsInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogisticsInfo") {
                var tmp : [DescribeLogisticsResponseBody.Logistics.LogisticsInfo] = []
                for v in dict["LogisticsInfo"] as! [Any] {
                    var model = DescribeLogisticsResponseBody.Logistics.LogisticsInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.logisticsInfo = tmp
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var logistics: DescribeLogisticsResponseBody.Logistics?

    public var message: String?

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
        try self.logistics?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.logistics != nil {
            map["Logistics"] = self.logistics?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Logistics") {
            var model = DescribeLogisticsResponseBody.Logistics()
            model.fromMap(dict["Logistics"] as! [String: Any])
            self.logistics = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeLogisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLogisticsResponseBody?

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
            var model = DescribeLogisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePayOrdersRequest : Tea.TeaModel {
    public var fromDate: String?

    public var orderId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var toDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fromDate != nil {
            map["FromDate"] = self.fromDate!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.toDate != nil {
            map["ToDate"] = self.toDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FromDate") {
            self.fromDate = dict["FromDate"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ToDate") {
            self.toDate = dict["ToDate"] as! String
        }
    }
}

public class DescribePayOrdersResponseBody : Tea.TeaModel {
    public class PayOrders : Tea.TeaModel {
        public class PayOrderInfo : Tea.TeaModel {
            public var commodityCode: String?

            public var commodityName: String?

            public var detailName: String?

            public var gmtCreate: String?

            public var gmtPay: String?

            public var isAccepted: Bool?

            public var orderId: String?

            public var orderStatus: String?

            public var orderType: String?

            public var originalAmount: Double?

            public var payAmount: Double?

            public var quantity: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.commodityName != nil {
                    map["CommodityName"] = self.commodityName!
                }
                if self.detailName != nil {
                    map["DetailName"] = self.detailName!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtPay != nil {
                    map["GmtPay"] = self.gmtPay!
                }
                if self.isAccepted != nil {
                    map["IsAccepted"] = self.isAccepted!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.orderStatus != nil {
                    map["OrderStatus"] = self.orderStatus!
                }
                if self.orderType != nil {
                    map["OrderType"] = self.orderType!
                }
                if self.originalAmount != nil {
                    map["OriginalAmount"] = self.originalAmount!
                }
                if self.payAmount != nil {
                    map["PayAmount"] = self.payAmount!
                }
                if self.quantity != nil {
                    map["Quantity"] = self.quantity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommodityCode") {
                    self.commodityCode = dict["CommodityCode"] as! String
                }
                if dict.keys.contains("CommodityName") {
                    self.commodityName = dict["CommodityName"] as! String
                }
                if dict.keys.contains("DetailName") {
                    self.detailName = dict["DetailName"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtPay") {
                    self.gmtPay = dict["GmtPay"] as! String
                }
                if dict.keys.contains("IsAccepted") {
                    self.isAccepted = dict["IsAccepted"] as! Bool
                }
                if dict.keys.contains("OrderId") {
                    self.orderId = dict["OrderId"] as! String
                }
                if dict.keys.contains("OrderStatus") {
                    self.orderStatus = dict["OrderStatus"] as! String
                }
                if dict.keys.contains("OrderType") {
                    self.orderType = dict["OrderType"] as! String
                }
                if dict.keys.contains("OriginalAmount") {
                    self.originalAmount = dict["OriginalAmount"] as! Double
                }
                if dict.keys.contains("PayAmount") {
                    self.payAmount = dict["PayAmount"] as! Double
                }
                if dict.keys.contains("Quantity") {
                    self.quantity = dict["Quantity"] as! Int32
                }
            }
        }
        public var payOrderInfo: [DescribePayOrdersResponseBody.PayOrders.PayOrderInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.payOrderInfo != nil {
                var tmp : [Any] = []
                for k in self.payOrderInfo! {
                    tmp.append(k.toMap())
                }
                map["PayOrderInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PayOrderInfo") {
                var tmp : [DescribePayOrdersResponseBody.PayOrders.PayOrderInfo] = []
                for v in dict["PayOrderInfo"] as! [Any] {
                    var model = DescribePayOrdersResponseBody.PayOrders.PayOrderInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.payOrderInfo = tmp
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var payOrders: DescribePayOrdersResponseBody.PayOrders?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.payOrders?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.payOrders != nil {
            map["PayOrders"] = self.payOrders?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PayOrders") {
            var model = DescribePayOrdersResponseBody.PayOrders()
            model.fromMap(dict["PayOrders"] as! [String: Any])
            self.payOrders = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribePayOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePayOrdersResponseBody?

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
            var model = DescribePayOrdersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePlanogramRailsRequest : Tea.TeaModel {
    public var layer: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var railCode: String?

    public var shelf: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.layer != nil {
            map["Layer"] = self.layer!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.railCode != nil {
            map["RailCode"] = self.railCode!
        }
        if self.shelf != nil {
            map["Shelf"] = self.shelf!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Layer") {
            self.layer = dict["Layer"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RailCode") {
            self.railCode = dict["RailCode"] as! String
        }
        if dict.keys.contains("Shelf") {
            self.shelf = dict["Shelf"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class DescribePlanogramRailsResponseBody : Tea.TeaModel {
    public class PlanogramRailInfos : Tea.TeaModel {
        public var gapUnit: Int32?

        public var layer: String?

        public var railCode: String?

        public var shelf: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gapUnit != nil {
                map["GapUnit"] = self.gapUnit!
            }
            if self.layer != nil {
                map["Layer"] = self.layer!
            }
            if self.railCode != nil {
                map["RailCode"] = self.railCode!
            }
            if self.shelf != nil {
                map["Shelf"] = self.shelf!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GapUnit") {
                self.gapUnit = dict["GapUnit"] as! Int32
            }
            if dict.keys.contains("Layer") {
                self.layer = dict["Layer"] as! String
            }
            if dict.keys.contains("RailCode") {
                self.railCode = dict["RailCode"] as! String
            }
            if dict.keys.contains("Shelf") {
                self.shelf = dict["Shelf"] as! String
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var planogramRailInfos: [DescribePlanogramRailsResponseBody.PlanogramRailInfos]?

    public var requestId: String?

    public var storeId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.planogramRailInfos != nil {
            var tmp : [Any] = []
            for k in self.planogramRailInfos! {
                tmp.append(k.toMap())
            }
            map["PlanogramRailInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PlanogramRailInfos") {
            var tmp : [DescribePlanogramRailsResponseBody.PlanogramRailInfos] = []
            for v in dict["PlanogramRailInfos"] as! [Any] {
                var model = DescribePlanogramRailsResponseBody.PlanogramRailInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.planogramRailInfos = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribePlanogramRailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePlanogramRailsResponseBody?

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
            var model = DescribePlanogramRailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeStoresRequest : Tea.TeaModel {
    public var brand: String?

    public var companyId: String?

    public var fromDate: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var storeId: String?

    public var storeName: String?

    public var toDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.brand != nil {
            map["Brand"] = self.brand!
        }
        if self.companyId != nil {
            map["CompanyId"] = self.companyId!
        }
        if self.fromDate != nil {
            map["FromDate"] = self.fromDate!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.storeName != nil {
            map["StoreName"] = self.storeName!
        }
        if self.toDate != nil {
            map["ToDate"] = self.toDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Brand") {
            self.brand = dict["Brand"] as! String
        }
        if dict.keys.contains("CompanyId") {
            self.companyId = dict["CompanyId"] as! String
        }
        if dict.keys.contains("FromDate") {
            self.fromDate = dict["FromDate"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("StoreName") {
            self.storeName = dict["StoreName"] as! String
        }
        if dict.keys.contains("ToDate") {
            self.toDate = dict["ToDate"] as! String
        }
    }
}

public class DescribeStoresResponseBody : Tea.TeaModel {
    public class Stores : Tea.TeaModel {
        public class StoreInfo : Tea.TeaModel {
            public var brand: String?

            public var comments: String?

            public var companyId: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var groups: String?

            public var level: String?

            public var outId: String?

            public var parentId: String?

            public var phone: String?

            public var storeId: String?

            public var storeName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.brand != nil {
                    map["Brand"] = self.brand!
                }
                if self.comments != nil {
                    map["Comments"] = self.comments!
                }
                if self.companyId != nil {
                    map["CompanyId"] = self.companyId!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.groups != nil {
                    map["Groups"] = self.groups!
                }
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.outId != nil {
                    map["OutId"] = self.outId!
                }
                if self.parentId != nil {
                    map["ParentId"] = self.parentId!
                }
                if self.phone != nil {
                    map["Phone"] = self.phone!
                }
                if self.storeId != nil {
                    map["StoreId"] = self.storeId!
                }
                if self.storeName != nil {
                    map["StoreName"] = self.storeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Brand") {
                    self.brand = dict["Brand"] as! String
                }
                if dict.keys.contains("Comments") {
                    self.comments = dict["Comments"] as! String
                }
                if dict.keys.contains("CompanyId") {
                    self.companyId = dict["CompanyId"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Groups") {
                    self.groups = dict["Groups"] as! String
                }
                if dict.keys.contains("Level") {
                    self.level = dict["Level"] as! String
                }
                if dict.keys.contains("OutId") {
                    self.outId = dict["OutId"] as! String
                }
                if dict.keys.contains("ParentId") {
                    self.parentId = dict["ParentId"] as! String
                }
                if dict.keys.contains("Phone") {
                    self.phone = dict["Phone"] as! String
                }
                if dict.keys.contains("StoreId") {
                    self.storeId = dict["StoreId"] as! String
                }
                if dict.keys.contains("StoreName") {
                    self.storeName = dict["StoreName"] as! String
                }
            }
        }
        public var storeInfo: [DescribeStoresResponseBody.Stores.StoreInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.storeInfo != nil {
                var tmp : [Any] = []
                for k in self.storeInfo! {
                    tmp.append(k.toMap())
                }
                map["StoreInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("StoreInfo") {
                var tmp : [DescribeStoresResponseBody.Stores.StoreInfo] = []
                for v in dict["StoreInfo"] as! [Any] {
                    var model = DescribeStoresResponseBody.Stores.StoreInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.storeInfo = tmp
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var stores: DescribeStoresResponseBody.Stores?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stores?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.stores != nil {
            map["Stores"] = self.stores?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Stores") {
            var model = DescribeStoresResponseBody.Stores()
            model.fromMap(dict["Stores"] as! [String: Any])
            self.stores = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeStoresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStoresResponseBody?

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
            var model = DescribeStoresResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUserLogRequest : Tea.TeaModel {
    public var eslBarCode: String?

    public var fromDate: String?

    public var itemBarCode: String?

    public var itemId: Int64?

    public var itemTitle: String?

    public var operateStatus: String?

    public var operateType: String?

    public var operateUserId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var reverse: Bool?

    public var storeId: String?

    public var toDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eslBarCode != nil {
            map["EslBarCode"] = self.eslBarCode!
        }
        if self.fromDate != nil {
            map["FromDate"] = self.fromDate!
        }
        if self.itemBarCode != nil {
            map["ItemBarCode"] = self.itemBarCode!
        }
        if self.itemId != nil {
            map["ItemId"] = self.itemId!
        }
        if self.itemTitle != nil {
            map["ItemTitle"] = self.itemTitle!
        }
        if self.operateStatus != nil {
            map["OperateStatus"] = self.operateStatus!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.operateUserId != nil {
            map["OperateUserId"] = self.operateUserId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.toDate != nil {
            map["ToDate"] = self.toDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EslBarCode") {
            self.eslBarCode = dict["EslBarCode"] as! String
        }
        if dict.keys.contains("FromDate") {
            self.fromDate = dict["FromDate"] as! String
        }
        if dict.keys.contains("ItemBarCode") {
            self.itemBarCode = dict["ItemBarCode"] as! String
        }
        if dict.keys.contains("ItemId") {
            self.itemId = dict["ItemId"] as! Int64
        }
        if dict.keys.contains("ItemTitle") {
            self.itemTitle = dict["ItemTitle"] as! String
        }
        if dict.keys.contains("OperateStatus") {
            self.operateStatus = dict["OperateStatus"] as! String
        }
        if dict.keys.contains("OperateType") {
            self.operateType = dict["OperateType"] as! String
        }
        if dict.keys.contains("OperateUserId") {
            self.operateUserId = dict["OperateUserId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Reverse") {
            self.reverse = dict["Reverse"] as! Bool
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("ToDate") {
            self.toDate = dict["ToDate"] as! String
        }
    }
}

public class DescribeUserLogResponseBody : Tea.TeaModel {
    public class UserLogs : Tea.TeaModel {
        public class UserLogInfo : Tea.TeaModel {
            public var eslBarCode: String?

            public var itemActionPrice: Int32?

            public var itemBarCode: String?

            public var itemId: Int64?

            public var itemTitle: String?

            public var mac: String?

            public var operateStatus: String?

            public var operateTime: String?

            public var operateType: String?

            public var operateUserId: Int64?

            public var shelfCode: String?

            public var storeId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.eslBarCode != nil {
                    map["EslBarCode"] = self.eslBarCode!
                }
                if self.itemActionPrice != nil {
                    map["ItemActionPrice"] = self.itemActionPrice!
                }
                if self.itemBarCode != nil {
                    map["ItemBarCode"] = self.itemBarCode!
                }
                if self.itemId != nil {
                    map["ItemId"] = self.itemId!
                }
                if self.itemTitle != nil {
                    map["ItemTitle"] = self.itemTitle!
                }
                if self.mac != nil {
                    map["Mac"] = self.mac!
                }
                if self.operateStatus != nil {
                    map["OperateStatus"] = self.operateStatus!
                }
                if self.operateTime != nil {
                    map["OperateTime"] = self.operateTime!
                }
                if self.operateType != nil {
                    map["OperateType"] = self.operateType!
                }
                if self.operateUserId != nil {
                    map["OperateUserId"] = self.operateUserId!
                }
                if self.shelfCode != nil {
                    map["ShelfCode"] = self.shelfCode!
                }
                if self.storeId != nil {
                    map["StoreId"] = self.storeId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EslBarCode") {
                    self.eslBarCode = dict["EslBarCode"] as! String
                }
                if dict.keys.contains("ItemActionPrice") {
                    self.itemActionPrice = dict["ItemActionPrice"] as! Int32
                }
                if dict.keys.contains("ItemBarCode") {
                    self.itemBarCode = dict["ItemBarCode"] as! String
                }
                if dict.keys.contains("ItemId") {
                    self.itemId = dict["ItemId"] as! Int64
                }
                if dict.keys.contains("ItemTitle") {
                    self.itemTitle = dict["ItemTitle"] as! String
                }
                if dict.keys.contains("Mac") {
                    self.mac = dict["Mac"] as! String
                }
                if dict.keys.contains("OperateStatus") {
                    self.operateStatus = dict["OperateStatus"] as! String
                }
                if dict.keys.contains("OperateTime") {
                    self.operateTime = dict["OperateTime"] as! String
                }
                if dict.keys.contains("OperateType") {
                    self.operateType = dict["OperateType"] as! String
                }
                if dict.keys.contains("OperateUserId") {
                    self.operateUserId = dict["OperateUserId"] as! Int64
                }
                if dict.keys.contains("ShelfCode") {
                    self.shelfCode = dict["ShelfCode"] as! String
                }
                if dict.keys.contains("StoreId") {
                    self.storeId = dict["StoreId"] as! String
                }
            }
        }
        public var userLogInfo: [DescribeUserLogResponseBody.UserLogs.UserLogInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userLogInfo != nil {
                var tmp : [Any] = []
                for k in self.userLogInfo! {
                    tmp.append(k.toMap())
                }
                map["UserLogInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserLogInfo") {
                var tmp : [DescribeUserLogResponseBody.UserLogs.UserLogInfo] = []
                for v in dict["UserLogInfo"] as! [Any] {
                    var model = DescribeUserLogResponseBody.UserLogs.UserLogInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userLogInfo = tmp
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var userLogs: DescribeUserLogResponseBody.UserLogs?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userLogs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.userLogs != nil {
            map["UserLogs"] = self.userLogs?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("UserLogs") {
            var model = DescribeUserLogResponseBody.UserLogs()
            model.fromMap(dict["UserLogs"] as! [String: Any])
            self.userLogs = model
        }
    }
}

public class DescribeUserLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserLogResponseBody?

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
            var model = DescribeUserLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUsersRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var userId: String?

    public var userName: String?

    public var userType: String?

    public override init() {
        super.init()
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("UserType") {
            self.userType = dict["UserType"] as! String
        }
    }
}

public class DescribeUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class UserInfo : Tea.TeaModel {
            public var stores: String?

            public var userId: String?

            public var userName: String?

            public var userType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.stores != nil {
                    map["Stores"] = self.stores!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                if self.userType != nil {
                    map["UserType"] = self.userType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Stores") {
                    self.stores = dict["Stores"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
                if dict.keys.contains("UserType") {
                    self.userType = dict["UserType"] as! String
                }
            }
        }
        public var userInfo: [DescribeUsersResponseBody.Users.UserInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userInfo != nil {
                var tmp : [Any] = []
                for k in self.userInfo! {
                    tmp.append(k.toMap())
                }
                map["UserInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserInfo") {
                var tmp : [DescribeUsersResponseBody.Users.UserInfo] = []
                for v in dict["UserInfo"] as! [Any] {
                    var model = DescribeUsersResponseBody.Users.UserInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userInfo = tmp
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var users: DescribeUsersResponseBody.Users?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.users?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.users != nil {
            map["Users"] = self.users?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Users") {
            var model = DescribeUsersResponseBody.Users()
            model.fromMap(dict["Users"] as! [String: Any])
            self.users = model
        }
    }
}

public class DescribeUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUsersResponseBody?

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
            var model = DescribeUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCompanyResponseBody : Tea.TeaModel {
    public var bid: Int64?

    public var code: String?

    public var companyId: String?

    public var companyType: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var ownerId: Int64?

    public var requestId: String?

    public var status: String?

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
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.companyId != nil {
            map["CompanyId"] = self.companyId!
        }
        if self.companyType != nil {
            map["CompanyType"] = self.companyType!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bid") {
            self.bid = dict["Bid"] as! Int64
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CompanyId") {
            self.companyId = dict["CompanyId"] as! String
        }
        if dict.keys.contains("CompanyType") {
            self.companyType = dict["CompanyType"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetCompanyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCompanyResponseBody?

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
            var model = GetCompanyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserRequest : Tea.TeaModel {
    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var stores: String?

        public var userId: String?

        public var userName: String?

        public var userType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.stores != nil {
                map["Stores"] = self.stores!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.userType != nil {
                map["UserType"] = self.userType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Stores") {
                self.stores = dict["Stores"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("UserType") {
                self.userType = dict["UserType"] as! String
            }
        }
    }
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var user: GetUserResponseBody.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("User") {
            var model = GetUserResponseBody.User()
            model.fromMap(dict["User"] as! [String: Any])
            self.user = model
        }
    }
}

public class GetUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserResponseBody?

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
            var model = GetUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MapPlanogramRailRequest : Tea.TeaModel {
    public var layer: String?

    public var railCode: String?

    public var shelf: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.layer != nil {
            map["Layer"] = self.layer!
        }
        if self.railCode != nil {
            map["RailCode"] = self.railCode!
        }
        if self.shelf != nil {
            map["Shelf"] = self.shelf!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Layer") {
            self.layer = dict["Layer"] as! String
        }
        if dict.keys.contains("RailCode") {
            self.railCode = dict["RailCode"] as! String
        }
        if dict.keys.contains("Shelf") {
            self.shelf = dict["Shelf"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class MapPlanogramRailResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class MapPlanogramRailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MapPlanogramRailResponseBody?

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
            var model = MapPlanogramRailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshTaobaoItemRequest : Tea.TeaModel {
    public var outerId: String?

    public var skuId: String?

    public var storeId: String?

    public var taobaoItemId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outerId != nil {
            map["OuterId"] = self.outerId!
        }
        if self.skuId != nil {
            map["SkuId"] = self.skuId!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.taobaoItemId != nil {
            map["TaobaoItemId"] = self.taobaoItemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OuterId") {
            self.outerId = dict["OuterId"] as! String
        }
        if dict.keys.contains("SkuId") {
            self.skuId = dict["SkuId"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("TaobaoItemId") {
            self.taobaoItemId = dict["TaobaoItemId"] as! String
        }
    }
}

public class RefreshTaobaoItemResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RefreshTaobaoItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshTaobaoItemResponseBody?

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
            var model = RefreshTaobaoItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnassignUserRequest : Tea.TeaModel {
    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class UnassignUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UnassignUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnassignUserResponseBody?

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
            var model = UnassignUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindEslDeviceRequest : Tea.TeaModel {
    public var eslBarCode: String?

    public var itemBarCode: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eslBarCode != nil {
            map["EslBarCode"] = self.eslBarCode!
        }
        if self.itemBarCode != nil {
            map["ItemBarCode"] = self.itemBarCode!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EslBarCode") {
            self.eslBarCode = dict["EslBarCode"] as! String
        }
        if dict.keys.contains("ItemBarCode") {
            self.itemBarCode = dict["ItemBarCode"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class UnbindEslDeviceResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UnbindEslDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindEslDeviceResponseBody?

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
            var model = UnbindEslDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindEslDeviceShelfRequest : Tea.TeaModel {
    public var eslBarCode: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eslBarCode != nil {
            map["EslBarCode"] = self.eslBarCode!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EslBarCode") {
            self.eslBarCode = dict["EslBarCode"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class UnbindEslDeviceShelfResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UnbindEslDeviceShelfResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindEslDeviceShelfResponseBody?

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
            var model = UnbindEslDeviceShelfResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnmapPlanogramRailRequest : Tea.TeaModel {
    public var railCode: String?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.railCode != nil {
            map["RailCode"] = self.railCode!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RailCode") {
            self.railCode = dict["RailCode"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class UnmapPlanogramRailResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UnmapPlanogramRailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnmapPlanogramRailResponseBody?

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
            var model = UnmapPlanogramRailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEslDeviceLightRequest : Tea.TeaModel {
    public var eslBarCode: String?

    public var frequency: String?

    public var itemBarCode: String?

    public var ledColor: String?

    public var lightUpTime: Int32?

    public var storeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eslBarCode != nil {
            map["EslBarCode"] = self.eslBarCode!
        }
        if self.frequency != nil {
            map["Frequency"] = self.frequency!
        }
        if self.itemBarCode != nil {
            map["ItemBarCode"] = self.itemBarCode!
        }
        if self.ledColor != nil {
            map["LedColor"] = self.ledColor!
        }
        if self.lightUpTime != nil {
            map["LightUpTime"] = self.lightUpTime!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EslBarCode") {
            self.eslBarCode = dict["EslBarCode"] as! String
        }
        if dict.keys.contains("Frequency") {
            self.frequency = dict["Frequency"] as! String
        }
        if dict.keys.contains("ItemBarCode") {
            self.itemBarCode = dict["ItemBarCode"] as! String
        }
        if dict.keys.contains("LedColor") {
            self.ledColor = dict["LedColor"] as! String
        }
        if dict.keys.contains("LightUpTime") {
            self.lightUpTime = dict["LightUpTime"] as! Int32
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
    }
}

public class UpdateEslDeviceLightResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var failCount: Int64?

    public var failEslBarCodes: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var successCount: Int64?

    public override init() {
        super.init()
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
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.failCount != nil {
            map["FailCount"] = self.failCount!
        }
        if self.failEslBarCodes != nil {
            map["FailEslBarCodes"] = self.failEslBarCodes!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.successCount != nil {
            map["SuccessCount"] = self.successCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("FailCount") {
            self.failCount = dict["FailCount"] as! Int64
        }
        if dict.keys.contains("FailEslBarCodes") {
            self.failEslBarCodes = dict["FailEslBarCodes"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("SuccessCount") {
            self.successCount = dict["SuccessCount"] as! Int64
        }
    }
}

public class UpdateEslDeviceLightResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEslDeviceLightResponseBody?

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
            var model = UpdateEslDeviceLightResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateStoreRequest : Tea.TeaModel {
    public var brand: String?

    public var comments: String?

    public var groups: String?

    public var outId: String?

    public var phone: String?

    public var storeId: String?

    public var storeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.brand != nil {
            map["Brand"] = self.brand!
        }
        if self.comments != nil {
            map["Comments"] = self.comments!
        }
        if self.groups != nil {
            map["Groups"] = self.groups!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.storeId != nil {
            map["StoreId"] = self.storeId!
        }
        if self.storeName != nil {
            map["StoreName"] = self.storeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Brand") {
            self.brand = dict["Brand"] as! String
        }
        if dict.keys.contains("Comments") {
            self.comments = dict["Comments"] as! String
        }
        if dict.keys.contains("Groups") {
            self.groups = dict["Groups"] as! String
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("Phone") {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("StoreId") {
            self.storeId = dict["StoreId"] as! String
        }
        if dict.keys.contains("StoreName") {
            self.storeName = dict["StoreName"] as! String
        }
    }
}

public class UpdateStoreResponseBody : Tea.TeaModel {
    public var code: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateStoreResponseBody?

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
            var model = UpdateStoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
