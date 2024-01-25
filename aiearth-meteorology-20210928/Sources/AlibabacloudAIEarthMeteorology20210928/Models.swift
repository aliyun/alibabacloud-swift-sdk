import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GridQueryRequest : Tea.TeaModel {
    public var element: String?

    public var forecastTimestamp: String?

    public var latitude: Double?

    public var longitude: Double?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var product: String?

    public var reportTimestamp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.element != nil {
            map["element"] = self.element!
        }
        if self.forecastTimestamp != nil {
            map["forecastTimestamp"] = self.forecastTimestamp!
        }
        if self.latitude != nil {
            map["latitude"] = self.latitude!
        }
        if self.longitude != nil {
            map["longitude"] = self.longitude!
        }
        if self.pageNo != nil {
            map["pageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.product != nil {
            map["product"] = self.product!
        }
        if self.reportTimestamp != nil {
            map["reportTimestamp"] = self.reportTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("element") && dict["element"] != nil {
            self.element = dict["element"] as! String
        }
        if dict.keys.contains("forecastTimestamp") && dict["forecastTimestamp"] != nil {
            self.forecastTimestamp = dict["forecastTimestamp"] as! String
        }
        if dict.keys.contains("latitude") && dict["latitude"] != nil {
            self.latitude = dict["latitude"] as! Double
        }
        if dict.keys.contains("longitude") && dict["longitude"] != nil {
            self.longitude = dict["longitude"] as! Double
        }
        if dict.keys.contains("pageNo") && dict["pageNo"] != nil {
            self.pageNo = dict["pageNo"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("product") && dict["product"] != nil {
            self.product = dict["product"] as! String
        }
        if dict.keys.contains("reportTimestamp") && dict["reportTimestamp"] != nil {
            self.reportTimestamp = dict["reportTimestamp"] as! String
        }
    }
}

public class GridQueryResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var dataType: String?

            public var element: String?

            public var elementUnit: String?

            public var forecastTimestamp: String?

            public var latitude: Double?

            public var longitude: Double?

            public var reportTimestamp: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataType != nil {
                    map["dataType"] = self.dataType!
                }
                if self.element != nil {
                    map["element"] = self.element!
                }
                if self.elementUnit != nil {
                    map["elementUnit"] = self.elementUnit!
                }
                if self.forecastTimestamp != nil {
                    map["forecastTimestamp"] = self.forecastTimestamp!
                }
                if self.latitude != nil {
                    map["latitude"] = self.latitude!
                }
                if self.longitude != nil {
                    map["longitude"] = self.longitude!
                }
                if self.reportTimestamp != nil {
                    map["reportTimestamp"] = self.reportTimestamp!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("dataType") && dict["dataType"] != nil {
                    self.dataType = dict["dataType"] as! String
                }
                if dict.keys.contains("element") && dict["element"] != nil {
                    self.element = dict["element"] as! String
                }
                if dict.keys.contains("elementUnit") && dict["elementUnit"] != nil {
                    self.elementUnit = dict["elementUnit"] as! String
                }
                if dict.keys.contains("forecastTimestamp") && dict["forecastTimestamp"] != nil {
                    self.forecastTimestamp = dict["forecastTimestamp"] as! String
                }
                if dict.keys.contains("latitude") && dict["latitude"] != nil {
                    self.latitude = dict["latitude"] as! Double
                }
                if dict.keys.contains("longitude") && dict["longitude"] != nil {
                    self.longitude = dict["longitude"] as! Double
                }
                if dict.keys.contains("reportTimestamp") && dict["reportTimestamp"] != nil {
                    self.reportTimestamp = dict["reportTimestamp"] as! String
                }
                if dict.keys.contains("value") && dict["value"] != nil {
                    self.value = dict["value"] as! Double
                }
            }
        }
        public var list: [GridQueryResponseBody.Module.List]?

        public var pageNo: Int32?

        public var pageSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNo != nil {
                map["pageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [GridQueryResponseBody.Module.List] = []
                for v in dict["list"] as! [Any] {
                    var model = GridQueryResponseBody.Module.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNo") && dict["pageNo"] != nil {
                self.pageNo = dict["pageNo"] as! Int32
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int32
            }
        }
    }
    public var code: Int64?

    public var message: String?

    public var module: GridQueryResponseBody.Module?

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
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.module != nil {
            map["module"] = self.module?.toMap()
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
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! Int64
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("module") && dict["module"] != nil {
            var model = GridQueryResponseBody.Module()
            model.fromMap(dict["module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GridQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GridQueryResponseBody?

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
            var model = GridQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
