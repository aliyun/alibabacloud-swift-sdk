import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetAgeDistributionRequest : Tea.TeaModel {
    public var cateIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cateIds != nil {
            map["CateIds"] = self.cateIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CateIds") {
            self.cateIds = dict["CateIds"] as! String
        }
    }
}

public class GetAgeDistributionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var ageRange: String?

        public var saleNumbers: Int64?

        public var searchNumbers: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ageRange != nil {
                map["AgeRange"] = self.ageRange!
            }
            if self.saleNumbers != nil {
                map["SaleNumbers"] = self.saleNumbers!
            }
            if self.searchNumbers != nil {
                map["SearchNumbers"] = self.searchNumbers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgeRange") {
                self.ageRange = dict["AgeRange"] as! String
            }
            if dict.keys.contains("SaleNumbers") {
                self.saleNumbers = dict["SaleNumbers"] as! Int64
            }
            if dict.keys.contains("SearchNumbers") {
                self.searchNumbers = dict["SearchNumbers"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: [GetAgeDistributionResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var successResponse: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successResponse != nil {
            map["SuccessResponse"] = self.successResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetAgeDistributionResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessResponse") {
            self.successResponse = dict["SuccessResponse"] as! String
        }
    }
}

public class GetAgeDistributionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAgeDistributionResponseBody?

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
            var model = GetAgeDistributionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAllTrendCategoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var categoryId: Int64?

        public var categoryLevel: Int32?

        public var categoryName: String?

        public var childCategory: [Any]?

        public var superCategoryName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryLevel != nil {
                map["CategoryLevel"] = self.categoryLevel!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.childCategory != nil {
                map["ChildCategory"] = self.childCategory!
            }
            if self.superCategoryName != nil {
                map["SuperCategoryName"] = self.superCategoryName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! Int64
            }
            if dict.keys.contains("CategoryLevel") {
                self.categoryLevel = dict["CategoryLevel"] as! Int32
            }
            if dict.keys.contains("CategoryName") {
                self.categoryName = dict["CategoryName"] as! String
            }
            if dict.keys.contains("ChildCategory") {
                self.childCategory = dict["ChildCategory"] as! [Any]
            }
            if dict.keys.contains("SuperCategoryName") {
                self.superCategoryName = dict["SuperCategoryName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetAllTrendCategoryResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var successResponse: Bool?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successResponse != nil {
            map["SuccessResponse"] = self.successResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetAllTrendCategoryResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessResponse") {
            self.successResponse = dict["SuccessResponse"] as! Bool
        }
    }
}

public class GetAllTrendCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAllTrendCategoryResponseBody?

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
            var model = GetAllTrendCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCrowdLabelRequest : Tea.TeaModel {
    public var cateIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cateIds != nil {
            map["CateIds"] = self.cateIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CateIds") {
            self.cateIds = dict["CateIds"] as! String
        }
    }
}

public class GetCrowdLabelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var closingDate: String?

        public var labelName: String?

        public var orderAmount: Double?

        public var purchaseAmount: Double?

        public var searchVolume: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.closingDate != nil {
                map["ClosingDate"] = self.closingDate!
            }
            if self.labelName != nil {
                map["LabelName"] = self.labelName!
            }
            if self.orderAmount != nil {
                map["OrderAmount"] = self.orderAmount!
            }
            if self.purchaseAmount != nil {
                map["PurchaseAmount"] = self.purchaseAmount!
            }
            if self.searchVolume != nil {
                map["SearchVolume"] = self.searchVolume!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClosingDate") {
                self.closingDate = dict["ClosingDate"] as! String
            }
            if dict.keys.contains("LabelName") {
                self.labelName = dict["LabelName"] as! String
            }
            if dict.keys.contains("OrderAmount") {
                self.orderAmount = dict["OrderAmount"] as! Double
            }
            if dict.keys.contains("PurchaseAmount") {
                self.purchaseAmount = dict["PurchaseAmount"] as! Double
            }
            if dict.keys.contains("SearchVolume") {
                self.searchVolume = dict["SearchVolume"] as! Double
            }
        }
    }
    public var code: String?

    public var data: [GetCrowdLabelResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var successResponse: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successResponse != nil {
            map["SuccessResponse"] = self.successResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetCrowdLabelResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessResponse") {
            self.successResponse = dict["SuccessResponse"] as! String
        }
    }
}

public class GetCrowdLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCrowdLabelResponseBody?

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
            var model = GetCrowdLabelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCrowdReginRequest : Tea.TeaModel {
    public var cateIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cateIds != nil {
            map["CateIds"] = self.cateIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CateIds") {
            self.cateIds = dict["CateIds"] as! String
        }
    }
}

public class GetCrowdReginResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SaleNumbers : Tea.TeaModel {
            public var name: String?

            public var value: Int64?

            public override init() {
                super.init()
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
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Int64
                }
            }
        }
        public class SearchNumbers : Tea.TeaModel {
            public var name: String?

            public var value: Int64?

            public override init() {
                super.init()
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
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Int64
                }
            }
        }
        public var saleNumbers: [GetCrowdReginResponseBody.Data.SaleNumbers]?

        public var searchNumbers: [GetCrowdReginResponseBody.Data.SearchNumbers]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.saleNumbers != nil {
                var tmp : [Any] = []
                for k in self.saleNumbers! {
                    tmp.append(k.toMap())
                }
                map["SaleNumbers"] = tmp
            }
            if self.searchNumbers != nil {
                var tmp : [Any] = []
                for k in self.searchNumbers! {
                    tmp.append(k.toMap())
                }
                map["SearchNumbers"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SaleNumbers") {
                self.saleNumbers = dict["SaleNumbers"] as! [GetCrowdReginResponseBody.Data.SaleNumbers]
            }
            if dict.keys.contains("SearchNumbers") {
                self.searchNumbers = dict["SearchNumbers"] as! [GetCrowdReginResponseBody.Data.SearchNumbers]
            }
        }
    }
    public var code: String?

    public var data: GetCrowdReginResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var successResponse: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successResponse != nil {
            map["SuccessResponse"] = self.successResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetCrowdReginResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessResponse") {
            self.successResponse = dict["SuccessResponse"] as! Bool
        }
    }
}

public class GetCrowdReginResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCrowdReginResponseBody?

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
            var model = GetCrowdReginResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOpportunityMarketRequest : Tea.TeaModel {
    public var cateIds: String?

    public var timeDisplay: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cateIds != nil {
            map["CateIds"] = self.cateIds!
        }
        if self.timeDisplay != nil {
            map["TimeDisplay"] = self.timeDisplay!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CateIds") {
            self.cateIds = dict["CateIds"] as! String
        }
        if dict.keys.contains("TimeDisplay") {
            self.timeDisplay = dict["TimeDisplay"] as! Int64
        }
    }
}

public class GetOpportunityMarketResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cateName: String?

        public var opportunityIndex: Double?

        public var relativeCommodity: Double?

        public var relativeDischarge: Double?

        public var timeUnit: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cateName != nil {
                map["CateName"] = self.cateName!
            }
            if self.opportunityIndex != nil {
                map["OpportunityIndex"] = self.opportunityIndex!
            }
            if self.relativeCommodity != nil {
                map["RelativeCommodity"] = self.relativeCommodity!
            }
            if self.relativeDischarge != nil {
                map["RelativeDischarge"] = self.relativeDischarge!
            }
            if self.timeUnit != nil {
                map["TimeUnit"] = self.timeUnit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CateName") {
                self.cateName = dict["CateName"] as! String
            }
            if dict.keys.contains("OpportunityIndex") {
                self.opportunityIndex = dict["OpportunityIndex"] as! Double
            }
            if dict.keys.contains("RelativeCommodity") {
                self.relativeCommodity = dict["RelativeCommodity"] as! Double
            }
            if dict.keys.contains("RelativeDischarge") {
                self.relativeDischarge = dict["RelativeDischarge"] as! Double
            }
            if dict.keys.contains("TimeUnit") {
                self.timeUnit = dict["TimeUnit"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOpportunityMarketResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var successResponse: Bool?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successResponse != nil {
            map["SuccessResponse"] = self.successResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOpportunityMarketResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessResponse") {
            self.successResponse = dict["SuccessResponse"] as! Bool
        }
    }
}

public class GetOpportunityMarketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOpportunityMarketResponseBody?

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
            var model = GetOpportunityMarketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPriceRangeRequest : Tea.TeaModel {
    public var cateIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cateIds != nil {
            map["CateIds"] = self.cateIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CateIds") {
            self.cateIds = dict["CateIds"] as! String
        }
    }
}

public class GetPriceRangeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var closingDate: String?

        public var goodsSales: Int64?

        public var priceRange: String?

        public var salesVolume: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.closingDate != nil {
                map["ClosingDate"] = self.closingDate!
            }
            if self.goodsSales != nil {
                map["GoodsSales"] = self.goodsSales!
            }
            if self.priceRange != nil {
                map["PriceRange"] = self.priceRange!
            }
            if self.salesVolume != nil {
                map["SalesVolume"] = self.salesVolume!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClosingDate") {
                self.closingDate = dict["ClosingDate"] as! String
            }
            if dict.keys.contains("GoodsSales") {
                self.goodsSales = dict["GoodsSales"] as! Int64
            }
            if dict.keys.contains("PriceRange") {
                self.priceRange = dict["PriceRange"] as! String
            }
            if dict.keys.contains("SalesVolume") {
                self.salesVolume = dict["SalesVolume"] as! Double
            }
        }
    }
    public var code: String?

    public var data: [GetPriceRangeResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var successResponse: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successResponse != nil {
            map["SuccessResponse"] = self.successResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetPriceRangeResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessResponse") {
            self.successResponse = dict["SuccessResponse"] as! String
        }
    }
}

public class GetPriceRangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPriceRangeResponseBody?

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
            var model = GetPriceRangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSexRatioRequest : Tea.TeaModel {
    public var cateIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cateIds != nil {
            map["CateIds"] = self.cateIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CateIds") {
            self.cateIds = dict["CateIds"] as! String
        }
    }
}

public class GetSexRatioResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SaleNumbers : Tea.TeaModel {
            public var name: String?

            public var value: Int64?

            public override init() {
                super.init()
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
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Int64
                }
            }
        }
        public class SearchNumbers : Tea.TeaModel {
            public var name: String?

            public var value: Int64?

            public override init() {
                super.init()
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
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Int64
                }
            }
        }
        public var saleNumbers: [GetSexRatioResponseBody.Data.SaleNumbers]?

        public var searchNumbers: [GetSexRatioResponseBody.Data.SearchNumbers]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.saleNumbers != nil {
                var tmp : [Any] = []
                for k in self.saleNumbers! {
                    tmp.append(k.toMap())
                }
                map["SaleNumbers"] = tmp
            }
            if self.searchNumbers != nil {
                var tmp : [Any] = []
                for k in self.searchNumbers! {
                    tmp.append(k.toMap())
                }
                map["SearchNumbers"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SaleNumbers") {
                self.saleNumbers = dict["SaleNumbers"] as! [GetSexRatioResponseBody.Data.SaleNumbers]
            }
            if dict.keys.contains("SearchNumbers") {
                self.searchNumbers = dict["SearchNumbers"] as! [GetSexRatioResponseBody.Data.SearchNumbers]
            }
        }
    }
    public var code: String?

    public var data: GetSexRatioResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var successResponse: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successResponse != nil {
            map["SuccessResponse"] = self.successResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetSexRatioResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessResponse") {
            self.successResponse = dict["SuccessResponse"] as! String
        }
    }
}

public class GetSexRatioResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSexRatioResponseBody?

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
            var model = GetSexRatioResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStoreSalesVolumeTopRequest : Tea.TeaModel {
    public var cateIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cateIds != nil {
            map["CateIds"] = self.cateIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CateIds") {
            self.cateIds = dict["CateIds"] as! String
        }
    }
}

public class GetStoreSalesVolumeTopResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var shopName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.shopName != nil {
                map["ShopName"] = self.shopName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ShopName") {
                self.shopName = dict["ShopName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetStoreSalesVolumeTopResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var successResponse: Bool?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successResponse != nil {
            map["SuccessResponse"] = self.successResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetStoreSalesVolumeTopResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessResponse") {
            self.successResponse = dict["SuccessResponse"] as! Bool
        }
    }
}

public class GetStoreSalesVolumeTopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStoreSalesVolumeTopResponseBody?

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
            var model = GetStoreSalesVolumeTopResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStoreSearchTopRequest : Tea.TeaModel {
    public var cateIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cateIds != nil {
            map["CateIds"] = self.cateIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CateIds") {
            self.cateIds = dict["CateIds"] as! String
        }
    }
}

public class GetStoreSearchTopResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var shopName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.shopName != nil {
                map["ShopName"] = self.shopName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ShopName") {
                self.shopName = dict["ShopName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetStoreSearchTopResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var successResponse: Bool?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successResponse != nil {
            map["SuccessResponse"] = self.successResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetStoreSearchTopResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessResponse") {
            self.successResponse = dict["SuccessResponse"] as! Bool
        }
    }
}

public class GetStoreSearchTopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStoreSearchTopResponseBody?

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
            var model = GetStoreSearchTopResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStyleTopRequest : Tea.TeaModel {
    public var cateIds: String?

    public var sortOrder: Int64?

    public var timeDisplay: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cateIds != nil {
            map["CateIds"] = self.cateIds!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.timeDisplay != nil {
            map["TimeDisplay"] = self.timeDisplay!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CateIds") {
            self.cateIds = dict["CateIds"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! Int64
        }
        if dict.keys.contains("TimeDisplay") {
            self.timeDisplay = dict["TimeDisplay"] as! Int64
        }
    }
}

public class GetStyleTopResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cateName: String?

        public var color: String?

        public var images: [String]?

        public var material: String?

        public var productLink: String?

        public var salesVolume: Double?

        public var searchVolume: Double?

        public var style: String?

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
            if self.cateName != nil {
                map["CateName"] = self.cateName!
            }
            if self.color != nil {
                map["Color"] = self.color!
            }
            if self.images != nil {
                map["Images"] = self.images!
            }
            if self.material != nil {
                map["Material"] = self.material!
            }
            if self.productLink != nil {
                map["ProductLink"] = self.productLink!
            }
            if self.salesVolume != nil {
                map["SalesVolume"] = self.salesVolume!
            }
            if self.searchVolume != nil {
                map["SearchVolume"] = self.searchVolume!
            }
            if self.style != nil {
                map["Style"] = self.style!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CateName") {
                self.cateName = dict["CateName"] as! String
            }
            if dict.keys.contains("Color") {
                self.color = dict["Color"] as! String
            }
            if dict.keys.contains("Images") {
                self.images = dict["Images"] as! [String]
            }
            if dict.keys.contains("Material") {
                self.material = dict["Material"] as! String
            }
            if dict.keys.contains("ProductLink") {
                self.productLink = dict["ProductLink"] as! String
            }
            if dict.keys.contains("SalesVolume") {
                self.salesVolume = dict["SalesVolume"] as! Double
            }
            if dict.keys.contains("SearchVolume") {
                self.searchVolume = dict["SearchVolume"] as! Double
            }
            if dict.keys.contains("Style") {
                self.style = dict["Style"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetStyleTopResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var successResponse: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successResponse != nil {
            map["SuccessResponse"] = self.successResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetStyleTopResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessResponse") {
            self.successResponse = dict["SuccessResponse"] as! String
        }
    }
}

public class GetStyleTopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStyleTopResponseBody?

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
            var model = GetStyleTopResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTrendImageDetailRequest : Tea.TeaModel {
    public var aiImgId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aiImgId != nil {
            map["AiImgId"] = self.aiImgId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AiImgId") {
            self.aiImgId = dict["AiImgId"] as! String
        }
    }
}

public class GetTrendImageDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SimilarGoods : Tea.TeaModel {
            public var aiImgUrl: String?

            public var goodsSales: Int64?

            public var searchVolume: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aiImgUrl != nil {
                    map["AiImgUrl"] = self.aiImgUrl!
                }
                if self.goodsSales != nil {
                    map["GoodsSales"] = self.goodsSales!
                }
                if self.searchVolume != nil {
                    map["SearchVolume"] = self.searchVolume!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AiImgUrl") {
                    self.aiImgUrl = dict["AiImgUrl"] as! String
                }
                if dict.keys.contains("GoodsSales") {
                    self.goodsSales = dict["GoodsSales"] as! Int64
                }
                if dict.keys.contains("SearchVolume") {
                    self.searchVolume = dict["SearchVolume"] as! Int64
                }
            }
        }
        public var aiImgId: String?

        public var aiImgUrl: String?

        public var multiPictUrl: String?

        public var population: String?

        public var priceMax: Int64?

        public var priceMin: Int64?

        public var similarGoods: [GetTrendImageDetailResponseBody.Data.SimilarGoods]?

        public var tags: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aiImgId != nil {
                map["AiImgId"] = self.aiImgId!
            }
            if self.aiImgUrl != nil {
                map["AiImgUrl"] = self.aiImgUrl!
            }
            if self.multiPictUrl != nil {
                map["MultiPictUrl"] = self.multiPictUrl!
            }
            if self.population != nil {
                map["Population"] = self.population!
            }
            if self.priceMax != nil {
                map["PriceMax"] = self.priceMax!
            }
            if self.priceMin != nil {
                map["PriceMin"] = self.priceMin!
            }
            if self.similarGoods != nil {
                var tmp : [Any] = []
                for k in self.similarGoods! {
                    tmp.append(k.toMap())
                }
                map["SimilarGoods"] = tmp
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AiImgId") {
                self.aiImgId = dict["AiImgId"] as! String
            }
            if dict.keys.contains("AiImgUrl") {
                self.aiImgUrl = dict["AiImgUrl"] as! String
            }
            if dict.keys.contains("MultiPictUrl") {
                self.multiPictUrl = dict["MultiPictUrl"] as! String
            }
            if dict.keys.contains("Population") {
                self.population = dict["Population"] as! String
            }
            if dict.keys.contains("PriceMax") {
                self.priceMax = dict["PriceMax"] as! Int64
            }
            if dict.keys.contains("PriceMin") {
                self.priceMin = dict["PriceMin"] as! Int64
            }
            if dict.keys.contains("SimilarGoods") {
                self.similarGoods = dict["SimilarGoods"] as! [GetTrendImageDetailResponseBody.Data.SimilarGoods]
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetTrendImageDetailResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var successResponse: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successResponse != nil {
            map["SuccessResponse"] = self.successResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetTrendImageDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessResponse") {
            self.successResponse = dict["SuccessResponse"] as! Bool
        }
    }
}

public class GetTrendImageDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrendImageDetailResponseBody?

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
            var model = GetTrendImageDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTrendImageListRequest : Tea.TeaModel {
    public var cateIds: String?

    public var query: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cateIds != nil {
            map["CateIds"] = self.cateIds!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CateIds") {
            self.cateIds = dict["CateIds"] as! String
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
    }
}

public class GetTrendImageListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aiImgId: String?

        public var aiImgUrl: String?

        public var population: String?

        public var priceMax: Int64?

        public var priceMin: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aiImgId != nil {
                map["AiImgId"] = self.aiImgId!
            }
            if self.aiImgUrl != nil {
                map["AiImgUrl"] = self.aiImgUrl!
            }
            if self.population != nil {
                map["Population"] = self.population!
            }
            if self.priceMax != nil {
                map["PriceMax"] = self.priceMax!
            }
            if self.priceMin != nil {
                map["PriceMin"] = self.priceMin!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AiImgId") {
                self.aiImgId = dict["AiImgId"] as! String
            }
            if dict.keys.contains("AiImgUrl") {
                self.aiImgUrl = dict["AiImgUrl"] as! String
            }
            if dict.keys.contains("Population") {
                self.population = dict["Population"] as! String
            }
            if dict.keys.contains("PriceMax") {
                self.priceMax = dict["PriceMax"] as! Int64
            }
            if dict.keys.contains("PriceMin") {
                self.priceMin = dict["PriceMin"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: [GetTrendImageListResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var successResponse: Bool?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successResponse != nil {
            map["SuccessResponse"] = self.successResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetTrendImageListResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessResponse") {
            self.successResponse = dict["SuccessResponse"] as! Bool
        }
    }
}

public class GetTrendImageListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrendImageListResponseBody?

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
            var model = GetTrendImageListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTrendIndexRequest : Tea.TeaModel {
    public var cateIds: String?

    public var monthNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cateIds != nil {
            map["CateIds"] = self.cateIds!
        }
        if self.monthNum != nil {
            map["MonthNum"] = self.monthNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CateIds") {
            self.cateIds = dict["CateIds"] as! String
        }
        if dict.keys.contains("MonthNum") {
            self.monthNum = dict["MonthNum"] as! Int32
        }
    }
}

public class GetTrendIndexResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var brandIndex: Double?

        public var ECommerceIndex: Double?

        public var institutionalIndex: Double?

        public var mediaIndex: Double?

        public var socialIndex: Double?

        public var trendIndex: Double?

        public var yearMonth: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.brandIndex != nil {
                map["BrandIndex"] = self.brandIndex!
            }
            if self.ECommerceIndex != nil {
                map["ECommerceIndex"] = self.ECommerceIndex!
            }
            if self.institutionalIndex != nil {
                map["InstitutionalIndex"] = self.institutionalIndex!
            }
            if self.mediaIndex != nil {
                map["MediaIndex"] = self.mediaIndex!
            }
            if self.socialIndex != nil {
                map["SocialIndex"] = self.socialIndex!
            }
            if self.trendIndex != nil {
                map["TrendIndex"] = self.trendIndex!
            }
            if self.yearMonth != nil {
                map["YearMonth"] = self.yearMonth!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BrandIndex") {
                self.brandIndex = dict["BrandIndex"] as! Double
            }
            if dict.keys.contains("ECommerceIndex") {
                self.ECommerceIndex = dict["ECommerceIndex"] as! Double
            }
            if dict.keys.contains("InstitutionalIndex") {
                self.institutionalIndex = dict["InstitutionalIndex"] as! Double
            }
            if dict.keys.contains("MediaIndex") {
                self.mediaIndex = dict["MediaIndex"] as! Double
            }
            if dict.keys.contains("SocialIndex") {
                self.socialIndex = dict["SocialIndex"] as! Double
            }
            if dict.keys.contains("TrendIndex") {
                self.trendIndex = dict["TrendIndex"] as! Double
            }
            if dict.keys.contains("YearMonth") {
                self.yearMonth = dict["YearMonth"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetTrendIndexResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var successResponse: Bool?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successResponse != nil {
            map["SuccessResponse"] = self.successResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetTrendIndexResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessResponse") {
            self.successResponse = dict["SuccessResponse"] as! Bool
        }
    }
}

public class GetTrendIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrendIndexResponseBody?

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
            var model = GetTrendIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTrendSearchRecordRequest : Tea.TeaModel {
    public var key: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
    }
}

public class GetTrendSearchRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: Int64?

        public var queryKey: String?

        public override init() {
            super.init()
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
                map["Id"] = self.id!
            }
            if self.queryKey != nil {
                map["QueryKey"] = self.queryKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("QueryKey") {
                self.queryKey = dict["QueryKey"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetTrendSearchRecordResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var successResponse: Bool?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successResponse != nil {
            map["SuccessResponse"] = self.successResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetTrendSearchRecordResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessResponse") {
            self.successResponse = dict["SuccessResponse"] as! Bool
        }
    }
}

public class GetTrendSearchRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrendSearchRecordResponseBody?

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
            var model = GetTrendSearchRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTrendStatisticRequest : Tea.TeaModel {
    public var cateIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cateIds != nil {
            map["CateIds"] = self.cateIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CateIds") {
            self.cateIds = dict["CateIds"] as! String
        }
    }
}

public class GetTrendStatisticResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var commodityCount: Int64?

        public var sales: Double?

        public var shopCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commodityCount != nil {
                map["CommodityCount"] = self.commodityCount!
            }
            if self.sales != nil {
                map["Sales"] = self.sales!
            }
            if self.shopCount != nil {
                map["ShopCount"] = self.shopCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommodityCount") {
                self.commodityCount = dict["CommodityCount"] as! Int64
            }
            if dict.keys.contains("Sales") {
                self.sales = dict["Sales"] as! Double
            }
            if dict.keys.contains("ShopCount") {
                self.shopCount = dict["ShopCount"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: GetTrendStatisticResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var successResponse: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successResponse != nil {
            map["SuccessResponse"] = self.successResponse!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetTrendStatisticResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessResponse") {
            self.successResponse = dict["SuccessResponse"] as! Bool
        }
    }
}

public class GetTrendStatisticResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrendStatisticResponseBody?

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
            var model = GetTrendStatisticResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
