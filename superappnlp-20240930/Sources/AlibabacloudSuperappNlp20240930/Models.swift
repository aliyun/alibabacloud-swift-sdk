import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class NlpAddressNormalizationRequest : Tea.TeaModel {
    public var cityStdManual: String?

    public var cityStr: String?

    public var clientToken: String?

    public var districtStdManual: String?

    public var instanceId: String?

    public var provinceStdManual: String?

    public var provinceStr: String?

    public var queryStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cityStdManual != nil {
            map["CityStdManual"] = self.cityStdManual!
        }
        if self.cityStr != nil {
            map["CityStr"] = self.cityStr!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.districtStdManual != nil {
            map["DistrictStdManual"] = self.districtStdManual!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.provinceStdManual != nil {
            map["ProvinceStdManual"] = self.provinceStdManual!
        }
        if self.provinceStr != nil {
            map["ProvinceStr"] = self.provinceStr!
        }
        if self.queryStr != nil {
            map["QueryStr"] = self.queryStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CityStdManual") {
            self.cityStdManual = dict["CityStdManual"] as! String
        }
        if dict.keys.contains("CityStr") {
            self.cityStr = dict["CityStr"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DistrictStdManual") {
            self.districtStdManual = dict["DistrictStdManual"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ProvinceStdManual") {
            self.provinceStdManual = dict["ProvinceStdManual"] as! String
        }
        if dict.keys.contains("ProvinceStr") {
            self.provinceStr = dict["ProvinceStr"] as! String
        }
        if dict.keys.contains("QueryStr") {
            self.queryStr = dict["QueryStr"] as! String
        }
    }
}

public class NlpAddressNormalizationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cityStd: String?

        public var districtStd: String?

        public var provinceStd: String?

        public var results: [String]?

        public var statusEs: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cityStd != nil {
                map["CityStd"] = self.cityStd!
            }
            if self.districtStd != nil {
                map["DistrictStd"] = self.districtStd!
            }
            if self.provinceStd != nil {
                map["ProvinceStd"] = self.provinceStd!
            }
            if self.results != nil {
                map["Results"] = self.results!
            }
            if self.statusEs != nil {
                map["StatusEs"] = self.statusEs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CityStd") {
                self.cityStd = dict["CityStd"] as! String
            }
            if dict.keys.contains("DistrictStd") {
                self.districtStd = dict["DistrictStd"] as! String
            }
            if dict.keys.contains("ProvinceStd") {
                self.provinceStd = dict["ProvinceStd"] as! String
            }
            if dict.keys.contains("Results") {
                self.results = dict["Results"] as! [String]
            }
            if dict.keys.contains("StatusEs") {
                self.statusEs = dict["StatusEs"] as! String
            }
        }
    }
    public var code: String?

    public var data: NlpAddressNormalizationResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var result: String?

    public var success: Bool?

    public var timestamp: String?

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
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = NlpAddressNormalizationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! String
        }
    }
}

public class NlpAddressNormalizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: NlpAddressNormalizationResponseBody?

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
            var model = NlpAddressNormalizationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
