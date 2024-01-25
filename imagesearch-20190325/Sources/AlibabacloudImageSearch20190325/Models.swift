import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddImageRequest : Tea.TeaModel {
    public var categoryId: Int32?

    public var crop: Bool?

    public var customContent: String?

    public var instanceName: String?

    public var intAttr: Int32?

    public var picContent: String?

    public var picName: String?

    public var productId: String?

    public var region: String?

    public var strAttr: String?

    public override init() {
        super.init()
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
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.customContent != nil {
            map["CustomContent"] = self.customContent!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.intAttr != nil {
            map["IntAttr"] = self.intAttr!
        }
        if self.picContent != nil {
            map["PicContent"] = self.picContent!
        }
        if self.picName != nil {
            map["PicName"] = self.picName!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.strAttr != nil {
            map["StrAttr"] = self.strAttr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! Int32
        }
        if dict.keys.contains("Crop") && dict["Crop"] != nil {
            self.crop = dict["Crop"] as! Bool
        }
        if dict.keys.contains("CustomContent") && dict["CustomContent"] != nil {
            self.customContent = dict["CustomContent"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("IntAttr") && dict["IntAttr"] != nil {
            self.intAttr = dict["IntAttr"] as! Int32
        }
        if dict.keys.contains("PicContent") && dict["PicContent"] != nil {
            self.picContent = dict["PicContent"] as! String
        }
        if dict.keys.contains("PicName") && dict["PicName"] != nil {
            self.picName = dict["PicName"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("StrAttr") && dict["StrAttr"] != nil {
            self.strAttr = dict["StrAttr"] as! String
        }
    }
}

public class AddImageResponseBody : Tea.TeaModel {
    public class PicInfo : Tea.TeaModel {
        public var categoryId: Int32?

        public var region: String?

        public override init() {
            super.init()
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
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                self.categoryId = dict["CategoryId"] as! Int32
            }
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
        }
    }
    public var code: Int32?

    public var message: String?

    public var picInfo: AddImageResponseBody.PicInfo?

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
        try self.picInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.picInfo != nil {
            map["PicInfo"] = self.picInfo?.toMap()
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PicInfo") && dict["PicInfo"] != nil {
            var model = AddImageResponseBody.PicInfo()
            model.fromMap(dict["PicInfo"] as! [String: Any])
            self.picInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddImageResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteImageRequest : Tea.TeaModel {
    public var instanceName: String?

    public var picName: String?

    public var productId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.picName != nil {
            map["PicName"] = self.picName!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("PicName") && dict["PicName"] != nil {
            self.picName = dict["PicName"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
    }
}

public class DeleteImageResponseBody : Tea.TeaModel {
    public var code: Int32?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteImageResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchImageRequest : Tea.TeaModel {
    public var categoryId: Int32?

    public var crop: Bool?

    public var filter: String?

    public var instanceName: String?

    public var num: Int32?

    public var picContent: String?

    public var picName: String?

    public var productId: String?

    public var region: String?

    public var start: Int32?

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
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.num != nil {
            map["Num"] = self.num!
        }
        if self.picContent != nil {
            map["PicContent"] = self.picContent!
        }
        if self.picName != nil {
            map["PicName"] = self.picName!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
            self.categoryId = dict["CategoryId"] as! Int32
        }
        if dict.keys.contains("Crop") && dict["Crop"] != nil {
            self.crop = dict["Crop"] as! Bool
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Num") && dict["Num"] != nil {
            self.num = dict["Num"] as! Int32
        }
        if dict.keys.contains("PicContent") && dict["PicContent"] != nil {
            self.picContent = dict["PicContent"] as! String
        }
        if dict.keys.contains("PicName") && dict["PicName"] != nil {
            self.picName = dict["PicName"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("Start") && dict["Start"] != nil {
            self.start = dict["Start"] as! Int32
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class SearchImageResponseBody : Tea.TeaModel {
    public class Auctions : Tea.TeaModel {
        public var categoryId: Int32?

        public var customContent: String?

        public var intAttr: Int32?

        public var picName: String?

        public var productId: String?

        public var score: Double?

        public var sortExprValues: String?

        public var strAttr: String?

        public override init() {
            super.init()
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
            if self.customContent != nil {
                map["CustomContent"] = self.customContent!
            }
            if self.intAttr != nil {
                map["IntAttr"] = self.intAttr!
            }
            if self.picName != nil {
                map["PicName"] = self.picName!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.sortExprValues != nil {
                map["SortExprValues"] = self.sortExprValues!
            }
            if self.strAttr != nil {
                map["StrAttr"] = self.strAttr!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                self.categoryId = dict["CategoryId"] as! Int32
            }
            if dict.keys.contains("CustomContent") && dict["CustomContent"] != nil {
                self.customContent = dict["CustomContent"] as! String
            }
            if dict.keys.contains("IntAttr") && dict["IntAttr"] != nil {
                self.intAttr = dict["IntAttr"] as! Int32
            }
            if dict.keys.contains("PicName") && dict["PicName"] != nil {
                self.picName = dict["PicName"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("Score") && dict["Score"] != nil {
                self.score = dict["Score"] as! Double
            }
            if dict.keys.contains("SortExprValues") && dict["SortExprValues"] != nil {
                self.sortExprValues = dict["SortExprValues"] as! String
            }
            if dict.keys.contains("StrAttr") && dict["StrAttr"] != nil {
                self.strAttr = dict["StrAttr"] as! String
            }
        }
    }
    public class Head : Tea.TeaModel {
        public var docsFound: Int32?

        public var docsReturn: Int32?

        public var searchTime: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.docsFound != nil {
                map["DocsFound"] = self.docsFound!
            }
            if self.docsReturn != nil {
                map["DocsReturn"] = self.docsReturn!
            }
            if self.searchTime != nil {
                map["SearchTime"] = self.searchTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DocsFound") && dict["DocsFound"] != nil {
                self.docsFound = dict["DocsFound"] as! Int32
            }
            if dict.keys.contains("DocsReturn") && dict["DocsReturn"] != nil {
                self.docsReturn = dict["DocsReturn"] as! Int32
            }
            if dict.keys.contains("SearchTime") && dict["SearchTime"] != nil {
                self.searchTime = dict["SearchTime"] as! Int32
            }
        }
    }
    public class PicInfo : Tea.TeaModel {
        public class AllCategories : Tea.TeaModel {
            public var id: Int32?

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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int32
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class MultiRegion : Tea.TeaModel {
            public var region: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Region") && dict["Region"] != nil {
                    self.region = dict["Region"] as! String
                }
            }
        }
        public var allCategories: [SearchImageResponseBody.PicInfo.AllCategories]?

        public var categoryId: Int32?

        public var multiRegion: [SearchImageResponseBody.PicInfo.MultiRegion]?

        public var region: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allCategories != nil {
                var tmp : [Any] = []
                for k in self.allCategories! {
                    tmp.append(k.toMap())
                }
                map["AllCategories"] = tmp
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.multiRegion != nil {
                var tmp : [Any] = []
                for k in self.multiRegion! {
                    tmp.append(k.toMap())
                }
                map["MultiRegion"] = tmp
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllCategories") && dict["AllCategories"] != nil {
                var tmp : [SearchImageResponseBody.PicInfo.AllCategories] = []
                for v in dict["AllCategories"] as! [Any] {
                    var model = SearchImageResponseBody.PicInfo.AllCategories()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.allCategories = tmp
            }
            if dict.keys.contains("CategoryId") && dict["CategoryId"] != nil {
                self.categoryId = dict["CategoryId"] as! Int32
            }
            if dict.keys.contains("MultiRegion") && dict["MultiRegion"] != nil {
                var tmp : [SearchImageResponseBody.PicInfo.MultiRegion] = []
                for v in dict["MultiRegion"] as! [Any] {
                    var model = SearchImageResponseBody.PicInfo.MultiRegion()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.multiRegion = tmp
            }
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
        }
    }
    public var auctions: [SearchImageResponseBody.Auctions]?

    public var code: Int32?

    public var head: SearchImageResponseBody.Head?

    public var msg: String?

    public var picInfo: SearchImageResponseBody.PicInfo?

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
        try self.head?.validate()
        try self.picInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auctions != nil {
            var tmp : [Any] = []
            for k in self.auctions! {
                tmp.append(k.toMap())
            }
            map["Auctions"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.head != nil {
            map["Head"] = self.head?.toMap()
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.picInfo != nil {
            map["PicInfo"] = self.picInfo?.toMap()
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
        if dict.keys.contains("Auctions") && dict["Auctions"] != nil {
            var tmp : [SearchImageResponseBody.Auctions] = []
            for v in dict["Auctions"] as! [Any] {
                var model = SearchImageResponseBody.Auctions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.auctions = tmp
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Head") && dict["Head"] != nil {
            var model = SearchImageResponseBody.Head()
            model.fromMap(dict["Head"] as! [String: Any])
            self.head = model
        }
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("PicInfo") && dict["PicInfo"] != nil {
            var model = SearchImageResponseBody.PicInfo()
            model.fromMap(dict["PicInfo"] as! [String: Any])
            self.picInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SearchImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchImageResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SearchImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
