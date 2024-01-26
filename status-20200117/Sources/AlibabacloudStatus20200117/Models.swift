import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ListEventInProgressRequest : Tea.TeaModel {
    public var regionIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionIds != nil {
            map["RegionIds"] = self.regionIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionIds") && dict["RegionIds"] != nil {
            self.regionIds = dict["RegionIds"] as! [String]
        }
    }
}

public class ListEventInProgressShrinkRequest : Tea.TeaModel {
    public var regionIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionIdsShrink != nil {
            map["RegionIds"] = self.regionIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionIds") && dict["RegionIds"] != nil {
            self.regionIdsShrink = dict["RegionIds"] as! String
        }
    }
}

public class ListEventInProgressResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class EventUpdates : Tea.TeaModel {
            public var content: String?

            public var publishTime: Int64?

            public override init() {
                super.init()
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
                if self.publishTime != nil {
                    map["PublishTime"] = self.publishTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("PublishTime") && dict["PublishTime"] != nil {
                    self.publishTime = dict["PublishTime"] as! Int64
                }
            }
        }
        public class Impacts : Tea.TeaModel {
            public class Product : Tea.TeaModel {
                public var productId: String?

                public var productName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.productId != nil {
                        map["ProductId"] = self.productId!
                    }
                    if self.productName != nil {
                        map["ProductName"] = self.productName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                        self.productId = dict["ProductId"] as! String
                    }
                    if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                        self.productName = dict["ProductName"] as! String
                    }
                }
            }
            public class Region : Tea.TeaModel {
                public var regionId: String?

                public var regionName: String?

                public override init() {
                    super.init()
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
                    if self.regionName != nil {
                        map["RegionName"] = self.regionName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                        self.regionId = dict["RegionId"] as! String
                    }
                    if dict.keys.contains("RegionName") && dict["RegionName"] != nil {
                        self.regionName = dict["RegionName"] as! String
                    }
                }
            }
            public var product: ListEventInProgressResponseBody.Data.Impacts.Product?

            public var recoveryTime: Int64?

            public var region: ListEventInProgressResponseBody.Data.Impacts.Region?

            public var startTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.product?.validate()
                try self.region?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.product != nil {
                    map["Product"] = self.product?.toMap()
                }
                if self.recoveryTime != nil {
                    map["RecoveryTime"] = self.recoveryTime!
                }
                if self.region != nil {
                    map["Region"] = self.region?.toMap()
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Product") && dict["Product"] != nil {
                    var model = ListEventInProgressResponseBody.Data.Impacts.Product()
                    model.fromMap(dict["Product"] as! [String: Any])
                    self.product = model
                }
                if dict.keys.contains("RecoveryTime") && dict["RecoveryTime"] != nil {
                    self.recoveryTime = dict["RecoveryTime"] as! Int64
                }
                if dict.keys.contains("Region") && dict["Region"] != nil {
                    var model = ListEventInProgressResponseBody.Data.Impacts.Region()
                    model.fromMap(dict["Region"] as! [String: Any])
                    self.region = model
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! Int64
                }
            }
        }
        public var eventUpdates: [ListEventInProgressResponseBody.Data.EventUpdates]?

        public var id: Int64?

        public var impacts: [ListEventInProgressResponseBody.Data.Impacts]?

        public var startTime: Int64?

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
            if self.eventUpdates != nil {
                var tmp : [Any] = []
                for k in self.eventUpdates! {
                    tmp.append(k.toMap())
                }
                map["EventUpdates"] = tmp
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.impacts != nil {
                var tmp : [Any] = []
                for k in self.impacts! {
                    tmp.append(k.toMap())
                }
                map["Impacts"] = tmp
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EventUpdates") && dict["EventUpdates"] != nil {
                var tmp : [ListEventInProgressResponseBody.Data.EventUpdates] = []
                for v in dict["EventUpdates"] as! [Any] {
                    var model = ListEventInProgressResponseBody.Data.EventUpdates()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.eventUpdates = tmp
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Impacts") && dict["Impacts"] != nil {
                var tmp : [ListEventInProgressResponseBody.Data.Impacts] = []
                for v in dict["Impacts"] as! [Any] {
                    var model = ListEventInProgressResponseBody.Data.Impacts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.impacts = tmp
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var data: [ListEventInProgressResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListEventInProgressResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListEventInProgressResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListEventInProgressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEventInProgressResponseBody?

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
            var model = ListEventInProgressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
