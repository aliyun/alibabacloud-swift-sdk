import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AuthorizeFileUploadRequest : Tea.TeaModel {
    public var product: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AuthorizeFileUploadResponseBody : Tea.TeaModel {
    public var accessKeyId: String?

    public var bucket: String?

    public var encodedPolicy: String?

    public var endpoint: String?

    public var objectKey: String?

    public var requestId: String?

    public var signature: String?

    public var useAccelerate: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKeyId != nil {
            map["AccessKeyId"] = self.accessKeyId!
        }
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.encodedPolicy != nil {
            map["EncodedPolicy"] = self.encodedPolicy!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        if self.useAccelerate != nil {
            map["UseAccelerate"] = self.useAccelerate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKeyId") {
            self.accessKeyId = dict["AccessKeyId"] as! String
        }
        if dict.keys.contains("Bucket") {
            self.bucket = dict["Bucket"] as! String
        }
        if dict.keys.contains("EncodedPolicy") {
            self.encodedPolicy = dict["EncodedPolicy"] as! String
        }
        if dict.keys.contains("Endpoint") {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("ObjectKey") {
            self.objectKey = dict["ObjectKey"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Signature") {
            self.signature = dict["Signature"] as! String
        }
        if dict.keys.contains("UseAccelerate") {
            self.useAccelerate = dict["UseAccelerate"] as! Bool
        }
    }
}

public class AuthorizeFileUploadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthorizeFileUploadResponseBody?

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
            var model = AuthorizeFileUploadResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
