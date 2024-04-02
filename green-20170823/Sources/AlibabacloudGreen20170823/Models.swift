import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AuditItemSubmitRequest : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var customResult: String?

        public var customRiskType: String?

        public var id: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customResult != nil {
                map["CustomResult"] = self.customResult!
            }
            if self.customRiskType != nil {
                map["CustomRiskType"] = self.customRiskType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomResult") && dict["CustomResult"] != nil {
                self.customResult = dict["CustomResult"] as! String
            }
            if dict.keys.contains("CustomRiskType") && dict["CustomRiskType"] != nil {
                self.customRiskType = dict["CustomRiskType"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
        }
    }
    public var data: [AuditItemSubmitRequest.Data]?

    public override init() {
        super.init()
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [AuditItemSubmitRequest.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = AuditItemSubmitRequest.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
    }
}

public class AuditItemSubmitResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AuditItemSubmitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuditItemSubmitResponseBody?

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
            var model = AuditItemSubmitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatCustomOcrTemplateRequest : Tea.TeaModel {
    public var imgUrl: String?

    public var name: String?

    public var recognizeArea: String?

    public var referArea: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imgUrl != nil {
            map["ImgUrl"] = self.imgUrl!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.recognizeArea != nil {
            map["RecognizeArea"] = self.recognizeArea!
        }
        if self.referArea != nil {
            map["ReferArea"] = self.referArea!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImgUrl") && dict["ImgUrl"] != nil {
            self.imgUrl = dict["ImgUrl"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RecognizeArea") && dict["RecognizeArea"] != nil {
            self.recognizeArea = dict["RecognizeArea"] as! String
        }
        if dict.keys.contains("ReferArea") && dict["ReferArea"] != nil {
            self.referArea = dict["ReferArea"] as! String
        }
    }
}

public class CreatCustomOcrTemplateResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatCustomOcrTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatCustomOcrTemplateResponseBody?

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
            var model = CreatCustomOcrTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAuditCallbackRequest : Tea.TeaModel {
    public var callbackSuggestions: String?

    public var callbackTypes: String?

    public var cryptType: String?

    public var name: String?

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
        if self.callbackSuggestions != nil {
            map["CallbackSuggestions"] = self.callbackSuggestions!
        }
        if self.callbackTypes != nil {
            map["CallbackTypes"] = self.callbackTypes!
        }
        if self.cryptType != nil {
            map["CryptType"] = self.cryptType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallbackSuggestions") && dict["CallbackSuggestions"] != nil {
            self.callbackSuggestions = dict["CallbackSuggestions"] as! String
        }
        if dict.keys.contains("CallbackTypes") && dict["CallbackTypes"] != nil {
            self.callbackTypes = dict["CallbackTypes"] as! String
        }
        if dict.keys.contains("CryptType") && dict["CryptType"] != nil {
            self.cryptType = dict["CryptType"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class CreateAuditCallbackResponseBody : Tea.TeaModel {
    public var callbackSuggestions: [String]?

    public var callbackTypes: [String]?

    public var createTime: String?

    public var cryptType: String?

    public var id: Int64?

    public var modifiedTime: String?

    public var name: String?

    public var requestId: String?

    public var seed: String?

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
        if self.callbackSuggestions != nil {
            map["CallbackSuggestions"] = self.callbackSuggestions!
        }
        if self.callbackTypes != nil {
            map["CallbackTypes"] = self.callbackTypes!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.cryptType != nil {
            map["CryptType"] = self.cryptType!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.seed != nil {
            map["Seed"] = self.seed!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallbackSuggestions") && dict["CallbackSuggestions"] != nil {
            self.callbackSuggestions = dict["CallbackSuggestions"] as! [String]
        }
        if dict.keys.contains("CallbackTypes") && dict["CallbackTypes"] != nil {
            self.callbackTypes = dict["CallbackTypes"] as! [String]
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CryptType") && dict["CryptType"] != nil {
            self.cryptType = dict["CryptType"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
            self.modifiedTime = dict["ModifiedTime"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Seed") && dict["Seed"] != nil {
            self.seed = dict["Seed"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class CreateAuditCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAuditCallbackResponseBody?

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
            var model = CreateAuditCallbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBizTypeRequest : Tea.TeaModel {
    public var bizTypeImport: String?

    public var bizTypeName: String?

    public var citeTemplate: Bool?

    public var description_: String?

    public var industryInfo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTypeImport != nil {
            map["BizTypeImport"] = self.bizTypeImport!
        }
        if self.bizTypeName != nil {
            map["BizTypeName"] = self.bizTypeName!
        }
        if self.citeTemplate != nil {
            map["CiteTemplate"] = self.citeTemplate!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.industryInfo != nil {
            map["IndustryInfo"] = self.industryInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeImport") && dict["BizTypeImport"] != nil {
            self.bizTypeImport = dict["BizTypeImport"] as! String
        }
        if dict.keys.contains("BizTypeName") && dict["BizTypeName"] != nil {
            self.bizTypeName = dict["BizTypeName"] as! String
        }
        if dict.keys.contains("CiteTemplate") && dict["CiteTemplate"] != nil {
            self.citeTemplate = dict["CiteTemplate"] as! Bool
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("IndustryInfo") && dict["IndustryInfo"] != nil {
            self.industryInfo = dict["IndustryInfo"] as! String
        }
    }
}

public class CreateBizTypeResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateBizTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBizTypeResponseBody?

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
            var model = CreateBizTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCdiBagRequest : Tea.TeaModel {
    public var clientToken: String?

    public var commodityCode: String?

    public var flowOutSpec: Int32?

    public var orderNum: Int32?

    public var orderType: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.flowOutSpec != nil {
            map["FlowOutSpec"] = self.flowOutSpec!
        }
        if self.orderNum != nil {
            map["OrderNum"] = self.orderNum!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("FlowOutSpec") && dict["FlowOutSpec"] != nil {
            self.flowOutSpec = dict["FlowOutSpec"] as! Int32
        }
        if dict.keys.contains("OrderNum") && dict["OrderNum"] != nil {
            self.orderNum = dict["OrderNum"] as! Int32
        }
        if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class CreateCdiBagResponseBody : Tea.TeaModel {
    public class InstanceIds : Tea.TeaModel {
        public var string: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.string != nil {
                map["String"] = self.string!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("String") && dict["String"] != nil {
                self.string = dict["String"] as! [String]
            }
        }
    }
    public var code: String?

    public var instanceIds: CreateCdiBagResponseBody.InstanceIds?

    public var message: String?

    public var orderId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            var model = CreateCdiBagResponseBody.InstanceIds()
            model.fromMap(dict["InstanceIds"] as! [String: Any])
            self.instanceIds = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCdiBagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCdiBagResponseBody?

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
            var model = CreateCdiBagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCdiBaseBagRequest : Tea.TeaModel {
    public var clientToken: String?

    public var commodityCode: String?

    public var duration: Int32?

    public var flowOutSpec: Int32?

    public var orderType: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.flowOutSpec != nil {
            map["FlowOutSpec"] = self.flowOutSpec!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("FlowOutSpec") && dict["FlowOutSpec"] != nil {
            self.flowOutSpec = dict["FlowOutSpec"] as! Int32
        }
        if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class CreateCdiBaseBagResponseBody : Tea.TeaModel {
    public var code: String?

    public var instanceId: String?

    public var message: String?

    public var orderId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCdiBaseBagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCdiBaseBagResponseBody?

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
            var model = CreateCdiBaseBagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateImageLibRequest : Tea.TeaModel {
    public var bizTypes: String?

    public var category: String?

    public var enable: Bool?

    public var name: String?

    public var scene: String?

    public var serviceModule: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTypes != nil {
            map["BizTypes"] = self.bizTypes!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.serviceModule != nil {
            map["ServiceModule"] = self.serviceModule!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypes") && dict["BizTypes"] != nil {
            self.bizTypes = dict["BizTypes"] as! String
        }
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Enable") && dict["Enable"] != nil {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("ServiceModule") && dict["ServiceModule"] != nil {
            self.serviceModule = dict["ServiceModule"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class CreateImageLibResponseBody : Tea.TeaModel {
    public var id: Int64?

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
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateImageLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateImageLibResponseBody?

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
            var model = CreateImageLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateKeywordRequest : Tea.TeaModel {
    public var keywordLibId: Int64?

    public var keywords: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keywordLibId != nil {
            map["KeywordLibId"] = self.keywordLibId!
        }
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeywordLibId") && dict["KeywordLibId"] != nil {
            self.keywordLibId = dict["KeywordLibId"] as! Int64
        }
        if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
            self.keywords = dict["Keywords"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class CreateKeywordResponseBody : Tea.TeaModel {
    public class ValidKeywordList : Tea.TeaModel {
        public var id: Int32?

        public var keyword: String?

        public override init() {
            super.init()
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
            if self.keyword != nil {
                map["keyword"] = self.keyword!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! Int32
            }
            if dict.keys.contains("keyword") && dict["keyword"] != nil {
                self.keyword = dict["keyword"] as! String
            }
        }
    }
    public var invalidKeywordList: [String]?

    public var requestId: String?

    public var successCount: Int32?

    public var validKeywordList: [CreateKeywordResponseBody.ValidKeywordList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.invalidKeywordList != nil {
            map["InvalidKeywordList"] = self.invalidKeywordList!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successCount != nil {
            map["SuccessCount"] = self.successCount!
        }
        if self.validKeywordList != nil {
            var tmp : [Any] = []
            for k in self.validKeywordList! {
                tmp.append(k.toMap())
            }
            map["validKeywordList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InvalidKeywordList") && dict["InvalidKeywordList"] != nil {
            self.invalidKeywordList = dict["InvalidKeywordList"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessCount") && dict["SuccessCount"] != nil {
            self.successCount = dict["SuccessCount"] as! Int32
        }
        if dict.keys.contains("validKeywordList") && dict["validKeywordList"] != nil {
            var tmp : [CreateKeywordResponseBody.ValidKeywordList] = []
            for v in dict["validKeywordList"] as! [Any] {
                var model = CreateKeywordResponseBody.ValidKeywordList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.validKeywordList = tmp
        }
    }
}

public class CreateKeywordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKeywordResponseBody?

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
            var model = CreateKeywordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateKeywordLibRequest : Tea.TeaModel {
    public var bizTypes: String?

    public var category: String?

    public var enable: Bool?

    public var lang: String?

    public var language: String?

    public var libType: String?

    public var matchMode: String?

    public var name: String?

    public var resourceType: String?

    public var serviceModule: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTypes != nil {
            map["BizTypes"] = self.bizTypes!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.libType != nil {
            map["LibType"] = self.libType!
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceModule != nil {
            map["ServiceModule"] = self.serviceModule!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypes") && dict["BizTypes"] != nil {
            self.bizTypes = dict["BizTypes"] as! String
        }
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Enable") && dict["Enable"] != nil {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("LibType") && dict["LibType"] != nil {
            self.libType = dict["LibType"] as! String
        }
        if dict.keys.contains("MatchMode") && dict["MatchMode"] != nil {
            self.matchMode = dict["MatchMode"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ServiceModule") && dict["ServiceModule"] != nil {
            self.serviceModule = dict["ServiceModule"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class CreateKeywordLibResponseBody : Tea.TeaModel {
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
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateKeywordLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKeywordLibResponseBody?

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
            var model = CreateKeywordLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWebSiteInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var duration: Int32?

    public var orderNum: Int32?

    public var orderType: String?

    public var ownerId: Int64?

    public var pricingCycle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.orderNum != nil {
            map["OrderNum"] = self.orderNum!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("OrderNum") && dict["OrderNum"] != nil {
            self.orderNum = dict["OrderNum"] as! Int32
        }
        if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
    }
}

public class CreateWebSiteInstanceResponseBody : Tea.TeaModel {
    public class InstanceIds : Tea.TeaModel {
        public var string: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.string != nil {
                map["String"] = self.string!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("String") && dict["String"] != nil {
                self.string = dict["String"] as! [String]
            }
        }
    }
    public var code: String?

    public var instanceIds: CreateWebSiteInstanceResponseBody.InstanceIds?

    public var message: String?

    public var orderId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            var model = CreateWebSiteInstanceResponseBody.InstanceIds()
            model.fromMap(dict["InstanceIds"] as! [String: Any])
            self.instanceIds = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateWebSiteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWebSiteInstanceResponseBody?

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
            var model = CreateWebSiteInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWebsiteIndexPageBaselineRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class CreateWebsiteIndexPageBaselineResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateWebsiteIndexPageBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWebsiteIndexPageBaselineResponseBody?

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
            var model = CreateWebsiteIndexPageBaselineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBizTypeRequest : Tea.TeaModel {
    public var bizTypeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTypeName != nil {
            map["BizTypeName"] = self.bizTypeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeName") && dict["BizTypeName"] != nil {
            self.bizTypeName = dict["BizTypeName"] as! String
        }
    }
}

public class DeleteBizTypeResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteBizTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBizTypeResponseBody?

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
            var model = DeleteBizTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCustomOcrTemplateRequest : Tea.TeaModel {
    public var ids: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! String
        }
    }
}

public class DeleteCustomOcrTemplateResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteCustomOcrTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomOcrTemplateResponseBody?

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
            var model = DeleteCustomOcrTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteImageFromLibRequest : Tea.TeaModel {
    public var ids: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DeleteImageFromLibResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteImageFromLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteImageFromLibResponseBody?

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
            var model = DeleteImageFromLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteImageLibRequest : Tea.TeaModel {
    public var id: Int32?

    public var sourceIp: String?

    public override init() {
        super.init()
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
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int32
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DeleteImageLibResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteImageLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteImageLibResponseBody?

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
            var model = DeleteImageLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteKeywordRequest : Tea.TeaModel {
    public var ids: String?

    public var keywordLibId: String?

    public var keywords: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.keywordLibId != nil {
            map["KeywordLibId"] = self.keywordLibId!
        }
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("KeywordLibId") && dict["KeywordLibId"] != nil {
            self.keywordLibId = dict["KeywordLibId"] as! String
        }
        if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
            self.keywords = dict["Keywords"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DeleteKeywordResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteKeywordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteKeywordResponseBody?

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
            var model = DeleteKeywordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteKeywordLibRequest : Tea.TeaModel {
    public var id: Int32?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DeleteKeywordLibResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteKeywordLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteKeywordLibResponseBody?

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
            var model = DeleteKeywordLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteNotificationContactsRequest : Tea.TeaModel {
    public var contactTypes: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactTypes != nil {
            map["ContactTypes"] = self.contactTypes!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactTypes") && dict["ContactTypes"] != nil {
            self.contactTypes = dict["ContactTypes"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DeleteNotificationContactsResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteNotificationContactsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNotificationContactsResponseBody?

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
            var model = DeleteNotificationContactsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppInfoRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var lang: String?

    public var pageSize: Int32?

    public var platform: String?

    public var sourceIp: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Platform") && dict["Platform"] != nil {
            self.platform = dict["Platform"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAppInfoResponseBody : Tea.TeaModel {
    public class AppInfoList : Tea.TeaModel {
        public class DebugPackageInfo : Tea.TeaModel {
            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Version") && dict["Version"] != nil {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public class PackageInfo : Tea.TeaModel {
            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Version") && dict["Version"] != nil {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public var debugPackageInfo: DescribeAppInfoResponseBody.AppInfoList.DebugPackageInfo?

        public var endDate: String?

        public var icon: String?

        public var id: Int64?

        public var name: String?

        public var packageInfo: DescribeAppInfoResponseBody.AppInfoList.PackageInfo?

        public var packageName: String?

        public var startDate: String?

        public var type: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.debugPackageInfo?.validate()
            try self.packageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.debugPackageInfo != nil {
                map["DebugPackageInfo"] = self.debugPackageInfo?.toMap()
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.icon != nil {
                map["Icon"] = self.icon!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.packageInfo != nil {
                map["PackageInfo"] = self.packageInfo?.toMap()
            }
            if self.packageName != nil {
                map["PackageName"] = self.packageName!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DebugPackageInfo") && dict["DebugPackageInfo"] != nil {
                var model = DescribeAppInfoResponseBody.AppInfoList.DebugPackageInfo()
                model.fromMap(dict["DebugPackageInfo"] as! [String: Any])
                self.debugPackageInfo = model
            }
            if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("Icon") && dict["Icon"] != nil {
                self.icon = dict["Icon"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PackageInfo") && dict["PackageInfo"] != nil {
                var model = DescribeAppInfoResponseBody.AppInfoList.PackageInfo()
                model.fromMap(dict["PackageInfo"] as! [String: Any])
                self.packageInfo = model
            }
            if dict.keys.contains("PackageName") && dict["PackageName"] != nil {
                self.packageName = dict["PackageName"] as! String
            }
            if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
                self.startDate = dict["StartDate"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var appInfoList: [DescribeAppInfoResponseBody.AppInfoList]?

    public var currentPage: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.appInfoList != nil {
            var tmp : [Any] = []
            for k in self.appInfoList! {
                tmp.append(k.toMap())
            }
            map["AppInfoList"] = tmp
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
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
        if dict.keys.contains("AppInfoList") && dict["AppInfoList"] != nil {
            var tmp : [DescribeAppInfoResponseBody.AppInfoList] = []
            for v in dict["AppInfoList"] as! [Any] {
                var model = DescribeAppInfoResponseBody.AppInfoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.appInfoList = tmp
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAppInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppInfoResponseBody?

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
            var model = DescribeAppInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAuditCallbackResponseBody : Tea.TeaModel {
    public var callback: String?

    public var cryptType: Int32?

    public var requestId: String?

    public var seed: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.cryptType != nil {
            map["CryptType"] = self.cryptType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.seed != nil {
            map["Seed"] = self.seed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Callback") && dict["Callback"] != nil {
            self.callback = dict["Callback"] as! String
        }
        if dict.keys.contains("CryptType") && dict["CryptType"] != nil {
            self.cryptType = dict["CryptType"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Seed") && dict["Seed"] != nil {
            self.seed = dict["Seed"] as! String
        }
    }
}

public class DescribeAuditCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAuditCallbackResponseBody?

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
            var model = DescribeAuditCallbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAuditCallbackListResponseBody : Tea.TeaModel {
    public class CallbackList : Tea.TeaModel {
        public var callbackSuggestions: [String]?

        public var callbackTypes: [String]?

        public var createTime: String?

        public var cryptType: String?

        public var id: Int64?

        public var modifiedTime: String?

        public var name: String?

        public var seed: String?

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
            if self.callbackSuggestions != nil {
                map["CallbackSuggestions"] = self.callbackSuggestions!
            }
            if self.callbackTypes != nil {
                map["CallbackTypes"] = self.callbackTypes!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.cryptType != nil {
                map["CryptType"] = self.cryptType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.seed != nil {
                map["Seed"] = self.seed!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallbackSuggestions") && dict["CallbackSuggestions"] != nil {
                self.callbackSuggestions = dict["CallbackSuggestions"] as! [String]
            }
            if dict.keys.contains("CallbackTypes") && dict["CallbackTypes"] != nil {
                self.callbackTypes = dict["CallbackTypes"] as! [String]
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CryptType") && dict["CryptType"] != nil {
                self.cryptType = dict["CryptType"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Seed") && dict["Seed"] != nil {
                self.seed = dict["Seed"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var callbackList: [DescribeAuditCallbackListResponseBody.CallbackList]?

    public var requestId: String?

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
        if self.callbackList != nil {
            var tmp : [Any] = []
            for k in self.callbackList! {
                tmp.append(k.toMap())
            }
            map["CallbackList"] = tmp
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
        if dict.keys.contains("CallbackList") && dict["CallbackList"] != nil {
            var tmp : [DescribeAuditCallbackListResponseBody.CallbackList] = []
            for v in dict["CallbackList"] as! [Any] {
                var model = DescribeAuditCallbackListResponseBody.CallbackList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.callbackList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAuditCallbackListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAuditCallbackListResponseBody?

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
            var model = DescribeAuditCallbackListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAuditContentRequest : Tea.TeaModel {
    public var auditResult: String?

    public var bizType: String?

    public var currentPage: Int32?

    public var dataId: String?

    public var endDate: String?

    public var imageId: String?

    public var keywordId: String?

    public var label: String?

    public var lang: String?

    public var libType: String?

    public var pageSize: Int32?

    public var resourceType: String?

    public var scene: String?

    public var sourceIp: String?

    public var startDate: String?

    public var suggestion: String?

    public var taskId: String?

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
        if self.auditResult != nil {
            map["AuditResult"] = self.auditResult!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dataId != nil {
            map["DataId"] = self.dataId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.keywordId != nil {
            map["KeywordId"] = self.keywordId!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.libType != nil {
            map["LibType"] = self.libType!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.suggestion != nil {
            map["Suggestion"] = self.suggestion!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditResult") && dict["AuditResult"] != nil {
            self.auditResult = dict["AuditResult"] as! String
        }
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DataId") && dict["DataId"] != nil {
            self.dataId = dict["DataId"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("KeywordId") && dict["KeywordId"] != nil {
            self.keywordId = dict["KeywordId"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("LibType") && dict["LibType"] != nil {
            self.libType = dict["LibType"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Suggestion") && dict["Suggestion"] != nil {
            self.suggestion = dict["Suggestion"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAuditContentResponseBody : Tea.TeaModel {
    public class AuditContentList : Tea.TeaModel {
        public class FrameResults : Tea.TeaModel {
            public var label: String?

            public var offset: Int32?

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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.offset != nil {
                    map["Offset"] = self.offset!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Label") && dict["Label"] != nil {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Offset") && dict["Offset"] != nil {
                    self.offset = dict["Offset"] as! Int32
                }
                if dict.keys.contains("Url") && dict["Url"] != nil {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public class Results : Tea.TeaModel {
            public var label: String?

            public var scene: String?

            public var suggestion: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.scene != nil {
                    map["Scene"] = self.scene!
                }
                if self.suggestion != nil {
                    map["Suggestion"] = self.suggestion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Label") && dict["Label"] != nil {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Scene") && dict["Scene"] != nil {
                    self.scene = dict["Scene"] as! String
                }
                if dict.keys.contains("Suggestion") && dict["Suggestion"] != nil {
                    self.suggestion = dict["Suggestion"] as! String
                }
            }
        }
        public var audit: Int32?

        public var auditIllegalReasons: [String]?

        public var auditResult: String?

        public var bizType: String?

        public var content: String?

        public var dataId: String?

        public var frameResults: [DescribeAuditContentResponseBody.AuditContentList.FrameResults]?

        public var id: Int64?

        public var newUrl: String?

        public var requestTime: String?

        public var results: [DescribeAuditContentResponseBody.AuditContentList.Results]?

        public var scanFinishedTime: String?

        public var suggestion: String?

        public var taskId: String?

        public var thumbnail: String?

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
            if self.audit != nil {
                map["Audit"] = self.audit!
            }
            if self.auditIllegalReasons != nil {
                map["AuditIllegalReasons"] = self.auditIllegalReasons!
            }
            if self.auditResult != nil {
                map["AuditResult"] = self.auditResult!
            }
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.frameResults != nil {
                var tmp : [Any] = []
                for k in self.frameResults! {
                    tmp.append(k.toMap())
                }
                map["FrameResults"] = tmp
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.newUrl != nil {
                map["NewUrl"] = self.newUrl!
            }
            if self.requestTime != nil {
                map["RequestTime"] = self.requestTime!
            }
            if self.results != nil {
                var tmp : [Any] = []
                for k in self.results! {
                    tmp.append(k.toMap())
                }
                map["Results"] = tmp
            }
            if self.scanFinishedTime != nil {
                map["ScanFinishedTime"] = self.scanFinishedTime!
            }
            if self.suggestion != nil {
                map["Suggestion"] = self.suggestion!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.thumbnail != nil {
                map["Thumbnail"] = self.thumbnail!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Audit") && dict["Audit"] != nil {
                self.audit = dict["Audit"] as! Int32
            }
            if dict.keys.contains("AuditIllegalReasons") && dict["AuditIllegalReasons"] != nil {
                self.auditIllegalReasons = dict["AuditIllegalReasons"] as! [String]
            }
            if dict.keys.contains("AuditResult") && dict["AuditResult"] != nil {
                self.auditResult = dict["AuditResult"] as! String
            }
            if dict.keys.contains("BizType") && dict["BizType"] != nil {
                self.bizType = dict["BizType"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("FrameResults") && dict["FrameResults"] != nil {
                var tmp : [DescribeAuditContentResponseBody.AuditContentList.FrameResults] = []
                for v in dict["FrameResults"] as! [Any] {
                    var model = DescribeAuditContentResponseBody.AuditContentList.FrameResults()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.frameResults = tmp
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("NewUrl") && dict["NewUrl"] != nil {
                self.newUrl = dict["NewUrl"] as! String
            }
            if dict.keys.contains("RequestTime") && dict["RequestTime"] != nil {
                self.requestTime = dict["RequestTime"] as! String
            }
            if dict.keys.contains("Results") && dict["Results"] != nil {
                var tmp : [DescribeAuditContentResponseBody.AuditContentList.Results] = []
                for v in dict["Results"] as! [Any] {
                    var model = DescribeAuditContentResponseBody.AuditContentList.Results()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.results = tmp
            }
            if dict.keys.contains("ScanFinishedTime") && dict["ScanFinishedTime"] != nil {
                self.scanFinishedTime = dict["ScanFinishedTime"] as! String
            }
            if dict.keys.contains("Suggestion") && dict["Suggestion"] != nil {
                self.suggestion = dict["Suggestion"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Thumbnail") && dict["Thumbnail"] != nil {
                self.thumbnail = dict["Thumbnail"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var auditContentList: [DescribeAuditContentResponseBody.AuditContentList]?

    public var currentPage: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.auditContentList != nil {
            var tmp : [Any] = []
            for k in self.auditContentList! {
                tmp.append(k.toMap())
            }
            map["AuditContentList"] = tmp
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
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
        if dict.keys.contains("AuditContentList") && dict["AuditContentList"] != nil {
            var tmp : [DescribeAuditContentResponseBody.AuditContentList] = []
            for v in dict["AuditContentList"] as! [Any] {
                var model = DescribeAuditContentResponseBody.AuditContentList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.auditContentList = tmp
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAuditContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAuditContentResponseBody?

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
            var model = DescribeAuditContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAuditContentItemRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var lang: String?

    public var pageSize: Int32?

    public var resourceType: String?

    public var sourceIp: String?

    public var taskId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAuditContentItemResponseBody : Tea.TeaModel {
    public class AuditContentItemList : Tea.TeaModel {
        public var audit: Int32?

        public var auditIllegalReasons: [String]?

        public var auditResult: String?

        public var content: String?

        public var endTime: String?

        public var id: Int64?

        public var parentTaskId: String?

        public var sn: Int32?

        public var startTime: String?

        public var suggestion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audit != nil {
                map["Audit"] = self.audit!
            }
            if self.auditIllegalReasons != nil {
                map["AuditIllegalReasons"] = self.auditIllegalReasons!
            }
            if self.auditResult != nil {
                map["AuditResult"] = self.auditResult!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.parentTaskId != nil {
                map["ParentTaskId"] = self.parentTaskId!
            }
            if self.sn != nil {
                map["Sn"] = self.sn!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.suggestion != nil {
                map["Suggestion"] = self.suggestion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Audit") && dict["Audit"] != nil {
                self.audit = dict["Audit"] as! Int32
            }
            if dict.keys.contains("AuditIllegalReasons") && dict["AuditIllegalReasons"] != nil {
                self.auditIllegalReasons = dict["AuditIllegalReasons"] as! [String]
            }
            if dict.keys.contains("AuditResult") && dict["AuditResult"] != nil {
                self.auditResult = dict["AuditResult"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("ParentTaskId") && dict["ParentTaskId"] != nil {
                self.parentTaskId = dict["ParentTaskId"] as! String
            }
            if dict.keys.contains("Sn") && dict["Sn"] != nil {
                self.sn = dict["Sn"] as! Int32
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Suggestion") && dict["Suggestion"] != nil {
                self.suggestion = dict["Suggestion"] as! String
            }
        }
    }
    public var auditContentItemList: [DescribeAuditContentItemResponseBody.AuditContentItemList]?

    public var currentPage: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.auditContentItemList != nil {
            var tmp : [Any] = []
            for k in self.auditContentItemList! {
                tmp.append(k.toMap())
            }
            map["AuditContentItemList"] = tmp
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
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
        if dict.keys.contains("AuditContentItemList") && dict["AuditContentItemList"] != nil {
            var tmp : [DescribeAuditContentItemResponseBody.AuditContentItemList] = []
            for v in dict["AuditContentItemList"] as! [Any] {
                var model = DescribeAuditContentItemResponseBody.AuditContentItemList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.auditContentItemList = tmp
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAuditContentItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAuditContentItemResponseBody?

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
            var model = DescribeAuditContentItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAuditRangeResponseBody : Tea.TeaModel {
    public class AuditRange : Tea.TeaModel {
        public var block: Bool?

        public var pass: Bool?

        public var review: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.block != nil {
                map["block"] = self.block!
            }
            if self.pass != nil {
                map["pass"] = self.pass!
            }
            if self.review != nil {
                map["review"] = self.review!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("block") && dict["block"] != nil {
                self.block = dict["block"] as! Bool
            }
            if dict.keys.contains("pass") && dict["pass"] != nil {
                self.pass = dict["pass"] as! Bool
            }
            if dict.keys.contains("review") && dict["review"] != nil {
                self.review = dict["review"] as! Bool
            }
        }
    }
    public var auditRange: DescribeAuditRangeResponseBody.AuditRange?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.auditRange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditRange != nil {
            map["AuditRange"] = self.auditRange?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditRange") && dict["AuditRange"] != nil {
            var model = DescribeAuditRangeResponseBody.AuditRange()
            model.fromMap(dict["AuditRange"] as! [String: Any])
            self.auditRange = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAuditRangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAuditRangeResponseBody?

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
            var model = DescribeAuditRangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAuditSettingRequest : Tea.TeaModel {
    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeAuditSettingResponseBody : Tea.TeaModel {
    public class AuditRange : Tea.TeaModel {
        public var block: Bool?

        public var pass: Bool?

        public var review: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.block != nil {
                map["block"] = self.block!
            }
            if self.pass != nil {
                map["pass"] = self.pass!
            }
            if self.review != nil {
                map["review"] = self.review!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("block") && dict["block"] != nil {
                self.block = dict["block"] as! Bool
            }
            if dict.keys.contains("pass") && dict["pass"] != nil {
                self.pass = dict["pass"] as! Bool
            }
            if dict.keys.contains("review") && dict["review"] != nil {
                self.review = dict["review"] as! Bool
            }
        }
    }
    public var auditRange: DescribeAuditSettingResponseBody.AuditRange?

    public var callback: String?

    public var requestId: String?

    public var seed: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.auditRange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditRange != nil {
            map["AuditRange"] = self.auditRange?.toMap()
        }
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.seed != nil {
            map["Seed"] = self.seed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditRange") && dict["AuditRange"] != nil {
            var model = DescribeAuditSettingResponseBody.AuditRange()
            model.fromMap(dict["AuditRange"] as! [String: Any])
            self.auditRange = model
        }
        if dict.keys.contains("Callback") && dict["Callback"] != nil {
            self.callback = dict["Callback"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Seed") && dict["Seed"] != nil {
            self.seed = dict["Seed"] as! String
        }
    }
}

public class DescribeAuditSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAuditSettingResponseBody?

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
            var model = DescribeAuditSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBizTypeImageLibRequest : Tea.TeaModel {
    public var bizTypeName: String?

    public var resourceType: String?

    public var scene: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTypeName != nil {
            map["BizTypeName"] = self.bizTypeName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeName") && dict["BizTypeName"] != nil {
            self.bizTypeName = dict["BizTypeName"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
    }
}

public class DescribeBizTypeImageLibResponseBody : Tea.TeaModel {
    public class Black : Tea.TeaModel {
        public class All : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Selected : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var all: [DescribeBizTypeImageLibResponseBody.Black.All]?

        public var selected: [DescribeBizTypeImageLibResponseBody.Black.Selected]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.all != nil {
                var tmp : [Any] = []
                for k in self.all! {
                    tmp.append(k.toMap())
                }
                map["All"] = tmp
            }
            if self.selected != nil {
                var tmp : [Any] = []
                for k in self.selected! {
                    tmp.append(k.toMap())
                }
                map["Selected"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") && dict["All"] != nil {
                var tmp : [DescribeBizTypeImageLibResponseBody.Black.All] = []
                for v in dict["All"] as! [Any] {
                    var model = DescribeBizTypeImageLibResponseBody.Black.All()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.all = tmp
            }
            if dict.keys.contains("Selected") && dict["Selected"] != nil {
                var tmp : [DescribeBizTypeImageLibResponseBody.Black.Selected] = []
                for v in dict["Selected"] as! [Any] {
                    var model = DescribeBizTypeImageLibResponseBody.Black.Selected()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.selected = tmp
            }
        }
    }
    public class Review : Tea.TeaModel {
        public class All : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Selected : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var all: [DescribeBizTypeImageLibResponseBody.Review.All]?

        public var selected: [DescribeBizTypeImageLibResponseBody.Review.Selected]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.all != nil {
                var tmp : [Any] = []
                for k in self.all! {
                    tmp.append(k.toMap())
                }
                map["All"] = tmp
            }
            if self.selected != nil {
                var tmp : [Any] = []
                for k in self.selected! {
                    tmp.append(k.toMap())
                }
                map["Selected"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") && dict["All"] != nil {
                var tmp : [DescribeBizTypeImageLibResponseBody.Review.All] = []
                for v in dict["All"] as! [Any] {
                    var model = DescribeBizTypeImageLibResponseBody.Review.All()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.all = tmp
            }
            if dict.keys.contains("Selected") && dict["Selected"] != nil {
                var tmp : [DescribeBizTypeImageLibResponseBody.Review.Selected] = []
                for v in dict["Selected"] as! [Any] {
                    var model = DescribeBizTypeImageLibResponseBody.Review.Selected()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.selected = tmp
            }
        }
    }
    public class White : Tea.TeaModel {
        public class All : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Selected : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var all: [DescribeBizTypeImageLibResponseBody.White.All]?

        public var selected: [DescribeBizTypeImageLibResponseBody.White.Selected]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.all != nil {
                var tmp : [Any] = []
                for k in self.all! {
                    tmp.append(k.toMap())
                }
                map["All"] = tmp
            }
            if self.selected != nil {
                var tmp : [Any] = []
                for k in self.selected! {
                    tmp.append(k.toMap())
                }
                map["Selected"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") && dict["All"] != nil {
                var tmp : [DescribeBizTypeImageLibResponseBody.White.All] = []
                for v in dict["All"] as! [Any] {
                    var model = DescribeBizTypeImageLibResponseBody.White.All()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.all = tmp
            }
            if dict.keys.contains("Selected") && dict["Selected"] != nil {
                var tmp : [DescribeBizTypeImageLibResponseBody.White.Selected] = []
                for v in dict["Selected"] as! [Any] {
                    var model = DescribeBizTypeImageLibResponseBody.White.Selected()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.selected = tmp
            }
        }
    }
    public var black: DescribeBizTypeImageLibResponseBody.Black?

    public var requestId: String?

    public var review: DescribeBizTypeImageLibResponseBody.Review?

    public var white: DescribeBizTypeImageLibResponseBody.White?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.black?.validate()
        try self.review?.validate()
        try self.white?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.black != nil {
            map["Black"] = self.black?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.review != nil {
            map["Review"] = self.review?.toMap()
        }
        if self.white != nil {
            map["White"] = self.white?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Black") && dict["Black"] != nil {
            var model = DescribeBizTypeImageLibResponseBody.Black()
            model.fromMap(dict["Black"] as! [String: Any])
            self.black = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Review") && dict["Review"] != nil {
            var model = DescribeBizTypeImageLibResponseBody.Review()
            model.fromMap(dict["Review"] as! [String: Any])
            self.review = model
        }
        if dict.keys.contains("White") && dict["White"] != nil {
            var model = DescribeBizTypeImageLibResponseBody.White()
            model.fromMap(dict["White"] as! [String: Any])
            self.white = model
        }
    }
}

public class DescribeBizTypeImageLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBizTypeImageLibResponseBody?

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
            var model = DescribeBizTypeImageLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBizTypeSettingRequest : Tea.TeaModel {
    public var bizTypeName: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTypeName != nil {
            map["BizTypeName"] = self.bizTypeName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeName") && dict["BizTypeName"] != nil {
            self.bizTypeName = dict["BizTypeName"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class DescribeBizTypeSettingResponseBody : Tea.TeaModel {
    public class Ad : Tea.TeaModel {
        public var categories: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Categories") && dict["Categories"] != nil {
                self.categories = dict["Categories"] as! [String]
            }
        }
    }
    public class Antispam : Tea.TeaModel {
        public var categories: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Categories") && dict["Categories"] != nil {
                self.categories = dict["Categories"] as! [String]
            }
        }
    }
    public class Live : Tea.TeaModel {
        public var categories: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Categories") && dict["Categories"] != nil {
                self.categories = dict["Categories"] as! [String]
            }
        }
    }
    public class Porn : Tea.TeaModel {
        public var categories: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Categories") && dict["Categories"] != nil {
                self.categories = dict["Categories"] as! [String]
            }
        }
    }
    public class Terrorism : Tea.TeaModel {
        public var categories: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Categories") && dict["Categories"] != nil {
                self.categories = dict["Categories"] as! [String]
            }
        }
    }
    public var ad: DescribeBizTypeSettingResponseBody.Ad?

    public var antispam: DescribeBizTypeSettingResponseBody.Antispam?

    public var live: DescribeBizTypeSettingResponseBody.Live?

    public var porn: DescribeBizTypeSettingResponseBody.Porn?

    public var requestId: String?

    public var terrorism: DescribeBizTypeSettingResponseBody.Terrorism?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ad?.validate()
        try self.antispam?.validate()
        try self.live?.validate()
        try self.porn?.validate()
        try self.terrorism?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ad != nil {
            map["Ad"] = self.ad?.toMap()
        }
        if self.antispam != nil {
            map["Antispam"] = self.antispam?.toMap()
        }
        if self.live != nil {
            map["Live"] = self.live?.toMap()
        }
        if self.porn != nil {
            map["Porn"] = self.porn?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.terrorism != nil {
            map["Terrorism"] = self.terrorism?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ad") && dict["Ad"] != nil {
            var model = DescribeBizTypeSettingResponseBody.Ad()
            model.fromMap(dict["Ad"] as! [String: Any])
            self.ad = model
        }
        if dict.keys.contains("Antispam") && dict["Antispam"] != nil {
            var model = DescribeBizTypeSettingResponseBody.Antispam()
            model.fromMap(dict["Antispam"] as! [String: Any])
            self.antispam = model
        }
        if dict.keys.contains("Live") && dict["Live"] != nil {
            var model = DescribeBizTypeSettingResponseBody.Live()
            model.fromMap(dict["Live"] as! [String: Any])
            self.live = model
        }
        if dict.keys.contains("Porn") && dict["Porn"] != nil {
            var model = DescribeBizTypeSettingResponseBody.Porn()
            model.fromMap(dict["Porn"] as! [String: Any])
            self.porn = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Terrorism") && dict["Terrorism"] != nil {
            var model = DescribeBizTypeSettingResponseBody.Terrorism()
            model.fromMap(dict["Terrorism"] as! [String: Any])
            self.terrorism = model
        }
    }
}

public class DescribeBizTypeSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBizTypeSettingResponseBody?

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
            var model = DescribeBizTypeSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBizTypeTextLibRequest : Tea.TeaModel {
    public var bizTypeName: String?

    public var resourceType: String?

    public var scene: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTypeName != nil {
            map["BizTypeName"] = self.bizTypeName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeName") && dict["BizTypeName"] != nil {
            self.bizTypeName = dict["BizTypeName"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
    }
}

public class DescribeBizTypeTextLibResponseBody : Tea.TeaModel {
    public class Black : Tea.TeaModel {
        public class All : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Selected : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var all: [DescribeBizTypeTextLibResponseBody.Black.All]?

        public var selected: [DescribeBizTypeTextLibResponseBody.Black.Selected]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.all != nil {
                var tmp : [Any] = []
                for k in self.all! {
                    tmp.append(k.toMap())
                }
                map["All"] = tmp
            }
            if self.selected != nil {
                var tmp : [Any] = []
                for k in self.selected! {
                    tmp.append(k.toMap())
                }
                map["Selected"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") && dict["All"] != nil {
                var tmp : [DescribeBizTypeTextLibResponseBody.Black.All] = []
                for v in dict["All"] as! [Any] {
                    var model = DescribeBizTypeTextLibResponseBody.Black.All()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.all = tmp
            }
            if dict.keys.contains("Selected") && dict["Selected"] != nil {
                var tmp : [DescribeBizTypeTextLibResponseBody.Black.Selected] = []
                for v in dict["Selected"] as! [Any] {
                    var model = DescribeBizTypeTextLibResponseBody.Black.Selected()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.selected = tmp
            }
        }
    }
    public class Ignore : Tea.TeaModel {
        public class All : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Selected : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var all: [DescribeBizTypeTextLibResponseBody.Ignore.All]?

        public var selected: [DescribeBizTypeTextLibResponseBody.Ignore.Selected]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.all != nil {
                var tmp : [Any] = []
                for k in self.all! {
                    tmp.append(k.toMap())
                }
                map["All"] = tmp
            }
            if self.selected != nil {
                var tmp : [Any] = []
                for k in self.selected! {
                    tmp.append(k.toMap())
                }
                map["Selected"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") && dict["All"] != nil {
                var tmp : [DescribeBizTypeTextLibResponseBody.Ignore.All] = []
                for v in dict["All"] as! [Any] {
                    var model = DescribeBizTypeTextLibResponseBody.Ignore.All()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.all = tmp
            }
            if dict.keys.contains("Selected") && dict["Selected"] != nil {
                var tmp : [DescribeBizTypeTextLibResponseBody.Ignore.Selected] = []
                for v in dict["Selected"] as! [Any] {
                    var model = DescribeBizTypeTextLibResponseBody.Ignore.Selected()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.selected = tmp
            }
        }
    }
    public class Review : Tea.TeaModel {
        public class All : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Selected : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var all: [DescribeBizTypeTextLibResponseBody.Review.All]?

        public var selected: [DescribeBizTypeTextLibResponseBody.Review.Selected]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.all != nil {
                var tmp : [Any] = []
                for k in self.all! {
                    tmp.append(k.toMap())
                }
                map["All"] = tmp
            }
            if self.selected != nil {
                var tmp : [Any] = []
                for k in self.selected! {
                    tmp.append(k.toMap())
                }
                map["Selected"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") && dict["All"] != nil {
                var tmp : [DescribeBizTypeTextLibResponseBody.Review.All] = []
                for v in dict["All"] as! [Any] {
                    var model = DescribeBizTypeTextLibResponseBody.Review.All()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.all = tmp
            }
            if dict.keys.contains("Selected") && dict["Selected"] != nil {
                var tmp : [DescribeBizTypeTextLibResponseBody.Review.Selected] = []
                for v in dict["Selected"] as! [Any] {
                    var model = DescribeBizTypeTextLibResponseBody.Review.Selected()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.selected = tmp
            }
        }
    }
    public class White : Tea.TeaModel {
        public class All : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class Selected : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var all: [DescribeBizTypeTextLibResponseBody.White.All]?

        public var selected: [DescribeBizTypeTextLibResponseBody.White.Selected]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.all != nil {
                var tmp : [Any] = []
                for k in self.all! {
                    tmp.append(k.toMap())
                }
                map["All"] = tmp
            }
            if self.selected != nil {
                var tmp : [Any] = []
                for k in self.selected! {
                    tmp.append(k.toMap())
                }
                map["Selected"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") && dict["All"] != nil {
                var tmp : [DescribeBizTypeTextLibResponseBody.White.All] = []
                for v in dict["All"] as! [Any] {
                    var model = DescribeBizTypeTextLibResponseBody.White.All()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.all = tmp
            }
            if dict.keys.contains("Selected") && dict["Selected"] != nil {
                var tmp : [DescribeBizTypeTextLibResponseBody.White.Selected] = []
                for v in dict["Selected"] as! [Any] {
                    var model = DescribeBizTypeTextLibResponseBody.White.Selected()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.selected = tmp
            }
        }
    }
    public var black: DescribeBizTypeTextLibResponseBody.Black?

    public var ignore: DescribeBizTypeTextLibResponseBody.Ignore?

    public var requestId: String?

    public var review: DescribeBizTypeTextLibResponseBody.Review?

    public var white: DescribeBizTypeTextLibResponseBody.White?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.black?.validate()
        try self.ignore?.validate()
        try self.review?.validate()
        try self.white?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.black != nil {
            map["Black"] = self.black?.toMap()
        }
        if self.ignore != nil {
            map["Ignore"] = self.ignore?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.review != nil {
            map["Review"] = self.review?.toMap()
        }
        if self.white != nil {
            map["White"] = self.white?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Black") && dict["Black"] != nil {
            var model = DescribeBizTypeTextLibResponseBody.Black()
            model.fromMap(dict["Black"] as! [String: Any])
            self.black = model
        }
        if dict.keys.contains("Ignore") && dict["Ignore"] != nil {
            var model = DescribeBizTypeTextLibResponseBody.Ignore()
            model.fromMap(dict["Ignore"] as! [String: Any])
            self.ignore = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Review") && dict["Review"] != nil {
            var model = DescribeBizTypeTextLibResponseBody.Review()
            model.fromMap(dict["Review"] as! [String: Any])
            self.review = model
        }
        if dict.keys.contains("White") && dict["White"] != nil {
            var model = DescribeBizTypeTextLibResponseBody.White()
            model.fromMap(dict["White"] as! [String: Any])
            self.white = model
        }
    }
}

public class DescribeBizTypeTextLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBizTypeTextLibResponseBody?

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
            var model = DescribeBizTypeTextLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBizTypesRequest : Tea.TeaModel {
    public var importFlag: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.importFlag != nil {
            map["ImportFlag"] = self.importFlag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImportFlag") && dict["ImportFlag"] != nil {
            self.importFlag = dict["ImportFlag"] as! Bool
        }
    }
}

public class DescribeBizTypesResponseBody : Tea.TeaModel {
    public var bizTypeList: [String]?

    public var requestId: String?

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
        if self.bizTypeList != nil {
            map["BizTypeList"] = self.bizTypeList!
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
        if dict.keys.contains("BizTypeList") && dict["BizTypeList"] != nil {
            self.bizTypeList = dict["BizTypeList"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeBizTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBizTypesResponseBody?

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
            var model = DescribeBizTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCloudMonitorServicesRequest : Tea.TeaModel {
    public var page: String?

    public var pageSize: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Page") && dict["Page"] != nil {
            self.page = dict["Page"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeCloudMonitorServicesResponseBody : Tea.TeaModel {
    public var items: [String]?

    public var requestId: String?

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
        if self.items != nil {
            map["Items"] = self.items!
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
        if dict.keys.contains("Items") && dict["Items"] != nil {
            self.items = dict["Items"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCloudMonitorServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudMonitorServicesResponseBody?

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
            var model = DescribeCloudMonitorServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCustomOcrTemplateRequest : Tea.TeaModel {
    public var ids: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! String
        }
    }
}

public class DescribeCustomOcrTemplateResponseBody : Tea.TeaModel {
    public class OcrTemplateList : Tea.TeaModel {
        public class RecognizeArea : Tea.TeaModel {
            public var height: Int32?

            public var name: String?

            public var width: Int32?

            public var x: Int32?

            public var y: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Height") && dict["Height"] != nil {
                    self.height = dict["Height"] as! Int32
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Width") && dict["Width"] != nil {
                    self.width = dict["Width"] as! Int32
                }
                if dict.keys.contains("X") && dict["X"] != nil {
                    self.x = dict["X"] as! Int32
                }
                if dict.keys.contains("Y") && dict["Y"] != nil {
                    self.y = dict["Y"] as! Int32
                }
            }
        }
        public class ReferArea : Tea.TeaModel {
            public var height: Int32?

            public var name: String?

            public var width: Int32?

            public var x: Int32?

            public var y: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Height") && dict["Height"] != nil {
                    self.height = dict["Height"] as! Int32
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Width") && dict["Width"] != nil {
                    self.width = dict["Width"] as! Int32
                }
                if dict.keys.contains("X") && dict["X"] != nil {
                    self.x = dict["X"] as! Int32
                }
                if dict.keys.contains("Y") && dict["Y"] != nil {
                    self.y = dict["Y"] as! Int32
                }
            }
        }
        public var id: Int64?

        public var imgUrl: String?

        public var name: String?

        public var recognizeArea: [DescribeCustomOcrTemplateResponseBody.OcrTemplateList.RecognizeArea]?

        public var referArea: [DescribeCustomOcrTemplateResponseBody.OcrTemplateList.ReferArea]?

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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.imgUrl != nil {
                map["ImgUrl"] = self.imgUrl!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.recognizeArea != nil {
                var tmp : [Any] = []
                for k in self.recognizeArea! {
                    tmp.append(k.toMap())
                }
                map["RecognizeArea"] = tmp
            }
            if self.referArea != nil {
                var tmp : [Any] = []
                for k in self.referArea! {
                    tmp.append(k.toMap())
                }
                map["ReferArea"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("ImgUrl") && dict["ImgUrl"] != nil {
                self.imgUrl = dict["ImgUrl"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RecognizeArea") && dict["RecognizeArea"] != nil {
                var tmp : [DescribeCustomOcrTemplateResponseBody.OcrTemplateList.RecognizeArea] = []
                for v in dict["RecognizeArea"] as! [Any] {
                    var model = DescribeCustomOcrTemplateResponseBody.OcrTemplateList.RecognizeArea()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.recognizeArea = tmp
            }
            if dict.keys.contains("ReferArea") && dict["ReferArea"] != nil {
                var tmp : [DescribeCustomOcrTemplateResponseBody.OcrTemplateList.ReferArea] = []
                for v in dict["ReferArea"] as! [Any] {
                    var model = DescribeCustomOcrTemplateResponseBody.OcrTemplateList.ReferArea()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.referArea = tmp
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var ocrTemplateList: [DescribeCustomOcrTemplateResponseBody.OcrTemplateList]?

    public var requestId: String?

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
        if self.ocrTemplateList != nil {
            var tmp : [Any] = []
            for k in self.ocrTemplateList! {
                tmp.append(k.toMap())
            }
            map["OcrTemplateList"] = tmp
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
        if dict.keys.contains("OcrTemplateList") && dict["OcrTemplateList"] != nil {
            var tmp : [DescribeCustomOcrTemplateResponseBody.OcrTemplateList] = []
            for v in dict["OcrTemplateList"] as! [Any] {
                var model = DescribeCustomOcrTemplateResponseBody.OcrTemplateList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ocrTemplateList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCustomOcrTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomOcrTemplateResponseBody?

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
            var model = DescribeCustomOcrTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeImageFromLibRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var id: Int64?

    public var imageLibId: Int32?

    public var modelId: Int64?

    public var pageSize: Int32?

    public var sourceIp: String?

    public var startDate: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.imageLibId != nil {
            map["ImageLibId"] = self.imageLibId!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("ImageLibId") && dict["ImageLibId"] != nil {
            self.imageLibId = dict["ImageLibId"] as! Int32
        }
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeImageFromLibResponseBody : Tea.TeaModel {
    public class ImageFromLibList : Tea.TeaModel {
        public var createTime: String?

        public var id: Int64?

        public var image: String?

        public var imageHitCount: Int64?

        public var thumbnail: String?

        public var videoHitCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.imageHitCount != nil {
                map["ImageHitCount"] = self.imageHitCount!
            }
            if self.thumbnail != nil {
                map["Thumbnail"] = self.thumbnail!
            }
            if self.videoHitCount != nil {
                map["VideoHitCount"] = self.videoHitCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Image") && dict["Image"] != nil {
                self.image = dict["Image"] as! String
            }
            if dict.keys.contains("ImageHitCount") && dict["ImageHitCount"] != nil {
                self.imageHitCount = dict["ImageHitCount"] as! Int64
            }
            if dict.keys.contains("Thumbnail") && dict["Thumbnail"] != nil {
                self.thumbnail = dict["Thumbnail"] as! String
            }
            if dict.keys.contains("VideoHitCount") && dict["VideoHitCount"] != nil {
                self.videoHitCount = dict["VideoHitCount"] as! Int64
            }
        }
    }
    public var currentPage: Int32?

    public var imageFromLibList: [DescribeImageFromLibResponseBody.ImageFromLibList]?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.imageFromLibList != nil {
            var tmp : [Any] = []
            for k in self.imageFromLibList! {
                tmp.append(k.toMap())
            }
            map["ImageFromLibList"] = tmp
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
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("ImageFromLibList") && dict["ImageFromLibList"] != nil {
            var tmp : [DescribeImageFromLibResponseBody.ImageFromLibList] = []
            for v in dict["ImageFromLibList"] as! [Any] {
                var model = DescribeImageFromLibResponseBody.ImageFromLibList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.imageFromLibList = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeImageFromLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImageFromLibResponseBody?

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
            var model = DescribeImageFromLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeImageLibRequest : Tea.TeaModel {
    public var serviceModule: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceModule != nil {
            map["ServiceModule"] = self.serviceModule!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceModule") && dict["ServiceModule"] != nil {
            self.serviceModule = dict["ServiceModule"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeImageLibResponseBody : Tea.TeaModel {
    public class ImageLibList : Tea.TeaModel {
        public var bizTypes: [String]?

        public var category: String?

        public var code: String?

        public var enable: String?

        public var id: Int32?

        public var imageCount: Int32?

        public var modifiedTime: String?

        public var name: String?

        public var scene: String?

        public var serviceModule: String?

        public var source: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizTypes != nil {
                map["BizTypes"] = self.bizTypes!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.imageCount != nil {
                map["ImageCount"] = self.imageCount!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.serviceModule != nil {
                map["ServiceModule"] = self.serviceModule!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizTypes") && dict["BizTypes"] != nil {
                self.bizTypes = dict["BizTypes"] as! [String]
            }
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Enable") && dict["Enable"] != nil {
                self.enable = dict["Enable"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("ImageCount") && dict["ImageCount"] != nil {
                self.imageCount = dict["ImageCount"] as! Int32
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Scene") && dict["Scene"] != nil {
                self.scene = dict["Scene"] as! String
            }
            if dict.keys.contains("ServiceModule") && dict["ServiceModule"] != nil {
                self.serviceModule = dict["ServiceModule"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
        }
    }
    public var imageLibList: [DescribeImageLibResponseBody.ImageLibList]?

    public var requestId: String?

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
        if self.imageLibList != nil {
            var tmp : [Any] = []
            for k in self.imageLibList! {
                tmp.append(k.toMap())
            }
            map["ImageLibList"] = tmp
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
        if dict.keys.contains("ImageLibList") && dict["ImageLibList"] != nil {
            var tmp : [DescribeImageLibResponseBody.ImageLibList] = []
            for v in dict["ImageLibList"] as! [Any] {
                var model = DescribeImageLibResponseBody.ImageLibList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.imageLibList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeImageLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImageLibResponseBody?

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
            var model = DescribeImageLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeImageUploadInfoRequest : Tea.TeaModel {
    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeImageUploadInfoResponseBody : Tea.TeaModel {
    public var accessid: String?

    public var expire: Int32?

    public var folder: String?

    public var host: String?

    public var policy: String?

    public var requestId: String?

    public var signature: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessid != nil {
            map["Accessid"] = self.accessid!
        }
        if self.expire != nil {
            map["Expire"] = self.expire!
        }
        if self.folder != nil {
            map["Folder"] = self.folder!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessid") && dict["Accessid"] != nil {
            self.accessid = dict["Accessid"] as! String
        }
        if dict.keys.contains("Expire") && dict["Expire"] != nil {
            self.expire = dict["Expire"] as! Int32
        }
        if dict.keys.contains("Folder") && dict["Folder"] != nil {
            self.folder = dict["Folder"] as! String
        }
        if dict.keys.contains("Host") && dict["Host"] != nil {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Signature") && dict["Signature"] != nil {
            self.signature = dict["Signature"] as! String
        }
    }
}

public class DescribeImageUploadInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImageUploadInfoResponseBody?

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
            var model = DescribeImageUploadInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeKeywordRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var keyword: String?

    public var keywordLibId: Int32?

    public var lang: String?

    public var pageSize: Int32?

    public var sourceIp: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.keywordLibId != nil {
            map["KeywordLibId"] = self.keywordLibId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("KeywordLibId") && dict["KeywordLibId"] != nil {
            self.keywordLibId = dict["KeywordLibId"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeKeywordResponseBody : Tea.TeaModel {
    public class KeywordList : Tea.TeaModel {
        public var createTime: String?

        public var hitCount: Int32?

        public var id: Int32?

        public var keyword: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.hitCount != nil {
                map["HitCount"] = self.hitCount!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.keyword != nil {
                map["Keyword"] = self.keyword!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("HitCount") && dict["HitCount"] != nil {
                self.hitCount = dict["HitCount"] as! Int32
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
                self.keyword = dict["Keyword"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var keywordList: [DescribeKeywordResponseBody.KeywordList]?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.keywordList != nil {
            var tmp : [Any] = []
            for k in self.keywordList! {
                tmp.append(k.toMap())
            }
            map["KeywordList"] = tmp
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
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("KeywordList") && dict["KeywordList"] != nil {
            var tmp : [DescribeKeywordResponseBody.KeywordList] = []
            for v in dict["KeywordList"] as! [Any] {
                var model = DescribeKeywordResponseBody.KeywordList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.keywordList = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeKeywordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeKeywordResponseBody?

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
            var model = DescribeKeywordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeKeywordLibRequest : Tea.TeaModel {
    public var lang: String?

    public var serviceModule: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.serviceModule != nil {
            map["ServiceModule"] = self.serviceModule!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ServiceModule") && dict["ServiceModule"] != nil {
            self.serviceModule = dict["ServiceModule"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeKeywordLibResponseBody : Tea.TeaModel {
    public class KeywordLibList : Tea.TeaModel {
        public var bizTypes: [String]?

        public var category: String?

        public var code: String?

        public var count: Int32?

        public var enable: Bool?

        public var id: Int32?

        public var language: String?

        public var libType: String?

        public var matchMode: String?

        public var modifiedTime: String?

        public var name: String?

        public var resourceType: String?

        public var serviceModule: String?

        public var source: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizTypes != nil {
                map["BizTypes"] = self.bizTypes!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.libType != nil {
                map["LibType"] = self.libType!
            }
            if self.matchMode != nil {
                map["MatchMode"] = self.matchMode!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.serviceModule != nil {
                map["ServiceModule"] = self.serviceModule!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizTypes") && dict["BizTypes"] != nil {
                self.bizTypes = dict["BizTypes"] as! [String]
            }
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("Enable") && dict["Enable"] != nil {
                self.enable = dict["Enable"] as! Bool
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("Language") && dict["Language"] != nil {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("LibType") && dict["LibType"] != nil {
                self.libType = dict["LibType"] as! String
            }
            if dict.keys.contains("MatchMode") && dict["MatchMode"] != nil {
                self.matchMode = dict["MatchMode"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("ServiceModule") && dict["ServiceModule"] != nil {
                self.serviceModule = dict["ServiceModule"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
        }
    }
    public var keywordLibList: [DescribeKeywordLibResponseBody.KeywordLibList]?

    public var requestId: String?

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
        if self.keywordLibList != nil {
            var tmp : [Any] = []
            for k in self.keywordLibList! {
                tmp.append(k.toMap())
            }
            map["KeywordLibList"] = tmp
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
        if dict.keys.contains("KeywordLibList") && dict["KeywordLibList"] != nil {
            var tmp : [DescribeKeywordLibResponseBody.KeywordLibList] = []
            for v in dict["KeywordLibList"] as! [Any] {
                var model = DescribeKeywordLibResponseBody.KeywordLibList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.keywordLibList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeKeywordLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeKeywordLibResponseBody?

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
            var model = DescribeKeywordLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNotificationSettingRequest : Tea.TeaModel {
    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeNotificationSettingResponseBody : Tea.TeaModel {
    public var email: String?

    public var phone: String?

    public var realtimeMessageList: [String]?

    public var reminderModeList: [String]?

    public var requestId: String?

    public var scheduleMessageTime: Int32?

    public var scheduleMessageTimeZone: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.realtimeMessageList != nil {
            map["RealtimeMessageList"] = self.realtimeMessageList!
        }
        if self.reminderModeList != nil {
            map["ReminderModeList"] = self.reminderModeList!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scheduleMessageTime != nil {
            map["ScheduleMessageTime"] = self.scheduleMessageTime!
        }
        if self.scheduleMessageTimeZone != nil {
            map["ScheduleMessageTimeZone"] = self.scheduleMessageTimeZone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Phone") && dict["Phone"] != nil {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("RealtimeMessageList") && dict["RealtimeMessageList"] != nil {
            self.realtimeMessageList = dict["RealtimeMessageList"] as! [String]
        }
        if dict.keys.contains("ReminderModeList") && dict["ReminderModeList"] != nil {
            self.reminderModeList = dict["ReminderModeList"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScheduleMessageTime") && dict["ScheduleMessageTime"] != nil {
            self.scheduleMessageTime = dict["ScheduleMessageTime"] as! Int32
        }
        if dict.keys.contains("ScheduleMessageTimeZone") && dict["ScheduleMessageTimeZone"] != nil {
            self.scheduleMessageTimeZone = dict["ScheduleMessageTimeZone"] as! Int32
        }
    }
}

public class DescribeNotificationSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNotificationSettingResponseBody?

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
            var model = DescribeNotificationSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOpenApiRcpStatsRequest : Tea.TeaModel {
    public var bizType: String?

    public var endDate: String?

    public var resourceType: String?

    public var startDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class DescribeOpenApiRcpStatsResponseBody : Tea.TeaModel {
    public class StatList : Tea.TeaModel {
        public var blockCount: Int32?

        public var date: String?

        public var passCount: Int32?

        public var resourceType: String?

        public var reviewCount: Int32?

        public var totalCount: Int32?

        public var totalDuration: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blockCount != nil {
                map["BlockCount"] = self.blockCount!
            }
            if self.date != nil {
                map["Date"] = self.date!
            }
            if self.passCount != nil {
                map["PassCount"] = self.passCount!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.reviewCount != nil {
                map["ReviewCount"] = self.reviewCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalDuration != nil {
                map["TotalDuration"] = self.totalDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlockCount") && dict["BlockCount"] != nil {
                self.blockCount = dict["BlockCount"] as! Int32
            }
            if dict.keys.contains("Date") && dict["Date"] != nil {
                self.date = dict["Date"] as! String
            }
            if dict.keys.contains("PassCount") && dict["PassCount"] != nil {
                self.passCount = dict["PassCount"] as! Int32
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("ReviewCount") && dict["ReviewCount"] != nil {
                self.reviewCount = dict["ReviewCount"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("TotalDuration") && dict["TotalDuration"] != nil {
                self.totalDuration = dict["TotalDuration"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var statList: [DescribeOpenApiRcpStatsResponseBody.StatList]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.statList != nil {
            var tmp : [Any] = []
            for k in self.statList! {
                tmp.append(k.toMap())
            }
            map["StatList"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StatList") && dict["StatList"] != nil {
            var tmp : [DescribeOpenApiRcpStatsResponseBody.StatList] = []
            for v in dict["StatList"] as! [Any] {
                var model = DescribeOpenApiRcpStatsResponseBody.StatList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.statList = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeOpenApiRcpStatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOpenApiRcpStatsResponseBody?

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
            var model = DescribeOpenApiRcpStatsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOpenApiUsageRequest : Tea.TeaModel {
    public var endDate: String?

    public var resourceType: String?

    public var sourceIp: String?

    public var startDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class DescribeOpenApiUsageResponseBody : Tea.TeaModel {
    public class OpenApiUsageList : Tea.TeaModel {
        public var blockCount: Int32?

        public var blockDuration: Int32?

        public var date: String?

        public var innerTotalCount: Int32?

        public var outerTotalCount: Int32?

        public var passCount: Int32?

        public var passDuration: Int32?

        public var resourceType: String?

        public var reviewCount: Int32?

        public var reviewDuration: Int32?

        public var scene: String?

        public var totalCount: Int32?

        public var totalDuration: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blockCount != nil {
                map["BlockCount"] = self.blockCount!
            }
            if self.blockDuration != nil {
                map["BlockDuration"] = self.blockDuration!
            }
            if self.date != nil {
                map["Date"] = self.date!
            }
            if self.innerTotalCount != nil {
                map["InnerTotalCount"] = self.innerTotalCount!
            }
            if self.outerTotalCount != nil {
                map["OuterTotalCount"] = self.outerTotalCount!
            }
            if self.passCount != nil {
                map["PassCount"] = self.passCount!
            }
            if self.passDuration != nil {
                map["PassDuration"] = self.passDuration!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.reviewCount != nil {
                map["ReviewCount"] = self.reviewCount!
            }
            if self.reviewDuration != nil {
                map["ReviewDuration"] = self.reviewDuration!
            }
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalDuration != nil {
                map["TotalDuration"] = self.totalDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlockCount") && dict["BlockCount"] != nil {
                self.blockCount = dict["BlockCount"] as! Int32
            }
            if dict.keys.contains("BlockDuration") && dict["BlockDuration"] != nil {
                self.blockDuration = dict["BlockDuration"] as! Int32
            }
            if dict.keys.contains("Date") && dict["Date"] != nil {
                self.date = dict["Date"] as! String
            }
            if dict.keys.contains("InnerTotalCount") && dict["InnerTotalCount"] != nil {
                self.innerTotalCount = dict["InnerTotalCount"] as! Int32
            }
            if dict.keys.contains("OuterTotalCount") && dict["OuterTotalCount"] != nil {
                self.outerTotalCount = dict["OuterTotalCount"] as! Int32
            }
            if dict.keys.contains("PassCount") && dict["PassCount"] != nil {
                self.passCount = dict["PassCount"] as! Int32
            }
            if dict.keys.contains("PassDuration") && dict["PassDuration"] != nil {
                self.passDuration = dict["PassDuration"] as! Int32
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("ReviewCount") && dict["ReviewCount"] != nil {
                self.reviewCount = dict["ReviewCount"] as! Int32
            }
            if dict.keys.contains("ReviewDuration") && dict["ReviewDuration"] != nil {
                self.reviewDuration = dict["ReviewDuration"] as! Int32
            }
            if dict.keys.contains("Scene") && dict["Scene"] != nil {
                self.scene = dict["Scene"] as! String
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("TotalDuration") && dict["TotalDuration"] != nil {
                self.totalDuration = dict["TotalDuration"] as! Int32
            }
        }
    }
    public var openApiUsageList: [DescribeOpenApiUsageResponseBody.OpenApiUsageList]?

    public var requestId: String?

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
        if self.openApiUsageList != nil {
            var tmp : [Any] = []
            for k in self.openApiUsageList! {
                tmp.append(k.toMap())
            }
            map["OpenApiUsageList"] = tmp
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
        if dict.keys.contains("OpenApiUsageList") && dict["OpenApiUsageList"] != nil {
            var tmp : [DescribeOpenApiUsageResponseBody.OpenApiUsageList] = []
            for v in dict["OpenApiUsageList"] as! [Any] {
                var model = DescribeOpenApiUsageResponseBody.OpenApiUsageList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.openApiUsageList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeOpenApiUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOpenApiUsageResponseBody?

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
            var model = DescribeOpenApiUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOssCallbackSettingResponseBody : Tea.TeaModel {
    public var auditCallback: Bool?

    public var callbackSeed: String?

    public var callbackUrl: String?

    public var requestId: String?

    public var scanCallback: Bool?

    public var scanCallbackSuggestions: [String]?

    public var serviceModules: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditCallback != nil {
            map["AuditCallback"] = self.auditCallback!
        }
        if self.callbackSeed != nil {
            map["CallbackSeed"] = self.callbackSeed!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scanCallback != nil {
            map["ScanCallback"] = self.scanCallback!
        }
        if self.scanCallbackSuggestions != nil {
            map["ScanCallbackSuggestions"] = self.scanCallbackSuggestions!
        }
        if self.serviceModules != nil {
            map["ServiceModules"] = self.serviceModules!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditCallback") && dict["AuditCallback"] != nil {
            self.auditCallback = dict["AuditCallback"] as! Bool
        }
        if dict.keys.contains("CallbackSeed") && dict["CallbackSeed"] != nil {
            self.callbackSeed = dict["CallbackSeed"] as! String
        }
        if dict.keys.contains("CallbackUrl") && dict["CallbackUrl"] != nil {
            self.callbackUrl = dict["CallbackUrl"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScanCallback") && dict["ScanCallback"] != nil {
            self.scanCallback = dict["ScanCallback"] as! Bool
        }
        if dict.keys.contains("ScanCallbackSuggestions") && dict["ScanCallbackSuggestions"] != nil {
            self.scanCallbackSuggestions = dict["ScanCallbackSuggestions"] as! [String]
        }
        if dict.keys.contains("ServiceModules") && dict["ServiceModules"] != nil {
            self.serviceModules = dict["ServiceModules"] as! [String]
        }
    }
}

public class DescribeOssCallbackSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOssCallbackSettingResponseBody?

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
            var model = DescribeOssCallbackSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOssIncrementCheckSettingRequest : Tea.TeaModel {
    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeOssIncrementCheckSettingResponseBody : Tea.TeaModel {
    public class AudioAntispamFreezeConfig : Tea.TeaModel {
        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class BizTypeTemplate : Tea.TeaModel {
        public class ImageConfig : Tea.TeaModel {
            public class Ad : Tea.TeaModel {
                public var categories: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categories != nil {
                        map["Categories"] = self.categories!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Categories") && dict["Categories"] != nil {
                        self.categories = dict["Categories"] as! [String]
                    }
                }
            }
            public class Live : Tea.TeaModel {
                public var categories: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categories != nil {
                        map["Categories"] = self.categories!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Categories") && dict["Categories"] != nil {
                        self.categories = dict["Categories"] as! [String]
                    }
                }
            }
            public class Porn : Tea.TeaModel {
                public var categories: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categories != nil {
                        map["Categories"] = self.categories!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Categories") && dict["Categories"] != nil {
                        self.categories = dict["Categories"] as! [String]
                    }
                }
            }
            public class Terrorism : Tea.TeaModel {
                public var categories: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categories != nil {
                        map["Categories"] = self.categories!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Categories") && dict["Categories"] != nil {
                        self.categories = dict["Categories"] as! [String]
                    }
                }
            }
            public var ad: DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.ImageConfig.Ad?

            public var live: DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.ImageConfig.Live?

            public var porn: DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.ImageConfig.Porn?

            public var terrorism: DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.ImageConfig.Terrorism?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.ad?.validate()
                try self.live?.validate()
                try self.porn?.validate()
                try self.terrorism?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ad != nil {
                    map["Ad"] = self.ad?.toMap()
                }
                if self.live != nil {
                    map["Live"] = self.live?.toMap()
                }
                if self.porn != nil {
                    map["Porn"] = self.porn?.toMap()
                }
                if self.terrorism != nil {
                    map["Terrorism"] = self.terrorism?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Ad") && dict["Ad"] != nil {
                    var model = DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.ImageConfig.Ad()
                    model.fromMap(dict["Ad"] as! [String: Any])
                    self.ad = model
                }
                if dict.keys.contains("Live") && dict["Live"] != nil {
                    var model = DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.ImageConfig.Live()
                    model.fromMap(dict["Live"] as! [String: Any])
                    self.live = model
                }
                if dict.keys.contains("Porn") && dict["Porn"] != nil {
                    var model = DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.ImageConfig.Porn()
                    model.fromMap(dict["Porn"] as! [String: Any])
                    self.porn = model
                }
                if dict.keys.contains("Terrorism") && dict["Terrorism"] != nil {
                    var model = DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.ImageConfig.Terrorism()
                    model.fromMap(dict["Terrorism"] as! [String: Any])
                    self.terrorism = model
                }
            }
        }
        public class VideoConfig : Tea.TeaModel {
            public class Ad : Tea.TeaModel {
                public var categories: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categories != nil {
                        map["Categories"] = self.categories!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Categories") && dict["Categories"] != nil {
                        self.categories = dict["Categories"] as! [String]
                    }
                }
            }
            public class Live : Tea.TeaModel {
                public var categories: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categories != nil {
                        map["Categories"] = self.categories!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Categories") && dict["Categories"] != nil {
                        self.categories = dict["Categories"] as! [String]
                    }
                }
            }
            public class Porn : Tea.TeaModel {
                public var categories: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categories != nil {
                        map["Categories"] = self.categories!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Categories") && dict["Categories"] != nil {
                        self.categories = dict["Categories"] as! [String]
                    }
                }
            }
            public class Terrorism : Tea.TeaModel {
                public var categories: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categories != nil {
                        map["Categories"] = self.categories!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Categories") && dict["Categories"] != nil {
                        self.categories = dict["Categories"] as! [String]
                    }
                }
            }
            public var ad: DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.VideoConfig.Ad?

            public var live: DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.VideoConfig.Live?

            public var porn: DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.VideoConfig.Porn?

            public var terrorism: DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.VideoConfig.Terrorism?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.ad?.validate()
                try self.live?.validate()
                try self.porn?.validate()
                try self.terrorism?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ad != nil {
                    map["Ad"] = self.ad?.toMap()
                }
                if self.live != nil {
                    map["Live"] = self.live?.toMap()
                }
                if self.porn != nil {
                    map["Porn"] = self.porn?.toMap()
                }
                if self.terrorism != nil {
                    map["Terrorism"] = self.terrorism?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Ad") && dict["Ad"] != nil {
                    var model = DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.VideoConfig.Ad()
                    model.fromMap(dict["Ad"] as! [String: Any])
                    self.ad = model
                }
                if dict.keys.contains("Live") && dict["Live"] != nil {
                    var model = DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.VideoConfig.Live()
                    model.fromMap(dict["Live"] as! [String: Any])
                    self.live = model
                }
                if dict.keys.contains("Porn") && dict["Porn"] != nil {
                    var model = DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.VideoConfig.Porn()
                    model.fromMap(dict["Porn"] as! [String: Any])
                    self.porn = model
                }
                if dict.keys.contains("Terrorism") && dict["Terrorism"] != nil {
                    var model = DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.VideoConfig.Terrorism()
                    model.fromMap(dict["Terrorism"] as! [String: Any])
                    self.terrorism = model
                }
            }
        }
        public class VoiceConfig : Tea.TeaModel {
            public class Antispam : Tea.TeaModel {
                public var categories: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categories != nil {
                        map["Categories"] = self.categories!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Categories") && dict["Categories"] != nil {
                        self.categories = dict["Categories"] as! [String]
                    }
                }
            }
            public var antispam: DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.VoiceConfig.Antispam?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.antispam?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.antispam != nil {
                    map["Antispam"] = self.antispam?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Antispam") && dict["Antispam"] != nil {
                    var model = DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.VoiceConfig.Antispam()
                    model.fromMap(dict["Antispam"] as! [String: Any])
                    self.antispam = model
                }
            }
        }
        public var bizType: String?

        public var description_: String?

        public var imageConfig: DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.ImageConfig?

        public var includeChannel: Int32?

        public var name: String?

        public var videoConfig: DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.VideoConfig?

        public var voiceConfig: DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.VoiceConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.imageConfig?.validate()
            try self.videoConfig?.validate()
            try self.voiceConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.imageConfig != nil {
                map["ImageConfig"] = self.imageConfig?.toMap()
            }
            if self.includeChannel != nil {
                map["IncludeChannel"] = self.includeChannel!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.videoConfig != nil {
                map["VideoConfig"] = self.videoConfig?.toMap()
            }
            if self.voiceConfig != nil {
                map["VoiceConfig"] = self.voiceConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizType") && dict["BizType"] != nil {
                self.bizType = dict["BizType"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ImageConfig") && dict["ImageConfig"] != nil {
                var model = DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.ImageConfig()
                model.fromMap(dict["ImageConfig"] as! [String: Any])
                self.imageConfig = model
            }
            if dict.keys.contains("IncludeChannel") && dict["IncludeChannel"] != nil {
                self.includeChannel = dict["IncludeChannel"] as! Int32
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("VideoConfig") && dict["VideoConfig"] != nil {
                var model = DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.VideoConfig()
                model.fromMap(dict["VideoConfig"] as! [String: Any])
                self.videoConfig = model
            }
            if dict.keys.contains("VoiceConfig") && dict["VoiceConfig"] != nil {
                var model = DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate.VoiceConfig()
                model.fromMap(dict["VoiceConfig"] as! [String: Any])
                self.voiceConfig = model
            }
        }
    }
    public class BucketConfigList : Tea.TeaModel {
        public var bucket: String?

        public var prefixes: [String]?

        public var selected: Bool?

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
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.prefixes != nil {
                map["Prefixes"] = self.prefixes!
            }
            if self.selected != nil {
                map["Selected"] = self.selected!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bucket") && dict["Bucket"] != nil {
                self.bucket = dict["Bucket"] as! String
            }
            if dict.keys.contains("Prefixes") && dict["Prefixes"] != nil {
                self.prefixes = dict["Prefixes"] as! [String]
            }
            if dict.keys.contains("Selected") && dict["Selected"] != nil {
                self.selected = dict["Selected"] as! Bool
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class ImageAdFreezeConfig : Tea.TeaModel {
        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class ImageAutoFreeze : Tea.TeaModel {
        public var ad: String?

        public var enabled: Bool?

        public var live: String?

        public var porn: String?

        public var terrorism: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ad != nil {
                map["Ad"] = self.ad!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.live != nil {
                map["Live"] = self.live!
            }
            if self.porn != nil {
                map["Porn"] = self.porn!
            }
            if self.terrorism != nil {
                map["Terrorism"] = self.terrorism!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ad") && dict["Ad"] != nil {
                self.ad = dict["Ad"] as! String
            }
            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("Live") && dict["Live"] != nil {
                self.live = dict["Live"] as! String
            }
            if dict.keys.contains("Porn") && dict["Porn"] != nil {
                self.porn = dict["Porn"] as! String
            }
            if dict.keys.contains("Terrorism") && dict["Terrorism"] != nil {
                self.terrorism = dict["Terrorism"] as! String
            }
        }
    }
    public class ImageLiveFreezeConfig : Tea.TeaModel {
        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class ImagePornFreezeConfig : Tea.TeaModel {
        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class ImageTerrorismFreezeConfig : Tea.TeaModel {
        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class VideoAdFreezeConfig : Tea.TeaModel {
        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class VideoLiveFreezeConfig : Tea.TeaModel {
        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class VideoPornFreezeConfig : Tea.TeaModel {
        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class VideoTerrorismFreezeConfig : Tea.TeaModel {
        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class VideoVoiceAntispamFreezeConfig : Tea.TeaModel {
        public var type: String?

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
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var audioAntispamFreezeConfig: DescribeOssIncrementCheckSettingResponseBody.AudioAntispamFreezeConfig?

    public var audioAutoFreezeOpened: Bool?

    public var audioMaxSize: Int32?

    public var audioScanLimit: Int64?

    public var audioSceneList: [String]?

    public var autoFreezeType: String?

    public var bizType: String?

    public var bizTypeTemplate: DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate?

    public var bucketConfigList: [DescribeOssIncrementCheckSettingResponseBody.BucketConfigList]?

    public var callbackId: String?

    public var callbackName: String?

    public var endTime: String?

    public var imageAdFreezeConfig: DescribeOssIncrementCheckSettingResponseBody.ImageAdFreezeConfig?

    public var imageAutoFreeze: DescribeOssIncrementCheckSettingResponseBody.ImageAutoFreeze?

    public var imageAutoFreezeOpened: Bool?

    public var imageEnableLimit: Bool?

    public var imageLiveFreezeConfig: DescribeOssIncrementCheckSettingResponseBody.ImageLiveFreezeConfig?

    public var imagePornFreezeConfig: DescribeOssIncrementCheckSettingResponseBody.ImagePornFreezeConfig?

    public var imageScanLimit: Int64?

    public var imageSceneList: [String]?

    public var imageTerrorismFreezeConfig: DescribeOssIncrementCheckSettingResponseBody.ImageTerrorismFreezeConfig?

    public var requestId: String?

    public var scanImageNoFileType: Bool?

    public var startTime: String?

    public var videoAdFreezeConfig: DescribeOssIncrementCheckSettingResponseBody.VideoAdFreezeConfig?

    public var videoAutoFreezeOpened: Bool?

    public var videoAutoFreezeSceneList: [String]?

    public var videoFrameInterval: Int32?

    public var videoLiveFreezeConfig: DescribeOssIncrementCheckSettingResponseBody.VideoLiveFreezeConfig?

    public var videoMaxFrames: Int32?

    public var videoMaxSize: Int32?

    public var videoPornFreezeConfig: DescribeOssIncrementCheckSettingResponseBody.VideoPornFreezeConfig?

    public var videoScanLimit: Int64?

    public var videoSceneList: [String]?

    public var videoTerrorismFreezeConfig: DescribeOssIncrementCheckSettingResponseBody.VideoTerrorismFreezeConfig?

    public var videoVoiceAntispamFreezeConfig: DescribeOssIncrementCheckSettingResponseBody.VideoVoiceAntispamFreezeConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.audioAntispamFreezeConfig?.validate()
        try self.bizTypeTemplate?.validate()
        try self.imageAdFreezeConfig?.validate()
        try self.imageAutoFreeze?.validate()
        try self.imageLiveFreezeConfig?.validate()
        try self.imagePornFreezeConfig?.validate()
        try self.imageTerrorismFreezeConfig?.validate()
        try self.videoAdFreezeConfig?.validate()
        try self.videoLiveFreezeConfig?.validate()
        try self.videoPornFreezeConfig?.validate()
        try self.videoTerrorismFreezeConfig?.validate()
        try self.videoVoiceAntispamFreezeConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.audioAntispamFreezeConfig != nil {
            map["AudioAntispamFreezeConfig"] = self.audioAntispamFreezeConfig?.toMap()
        }
        if self.audioAutoFreezeOpened != nil {
            map["AudioAutoFreezeOpened"] = self.audioAutoFreezeOpened!
        }
        if self.audioMaxSize != nil {
            map["AudioMaxSize"] = self.audioMaxSize!
        }
        if self.audioScanLimit != nil {
            map["AudioScanLimit"] = self.audioScanLimit!
        }
        if self.audioSceneList != nil {
            map["AudioSceneList"] = self.audioSceneList!
        }
        if self.autoFreezeType != nil {
            map["AutoFreezeType"] = self.autoFreezeType!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.bizTypeTemplate != nil {
            map["BizTypeTemplate"] = self.bizTypeTemplate?.toMap()
        }
        if self.bucketConfigList != nil {
            var tmp : [Any] = []
            for k in self.bucketConfigList! {
                tmp.append(k.toMap())
            }
            map["BucketConfigList"] = tmp
        }
        if self.callbackId != nil {
            map["CallbackId"] = self.callbackId!
        }
        if self.callbackName != nil {
            map["CallbackName"] = self.callbackName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.imageAdFreezeConfig != nil {
            map["ImageAdFreezeConfig"] = self.imageAdFreezeConfig?.toMap()
        }
        if self.imageAutoFreeze != nil {
            map["ImageAutoFreeze"] = self.imageAutoFreeze?.toMap()
        }
        if self.imageAutoFreezeOpened != nil {
            map["ImageAutoFreezeOpened"] = self.imageAutoFreezeOpened!
        }
        if self.imageEnableLimit != nil {
            map["ImageEnableLimit"] = self.imageEnableLimit!
        }
        if self.imageLiveFreezeConfig != nil {
            map["ImageLiveFreezeConfig"] = self.imageLiveFreezeConfig?.toMap()
        }
        if self.imagePornFreezeConfig != nil {
            map["ImagePornFreezeConfig"] = self.imagePornFreezeConfig?.toMap()
        }
        if self.imageScanLimit != nil {
            map["ImageScanLimit"] = self.imageScanLimit!
        }
        if self.imageSceneList != nil {
            map["ImageSceneList"] = self.imageSceneList!
        }
        if self.imageTerrorismFreezeConfig != nil {
            map["ImageTerrorismFreezeConfig"] = self.imageTerrorismFreezeConfig?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scanImageNoFileType != nil {
            map["ScanImageNoFileType"] = self.scanImageNoFileType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.videoAdFreezeConfig != nil {
            map["VideoAdFreezeConfig"] = self.videoAdFreezeConfig?.toMap()
        }
        if self.videoAutoFreezeOpened != nil {
            map["VideoAutoFreezeOpened"] = self.videoAutoFreezeOpened!
        }
        if self.videoAutoFreezeSceneList != nil {
            map["VideoAutoFreezeSceneList"] = self.videoAutoFreezeSceneList!
        }
        if self.videoFrameInterval != nil {
            map["VideoFrameInterval"] = self.videoFrameInterval!
        }
        if self.videoLiveFreezeConfig != nil {
            map["VideoLiveFreezeConfig"] = self.videoLiveFreezeConfig?.toMap()
        }
        if self.videoMaxFrames != nil {
            map["VideoMaxFrames"] = self.videoMaxFrames!
        }
        if self.videoMaxSize != nil {
            map["VideoMaxSize"] = self.videoMaxSize!
        }
        if self.videoPornFreezeConfig != nil {
            map["VideoPornFreezeConfig"] = self.videoPornFreezeConfig?.toMap()
        }
        if self.videoScanLimit != nil {
            map["VideoScanLimit"] = self.videoScanLimit!
        }
        if self.videoSceneList != nil {
            map["VideoSceneList"] = self.videoSceneList!
        }
        if self.videoTerrorismFreezeConfig != nil {
            map["VideoTerrorismFreezeConfig"] = self.videoTerrorismFreezeConfig?.toMap()
        }
        if self.videoVoiceAntispamFreezeConfig != nil {
            map["VideoVoiceAntispamFreezeConfig"] = self.videoVoiceAntispamFreezeConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AudioAntispamFreezeConfig") && dict["AudioAntispamFreezeConfig"] != nil {
            var model = DescribeOssIncrementCheckSettingResponseBody.AudioAntispamFreezeConfig()
            model.fromMap(dict["AudioAntispamFreezeConfig"] as! [String: Any])
            self.audioAntispamFreezeConfig = model
        }
        if dict.keys.contains("AudioAutoFreezeOpened") && dict["AudioAutoFreezeOpened"] != nil {
            self.audioAutoFreezeOpened = dict["AudioAutoFreezeOpened"] as! Bool
        }
        if dict.keys.contains("AudioMaxSize") && dict["AudioMaxSize"] != nil {
            self.audioMaxSize = dict["AudioMaxSize"] as! Int32
        }
        if dict.keys.contains("AudioScanLimit") && dict["AudioScanLimit"] != nil {
            self.audioScanLimit = dict["AudioScanLimit"] as! Int64
        }
        if dict.keys.contains("AudioSceneList") && dict["AudioSceneList"] != nil {
            self.audioSceneList = dict["AudioSceneList"] as! [String]
        }
        if dict.keys.contains("AutoFreezeType") && dict["AutoFreezeType"] != nil {
            self.autoFreezeType = dict["AutoFreezeType"] as! String
        }
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("BizTypeTemplate") && dict["BizTypeTemplate"] != nil {
            var model = DescribeOssIncrementCheckSettingResponseBody.BizTypeTemplate()
            model.fromMap(dict["BizTypeTemplate"] as! [String: Any])
            self.bizTypeTemplate = model
        }
        if dict.keys.contains("BucketConfigList") && dict["BucketConfigList"] != nil {
            var tmp : [DescribeOssIncrementCheckSettingResponseBody.BucketConfigList] = []
            for v in dict["BucketConfigList"] as! [Any] {
                var model = DescribeOssIncrementCheckSettingResponseBody.BucketConfigList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.bucketConfigList = tmp
        }
        if dict.keys.contains("CallbackId") && dict["CallbackId"] != nil {
            self.callbackId = dict["CallbackId"] as! String
        }
        if dict.keys.contains("CallbackName") && dict["CallbackName"] != nil {
            self.callbackName = dict["CallbackName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ImageAdFreezeConfig") && dict["ImageAdFreezeConfig"] != nil {
            var model = DescribeOssIncrementCheckSettingResponseBody.ImageAdFreezeConfig()
            model.fromMap(dict["ImageAdFreezeConfig"] as! [String: Any])
            self.imageAdFreezeConfig = model
        }
        if dict.keys.contains("ImageAutoFreeze") && dict["ImageAutoFreeze"] != nil {
            var model = DescribeOssIncrementCheckSettingResponseBody.ImageAutoFreeze()
            model.fromMap(dict["ImageAutoFreeze"] as! [String: Any])
            self.imageAutoFreeze = model
        }
        if dict.keys.contains("ImageAutoFreezeOpened") && dict["ImageAutoFreezeOpened"] != nil {
            self.imageAutoFreezeOpened = dict["ImageAutoFreezeOpened"] as! Bool
        }
        if dict.keys.contains("ImageEnableLimit") && dict["ImageEnableLimit"] != nil {
            self.imageEnableLimit = dict["ImageEnableLimit"] as! Bool
        }
        if dict.keys.contains("ImageLiveFreezeConfig") && dict["ImageLiveFreezeConfig"] != nil {
            var model = DescribeOssIncrementCheckSettingResponseBody.ImageLiveFreezeConfig()
            model.fromMap(dict["ImageLiveFreezeConfig"] as! [String: Any])
            self.imageLiveFreezeConfig = model
        }
        if dict.keys.contains("ImagePornFreezeConfig") && dict["ImagePornFreezeConfig"] != nil {
            var model = DescribeOssIncrementCheckSettingResponseBody.ImagePornFreezeConfig()
            model.fromMap(dict["ImagePornFreezeConfig"] as! [String: Any])
            self.imagePornFreezeConfig = model
        }
        if dict.keys.contains("ImageScanLimit") && dict["ImageScanLimit"] != nil {
            self.imageScanLimit = dict["ImageScanLimit"] as! Int64
        }
        if dict.keys.contains("ImageSceneList") && dict["ImageSceneList"] != nil {
            self.imageSceneList = dict["ImageSceneList"] as! [String]
        }
        if dict.keys.contains("ImageTerrorismFreezeConfig") && dict["ImageTerrorismFreezeConfig"] != nil {
            var model = DescribeOssIncrementCheckSettingResponseBody.ImageTerrorismFreezeConfig()
            model.fromMap(dict["ImageTerrorismFreezeConfig"] as! [String: Any])
            self.imageTerrorismFreezeConfig = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScanImageNoFileType") && dict["ScanImageNoFileType"] != nil {
            self.scanImageNoFileType = dict["ScanImageNoFileType"] as! Bool
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("VideoAdFreezeConfig") && dict["VideoAdFreezeConfig"] != nil {
            var model = DescribeOssIncrementCheckSettingResponseBody.VideoAdFreezeConfig()
            model.fromMap(dict["VideoAdFreezeConfig"] as! [String: Any])
            self.videoAdFreezeConfig = model
        }
        if dict.keys.contains("VideoAutoFreezeOpened") && dict["VideoAutoFreezeOpened"] != nil {
            self.videoAutoFreezeOpened = dict["VideoAutoFreezeOpened"] as! Bool
        }
        if dict.keys.contains("VideoAutoFreezeSceneList") && dict["VideoAutoFreezeSceneList"] != nil {
            self.videoAutoFreezeSceneList = dict["VideoAutoFreezeSceneList"] as! [String]
        }
        if dict.keys.contains("VideoFrameInterval") && dict["VideoFrameInterval"] != nil {
            self.videoFrameInterval = dict["VideoFrameInterval"] as! Int32
        }
        if dict.keys.contains("VideoLiveFreezeConfig") && dict["VideoLiveFreezeConfig"] != nil {
            var model = DescribeOssIncrementCheckSettingResponseBody.VideoLiveFreezeConfig()
            model.fromMap(dict["VideoLiveFreezeConfig"] as! [String: Any])
            self.videoLiveFreezeConfig = model
        }
        if dict.keys.contains("VideoMaxFrames") && dict["VideoMaxFrames"] != nil {
            self.videoMaxFrames = dict["VideoMaxFrames"] as! Int32
        }
        if dict.keys.contains("VideoMaxSize") && dict["VideoMaxSize"] != nil {
            self.videoMaxSize = dict["VideoMaxSize"] as! Int32
        }
        if dict.keys.contains("VideoPornFreezeConfig") && dict["VideoPornFreezeConfig"] != nil {
            var model = DescribeOssIncrementCheckSettingResponseBody.VideoPornFreezeConfig()
            model.fromMap(dict["VideoPornFreezeConfig"] as! [String: Any])
            self.videoPornFreezeConfig = model
        }
        if dict.keys.contains("VideoScanLimit") && dict["VideoScanLimit"] != nil {
            self.videoScanLimit = dict["VideoScanLimit"] as! Int64
        }
        if dict.keys.contains("VideoSceneList") && dict["VideoSceneList"] != nil {
            self.videoSceneList = dict["VideoSceneList"] as! [String]
        }
        if dict.keys.contains("VideoTerrorismFreezeConfig") && dict["VideoTerrorismFreezeConfig"] != nil {
            var model = DescribeOssIncrementCheckSettingResponseBody.VideoTerrorismFreezeConfig()
            model.fromMap(dict["VideoTerrorismFreezeConfig"] as! [String: Any])
            self.videoTerrorismFreezeConfig = model
        }
        if dict.keys.contains("VideoVoiceAntispamFreezeConfig") && dict["VideoVoiceAntispamFreezeConfig"] != nil {
            var model = DescribeOssIncrementCheckSettingResponseBody.VideoVoiceAntispamFreezeConfig()
            model.fromMap(dict["VideoVoiceAntispamFreezeConfig"] as! [String: Any])
            self.videoVoiceAntispamFreezeConfig = model
        }
    }
}

public class DescribeOssIncrementCheckSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOssIncrementCheckSettingResponseBody?

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
            var model = DescribeOssIncrementCheckSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOssIncrementOverviewRequest : Tea.TeaModel {
    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeOssIncrementOverviewResponseBody : Tea.TeaModel {
    public var adUnhandleCount: Int32?

    public var audioCount: Int32?

    public var imageCount: Int32?

    public var liveUnhandleCount: Int32?

    public var pornUnhandleCount: Int32?

    public var requestId: String?

    public var terrorismUnhandleCount: Int32?

    public var videoCount: Int32?

    public var videoFrameCount: Int32?

    public var voiceAntispamUnhandleCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adUnhandleCount != nil {
            map["AdUnhandleCount"] = self.adUnhandleCount!
        }
        if self.audioCount != nil {
            map["AudioCount"] = self.audioCount!
        }
        if self.imageCount != nil {
            map["ImageCount"] = self.imageCount!
        }
        if self.liveUnhandleCount != nil {
            map["LiveUnhandleCount"] = self.liveUnhandleCount!
        }
        if self.pornUnhandleCount != nil {
            map["PornUnhandleCount"] = self.pornUnhandleCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.terrorismUnhandleCount != nil {
            map["TerrorismUnhandleCount"] = self.terrorismUnhandleCount!
        }
        if self.videoCount != nil {
            map["VideoCount"] = self.videoCount!
        }
        if self.videoFrameCount != nil {
            map["VideoFrameCount"] = self.videoFrameCount!
        }
        if self.voiceAntispamUnhandleCount != nil {
            map["VoiceAntispamUnhandleCount"] = self.voiceAntispamUnhandleCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdUnhandleCount") && dict["AdUnhandleCount"] != nil {
            self.adUnhandleCount = dict["AdUnhandleCount"] as! Int32
        }
        if dict.keys.contains("AudioCount") && dict["AudioCount"] != nil {
            self.audioCount = dict["AudioCount"] as! Int32
        }
        if dict.keys.contains("ImageCount") && dict["ImageCount"] != nil {
            self.imageCount = dict["ImageCount"] as! Int32
        }
        if dict.keys.contains("LiveUnhandleCount") && dict["LiveUnhandleCount"] != nil {
            self.liveUnhandleCount = dict["LiveUnhandleCount"] as! Int32
        }
        if dict.keys.contains("PornUnhandleCount") && dict["PornUnhandleCount"] != nil {
            self.pornUnhandleCount = dict["PornUnhandleCount"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TerrorismUnhandleCount") && dict["TerrorismUnhandleCount"] != nil {
            self.terrorismUnhandleCount = dict["TerrorismUnhandleCount"] as! Int32
        }
        if dict.keys.contains("VideoCount") && dict["VideoCount"] != nil {
            self.videoCount = dict["VideoCount"] as! Int32
        }
        if dict.keys.contains("VideoFrameCount") && dict["VideoFrameCount"] != nil {
            self.videoFrameCount = dict["VideoFrameCount"] as! Int32
        }
        if dict.keys.contains("VoiceAntispamUnhandleCount") && dict["VoiceAntispamUnhandleCount"] != nil {
            self.voiceAntispamUnhandleCount = dict["VoiceAntispamUnhandleCount"] as! Int32
        }
    }
}

public class DescribeOssIncrementOverviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOssIncrementOverviewResponseBody?

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
            var model = DescribeOssIncrementOverviewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOssIncrementStatsRequest : Tea.TeaModel {
    public var endDate: String?

    public var lang: String?

    public var resourceType: String?

    public var scene: String?

    public var sourceIp: String?

    public var startDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class DescribeOssIncrementStatsResponseBody : Tea.TeaModel {
    public class StatList : Tea.TeaModel {
        public var blockCount: Int32?

        public var date: String?

        public var passCount: Int32?

        public var resourceType: String?

        public var reviewCount: Int32?

        public var scene: String?

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
            if self.blockCount != nil {
                map["BlockCount"] = self.blockCount!
            }
            if self.date != nil {
                map["Date"] = self.date!
            }
            if self.passCount != nil {
                map["PassCount"] = self.passCount!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.reviewCount != nil {
                map["ReviewCount"] = self.reviewCount!
            }
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlockCount") && dict["BlockCount"] != nil {
                self.blockCount = dict["BlockCount"] as! Int32
            }
            if dict.keys.contains("Date") && dict["Date"] != nil {
                self.date = dict["Date"] as! String
            }
            if dict.keys.contains("PassCount") && dict["PassCount"] != nil {
                self.passCount = dict["PassCount"] as! Int32
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("ReviewCount") && dict["ReviewCount"] != nil {
                self.reviewCount = dict["ReviewCount"] as! Int32
            }
            if dict.keys.contains("Scene") && dict["Scene"] != nil {
                self.scene = dict["Scene"] as! String
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var statList: [DescribeOssIncrementStatsResponseBody.StatList]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.statList != nil {
            var tmp : [Any] = []
            for k in self.statList! {
                tmp.append(k.toMap())
            }
            map["StatList"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StatList") && dict["StatList"] != nil {
            var tmp : [DescribeOssIncrementStatsResponseBody.StatList] = []
            for v in dict["StatList"] as! [Any] {
                var model = DescribeOssIncrementStatsResponseBody.StatList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.statList = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeOssIncrementStatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOssIncrementStatsResponseBody?

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
            var model = DescribeOssIncrementStatsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOssResultItemsRequest : Tea.TeaModel {
    public var bucket: String?

    public var currentPage: Int32?

    public var endDate: String?

    public var lang: String?

    public var maxScore: Double?

    public var minScore: Double?

    public var object: String?

    public var pageSize: Int32?

    public var queryId: String?

    public var resourceType: String?

    public var scene: String?

    public var sourceIp: String?

    public var startDate: String?

    public var stock: Bool?

    public var stockTaskId: Int64?

    public var suggestion: String?

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
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxScore != nil {
            map["MaxScore"] = self.maxScore!
        }
        if self.minScore != nil {
            map["MinScore"] = self.minScore!
        }
        if self.object != nil {
            map["Object"] = self.object!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.stock != nil {
            map["Stock"] = self.stock!
        }
        if self.stockTaskId != nil {
            map["StockTaskId"] = self.stockTaskId!
        }
        if self.suggestion != nil {
            map["Suggestion"] = self.suggestion!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bucket") && dict["Bucket"] != nil {
            self.bucket = dict["Bucket"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MaxScore") && dict["MaxScore"] != nil {
            self.maxScore = dict["MaxScore"] as! Double
        }
        if dict.keys.contains("MinScore") && dict["MinScore"] != nil {
            self.minScore = dict["MinScore"] as! Double
        }
        if dict.keys.contains("Object") && dict["Object"] != nil {
            self.object = dict["Object"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryId") && dict["QueryId"] != nil {
            self.queryId = dict["QueryId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Stock") && dict["Stock"] != nil {
            self.stock = dict["Stock"] as! Bool
        }
        if dict.keys.contains("StockTaskId") && dict["StockTaskId"] != nil {
            self.stockTaskId = dict["StockTaskId"] as! Int64
        }
        if dict.keys.contains("Suggestion") && dict["Suggestion"] != nil {
            self.suggestion = dict["Suggestion"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeOssResultItemsResponseBody : Tea.TeaModel {
    public class ScanResultList : Tea.TeaModel {
        public class FrameResults : Tea.TeaModel {
            public var offset: Int32?

            public var thumbnail: String?

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
                if self.offset != nil {
                    map["Offset"] = self.offset!
                }
                if self.thumbnail != nil {
                    map["Thumbnail"] = self.thumbnail!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Offset") && dict["Offset"] != nil {
                    self.offset = dict["Offset"] as! Int32
                }
                if dict.keys.contains("Thumbnail") && dict["Thumbnail"] != nil {
                    self.thumbnail = dict["Thumbnail"] as! String
                }
                if dict.keys.contains("Url") && dict["Url"] != nil {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public class VoiceSegmentAntispamResults : Tea.TeaModel {
            public var endTime: Int32?

            public var label: String?

            public var startTime: Int32?

            public var text: String?

            public override init() {
                super.init()
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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                    self.endTime = dict["EndTime"] as! Int32
                }
                if dict.keys.contains("Label") && dict["Label"] != nil {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! Int32
                }
                if dict.keys.contains("Text") && dict["Text"] != nil {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public var bucket: String?

        public var content: String?

        public var createTime: String?

        public var dataId: String?

        public var frameResults: [DescribeOssResultItemsResponseBody.ScanResultList.FrameResults]?

        public var handleStatus: Int32?

        public var id: Int64?

        public var newUrl: String?

        public var object: String?

        public var requestTime: String?

        public var resourceStatus: Int32?

        public var scanFinishedTime: String?

        public var score: String?

        public var suggestion: String?

        public var taskId: String?

        public var thumbnail: String?

        public var voiceSegmentAntispamResults: [DescribeOssResultItemsResponseBody.ScanResultList.VoiceSegmentAntispamResults]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.frameResults != nil {
                var tmp : [Any] = []
                for k in self.frameResults! {
                    tmp.append(k.toMap())
                }
                map["FrameResults"] = tmp
            }
            if self.handleStatus != nil {
                map["HandleStatus"] = self.handleStatus!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.newUrl != nil {
                map["NewUrl"] = self.newUrl!
            }
            if self.object != nil {
                map["Object"] = self.object!
            }
            if self.requestTime != nil {
                map["RequestTime"] = self.requestTime!
            }
            if self.resourceStatus != nil {
                map["ResourceStatus"] = self.resourceStatus!
            }
            if self.scanFinishedTime != nil {
                map["ScanFinishedTime"] = self.scanFinishedTime!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.suggestion != nil {
                map["Suggestion"] = self.suggestion!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.thumbnail != nil {
                map["Thumbnail"] = self.thumbnail!
            }
            if self.voiceSegmentAntispamResults != nil {
                var tmp : [Any] = []
                for k in self.voiceSegmentAntispamResults! {
                    tmp.append(k.toMap())
                }
                map["VoiceSegmentAntispamResults"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bucket") && dict["Bucket"] != nil {
                self.bucket = dict["Bucket"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("FrameResults") && dict["FrameResults"] != nil {
                var tmp : [DescribeOssResultItemsResponseBody.ScanResultList.FrameResults] = []
                for v in dict["FrameResults"] as! [Any] {
                    var model = DescribeOssResultItemsResponseBody.ScanResultList.FrameResults()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.frameResults = tmp
            }
            if dict.keys.contains("HandleStatus") && dict["HandleStatus"] != nil {
                self.handleStatus = dict["HandleStatus"] as! Int32
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("NewUrl") && dict["NewUrl"] != nil {
                self.newUrl = dict["NewUrl"] as! String
            }
            if dict.keys.contains("Object") && dict["Object"] != nil {
                self.object = dict["Object"] as! String
            }
            if dict.keys.contains("RequestTime") && dict["RequestTime"] != nil {
                self.requestTime = dict["RequestTime"] as! String
            }
            if dict.keys.contains("ResourceStatus") && dict["ResourceStatus"] != nil {
                self.resourceStatus = dict["ResourceStatus"] as! Int32
            }
            if dict.keys.contains("ScanFinishedTime") && dict["ScanFinishedTime"] != nil {
                self.scanFinishedTime = dict["ScanFinishedTime"] as! String
            }
            if dict.keys.contains("Score") && dict["Score"] != nil {
                self.score = dict["Score"] as! String
            }
            if dict.keys.contains("Suggestion") && dict["Suggestion"] != nil {
                self.suggestion = dict["Suggestion"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Thumbnail") && dict["Thumbnail"] != nil {
                self.thumbnail = dict["Thumbnail"] as! String
            }
            if dict.keys.contains("VoiceSegmentAntispamResults") && dict["VoiceSegmentAntispamResults"] != nil {
                var tmp : [DescribeOssResultItemsResponseBody.ScanResultList.VoiceSegmentAntispamResults] = []
                for v in dict["VoiceSegmentAntispamResults"] as! [Any] {
                    var model = DescribeOssResultItemsResponseBody.ScanResultList.VoiceSegmentAntispamResults()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.voiceSegmentAntispamResults = tmp
            }
        }
    }
    public var currentPage: Int32?

    public var pageSize: Int32?

    public var queryId: String?

    public var requestId: String?

    public var scanResultList: [DescribeOssResultItemsResponseBody.ScanResultList]?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scanResultList != nil {
            var tmp : [Any] = []
            for k in self.scanResultList! {
                tmp.append(k.toMap())
            }
            map["ScanResultList"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryId") && dict["QueryId"] != nil {
            self.queryId = dict["QueryId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScanResultList") && dict["ScanResultList"] != nil {
            var tmp : [DescribeOssResultItemsResponseBody.ScanResultList] = []
            for v in dict["ScanResultList"] as! [Any] {
                var model = DescribeOssResultItemsResponseBody.ScanResultList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.scanResultList = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeOssResultItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOssResultItemsResponseBody?

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
            var model = DescribeOssResultItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOssStockStatusRequest : Tea.TeaModel {
    public var lang: String?

    public var sourceIp: String?

    public var stockTaskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.stockTaskId != nil {
            map["StockTaskId"] = self.stockTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("StockTaskId") && dict["StockTaskId"] != nil {
            self.stockTaskId = dict["StockTaskId"] as! Int64
        }
    }
}

public class DescribeOssStockStatusResponseBody : Tea.TeaModel {
    public class BucketList : Tea.TeaModel {
        public var bucket: String?

        public var prefixes: [String]?

        public var selected: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.prefixes != nil {
                map["Prefixes"] = self.prefixes!
            }
            if self.selected != nil {
                map["Selected"] = self.selected!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bucket") && dict["Bucket"] != nil {
                self.bucket = dict["Bucket"] as! String
            }
            if dict.keys.contains("Prefixes") && dict["Prefixes"] != nil {
                self.prefixes = dict["Prefixes"] as! [String]
            }
            if dict.keys.contains("Selected") && dict["Selected"] != nil {
                self.selected = dict["Selected"] as! Bool
            }
        }
    }
    public var audioAntispamCount: Int32?

    public var audioTotalCount: Int32?

    public var bucketList: [DescribeOssStockStatusResponseBody.BucketList]?

    public var finishedTime: String?

    public var imageAdCount: Int32?

    public var imageLiveCount: Int32?

    public var imagePornCount: Int32?

    public var imageTerrorismCount: Int32?

    public var imageTotalCount: Int32?

    public var requestId: String?

    public var resouceTypeList: [String]?

    public var sceneList: [String]?

    public var stockStatus: Int32?

    public var videoAdCount: Int32?

    public var videoLiveCount: Int32?

    public var videoPornCount: Int32?

    public var videoTerrorismCount: Int32?

    public var videoTotalCount: Int32?

    public var videoVoiceAntispamCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.audioAntispamCount != nil {
            map["AudioAntispamCount"] = self.audioAntispamCount!
        }
        if self.audioTotalCount != nil {
            map["AudioTotalCount"] = self.audioTotalCount!
        }
        if self.bucketList != nil {
            var tmp : [Any] = []
            for k in self.bucketList! {
                tmp.append(k.toMap())
            }
            map["BucketList"] = tmp
        }
        if self.finishedTime != nil {
            map["FinishedTime"] = self.finishedTime!
        }
        if self.imageAdCount != nil {
            map["ImageAdCount"] = self.imageAdCount!
        }
        if self.imageLiveCount != nil {
            map["ImageLiveCount"] = self.imageLiveCount!
        }
        if self.imagePornCount != nil {
            map["ImagePornCount"] = self.imagePornCount!
        }
        if self.imageTerrorismCount != nil {
            map["ImageTerrorismCount"] = self.imageTerrorismCount!
        }
        if self.imageTotalCount != nil {
            map["ImageTotalCount"] = self.imageTotalCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resouceTypeList != nil {
            map["ResouceTypeList"] = self.resouceTypeList!
        }
        if self.sceneList != nil {
            map["SceneList"] = self.sceneList!
        }
        if self.stockStatus != nil {
            map["StockStatus"] = self.stockStatus!
        }
        if self.videoAdCount != nil {
            map["VideoAdCount"] = self.videoAdCount!
        }
        if self.videoLiveCount != nil {
            map["VideoLiveCount"] = self.videoLiveCount!
        }
        if self.videoPornCount != nil {
            map["VideoPornCount"] = self.videoPornCount!
        }
        if self.videoTerrorismCount != nil {
            map["VideoTerrorismCount"] = self.videoTerrorismCount!
        }
        if self.videoTotalCount != nil {
            map["VideoTotalCount"] = self.videoTotalCount!
        }
        if self.videoVoiceAntispamCount != nil {
            map["VideoVoiceAntispamCount"] = self.videoVoiceAntispamCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AudioAntispamCount") && dict["AudioAntispamCount"] != nil {
            self.audioAntispamCount = dict["AudioAntispamCount"] as! Int32
        }
        if dict.keys.contains("AudioTotalCount") && dict["AudioTotalCount"] != nil {
            self.audioTotalCount = dict["AudioTotalCount"] as! Int32
        }
        if dict.keys.contains("BucketList") && dict["BucketList"] != nil {
            var tmp : [DescribeOssStockStatusResponseBody.BucketList] = []
            for v in dict["BucketList"] as! [Any] {
                var model = DescribeOssStockStatusResponseBody.BucketList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.bucketList = tmp
        }
        if dict.keys.contains("FinishedTime") && dict["FinishedTime"] != nil {
            self.finishedTime = dict["FinishedTime"] as! String
        }
        if dict.keys.contains("ImageAdCount") && dict["ImageAdCount"] != nil {
            self.imageAdCount = dict["ImageAdCount"] as! Int32
        }
        if dict.keys.contains("ImageLiveCount") && dict["ImageLiveCount"] != nil {
            self.imageLiveCount = dict["ImageLiveCount"] as! Int32
        }
        if dict.keys.contains("ImagePornCount") && dict["ImagePornCount"] != nil {
            self.imagePornCount = dict["ImagePornCount"] as! Int32
        }
        if dict.keys.contains("ImageTerrorismCount") && dict["ImageTerrorismCount"] != nil {
            self.imageTerrorismCount = dict["ImageTerrorismCount"] as! Int32
        }
        if dict.keys.contains("ImageTotalCount") && dict["ImageTotalCount"] != nil {
            self.imageTotalCount = dict["ImageTotalCount"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResouceTypeList") && dict["ResouceTypeList"] != nil {
            self.resouceTypeList = dict["ResouceTypeList"] as! [String]
        }
        if dict.keys.contains("SceneList") && dict["SceneList"] != nil {
            self.sceneList = dict["SceneList"] as! [String]
        }
        if dict.keys.contains("StockStatus") && dict["StockStatus"] != nil {
            self.stockStatus = dict["StockStatus"] as! Int32
        }
        if dict.keys.contains("VideoAdCount") && dict["VideoAdCount"] != nil {
            self.videoAdCount = dict["VideoAdCount"] as! Int32
        }
        if dict.keys.contains("VideoLiveCount") && dict["VideoLiveCount"] != nil {
            self.videoLiveCount = dict["VideoLiveCount"] as! Int32
        }
        if dict.keys.contains("VideoPornCount") && dict["VideoPornCount"] != nil {
            self.videoPornCount = dict["VideoPornCount"] as! Int32
        }
        if dict.keys.contains("VideoTerrorismCount") && dict["VideoTerrorismCount"] != nil {
            self.videoTerrorismCount = dict["VideoTerrorismCount"] as! Int32
        }
        if dict.keys.contains("VideoTotalCount") && dict["VideoTotalCount"] != nil {
            self.videoTotalCount = dict["VideoTotalCount"] as! Int32
        }
        if dict.keys.contains("VideoVoiceAntispamCount") && dict["VideoVoiceAntispamCount"] != nil {
            self.videoVoiceAntispamCount = dict["VideoVoiceAntispamCount"] as! Int32
        }
    }
}

public class DescribeOssStockStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOssStockStatusResponseBody?

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
            var model = DescribeOssStockStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSdkUrlRequest : Tea.TeaModel {
    public var debug: Bool?

    public var id: Int64?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.debug != nil {
            map["Debug"] = self.debug!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Debug") && dict["Debug"] != nil {
            self.debug = dict["Debug"] as! Bool
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeSdkUrlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var sdkUrl: String?

    public override init() {
        super.init()
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
        if self.sdkUrl != nil {
            map["SdkUrl"] = self.sdkUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SdkUrl") && dict["SdkUrl"] != nil {
            self.sdkUrl = dict["SdkUrl"] as! String
        }
    }
}

public class DescribeSdkUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSdkUrlResponseBody?

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
            var model = DescribeSdkUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUpdatePackageResultRequest : Tea.TeaModel {
    public var lang: String?

    public var sourceIp: String?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DescribeUpdatePackageResultResponseBody : Tea.TeaModel {
    public class AppInfo : Tea.TeaModel {
        public class DebugPackageInfo : Tea.TeaModel {
            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Version") && dict["Version"] != nil {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public class PackageInfo : Tea.TeaModel {
            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Version") && dict["Version"] != nil {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public var debugPackageInfo: DescribeUpdatePackageResultResponseBody.AppInfo.DebugPackageInfo?

        public var endDate: String?

        public var icon: String?

        public var id: Int64?

        public var name: String?

        public var packageInfo: DescribeUpdatePackageResultResponseBody.AppInfo.PackageInfo?

        public var packageName: String?

        public var startDate: String?

        public var type: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.debugPackageInfo?.validate()
            try self.packageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.debugPackageInfo != nil {
                map["DebugPackageInfo"] = self.debugPackageInfo?.toMap()
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.icon != nil {
                map["Icon"] = self.icon!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.packageInfo != nil {
                map["PackageInfo"] = self.packageInfo?.toMap()
            }
            if self.packageName != nil {
                map["PackageName"] = self.packageName!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DebugPackageInfo") && dict["DebugPackageInfo"] != nil {
                var model = DescribeUpdatePackageResultResponseBody.AppInfo.DebugPackageInfo()
                model.fromMap(dict["DebugPackageInfo"] as! [String: Any])
                self.debugPackageInfo = model
            }
            if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("Icon") && dict["Icon"] != nil {
                self.icon = dict["Icon"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PackageInfo") && dict["PackageInfo"] != nil {
                var model = DescribeUpdatePackageResultResponseBody.AppInfo.PackageInfo()
                model.fromMap(dict["PackageInfo"] as! [String: Any])
                self.packageInfo = model
            }
            if dict.keys.contains("PackageName") && dict["PackageName"] != nil {
                self.packageName = dict["PackageName"] as! String
            }
            if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
                self.startDate = dict["StartDate"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var appInfo: DescribeUpdatePackageResultResponseBody.AppInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appInfo != nil {
            map["AppInfo"] = self.appInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppInfo") && dict["AppInfo"] != nil {
            var model = DescribeUpdatePackageResultResponseBody.AppInfo()
            model.fromMap(dict["AppInfo"] as! [String: Any])
            self.appInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeUpdatePackageResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUpdatePackageResultResponseBody?

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
            var model = DescribeUpdatePackageResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUploadInfoRequest : Tea.TeaModel {
    public var biz: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.biz != nil {
            map["Biz"] = self.biz!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Biz") && dict["Biz"] != nil {
            self.biz = dict["Biz"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeUploadInfoResponseBody : Tea.TeaModel {
    public var accessid: String?

    public var expire: Int32?

    public var folder: String?

    public var host: String?

    public var policy: String?

    public var requestId: String?

    public var signature: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessid != nil {
            map["Accessid"] = self.accessid!
        }
        if self.expire != nil {
            map["Expire"] = self.expire!
        }
        if self.folder != nil {
            map["Folder"] = self.folder!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessid") && dict["Accessid"] != nil {
            self.accessid = dict["Accessid"] as! String
        }
        if dict.keys.contains("Expire") && dict["Expire"] != nil {
            self.expire = dict["Expire"] as! Int32
        }
        if dict.keys.contains("Folder") && dict["Folder"] != nil {
            self.folder = dict["Folder"] as! String
        }
        if dict.keys.contains("Host") && dict["Host"] != nil {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Signature") && dict["Signature"] != nil {
            self.signature = dict["Signature"] as! String
        }
    }
}

public class DescribeUploadInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUploadInfoResponseBody?

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
            var model = DescribeUploadInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUsageBillRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var day: String?

    public var pageSize: Int32?

    public var totalCount: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.day != nil {
            map["Day"] = self.day!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Day") && dict["Day"] != nil {
            self.day = dict["Day"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeUsageBillResponseBody : Tea.TeaModel {
    public class BillList : Tea.TeaModel {
        public var bizType: String?

        public var confirmCount: Int64?

        public var day: String?

        public var freeCount: Int64?

        public var region: String?

        public var reviewCount: Int64?

        public var scene: String?

        public var subUid: String?

        public var totalCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.confirmCount != nil {
                map["ConfirmCount"] = self.confirmCount!
            }
            if self.day != nil {
                map["Day"] = self.day!
            }
            if self.freeCount != nil {
                map["FreeCount"] = self.freeCount!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.reviewCount != nil {
                map["ReviewCount"] = self.reviewCount!
            }
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.subUid != nil {
                map["SubUid"] = self.subUid!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizType") && dict["BizType"] != nil {
                self.bizType = dict["BizType"] as! String
            }
            if dict.keys.contains("ConfirmCount") && dict["ConfirmCount"] != nil {
                self.confirmCount = dict["ConfirmCount"] as! Int64
            }
            if dict.keys.contains("Day") && dict["Day"] != nil {
                self.day = dict["Day"] as! String
            }
            if dict.keys.contains("FreeCount") && dict["FreeCount"] != nil {
                self.freeCount = dict["FreeCount"] as! Int64
            }
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ReviewCount") && dict["ReviewCount"] != nil {
                self.reviewCount = dict["ReviewCount"] as! Int64
            }
            if dict.keys.contains("Scene") && dict["Scene"] != nil {
                self.scene = dict["Scene"] as! String
            }
            if dict.keys.contains("SubUid") && dict["SubUid"] != nil {
                self.subUid = dict["SubUid"] as! String
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var billList: [DescribeUsageBillResponseBody.BillList]?

    public var currentPage: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.billList != nil {
            var tmp : [Any] = []
            for k in self.billList! {
                tmp.append(k.toMap())
            }
            map["BillList"] = tmp
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
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
        if dict.keys.contains("BillList") && dict["BillList"] != nil {
            var tmp : [DescribeUsageBillResponseBody.BillList] = []
            for v in dict["BillList"] as! [Any] {
                var model = DescribeUsageBillResponseBody.BillList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.billList = tmp
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeUsageBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUsageBillResponseBody?

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
            var model = DescribeUsageBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUserBizTypesRequest : Tea.TeaModel {
    public var customized: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customized != nil {
            map["Customized"] = self.customized!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Customized") && dict["Customized"] != nil {
            self.customized = dict["Customized"] as! Bool
        }
    }
}

public class DescribeUserBizTypesResponseBody : Tea.TeaModel {
    public class BizTypeList : Tea.TeaModel {
        public var bizType: String?

        public var citeTemplate: Bool?

        public var description_: String?

        public var gray: Bool?

        public var industryInfo: String?

        public var source: String?

        public var sourceBizType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.citeTemplate != nil {
                map["CiteTemplate"] = self.citeTemplate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gray != nil {
                map["Gray"] = self.gray!
            }
            if self.industryInfo != nil {
                map["IndustryInfo"] = self.industryInfo!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceBizType != nil {
                map["SourceBizType"] = self.sourceBizType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizType") && dict["BizType"] != nil {
                self.bizType = dict["BizType"] as! String
            }
            if dict.keys.contains("CiteTemplate") && dict["CiteTemplate"] != nil {
                self.citeTemplate = dict["CiteTemplate"] as! Bool
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Gray") && dict["Gray"] != nil {
                self.gray = dict["Gray"] as! Bool
            }
            if dict.keys.contains("IndustryInfo") && dict["IndustryInfo"] != nil {
                self.industryInfo = dict["IndustryInfo"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceBizType") && dict["SourceBizType"] != nil {
                self.sourceBizType = dict["SourceBizType"] as! String
            }
        }
    }
    public class BizTypeListImport : Tea.TeaModel {
        public var bizType: String?

        public var citeTemplate: Bool?

        public var description_: String?

        public var gray: Bool?

        public var industryInfo: String?

        public var source: String?

        public var sourceBizType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.citeTemplate != nil {
                map["CiteTemplate"] = self.citeTemplate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gray != nil {
                map["Gray"] = self.gray!
            }
            if self.industryInfo != nil {
                map["IndustryInfo"] = self.industryInfo!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceBizType != nil {
                map["SourceBizType"] = self.sourceBizType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizType") && dict["BizType"] != nil {
                self.bizType = dict["BizType"] as! String
            }
            if dict.keys.contains("CiteTemplate") && dict["CiteTemplate"] != nil {
                self.citeTemplate = dict["CiteTemplate"] as! Bool
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Gray") && dict["Gray"] != nil {
                self.gray = dict["Gray"] as! Bool
            }
            if dict.keys.contains("IndustryInfo") && dict["IndustryInfo"] != nil {
                self.industryInfo = dict["IndustryInfo"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceBizType") && dict["SourceBizType"] != nil {
                self.sourceBizType = dict["SourceBizType"] as! String
            }
        }
    }
    public var bizTypeList: [DescribeUserBizTypesResponseBody.BizTypeList]?

    public var bizTypeListImport: [DescribeUserBizTypesResponseBody.BizTypeListImport]?

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
        if self.bizTypeList != nil {
            var tmp : [Any] = []
            for k in self.bizTypeList! {
                tmp.append(k.toMap())
            }
            map["BizTypeList"] = tmp
        }
        if self.bizTypeListImport != nil {
            var tmp : [Any] = []
            for k in self.bizTypeListImport! {
                tmp.append(k.toMap())
            }
            map["BizTypeListImport"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeList") && dict["BizTypeList"] != nil {
            var tmp : [DescribeUserBizTypesResponseBody.BizTypeList] = []
            for v in dict["BizTypeList"] as! [Any] {
                var model = DescribeUserBizTypesResponseBody.BizTypeList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.bizTypeList = tmp
        }
        if dict.keys.contains("BizTypeListImport") && dict["BizTypeListImport"] != nil {
            var tmp : [DescribeUserBizTypesResponseBody.BizTypeListImport] = []
            for v in dict["BizTypeListImport"] as! [Any] {
                var model = DescribeUserBizTypesResponseBody.BizTypeListImport()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.bizTypeListImport = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeUserBizTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserBizTypesResponseBody?

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
            var model = DescribeUserBizTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUserStatusRequest : Tea.TeaModel {
    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeUserStatusResponseBody : Tea.TeaModel {
    public var agreeChannel: Int32?

    public var buyed: Bool?

    public var inDept: Bool?

    public var openApiBeginTime: String?

    public var openApiUsed: Bool?

    public var ossCheckStatus: String?

    public var ossVideoSizeLimit: Int32?

    public var requestId: String?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agreeChannel != nil {
            map["AgreeChannel"] = self.agreeChannel!
        }
        if self.buyed != nil {
            map["Buyed"] = self.buyed!
        }
        if self.inDept != nil {
            map["InDept"] = self.inDept!
        }
        if self.openApiBeginTime != nil {
            map["OpenApiBeginTime"] = self.openApiBeginTime!
        }
        if self.openApiUsed != nil {
            map["OpenApiUsed"] = self.openApiUsed!
        }
        if self.ossCheckStatus != nil {
            map["OssCheckStatus"] = self.ossCheckStatus!
        }
        if self.ossVideoSizeLimit != nil {
            map["OssVideoSizeLimit"] = self.ossVideoSizeLimit!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgreeChannel") && dict["AgreeChannel"] != nil {
            self.agreeChannel = dict["AgreeChannel"] as! Int32
        }
        if dict.keys.contains("Buyed") && dict["Buyed"] != nil {
            self.buyed = dict["Buyed"] as! Bool
        }
        if dict.keys.contains("InDept") && dict["InDept"] != nil {
            self.inDept = dict["InDept"] as! Bool
        }
        if dict.keys.contains("OpenApiBeginTime") && dict["OpenApiBeginTime"] != nil {
            self.openApiBeginTime = dict["OpenApiBeginTime"] as! String
        }
        if dict.keys.contains("OpenApiUsed") && dict["OpenApiUsed"] != nil {
            self.openApiUsed = dict["OpenApiUsed"] as! Bool
        }
        if dict.keys.contains("OssCheckStatus") && dict["OssCheckStatus"] != nil {
            self.ossCheckStatus = dict["OssCheckStatus"] as! String
        }
        if dict.keys.contains("OssVideoSizeLimit") && dict["OssVideoSizeLimit"] != nil {
            self.ossVideoSizeLimit = dict["OssVideoSizeLimit"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! String
        }
    }
}

public class DescribeUserStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserStatusResponseBody?

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
            var model = DescribeUserStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeViewContentRequest : Tea.TeaModel {
    public var auditResult: String?

    public var bizType: String?

    public var currentPage: Int32?

    public var dataId: String?

    public var endDate: String?

    public var imageId: String?

    public var keyword: String?

    public var keywordId: String?

    public var label: String?

    public var libType: String?

    public var pageSize: Int32?

    public var resourceType: String?

    public var scene: String?

    public var startDate: String?

    public var suggestion: String?

    public var taskId: String?

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
        if self.auditResult != nil {
            map["AuditResult"] = self.auditResult!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dataId != nil {
            map["DataId"] = self.dataId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.keywordId != nil {
            map["KeywordId"] = self.keywordId!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.libType != nil {
            map["LibType"] = self.libType!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.suggestion != nil {
            map["Suggestion"] = self.suggestion!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditResult") && dict["AuditResult"] != nil {
            self.auditResult = dict["AuditResult"] as! String
        }
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DataId") && dict["DataId"] != nil {
            self.dataId = dict["DataId"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("KeywordId") && dict["KeywordId"] != nil {
            self.keywordId = dict["KeywordId"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("LibType") && dict["LibType"] != nil {
            self.libType = dict["LibType"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Suggestion") && dict["Suggestion"] != nil {
            self.suggestion = dict["Suggestion"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeViewContentResponseBody : Tea.TeaModel {
    public class ViewContentList : Tea.TeaModel {
        public class FaceResults : Tea.TeaModel {
            public class Age : Tea.TeaModel {
                public var rate: Double?

                public var value: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Rate") && dict["Rate"] != nil {
                        self.rate = dict["Rate"] as! Double
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! Int32
                    }
                }
            }
            public class Bang : Tea.TeaModel {
                public var rate: Double?

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
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Rate") && dict["Rate"] != nil {
                        self.rate = dict["Rate"] as! Double
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public class Gender : Tea.TeaModel {
                public var rate: Double?

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
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Rate") && dict["Rate"] != nil {
                        self.rate = dict["Rate"] as! Double
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public class Glasses : Tea.TeaModel {
                public var rate: Double?

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
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Rate") && dict["Rate"] != nil {
                        self.rate = dict["Rate"] as! Double
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public class Hairstyle : Tea.TeaModel {
                public var rate: Double?

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
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Rate") && dict["Rate"] != nil {
                        self.rate = dict["Rate"] as! Double
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public class Hat : Tea.TeaModel {
                public var rate: Double?

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
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Rate") && dict["Rate"] != nil {
                        self.rate = dict["Rate"] as! Double
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public class Image : Tea.TeaModel {
                public var height: Int32?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Height") && dict["Height"] != nil {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("Width") && dict["Width"] != nil {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public class Location : Tea.TeaModel {
                public var h: Int32?

                public var w: Int32?

                public var x: Int32?

                public var y: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.h != nil {
                        map["H"] = self.h!
                    }
                    if self.w != nil {
                        map["W"] = self.w!
                    }
                    if self.x != nil {
                        map["X"] = self.x!
                    }
                    if self.y != nil {
                        map["Y"] = self.y!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("H") && dict["H"] != nil {
                        self.h = dict["H"] as! Int32
                    }
                    if dict.keys.contains("W") && dict["W"] != nil {
                        self.w = dict["W"] as! Int32
                    }
                    if dict.keys.contains("X") && dict["X"] != nil {
                        self.x = dict["X"] as! Int32
                    }
                    if dict.keys.contains("Y") && dict["Y"] != nil {
                        self.y = dict["Y"] as! Int32
                    }
                }
            }
            public class Mustache : Tea.TeaModel {
                public var rate: Double?

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
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Rate") && dict["Rate"] != nil {
                        self.rate = dict["Rate"] as! Double
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public class Quality : Tea.TeaModel {
                public var blur: Double?

                public var pitch: Double?

                public var roll: Double?

                public var yaw: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.blur != nil {
                        map["Blur"] = self.blur!
                    }
                    if self.pitch != nil {
                        map["Pitch"] = self.pitch!
                    }
                    if self.roll != nil {
                        map["Roll"] = self.roll!
                    }
                    if self.yaw != nil {
                        map["Yaw"] = self.yaw!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Blur") && dict["Blur"] != nil {
                        self.blur = dict["Blur"] as! Double
                    }
                    if dict.keys.contains("Pitch") && dict["Pitch"] != nil {
                        self.pitch = dict["Pitch"] as! Double
                    }
                    if dict.keys.contains("Roll") && dict["Roll"] != nil {
                        self.roll = dict["Roll"] as! Double
                    }
                    if dict.keys.contains("Yaw") && dict["Yaw"] != nil {
                        self.yaw = dict["Yaw"] as! Double
                    }
                }
            }
            public class Respirator : Tea.TeaModel {
                public var rate: Double?

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
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Rate") && dict["Rate"] != nil {
                        self.rate = dict["Rate"] as! Double
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public class Smile : Tea.TeaModel {
                public var rate: Double?

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
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Rate") && dict["Rate"] != nil {
                        self.rate = dict["Rate"] as! Double
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! Double
                    }
                }
            }
            public var age: DescribeViewContentResponseBody.ViewContentList.FaceResults.Age?

            public var bang: DescribeViewContentResponseBody.ViewContentList.FaceResults.Bang?

            public var bualified: Bool?

            public var gender: DescribeViewContentResponseBody.ViewContentList.FaceResults.Gender?

            public var glasses: DescribeViewContentResponseBody.ViewContentList.FaceResults.Glasses?

            public var hairstyle: DescribeViewContentResponseBody.ViewContentList.FaceResults.Hairstyle?

            public var hat: DescribeViewContentResponseBody.ViewContentList.FaceResults.Hat?

            public var image: DescribeViewContentResponseBody.ViewContentList.FaceResults.Image?

            public var location: DescribeViewContentResponseBody.ViewContentList.FaceResults.Location?

            public var mustache: DescribeViewContentResponseBody.ViewContentList.FaceResults.Mustache?

            public var quality: DescribeViewContentResponseBody.ViewContentList.FaceResults.Quality?

            public var respirator: DescribeViewContentResponseBody.ViewContentList.FaceResults.Respirator?

            public var smile: DescribeViewContentResponseBody.ViewContentList.FaceResults.Smile?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.age?.validate()
                try self.bang?.validate()
                try self.gender?.validate()
                try self.glasses?.validate()
                try self.hairstyle?.validate()
                try self.hat?.validate()
                try self.image?.validate()
                try self.location?.validate()
                try self.mustache?.validate()
                try self.quality?.validate()
                try self.respirator?.validate()
                try self.smile?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.age != nil {
                    map["Age"] = self.age?.toMap()
                }
                if self.bang != nil {
                    map["Bang"] = self.bang?.toMap()
                }
                if self.bualified != nil {
                    map["Bualified"] = self.bualified!
                }
                if self.gender != nil {
                    map["Gender"] = self.gender?.toMap()
                }
                if self.glasses != nil {
                    map["Glasses"] = self.glasses?.toMap()
                }
                if self.hairstyle != nil {
                    map["Hairstyle"] = self.hairstyle?.toMap()
                }
                if self.hat != nil {
                    map["Hat"] = self.hat?.toMap()
                }
                if self.image != nil {
                    map["Image"] = self.image?.toMap()
                }
                if self.location != nil {
                    map["Location"] = self.location?.toMap()
                }
                if self.mustache != nil {
                    map["Mustache"] = self.mustache?.toMap()
                }
                if self.quality != nil {
                    map["Quality"] = self.quality?.toMap()
                }
                if self.respirator != nil {
                    map["Respirator"] = self.respirator?.toMap()
                }
                if self.smile != nil {
                    map["Smile"] = self.smile?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Age") && dict["Age"] != nil {
                    var model = DescribeViewContentResponseBody.ViewContentList.FaceResults.Age()
                    model.fromMap(dict["Age"] as! [String: Any])
                    self.age = model
                }
                if dict.keys.contains("Bang") && dict["Bang"] != nil {
                    var model = DescribeViewContentResponseBody.ViewContentList.FaceResults.Bang()
                    model.fromMap(dict["Bang"] as! [String: Any])
                    self.bang = model
                }
                if dict.keys.contains("Bualified") && dict["Bualified"] != nil {
                    self.bualified = dict["Bualified"] as! Bool
                }
                if dict.keys.contains("Gender") && dict["Gender"] != nil {
                    var model = DescribeViewContentResponseBody.ViewContentList.FaceResults.Gender()
                    model.fromMap(dict["Gender"] as! [String: Any])
                    self.gender = model
                }
                if dict.keys.contains("Glasses") && dict["Glasses"] != nil {
                    var model = DescribeViewContentResponseBody.ViewContentList.FaceResults.Glasses()
                    model.fromMap(dict["Glasses"] as! [String: Any])
                    self.glasses = model
                }
                if dict.keys.contains("Hairstyle") && dict["Hairstyle"] != nil {
                    var model = DescribeViewContentResponseBody.ViewContentList.FaceResults.Hairstyle()
                    model.fromMap(dict["Hairstyle"] as! [String: Any])
                    self.hairstyle = model
                }
                if dict.keys.contains("Hat") && dict["Hat"] != nil {
                    var model = DescribeViewContentResponseBody.ViewContentList.FaceResults.Hat()
                    model.fromMap(dict["Hat"] as! [String: Any])
                    self.hat = model
                }
                if dict.keys.contains("Image") && dict["Image"] != nil {
                    var model = DescribeViewContentResponseBody.ViewContentList.FaceResults.Image()
                    model.fromMap(dict["Image"] as! [String: Any])
                    self.image = model
                }
                if dict.keys.contains("Location") && dict["Location"] != nil {
                    var model = DescribeViewContentResponseBody.ViewContentList.FaceResults.Location()
                    model.fromMap(dict["Location"] as! [String: Any])
                    self.location = model
                }
                if dict.keys.contains("Mustache") && dict["Mustache"] != nil {
                    var model = DescribeViewContentResponseBody.ViewContentList.FaceResults.Mustache()
                    model.fromMap(dict["Mustache"] as! [String: Any])
                    self.mustache = model
                }
                if dict.keys.contains("Quality") && dict["Quality"] != nil {
                    var model = DescribeViewContentResponseBody.ViewContentList.FaceResults.Quality()
                    model.fromMap(dict["Quality"] as! [String: Any])
                    self.quality = model
                }
                if dict.keys.contains("Respirator") && dict["Respirator"] != nil {
                    var model = DescribeViewContentResponseBody.ViewContentList.FaceResults.Respirator()
                    model.fromMap(dict["Respirator"] as! [String: Any])
                    self.respirator = model
                }
                if dict.keys.contains("Smile") && dict["Smile"] != nil {
                    var model = DescribeViewContentResponseBody.ViewContentList.FaceResults.Smile()
                    model.fromMap(dict["Smile"] as! [String: Any])
                    self.smile = model
                }
            }
        }
        public class FrameResults : Tea.TeaModel {
            public var label: String?

            public var offset: Int32?

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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.offset != nil {
                    map["Offset"] = self.offset!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Label") && dict["Label"] != nil {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Offset") && dict["Offset"] != nil {
                    self.offset = dict["Offset"] as! Int32
                }
                if dict.keys.contains("Url") && dict["Url"] != nil {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public class Results : Tea.TeaModel {
            public var label: String?

            public var scene: String?

            public var suggestion: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.scene != nil {
                    map["Scene"] = self.scene!
                }
                if self.suggestion != nil {
                    map["Suggestion"] = self.suggestion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Label") && dict["Label"] != nil {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Scene") && dict["Scene"] != nil {
                    self.scene = dict["Scene"] as! String
                }
                if dict.keys.contains("Suggestion") && dict["Suggestion"] != nil {
                    self.suggestion = dict["Suggestion"] as! String
                }
            }
        }
        public var bizType: String?

        public var content: String?

        public var dataId: String?

        public var faceResults: [DescribeViewContentResponseBody.ViewContentList.FaceResults]?

        public var frameResults: [DescribeViewContentResponseBody.ViewContentList.FrameResults]?

        public var id: Int64?

        public var newUrl: String?

        public var requestTime: String?

        public var results: [DescribeViewContentResponseBody.ViewContentList.Results]?

        public var scanFinishedTime: String?

        public var scanResult: String?

        public var suggestion: String?

        public var taskId: String?

        public var thumbnail: String?

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
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.faceResults != nil {
                var tmp : [Any] = []
                for k in self.faceResults! {
                    tmp.append(k.toMap())
                }
                map["FaceResults"] = tmp
            }
            if self.frameResults != nil {
                var tmp : [Any] = []
                for k in self.frameResults! {
                    tmp.append(k.toMap())
                }
                map["FrameResults"] = tmp
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.newUrl != nil {
                map["NewUrl"] = self.newUrl!
            }
            if self.requestTime != nil {
                map["RequestTime"] = self.requestTime!
            }
            if self.results != nil {
                var tmp : [Any] = []
                for k in self.results! {
                    tmp.append(k.toMap())
                }
                map["Results"] = tmp
            }
            if self.scanFinishedTime != nil {
                map["ScanFinishedTime"] = self.scanFinishedTime!
            }
            if self.scanResult != nil {
                map["ScanResult"] = self.scanResult!
            }
            if self.suggestion != nil {
                map["Suggestion"] = self.suggestion!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.thumbnail != nil {
                map["Thumbnail"] = self.thumbnail!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizType") && dict["BizType"] != nil {
                self.bizType = dict["BizType"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("FaceResults") && dict["FaceResults"] != nil {
                var tmp : [DescribeViewContentResponseBody.ViewContentList.FaceResults] = []
                for v in dict["FaceResults"] as! [Any] {
                    var model = DescribeViewContentResponseBody.ViewContentList.FaceResults()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.faceResults = tmp
            }
            if dict.keys.contains("FrameResults") && dict["FrameResults"] != nil {
                var tmp : [DescribeViewContentResponseBody.ViewContentList.FrameResults] = []
                for v in dict["FrameResults"] as! [Any] {
                    var model = DescribeViewContentResponseBody.ViewContentList.FrameResults()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.frameResults = tmp
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("NewUrl") && dict["NewUrl"] != nil {
                self.newUrl = dict["NewUrl"] as! String
            }
            if dict.keys.contains("RequestTime") && dict["RequestTime"] != nil {
                self.requestTime = dict["RequestTime"] as! String
            }
            if dict.keys.contains("Results") && dict["Results"] != nil {
                var tmp : [DescribeViewContentResponseBody.ViewContentList.Results] = []
                for v in dict["Results"] as! [Any] {
                    var model = DescribeViewContentResponseBody.ViewContentList.Results()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.results = tmp
            }
            if dict.keys.contains("ScanFinishedTime") && dict["ScanFinishedTime"] != nil {
                self.scanFinishedTime = dict["ScanFinishedTime"] as! String
            }
            if dict.keys.contains("ScanResult") && dict["ScanResult"] != nil {
                self.scanResult = dict["ScanResult"] as! String
            }
            if dict.keys.contains("Suggestion") && dict["Suggestion"] != nil {
                self.suggestion = dict["Suggestion"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Thumbnail") && dict["Thumbnail"] != nil {
                self.thumbnail = dict["Thumbnail"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var viewContentList: [DescribeViewContentResponseBody.ViewContentList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
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
        if self.viewContentList != nil {
            var tmp : [Any] = []
            for k in self.viewContentList! {
                tmp.append(k.toMap())
            }
            map["ViewContentList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("ViewContentList") && dict["ViewContentList"] != nil {
            var tmp : [DescribeViewContentResponseBody.ViewContentList] = []
            for v in dict["ViewContentList"] as! [Any] {
                var model = DescribeViewContentResponseBody.ViewContentList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.viewContentList = tmp
        }
    }
}

public class DescribeViewContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeViewContentResponseBody?

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
            var model = DescribeViewContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWebsiteIndexPageBaselineRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeWebsiteIndexPageBaselineResponseBody : Tea.TeaModel {
    public var baseLineStatus: String?

    public var createTime: String?

    public var requestId: String?

    public var snapshot: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baseLineStatus != nil {
            map["BaseLineStatus"] = self.baseLineStatus!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.snapshot != nil {
            map["Snapshot"] = self.snapshot!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaseLineStatus") && dict["BaseLineStatus"] != nil {
            self.baseLineStatus = dict["BaseLineStatus"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Snapshot") && dict["Snapshot"] != nil {
            self.snapshot = dict["Snapshot"] as! String
        }
    }
}

public class DescribeWebsiteIndexPageBaselineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebsiteIndexPageBaselineResponseBody?

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
            var model = DescribeWebsiteIndexPageBaselineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWebsiteInstanceRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var instanceId: String?

    public var lang: String?

    public var pageSize: Int32?

    public var sourceIp: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeWebsiteInstanceResponseBody : Tea.TeaModel {
    public class WebsiteInstanceList : Tea.TeaModel {
        public var buyTime: String?

        public var domain: String?

        public var expiredTime: String?

        public var indexPage: String?

        public var indexPageScanInterval: Int32?

        public var instanceId: String?

        public var protocol_: String?

        public var status: String?

        public var websiteScanInterval: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buyTime != nil {
                map["BuyTime"] = self.buyTime!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.indexPage != nil {
                map["IndexPage"] = self.indexPage!
            }
            if self.indexPageScanInterval != nil {
                map["IndexPageScanInterval"] = self.indexPageScanInterval!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.websiteScanInterval != nil {
                map["WebsiteScanInterval"] = self.websiteScanInterval!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BuyTime") && dict["BuyTime"] != nil {
                self.buyTime = dict["BuyTime"] as! String
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("IndexPage") && dict["IndexPage"] != nil {
                self.indexPage = dict["IndexPage"] as! String
            }
            if dict.keys.contains("IndexPageScanInterval") && dict["IndexPageScanInterval"] != nil {
                self.indexPageScanInterval = dict["IndexPageScanInterval"] as! Int32
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("WebsiteScanInterval") && dict["WebsiteScanInterval"] != nil {
                self.websiteScanInterval = dict["WebsiteScanInterval"] as! Int32
            }
        }
    }
    public var currentPage: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var websiteInstanceList: [DescribeWebsiteInstanceResponseBody.WebsiteInstanceList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
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
        if self.websiteInstanceList != nil {
            var tmp : [Any] = []
            for k in self.websiteInstanceList! {
                tmp.append(k.toMap())
            }
            map["WebsiteInstanceList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("WebsiteInstanceList") && dict["WebsiteInstanceList"] != nil {
            var tmp : [DescribeWebsiteInstanceResponseBody.WebsiteInstanceList] = []
            for v in dict["WebsiteInstanceList"] as! [Any] {
                var model = DescribeWebsiteInstanceResponseBody.WebsiteInstanceList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.websiteInstanceList = tmp
        }
    }
}

public class DescribeWebsiteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebsiteInstanceResponseBody?

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
            var model = DescribeWebsiteInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWebsiteInstanceIdRequest : Tea.TeaModel {
    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeWebsiteInstanceIdResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var totalCount: Int32?

    public var websiteInstanceIdList: [String]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.websiteInstanceIdList != nil {
            map["WebsiteInstanceIdList"] = self.websiteInstanceIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("WebsiteInstanceIdList") && dict["WebsiteInstanceIdList"] != nil {
            self.websiteInstanceIdList = dict["WebsiteInstanceIdList"] as! [String]
        }
    }
}

public class DescribeWebsiteInstanceIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebsiteInstanceIdResponseBody?

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
            var model = DescribeWebsiteInstanceIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWebsiteInstanceKeyUrlRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeWebsiteInstanceKeyUrlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var totalCount: Int32?

    public var websiteInstanceKeyUrlList: [String]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.websiteInstanceKeyUrlList != nil {
            map["WebsiteInstanceKeyUrlList"] = self.websiteInstanceKeyUrlList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("WebsiteInstanceKeyUrlList") && dict["WebsiteInstanceKeyUrlList"] != nil {
            self.websiteInstanceKeyUrlList = dict["WebsiteInstanceKeyUrlList"] as! [String]
        }
    }
}

public class DescribeWebsiteInstanceKeyUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebsiteInstanceKeyUrlResponseBody?

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
            var model = DescribeWebsiteInstanceKeyUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWebsiteScanResultRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var domain: String?

    public var handleStatus: String?

    public var label: String?

    public var lang: String?

    public var pageSize: Int32?

    public var siteUrl: String?

    public var sourceIp: String?

    public var subServiceModule: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.handleStatus != nil {
            map["HandleStatus"] = self.handleStatus!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.siteUrl != nil {
            map["SiteUrl"] = self.siteUrl!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.subServiceModule != nil {
            map["SubServiceModule"] = self.subServiceModule!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("HandleStatus") && dict["HandleStatus"] != nil {
            self.handleStatus = dict["HandleStatus"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SiteUrl") && dict["SiteUrl"] != nil {
            self.siteUrl = dict["SiteUrl"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("SubServiceModule") && dict["SubServiceModule"] != nil {
            self.subServiceModule = dict["SubServiceModule"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeWebsiteScanResultResponseBody : Tea.TeaModel {
    public class WebsiteScanResultList : Tea.TeaModel {
        public var domain: String?

        public var handleStatus: Int32?

        public var id: Int32?

        public var imageRiskCount: Int32?

        public var instanceId: String?

        public var labels: [String]?

        public var scanTime: String?

        public var sourceRiskCount: Int32?

        public var taskId: String?

        public var textRiskCount: Int32?

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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.handleStatus != nil {
                map["HandleStatus"] = self.handleStatus!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.imageRiskCount != nil {
                map["ImageRiskCount"] = self.imageRiskCount!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.scanTime != nil {
                map["ScanTime"] = self.scanTime!
            }
            if self.sourceRiskCount != nil {
                map["SourceRiskCount"] = self.sourceRiskCount!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.textRiskCount != nil {
                map["TextRiskCount"] = self.textRiskCount!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("HandleStatus") && dict["HandleStatus"] != nil {
                self.handleStatus = dict["HandleStatus"] as! Int32
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("ImageRiskCount") && dict["ImageRiskCount"] != nil {
                self.imageRiskCount = dict["ImageRiskCount"] as! Int32
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Labels") && dict["Labels"] != nil {
                self.labels = dict["Labels"] as! [String]
            }
            if dict.keys.contains("ScanTime") && dict["ScanTime"] != nil {
                self.scanTime = dict["ScanTime"] as! String
            }
            if dict.keys.contains("SourceRiskCount") && dict["SourceRiskCount"] != nil {
                self.sourceRiskCount = dict["SourceRiskCount"] as! Int32
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TextRiskCount") && dict["TextRiskCount"] != nil {
                self.textRiskCount = dict["TextRiskCount"] as! Int32
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var websiteScanResultList: [DescribeWebsiteScanResultResponseBody.WebsiteScanResultList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
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
        if self.websiteScanResultList != nil {
            var tmp : [Any] = []
            for k in self.websiteScanResultList! {
                tmp.append(k.toMap())
            }
            map["WebsiteScanResultList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("WebsiteScanResultList") && dict["WebsiteScanResultList"] != nil {
            var tmp : [DescribeWebsiteScanResultResponseBody.WebsiteScanResultList] = []
            for v in dict["WebsiteScanResultList"] as! [Any] {
                var model = DescribeWebsiteScanResultResponseBody.WebsiteScanResultList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.websiteScanResultList = tmp
        }
    }
}

public class DescribeWebsiteScanResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebsiteScanResultResponseBody?

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
            var model = DescribeWebsiteScanResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWebsiteScanResultDetailRequest : Tea.TeaModel {
    public var id: Int32?

    public var lang: String?

    public var resourceType: String?

    public var sourceIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeWebsiteScanResultDetailResponseBody : Tea.TeaModel {
    public class ImageScanResults : Tea.TeaModel {
        public var labels: [String]?

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
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Labels") && dict["Labels"] != nil {
                self.labels = dict["Labels"] as! [String]
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var baseline: String?

    public var content: String?

    public var hitKeywords: [String]?

    public var imageScanResults: [DescribeWebsiteScanResultDetailResponseBody.ImageScanResults]?

    public var requestId: String?

    public var resourceType: String?

    public var tamperedSource: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baseline != nil {
            map["Baseline"] = self.baseline!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.hitKeywords != nil {
            map["HitKeywords"] = self.hitKeywords!
        }
        if self.imageScanResults != nil {
            var tmp : [Any] = []
            for k in self.imageScanResults! {
                tmp.append(k.toMap())
            }
            map["ImageScanResults"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tamperedSource != nil {
            map["TamperedSource"] = self.tamperedSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Baseline") && dict["Baseline"] != nil {
            self.baseline = dict["Baseline"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("HitKeywords") && dict["HitKeywords"] != nil {
            self.hitKeywords = dict["HitKeywords"] as! [String]
        }
        if dict.keys.contains("ImageScanResults") && dict["ImageScanResults"] != nil {
            var tmp : [DescribeWebsiteScanResultDetailResponseBody.ImageScanResults] = []
            for v in dict["ImageScanResults"] as! [Any] {
                var model = DescribeWebsiteScanResultDetailResponseBody.ImageScanResults()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.imageScanResults = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TamperedSource") && dict["TamperedSource"] != nil {
            self.tamperedSource = dict["TamperedSource"] as! String
        }
    }
}

public class DescribeWebsiteScanResultDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebsiteScanResultDetailResponseBody?

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
            var model = DescribeWebsiteScanResultDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWebsiteStatRequest : Tea.TeaModel {
    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeWebsiteStatResponseBody : Tea.TeaModel {
    public class WebsiteStatList : Tea.TeaModel {
        public var instanceCount: Int32?

        public var riskCount: Int32?

        public var scanCount: Int32?

        public var subServiceModule: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceCount != nil {
                map["InstanceCount"] = self.instanceCount!
            }
            if self.riskCount != nil {
                map["RiskCount"] = self.riskCount!
            }
            if self.scanCount != nil {
                map["ScanCount"] = self.scanCount!
            }
            if self.subServiceModule != nil {
                map["SubServiceModule"] = self.subServiceModule!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceCount") && dict["InstanceCount"] != nil {
                self.instanceCount = dict["InstanceCount"] as! Int32
            }
            if dict.keys.contains("RiskCount") && dict["RiskCount"] != nil {
                self.riskCount = dict["RiskCount"] as! Int32
            }
            if dict.keys.contains("ScanCount") && dict["ScanCount"] != nil {
                self.scanCount = dict["ScanCount"] as! Int32
            }
            if dict.keys.contains("SubServiceModule") && dict["SubServiceModule"] != nil {
                self.subServiceModule = dict["SubServiceModule"] as! String
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int32?

    public var websiteStatList: [DescribeWebsiteStatResponseBody.WebsiteStatList]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.websiteStatList != nil {
            var tmp : [Any] = []
            for k in self.websiteStatList! {
                tmp.append(k.toMap())
            }
            map["WebsiteStatList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("WebsiteStatList") && dict["WebsiteStatList"] != nil {
            var tmp : [DescribeWebsiteStatResponseBody.WebsiteStatList] = []
            for v in dict["WebsiteStatList"] as! [Any] {
                var model = DescribeWebsiteStatResponseBody.WebsiteStatList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.websiteStatList = tmp
        }
    }
}

public class DescribeWebsiteStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebsiteStatResponseBody?

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
            var model = DescribeWebsiteStatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWebsiteVerifyInfoRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeWebsiteVerifyInfoResponseBody : Tea.TeaModel {
    public var cname: String?

    public var domain: String?

    public var hostFile: String?

    public var indexPage: String?

    public var protocol_: String?

    public var requestId: String?

    public var verifyMethod: String?

    public override init() {
        super.init()
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
        if self.hostFile != nil {
            map["HostFile"] = self.hostFile!
        }
        if self.indexPage != nil {
            map["IndexPage"] = self.indexPage!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.verifyMethod != nil {
            map["VerifyMethod"] = self.verifyMethod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cname") && dict["Cname"] != nil {
            self.cname = dict["Cname"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("HostFile") && dict["HostFile"] != nil {
            self.hostFile = dict["HostFile"] as! String
        }
        if dict.keys.contains("IndexPage") && dict["IndexPage"] != nil {
            self.indexPage = dict["IndexPage"] as! String
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VerifyMethod") && dict["VerifyMethod"] != nil {
            self.verifyMethod = dict["VerifyMethod"] as! String
        }
    }
}

public class DescribeWebsiteVerifyInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebsiteVerifyInfoResponseBody?

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
            var model = DescribeWebsiteVerifyInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportKeywordsRequest : Tea.TeaModel {
    public var keywordLibId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keywordLibId != nil {
            map["KeywordLibId"] = self.keywordLibId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeywordLibId") && dict["KeywordLibId"] != nil {
            self.keywordLibId = dict["KeywordLibId"] as! Int64
        }
    }
}

public class ExportKeywordsResponseBody : Tea.TeaModel {
    public var downloadUrl: String?

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
        if self.downloadUrl != nil {
            map["DownloadUrl"] = self.downloadUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DownloadUrl") && dict["DownloadUrl"] != nil {
            self.downloadUrl = dict["DownloadUrl"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ExportKeywordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportKeywordsResponseBody?

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
            var model = ExportKeywordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportOpenApiRcpStatsRequest : Tea.TeaModel {
    public var bizType: String?

    public var endDate: String?

    public var resourceType: String?

    public var startDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class ExportOpenApiRcpStatsResponseBody : Tea.TeaModel {
    public var downloadUrl: String?

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
        if self.downloadUrl != nil {
            map["DownloadUrl"] = self.downloadUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DownloadUrl") && dict["DownloadUrl"] != nil {
            self.downloadUrl = dict["DownloadUrl"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ExportOpenApiRcpStatsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportOpenApiRcpStatsResponseBody?

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
            var model = ExportOpenApiRcpStatsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportOssResultRequest : Tea.TeaModel {
    public var bucket: String?

    public var currentPage: Int32?

    public var endDate: String?

    public var lang: String?

    public var maxScore: Double?

    public var minScore: Double?

    public var pageSize: Int32?

    public var resourceType: String?

    public var scene: String?

    public var sourceIp: String?

    public var startDate: String?

    public var stock: Bool?

    public var stockTaskId: Int64?

    public var suggestion: String?

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
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxScore != nil {
            map["MaxScore"] = self.maxScore!
        }
        if self.minScore != nil {
            map["MinScore"] = self.minScore!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.stock != nil {
            map["Stock"] = self.stock!
        }
        if self.stockTaskId != nil {
            map["StockTaskId"] = self.stockTaskId!
        }
        if self.suggestion != nil {
            map["Suggestion"] = self.suggestion!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bucket") && dict["Bucket"] != nil {
            self.bucket = dict["Bucket"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MaxScore") && dict["MaxScore"] != nil {
            self.maxScore = dict["MaxScore"] as! Double
        }
        if dict.keys.contains("MinScore") && dict["MinScore"] != nil {
            self.minScore = dict["MinScore"] as! Double
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("Stock") && dict["Stock"] != nil {
            self.stock = dict["Stock"] as! Bool
        }
        if dict.keys.contains("StockTaskId") && dict["StockTaskId"] != nil {
            self.stockTaskId = dict["StockTaskId"] as! Int64
        }
        if dict.keys.contains("Suggestion") && dict["Suggestion"] != nil {
            self.suggestion = dict["Suggestion"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ExportOssResultResponseBody : Tea.TeaModel {
    public var fileUrl: String?

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
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
            self.fileUrl = dict["FileUrl"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ExportOssResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportOssResultResponseBody?

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
            var model = ExportOssResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAuditItemDetailRequest : Tea.TeaModel {
    public var taskId: String?

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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class GetAuditItemDetailResponseBody : Tea.TeaModel {
    public var apiResult: String?

    public var apiRiskType: String?

    public var apiTs: String?

    public var newUrl: String?

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
        if self.apiResult != nil {
            map["ApiResult"] = self.apiResult!
        }
        if self.apiRiskType != nil {
            map["ApiRiskType"] = self.apiRiskType!
        }
        if self.apiTs != nil {
            map["ApiTs"] = self.apiTs!
        }
        if self.newUrl != nil {
            map["NewUrl"] = self.newUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiResult") && dict["ApiResult"] != nil {
            self.apiResult = dict["ApiResult"] as! String
        }
        if dict.keys.contains("ApiRiskType") && dict["ApiRiskType"] != nil {
            self.apiRiskType = dict["ApiRiskType"] as! String
        }
        if dict.keys.contains("ApiTs") && dict["ApiTs"] != nil {
            self.apiTs = dict["ApiTs"] as! String
        }
        if dict.keys.contains("NewUrl") && dict["NewUrl"] != nil {
            self.newUrl = dict["NewUrl"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAuditItemDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAuditItemDetailResponseBody?

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
            var model = GetAuditItemDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAuditItemListRequest : Tea.TeaModel {
    public var bizType: String?

    public var currentPage: Int64?

    public var customResult: String?

    public var customRiskType: String?

    public var dataId: String?

    public var endDate: String?

    public var pageSize: Int64?

    public var rcpResult: String?

    public var rcpRiskType: String?

    public var startDate: String?

    public var taskId: String?

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
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.customResult != nil {
            map["CustomResult"] = self.customResult!
        }
        if self.customRiskType != nil {
            map["CustomRiskType"] = self.customRiskType!
        }
        if self.dataId != nil {
            map["DataId"] = self.dataId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.rcpResult != nil {
            map["RcpResult"] = self.rcpResult!
        }
        if self.rcpRiskType != nil {
            map["RcpRiskType"] = self.rcpRiskType!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("CustomResult") && dict["CustomResult"] != nil {
            self.customResult = dict["CustomResult"] as! String
        }
        if dict.keys.contains("CustomRiskType") && dict["CustomRiskType"] != nil {
            self.customRiskType = dict["CustomRiskType"] as! String
        }
        if dict.keys.contains("DataId") && dict["DataId"] != nil {
            self.dataId = dict["DataId"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RcpResult") && dict["RcpResult"] != nil {
            self.rcpResult = dict["RcpResult"] as! String
        }
        if dict.keys.contains("RcpRiskType") && dict["RcpRiskType"] != nil {
            self.rcpRiskType = dict["RcpRiskType"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class GetAuditItemListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var bizType: String?

        public var content: String?

        public var create: String?

        public var customResult: String?

        public var customRiskType: String?

        public var customTs: String?

        public var dataId: String?

        public var id: Int64?

        public var operator_: String?

        public var rcpResult: String?

        public var rcpRiskType: String?

        public var rcpTs: String?

        public var subUid: String?

        public var taskId: String?

        public var thumbnail: String?

        public var type: String?

        public var uid: String?

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
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.create != nil {
                map["Create"] = self.create!
            }
            if self.customResult != nil {
                map["CustomResult"] = self.customResult!
            }
            if self.customRiskType != nil {
                map["CustomRiskType"] = self.customRiskType!
            }
            if self.customTs != nil {
                map["CustomTs"] = self.customTs!
            }
            if self.dataId != nil {
                map["DataId"] = self.dataId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.rcpResult != nil {
                map["RcpResult"] = self.rcpResult!
            }
            if self.rcpRiskType != nil {
                map["RcpRiskType"] = self.rcpRiskType!
            }
            if self.rcpTs != nil {
                map["RcpTs"] = self.rcpTs!
            }
            if self.subUid != nil {
                map["SubUid"] = self.subUid!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.thumbnail != nil {
                map["Thumbnail"] = self.thumbnail!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizType") && dict["BizType"] != nil {
                self.bizType = dict["BizType"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Create") && dict["Create"] != nil {
                self.create = dict["Create"] as! String
            }
            if dict.keys.contains("CustomResult") && dict["CustomResult"] != nil {
                self.customResult = dict["CustomResult"] as! String
            }
            if dict.keys.contains("CustomRiskType") && dict["CustomRiskType"] != nil {
                self.customRiskType = dict["CustomRiskType"] as! String
            }
            if dict.keys.contains("CustomTs") && dict["CustomTs"] != nil {
                self.customTs = dict["CustomTs"] as! String
            }
            if dict.keys.contains("DataId") && dict["DataId"] != nil {
                self.dataId = dict["DataId"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Operator") && dict["Operator"] != nil {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("RcpResult") && dict["RcpResult"] != nil {
                self.rcpResult = dict["RcpResult"] as! String
            }
            if dict.keys.contains("RcpRiskType") && dict["RcpRiskType"] != nil {
                self.rcpRiskType = dict["RcpRiskType"] as! String
            }
            if dict.keys.contains("RcpTs") && dict["RcpTs"] != nil {
                self.rcpTs = dict["RcpTs"] as! String
            }
            if dict.keys.contains("SubUid") && dict["SubUid"] != nil {
                self.subUid = dict["SubUid"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Thumbnail") && dict["Thumbnail"] != nil {
                self.thumbnail = dict["Thumbnail"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Uid") && dict["Uid"] != nil {
                self.uid = dict["Uid"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var currentPage: Int64?

    public var items: [GetAuditItemListResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [GetAuditItemListResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = GetAuditItemListResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class GetAuditItemListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAuditItemListResponseBody?

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
            var model = GetAuditItemListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAuditUserConfResponseBody : Tea.TeaModel {
    public var customAudit: Bool?

    public var rcpLabels: [String: [String]]?

    public var requestId: String?

    public var userLabels: [String: [String]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customAudit != nil {
            map["CustomAudit"] = self.customAudit!
        }
        if self.rcpLabels != nil {
            map["RcpLabels"] = self.rcpLabels!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userLabels != nil {
            map["UserLabels"] = self.userLabels!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomAudit") && dict["CustomAudit"] != nil {
            self.customAudit = dict["CustomAudit"] as! Bool
        }
        if dict.keys.contains("RcpLabels") && dict["RcpLabels"] != nil {
            self.rcpLabels = dict["RcpLabels"] as! [String: [String]]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserLabels") && dict["UserLabels"] != nil {
            self.userLabels = dict["UserLabels"] as! [String: [String]]
        }
    }
}

public class GetAuditUserConfResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAuditUserConfResponseBody?

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
            var model = GetAuditUserConfResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportKeywordsRequest : Tea.TeaModel {
    public var keywordLibId: Int32?

    public var keywordsObject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keywordLibId != nil {
            map["KeywordLibId"] = self.keywordLibId!
        }
        if self.keywordsObject != nil {
            map["KeywordsObject"] = self.keywordsObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeywordLibId") && dict["KeywordLibId"] != nil {
            self.keywordLibId = dict["KeywordLibId"] as! Int32
        }
        if dict.keys.contains("KeywordsObject") && dict["KeywordsObject"] != nil {
            self.keywordsObject = dict["KeywordsObject"] as! String
        }
    }
}

public class ImportKeywordsResponseBody : Tea.TeaModel {
    public var invalidKeywordList: [String]?

    public var requestId: String?

    public var successCount: Int32?

    public var validKeywordList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.invalidKeywordList != nil {
            map["InvalidKeywordList"] = self.invalidKeywordList!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successCount != nil {
            map["SuccessCount"] = self.successCount!
        }
        if self.validKeywordList != nil {
            map["validKeywordList"] = self.validKeywordList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InvalidKeywordList") && dict["InvalidKeywordList"] != nil {
            self.invalidKeywordList = dict["InvalidKeywordList"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessCount") && dict["SuccessCount"] != nil {
            self.successCount = dict["SuccessCount"] as! Int32
        }
        if dict.keys.contains("validKeywordList") && dict["validKeywordList"] != nil {
            self.validKeywordList = dict["validKeywordList"] as! [String]
        }
    }
}

public class ImportKeywordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportKeywordsResponseBody?

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
            var model = ImportKeywordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MarkAuditContentRequest : Tea.TeaModel {
    public var auditIllegalReasons: String?

    public var auditResult: String?

    public var bizTypes: String?

    public var ids: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditIllegalReasons != nil {
            map["AuditIllegalReasons"] = self.auditIllegalReasons!
        }
        if self.auditResult != nil {
            map["AuditResult"] = self.auditResult!
        }
        if self.bizTypes != nil {
            map["BizTypes"] = self.bizTypes!
        }
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditIllegalReasons") && dict["AuditIllegalReasons"] != nil {
            self.auditIllegalReasons = dict["AuditIllegalReasons"] as! String
        }
        if dict.keys.contains("AuditResult") && dict["AuditResult"] != nil {
            self.auditResult = dict["AuditResult"] as! String
        }
        if dict.keys.contains("BizTypes") && dict["BizTypes"] != nil {
            self.bizTypes = dict["BizTypes"] as! String
        }
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class MarkAuditContentResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class MarkAuditContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MarkAuditContentResponseBody?

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
            var model = MarkAuditContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MarkAuditContentItemRequest : Tea.TeaModel {
    public var auditIllegalReasons: String?

    public var auditResult: String?

    public var bizTypes: String?

    public var ids: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditIllegalReasons != nil {
            map["AuditIllegalReasons"] = self.auditIllegalReasons!
        }
        if self.auditResult != nil {
            map["AuditResult"] = self.auditResult!
        }
        if self.bizTypes != nil {
            map["BizTypes"] = self.bizTypes!
        }
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditIllegalReasons") && dict["AuditIllegalReasons"] != nil {
            self.auditIllegalReasons = dict["AuditIllegalReasons"] as! String
        }
        if dict.keys.contains("AuditResult") && dict["AuditResult"] != nil {
            self.auditResult = dict["AuditResult"] as! String
        }
        if dict.keys.contains("BizTypes") && dict["BizTypes"] != nil {
            self.bizTypes = dict["BizTypes"] as! String
        }
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class MarkAuditContentItemResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class MarkAuditContentItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MarkAuditContentItemResponseBody?

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
            var model = MarkAuditContentItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MarkOssResultRequest : Tea.TeaModel {
    public var ids: String?

    public var lang: String?

    public var operation: String?

    public var resourceType: String?

    public var scene: String?

    public var sourceIp: String?

    public var stock: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.operation != nil {
            map["Operation"] = self.operation!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.stock != nil {
            map["Stock"] = self.stock!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Operation") && dict["Operation"] != nil {
            self.operation = dict["Operation"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("Stock") && dict["Stock"] != nil {
            self.stock = dict["Stock"] as! Bool
        }
    }
}

public class MarkOssResultResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class MarkOssResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MarkOssResultResponseBody?

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
            var model = MarkOssResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MarkWebsiteScanResultRequest : Tea.TeaModel {
    public var ids: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class MarkWebsiteScanResultResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class MarkWebsiteScanResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MarkWebsiteScanResultResponseBody?

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
            var model = MarkWebsiteScanResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefundCdiBagRequest : Tea.TeaModel {
    public var instanceId: String?

    public var resourceOwnerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! String
        }
    }
}

public class RefundCdiBagResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RefundCdiBagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefundCdiBagResponseBody?

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
            var model = RefundCdiBagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefundCdiBaseBagRequest : Tea.TeaModel {
    public var instanceId: String?

    public var resourceOwnerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! String
        }
    }
}

public class RefundCdiBaseBagResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RefundCdiBaseBagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefundCdiBaseBagResponseBody?

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
            var model = RefundCdiBaseBagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefundWebSiteInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var resourceOwnerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! String
        }
    }
}

public class RefundWebSiteInstanceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RefundWebSiteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefundWebSiteInstanceResponseBody?

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
            var model = RefundWebSiteInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenewWebSiteInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var commodityCode: String?

    public var duration: Int32?

    public var instanceId: String?

    public var orderNum: Int32?

    public var orderType: String?

    public var ownerId: Int64?

    public var pricingCycle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderNum != nil {
            map["OrderNum"] = self.orderNum!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrderNum") && dict["OrderNum"] != nil {
            self.orderNum = dict["OrderNum"] as! Int32
        }
        if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
    }
}

public class RenewWebSiteInstanceResponseBody : Tea.TeaModel {
    public class InstanceIds : Tea.TeaModel {
        public var string: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.string != nil {
                map["String"] = self.string!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("String") && dict["String"] != nil {
                self.string = dict["String"] as! [String]
            }
        }
    }
    public var code: String?

    public var instanceId: String?

    public var instanceIds: RenewWebSiteInstanceResponseBody.InstanceIds?

    public var message: String?

    public var orderId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            var model = RenewWebSiteInstanceResponseBody.InstanceIds()
            model.fromMap(dict["InstanceIds"] as! [String: Any])
            self.instanceIds = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RenewWebSiteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewWebSiteInstanceResponseBody?

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
            var model = RenewWebSiteInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendVerifyCodeToEmailRequest : Tea.TeaModel {
    public var email: String?

    public var lang: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class SendVerifyCodeToEmailResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SendVerifyCodeToEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendVerifyCodeToEmailResponseBody?

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
            var model = SendVerifyCodeToEmailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendVerifyCodeToPhoneRequest : Tea.TeaModel {
    public var lang: String?

    public var phone: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Phone") && dict["Phone"] != nil {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class SendVerifyCodeToPhoneResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SendVerifyCodeToPhoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendVerifyCodeToPhoneResponseBody?

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
            var model = SendVerifyCodeToPhoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendWebsiteFeedbackRequest : Tea.TeaModel {
    public var feedback: String?

    public var lang: String?

    public var sourceIp: String?

    public var urls: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.feedback != nil {
            map["Feedback"] = self.feedback!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.urls != nil {
            map["Urls"] = self.urls!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Feedback") && dict["Feedback"] != nil {
            self.feedback = dict["Feedback"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("Urls") && dict["Urls"] != nil {
            self.urls = dict["Urls"] as! String
        }
    }
}

public class SendWebsiteFeedbackResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SendWebsiteFeedbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendWebsiteFeedbackResponseBody?

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
            var model = SendWebsiteFeedbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppPackageRequest : Tea.TeaModel {
    public var debug: Bool?

    public var id: Int64?

    public var lang: String?

    public var packageUrl: String?

    public var platform: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.debug != nil {
            map["Debug"] = self.debug!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.packageUrl != nil {
            map["PackageUrl"] = self.packageUrl!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Debug") && dict["Debug"] != nil {
            self.debug = dict["Debug"] as! Bool
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PackageUrl") && dict["PackageUrl"] != nil {
            self.packageUrl = dict["PackageUrl"] as! String
        }
        if dict.keys.contains("Platform") && dict["Platform"] != nil {
            self.platform = dict["Platform"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class UpdateAppPackageResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class UpdateAppPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppPackageResponseBody?

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
            var model = UpdateAppPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAuditCallbackRequest : Tea.TeaModel {
    public var callback: String?

    public var cryptType: Int32?

    public var seed: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.cryptType != nil {
            map["CryptType"] = self.cryptType!
        }
        if self.seed != nil {
            map["Seed"] = self.seed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Callback") && dict["Callback"] != nil {
            self.callback = dict["Callback"] as! String
        }
        if dict.keys.contains("CryptType") && dict["CryptType"] != nil {
            self.cryptType = dict["CryptType"] as! Int32
        }
        if dict.keys.contains("Seed") && dict["Seed"] != nil {
            self.seed = dict["Seed"] as! String
        }
    }
}

public class UpdateAuditCallbackResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAuditCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAuditCallbackResponseBody?

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
            var model = UpdateAuditCallbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAuditRangeRequest : Tea.TeaModel {
    public var auditRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditRange != nil {
            map["AuditRange"] = self.auditRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditRange") && dict["AuditRange"] != nil {
            self.auditRange = dict["AuditRange"] as! String
        }
    }
}

public class UpdateAuditRangeResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAuditRangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAuditRangeResponseBody?

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
            var model = UpdateAuditRangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAuditSettingRequest : Tea.TeaModel {
    public var auditRange: String?

    public var callback: String?

    public var seed: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditRange != nil {
            map["AuditRange"] = self.auditRange!
        }
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.seed != nil {
            map["Seed"] = self.seed!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditRange") && dict["AuditRange"] != nil {
            self.auditRange = dict["AuditRange"] as! String
        }
        if dict.keys.contains("Callback") && dict["Callback"] != nil {
            self.callback = dict["Callback"] as! String
        }
        if dict.keys.contains("Seed") && dict["Seed"] != nil {
            self.seed = dict["Seed"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class UpdateAuditSettingResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAuditSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAuditSettingResponseBody?

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
            var model = UpdateAuditSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateBizTypeRequest : Tea.TeaModel {
    public var bizTypeName: String?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTypeName != nil {
            map["BizTypeName"] = self.bizTypeName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeName") && dict["BizTypeName"] != nil {
            self.bizTypeName = dict["BizTypeName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
    }
}

public class UpdateBizTypeResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateBizTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBizTypeResponseBody?

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
            var model = UpdateBizTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateBizTypeImageLibRequest : Tea.TeaModel {
    public var bizTypeName: String?

    public var black: String?

    public var resourceType: String?

    public var review: String?

    public var scene: String?

    public var white: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTypeName != nil {
            map["BizTypeName"] = self.bizTypeName!
        }
        if self.black != nil {
            map["Black"] = self.black!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.review != nil {
            map["Review"] = self.review!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.white != nil {
            map["White"] = self.white!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeName") && dict["BizTypeName"] != nil {
            self.bizTypeName = dict["BizTypeName"] as! String
        }
        if dict.keys.contains("Black") && dict["Black"] != nil {
            self.black = dict["Black"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Review") && dict["Review"] != nil {
            self.review = dict["Review"] as! String
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("White") && dict["White"] != nil {
            self.white = dict["White"] as! String
        }
    }
}

public class UpdateBizTypeImageLibResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateBizTypeImageLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBizTypeImageLibResponseBody?

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
            var model = UpdateBizTypeImageLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateBizTypeSettingRequest : Tea.TeaModel {
    public var ad: String?

    public var antispam: String?

    public var bizTypeName: String?

    public var live: String?

    public var porn: String?

    public var resourceType: String?

    public var terrorism: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ad != nil {
            map["Ad"] = self.ad!
        }
        if self.antispam != nil {
            map["Antispam"] = self.antispam!
        }
        if self.bizTypeName != nil {
            map["BizTypeName"] = self.bizTypeName!
        }
        if self.live != nil {
            map["Live"] = self.live!
        }
        if self.porn != nil {
            map["Porn"] = self.porn!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.terrorism != nil {
            map["Terrorism"] = self.terrorism!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ad") && dict["Ad"] != nil {
            self.ad = dict["Ad"] as! String
        }
        if dict.keys.contains("Antispam") && dict["Antispam"] != nil {
            self.antispam = dict["Antispam"] as! String
        }
        if dict.keys.contains("BizTypeName") && dict["BizTypeName"] != nil {
            self.bizTypeName = dict["BizTypeName"] as! String
        }
        if dict.keys.contains("Live") && dict["Live"] != nil {
            self.live = dict["Live"] as! String
        }
        if dict.keys.contains("Porn") && dict["Porn"] != nil {
            self.porn = dict["Porn"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Terrorism") && dict["Terrorism"] != nil {
            self.terrorism = dict["Terrorism"] as! String
        }
    }
}

public class UpdateBizTypeSettingResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateBizTypeSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBizTypeSettingResponseBody?

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
            var model = UpdateBizTypeSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateBizTypeTextLibRequest : Tea.TeaModel {
    public var bizTypeName: String?

    public var black: String?

    public var ignore: String?

    public var resourceType: String?

    public var review: String?

    public var scene: String?

    public var white: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTypeName != nil {
            map["BizTypeName"] = self.bizTypeName!
        }
        if self.black != nil {
            map["Black"] = self.black!
        }
        if self.ignore != nil {
            map["Ignore"] = self.ignore!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.review != nil {
            map["Review"] = self.review!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.white != nil {
            map["White"] = self.white!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypeName") && dict["BizTypeName"] != nil {
            self.bizTypeName = dict["BizTypeName"] as! String
        }
        if dict.keys.contains("Black") && dict["Black"] != nil {
            self.black = dict["Black"] as! String
        }
        if dict.keys.contains("Ignore") && dict["Ignore"] != nil {
            self.ignore = dict["Ignore"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Review") && dict["Review"] != nil {
            self.review = dict["Review"] as! String
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("White") && dict["White"] != nil {
            self.white = dict["White"] as! String
        }
    }
}

public class UpdateBizTypeTextLibResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateBizTypeTextLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBizTypeTextLibResponseBody?

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
            var model = UpdateBizTypeTextLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCustomOcrTemplateRequest : Tea.TeaModel {
    public var id: Int64?

    public var name: String?

    public var recognizeArea: String?

    public var referArea: String?

    public override init() {
        super.init()
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
        if self.recognizeArea != nil {
            map["RecognizeArea"] = self.recognizeArea!
        }
        if self.referArea != nil {
            map["ReferArea"] = self.referArea!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RecognizeArea") && dict["RecognizeArea"] != nil {
            self.recognizeArea = dict["RecognizeArea"] as! String
        }
        if dict.keys.contains("ReferArea") && dict["ReferArea"] != nil {
            self.referArea = dict["ReferArea"] as! String
        }
    }
}

public class UpdateCustomOcrTemplateResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateCustomOcrTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomOcrTemplateResponseBody?

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
            var model = UpdateCustomOcrTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateKeywordLibRequest : Tea.TeaModel {
    public var bizTypes: String?

    public var enable: Bool?

    public var id: Int32?

    public var lang: String?

    public var matchMode: String?

    public var name: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTypes != nil {
            map["BizTypes"] = self.bizTypes!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.matchMode != nil {
            map["MatchMode"] = self.matchMode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizTypes") && dict["BizTypes"] != nil {
            self.bizTypes = dict["BizTypes"] as! String
        }
        if dict.keys.contains("Enable") && dict["Enable"] != nil {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MatchMode") && dict["MatchMode"] != nil {
            self.matchMode = dict["MatchMode"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class UpdateKeywordLibResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateKeywordLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateKeywordLibResponseBody?

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
            var model = UpdateKeywordLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateNotificationSettingRequest : Tea.TeaModel {
    public var lang: String?

    public var realtimeMessageList: String?

    public var reminderModeList: String?

    public var scheduleMessageTime: Int32?

    public var scheduleMessageTimeZone: Int32?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.realtimeMessageList != nil {
            map["RealtimeMessageList"] = self.realtimeMessageList!
        }
        if self.reminderModeList != nil {
            map["ReminderModeList"] = self.reminderModeList!
        }
        if self.scheduleMessageTime != nil {
            map["ScheduleMessageTime"] = self.scheduleMessageTime!
        }
        if self.scheduleMessageTimeZone != nil {
            map["ScheduleMessageTimeZone"] = self.scheduleMessageTimeZone!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("RealtimeMessageList") && dict["RealtimeMessageList"] != nil {
            self.realtimeMessageList = dict["RealtimeMessageList"] as! String
        }
        if dict.keys.contains("ReminderModeList") && dict["ReminderModeList"] != nil {
            self.reminderModeList = dict["ReminderModeList"] as! String
        }
        if dict.keys.contains("ScheduleMessageTime") && dict["ScheduleMessageTime"] != nil {
            self.scheduleMessageTime = dict["ScheduleMessageTime"] as! Int32
        }
        if dict.keys.contains("ScheduleMessageTimeZone") && dict["ScheduleMessageTimeZone"] != nil {
            self.scheduleMessageTimeZone = dict["ScheduleMessageTimeZone"] as! Int32
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class UpdateNotificationSettingResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateNotificationSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNotificationSettingResponseBody?

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
            var model = UpdateNotificationSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateOssCallbackSettingRequest : Tea.TeaModel {
    public var auditCallback: Bool?

    public var callbackSeed: String?

    public var callbackUrl: String?

    public var scanCallback: Bool?

    public var scanCallbackSuggestions: String?

    public var serviceModules: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditCallback != nil {
            map["AuditCallback"] = self.auditCallback!
        }
        if self.callbackSeed != nil {
            map["CallbackSeed"] = self.callbackSeed!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.scanCallback != nil {
            map["ScanCallback"] = self.scanCallback!
        }
        if self.scanCallbackSuggestions != nil {
            map["ScanCallbackSuggestions"] = self.scanCallbackSuggestions!
        }
        if self.serviceModules != nil {
            map["ServiceModules"] = self.serviceModules!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditCallback") && dict["AuditCallback"] != nil {
            self.auditCallback = dict["AuditCallback"] as! Bool
        }
        if dict.keys.contains("CallbackSeed") && dict["CallbackSeed"] != nil {
            self.callbackSeed = dict["CallbackSeed"] as! String
        }
        if dict.keys.contains("CallbackUrl") && dict["CallbackUrl"] != nil {
            self.callbackUrl = dict["CallbackUrl"] as! String
        }
        if dict.keys.contains("ScanCallback") && dict["ScanCallback"] != nil {
            self.scanCallback = dict["ScanCallback"] as! Bool
        }
        if dict.keys.contains("ScanCallbackSuggestions") && dict["ScanCallbackSuggestions"] != nil {
            self.scanCallbackSuggestions = dict["ScanCallbackSuggestions"] as! String
        }
        if dict.keys.contains("ServiceModules") && dict["ServiceModules"] != nil {
            self.serviceModules = dict["ServiceModules"] as! String
        }
    }
}

public class UpdateOssCallbackSettingResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateOssCallbackSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOssCallbackSettingResponseBody?

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
            var model = UpdateOssCallbackSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateOssIncrementCheckSettingRequest : Tea.TeaModel {
    public var audioAntispamFreezeConfig: String?

    public var audioAutoFreezeOpened: Bool?

    public var audioMaxSize: Int32?

    public var audioScanLimit: Int64?

    public var audioSceneList: String?

    public var autoFreezeType: String?

    public var bizType: String?

    public var bucketConfigList: String?

    public var callbackId: String?

    public var imageAdFreezeConfig: String?

    public var imageAutoFreeze: String?

    public var imageAutoFreezeOpened: Bool?

    public var imageLiveFreezeConfig: String?

    public var imagePornFreezeConfig: String?

    public var imageScanLimit: String?

    public var imageSceneList: String?

    public var imageTerrorismFreezeConfig: String?

    public var lang: String?

    public var scanImageNoFileType: Bool?

    public var sourceIp: String?

    public var videoAdFreezeConfig: String?

    public var videoAutoFreezeOpened: Bool?

    public var videoAutoFreezeSceneList: String?

    public var videoFrameInterval: Int32?

    public var videoLiveFreezeConfig: String?

    public var videoMaxFrames: Int32?

    public var videoMaxSize: Int32?

    public var videoPornFreezeConfig: String?

    public var videoScanLimit: Int64?

    public var videoSceneList: String?

    public var videoTerrorismFreezeConfig: String?

    public var videoVoiceAntispamFreezeConfig: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.audioAntispamFreezeConfig != nil {
            map["AudioAntispamFreezeConfig"] = self.audioAntispamFreezeConfig!
        }
        if self.audioAutoFreezeOpened != nil {
            map["AudioAutoFreezeOpened"] = self.audioAutoFreezeOpened!
        }
        if self.audioMaxSize != nil {
            map["AudioMaxSize"] = self.audioMaxSize!
        }
        if self.audioScanLimit != nil {
            map["AudioScanLimit"] = self.audioScanLimit!
        }
        if self.audioSceneList != nil {
            map["AudioSceneList"] = self.audioSceneList!
        }
        if self.autoFreezeType != nil {
            map["AutoFreezeType"] = self.autoFreezeType!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.bucketConfigList != nil {
            map["BucketConfigList"] = self.bucketConfigList!
        }
        if self.callbackId != nil {
            map["CallbackId"] = self.callbackId!
        }
        if self.imageAdFreezeConfig != nil {
            map["ImageAdFreezeConfig"] = self.imageAdFreezeConfig!
        }
        if self.imageAutoFreeze != nil {
            map["ImageAutoFreeze"] = self.imageAutoFreeze!
        }
        if self.imageAutoFreezeOpened != nil {
            map["ImageAutoFreezeOpened"] = self.imageAutoFreezeOpened!
        }
        if self.imageLiveFreezeConfig != nil {
            map["ImageLiveFreezeConfig"] = self.imageLiveFreezeConfig!
        }
        if self.imagePornFreezeConfig != nil {
            map["ImagePornFreezeConfig"] = self.imagePornFreezeConfig!
        }
        if self.imageScanLimit != nil {
            map["ImageScanLimit"] = self.imageScanLimit!
        }
        if self.imageSceneList != nil {
            map["ImageSceneList"] = self.imageSceneList!
        }
        if self.imageTerrorismFreezeConfig != nil {
            map["ImageTerrorismFreezeConfig"] = self.imageTerrorismFreezeConfig!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.scanImageNoFileType != nil {
            map["ScanImageNoFileType"] = self.scanImageNoFileType!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.videoAdFreezeConfig != nil {
            map["VideoAdFreezeConfig"] = self.videoAdFreezeConfig!
        }
        if self.videoAutoFreezeOpened != nil {
            map["VideoAutoFreezeOpened"] = self.videoAutoFreezeOpened!
        }
        if self.videoAutoFreezeSceneList != nil {
            map["VideoAutoFreezeSceneList"] = self.videoAutoFreezeSceneList!
        }
        if self.videoFrameInterval != nil {
            map["VideoFrameInterval"] = self.videoFrameInterval!
        }
        if self.videoLiveFreezeConfig != nil {
            map["VideoLiveFreezeConfig"] = self.videoLiveFreezeConfig!
        }
        if self.videoMaxFrames != nil {
            map["VideoMaxFrames"] = self.videoMaxFrames!
        }
        if self.videoMaxSize != nil {
            map["VideoMaxSize"] = self.videoMaxSize!
        }
        if self.videoPornFreezeConfig != nil {
            map["VideoPornFreezeConfig"] = self.videoPornFreezeConfig!
        }
        if self.videoScanLimit != nil {
            map["VideoScanLimit"] = self.videoScanLimit!
        }
        if self.videoSceneList != nil {
            map["VideoSceneList"] = self.videoSceneList!
        }
        if self.videoTerrorismFreezeConfig != nil {
            map["VideoTerrorismFreezeConfig"] = self.videoTerrorismFreezeConfig!
        }
        if self.videoVoiceAntispamFreezeConfig != nil {
            map["VideoVoiceAntispamFreezeConfig"] = self.videoVoiceAntispamFreezeConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AudioAntispamFreezeConfig") && dict["AudioAntispamFreezeConfig"] != nil {
            self.audioAntispamFreezeConfig = dict["AudioAntispamFreezeConfig"] as! String
        }
        if dict.keys.contains("AudioAutoFreezeOpened") && dict["AudioAutoFreezeOpened"] != nil {
            self.audioAutoFreezeOpened = dict["AudioAutoFreezeOpened"] as! Bool
        }
        if dict.keys.contains("AudioMaxSize") && dict["AudioMaxSize"] != nil {
            self.audioMaxSize = dict["AudioMaxSize"] as! Int32
        }
        if dict.keys.contains("AudioScanLimit") && dict["AudioScanLimit"] != nil {
            self.audioScanLimit = dict["AudioScanLimit"] as! Int64
        }
        if dict.keys.contains("AudioSceneList") && dict["AudioSceneList"] != nil {
            self.audioSceneList = dict["AudioSceneList"] as! String
        }
        if dict.keys.contains("AutoFreezeType") && dict["AutoFreezeType"] != nil {
            self.autoFreezeType = dict["AutoFreezeType"] as! String
        }
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("BucketConfigList") && dict["BucketConfigList"] != nil {
            self.bucketConfigList = dict["BucketConfigList"] as! String
        }
        if dict.keys.contains("CallbackId") && dict["CallbackId"] != nil {
            self.callbackId = dict["CallbackId"] as! String
        }
        if dict.keys.contains("ImageAdFreezeConfig") && dict["ImageAdFreezeConfig"] != nil {
            self.imageAdFreezeConfig = dict["ImageAdFreezeConfig"] as! String
        }
        if dict.keys.contains("ImageAutoFreeze") && dict["ImageAutoFreeze"] != nil {
            self.imageAutoFreeze = dict["ImageAutoFreeze"] as! String
        }
        if dict.keys.contains("ImageAutoFreezeOpened") && dict["ImageAutoFreezeOpened"] != nil {
            self.imageAutoFreezeOpened = dict["ImageAutoFreezeOpened"] as! Bool
        }
        if dict.keys.contains("ImageLiveFreezeConfig") && dict["ImageLiveFreezeConfig"] != nil {
            self.imageLiveFreezeConfig = dict["ImageLiveFreezeConfig"] as! String
        }
        if dict.keys.contains("ImagePornFreezeConfig") && dict["ImagePornFreezeConfig"] != nil {
            self.imagePornFreezeConfig = dict["ImagePornFreezeConfig"] as! String
        }
        if dict.keys.contains("ImageScanLimit") && dict["ImageScanLimit"] != nil {
            self.imageScanLimit = dict["ImageScanLimit"] as! String
        }
        if dict.keys.contains("ImageSceneList") && dict["ImageSceneList"] != nil {
            self.imageSceneList = dict["ImageSceneList"] as! String
        }
        if dict.keys.contains("ImageTerrorismFreezeConfig") && dict["ImageTerrorismFreezeConfig"] != nil {
            self.imageTerrorismFreezeConfig = dict["ImageTerrorismFreezeConfig"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ScanImageNoFileType") && dict["ScanImageNoFileType"] != nil {
            self.scanImageNoFileType = dict["ScanImageNoFileType"] as! Bool
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("VideoAdFreezeConfig") && dict["VideoAdFreezeConfig"] != nil {
            self.videoAdFreezeConfig = dict["VideoAdFreezeConfig"] as! String
        }
        if dict.keys.contains("VideoAutoFreezeOpened") && dict["VideoAutoFreezeOpened"] != nil {
            self.videoAutoFreezeOpened = dict["VideoAutoFreezeOpened"] as! Bool
        }
        if dict.keys.contains("VideoAutoFreezeSceneList") && dict["VideoAutoFreezeSceneList"] != nil {
            self.videoAutoFreezeSceneList = dict["VideoAutoFreezeSceneList"] as! String
        }
        if dict.keys.contains("VideoFrameInterval") && dict["VideoFrameInterval"] != nil {
            self.videoFrameInterval = dict["VideoFrameInterval"] as! Int32
        }
        if dict.keys.contains("VideoLiveFreezeConfig") && dict["VideoLiveFreezeConfig"] != nil {
            self.videoLiveFreezeConfig = dict["VideoLiveFreezeConfig"] as! String
        }
        if dict.keys.contains("VideoMaxFrames") && dict["VideoMaxFrames"] != nil {
            self.videoMaxFrames = dict["VideoMaxFrames"] as! Int32
        }
        if dict.keys.contains("VideoMaxSize") && dict["VideoMaxSize"] != nil {
            self.videoMaxSize = dict["VideoMaxSize"] as! Int32
        }
        if dict.keys.contains("VideoPornFreezeConfig") && dict["VideoPornFreezeConfig"] != nil {
            self.videoPornFreezeConfig = dict["VideoPornFreezeConfig"] as! String
        }
        if dict.keys.contains("VideoScanLimit") && dict["VideoScanLimit"] != nil {
            self.videoScanLimit = dict["VideoScanLimit"] as! Int64
        }
        if dict.keys.contains("VideoSceneList") && dict["VideoSceneList"] != nil {
            self.videoSceneList = dict["VideoSceneList"] as! String
        }
        if dict.keys.contains("VideoTerrorismFreezeConfig") && dict["VideoTerrorismFreezeConfig"] != nil {
            self.videoTerrorismFreezeConfig = dict["VideoTerrorismFreezeConfig"] as! String
        }
        if dict.keys.contains("VideoVoiceAntispamFreezeConfig") && dict["VideoVoiceAntispamFreezeConfig"] != nil {
            self.videoVoiceAntispamFreezeConfig = dict["VideoVoiceAntispamFreezeConfig"] as! String
        }
    }
}

public class UpdateOssIncrementCheckSettingResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateOssIncrementCheckSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOssIncrementCheckSettingResponseBody?

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
            var model = UpdateOssIncrementCheckSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateOssStockStatusRequest : Tea.TeaModel {
    public var audioAutoFreezeSceneList: String?

    public var audioMaxSize: Int32?

    public var autoFreezeType: String?

    public var bucketConfigList: String?

    public var endDate: String?

    public var imageAutoFreeze: String?

    public var lang: String?

    public var operation: String?

    public var resourceTypeList: String?

    public var sceneList: String?

    public var sourceIp: String?

    public var startDate: String?

    public var videoAutoFreezeSceneList: String?

    public var videoFrameInterval: Int32?

    public var videoMaxFrames: Int32?

    public var videoMaxSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.audioAutoFreezeSceneList != nil {
            map["AudioAutoFreezeSceneList"] = self.audioAutoFreezeSceneList!
        }
        if self.audioMaxSize != nil {
            map["AudioMaxSize"] = self.audioMaxSize!
        }
        if self.autoFreezeType != nil {
            map["AutoFreezeType"] = self.autoFreezeType!
        }
        if self.bucketConfigList != nil {
            map["BucketConfigList"] = self.bucketConfigList!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.imageAutoFreeze != nil {
            map["ImageAutoFreeze"] = self.imageAutoFreeze!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.operation != nil {
            map["Operation"] = self.operation!
        }
        if self.resourceTypeList != nil {
            map["ResourceTypeList"] = self.resourceTypeList!
        }
        if self.sceneList != nil {
            map["SceneList"] = self.sceneList!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.videoAutoFreezeSceneList != nil {
            map["VideoAutoFreezeSceneList"] = self.videoAutoFreezeSceneList!
        }
        if self.videoFrameInterval != nil {
            map["VideoFrameInterval"] = self.videoFrameInterval!
        }
        if self.videoMaxFrames != nil {
            map["VideoMaxFrames"] = self.videoMaxFrames!
        }
        if self.videoMaxSize != nil {
            map["VideoMaxSize"] = self.videoMaxSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AudioAutoFreezeSceneList") && dict["AudioAutoFreezeSceneList"] != nil {
            self.audioAutoFreezeSceneList = dict["AudioAutoFreezeSceneList"] as! String
        }
        if dict.keys.contains("AudioMaxSize") && dict["AudioMaxSize"] != nil {
            self.audioMaxSize = dict["AudioMaxSize"] as! Int32
        }
        if dict.keys.contains("AutoFreezeType") && dict["AutoFreezeType"] != nil {
            self.autoFreezeType = dict["AutoFreezeType"] as! String
        }
        if dict.keys.contains("BucketConfigList") && dict["BucketConfigList"] != nil {
            self.bucketConfigList = dict["BucketConfigList"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("ImageAutoFreeze") && dict["ImageAutoFreeze"] != nil {
            self.imageAutoFreeze = dict["ImageAutoFreeze"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Operation") && dict["Operation"] != nil {
            self.operation = dict["Operation"] as! String
        }
        if dict.keys.contains("ResourceTypeList") && dict["ResourceTypeList"] != nil {
            self.resourceTypeList = dict["ResourceTypeList"] as! String
        }
        if dict.keys.contains("SceneList") && dict["SceneList"] != nil {
            self.sceneList = dict["SceneList"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("VideoAutoFreezeSceneList") && dict["VideoAutoFreezeSceneList"] != nil {
            self.videoAutoFreezeSceneList = dict["VideoAutoFreezeSceneList"] as! String
        }
        if dict.keys.contains("VideoFrameInterval") && dict["VideoFrameInterval"] != nil {
            self.videoFrameInterval = dict["VideoFrameInterval"] as! Int32
        }
        if dict.keys.contains("VideoMaxFrames") && dict["VideoMaxFrames"] != nil {
            self.videoMaxFrames = dict["VideoMaxFrames"] as! Int32
        }
        if dict.keys.contains("VideoMaxSize") && dict["VideoMaxSize"] != nil {
            self.videoMaxSize = dict["VideoMaxSize"] as! Int32
        }
    }
}

public class UpdateOssStockStatusResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateOssStockStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOssStockStatusResponseBody?

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
            var model = UpdateOssStockStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWebsiteInstanceRequest : Tea.TeaModel {
    public var domain: String?

    public var indexPage: String?

    public var indexPageScanInterval: Int32?

    public var instanceId: String?

    public var lang: String?

    public var siteProtocol: String?

    public var sourceIp: String?

    public var websiteScanInterval: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.indexPage != nil {
            map["IndexPage"] = self.indexPage!
        }
        if self.indexPageScanInterval != nil {
            map["IndexPageScanInterval"] = self.indexPageScanInterval!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.siteProtocol != nil {
            map["SiteProtocol"] = self.siteProtocol!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.websiteScanInterval != nil {
            map["WebsiteScanInterval"] = self.websiteScanInterval!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("IndexPage") && dict["IndexPage"] != nil {
            self.indexPage = dict["IndexPage"] as! String
        }
        if dict.keys.contains("IndexPageScanInterval") && dict["IndexPageScanInterval"] != nil {
            self.indexPageScanInterval = dict["IndexPageScanInterval"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SiteProtocol") && dict["SiteProtocol"] != nil {
            self.siteProtocol = dict["SiteProtocol"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("WebsiteScanInterval") && dict["WebsiteScanInterval"] != nil {
            self.websiteScanInterval = dict["WebsiteScanInterval"] as! Int32
        }
    }
}

public class UpdateWebsiteInstanceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateWebsiteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWebsiteInstanceResponseBody?

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
            var model = UpdateWebsiteInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWebsiteInstanceKeyUrlRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var sourceIp: String?

    public var urls: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.urls != nil {
            map["Urls"] = self.urls!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("Urls") && dict["Urls"] != nil {
            self.urls = dict["Urls"] as! String
        }
    }
}

public class UpdateWebsiteInstanceKeyUrlResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateWebsiteInstanceKeyUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWebsiteInstanceKeyUrlResponseBody?

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
            var model = UpdateWebsiteInstanceKeyUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWebsiteInstanceStatusRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var sourceIp: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateWebsiteInstanceStatusResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateWebsiteInstanceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWebsiteInstanceStatusResponseBody?

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
            var model = UpdateWebsiteInstanceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeCdiBaseBagRequest : Tea.TeaModel {
    public var clientToken: String?

    public var commodityCode: String?

    public var flowOutSpec: Int32?

    public var instanceId: String?

    public var orderType: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.flowOutSpec != nil {
            map["FlowOutSpec"] = self.flowOutSpec!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("FlowOutSpec") && dict["FlowOutSpec"] != nil {
            self.flowOutSpec = dict["FlowOutSpec"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class UpgradeCdiBaseBagResponseBody : Tea.TeaModel {
    public var code: String?

    public var instanceId: String?

    public var message: String?

    public var orderId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpgradeCdiBaseBagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeCdiBaseBagResponseBody?

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
            var model = UpgradeCdiBaseBagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadImageToLibRequest : Tea.TeaModel {
    public var imageLibId: Int32?

    public var images: String?

    public var sourceIp: String?

    public var urls: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageLibId != nil {
            map["ImageLibId"] = self.imageLibId!
        }
        if self.images != nil {
            map["Images"] = self.images!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.urls != nil {
            map["Urls"] = self.urls!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageLibId") && dict["ImageLibId"] != nil {
            self.imageLibId = dict["ImageLibId"] as! Int32
        }
        if dict.keys.contains("Images") && dict["Images"] != nil {
            self.images = dict["Images"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("Urls") && dict["Urls"] != nil {
            self.urls = dict["Urls"] as! String
        }
    }
}

public class UploadImageToLibResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UploadImageToLibResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadImageToLibResponseBody?

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
            var model = UploadImageToLibResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyCustomOcrTemplateRequest : Tea.TeaModel {
    public var id: Int64?

    public var testImgUrl: String?

    public override init() {
        super.init()
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
        if self.testImgUrl != nil {
            map["TestImgUrl"] = self.testImgUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("TestImgUrl") && dict["TestImgUrl"] != nil {
            self.testImgUrl = dict["TestImgUrl"] as! String
        }
    }
}

public class VerifyCustomOcrTemplateResponseBody : Tea.TeaModel {
    public var imageUrl: String?

    public var recognizeInfo: String?

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
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.recognizeInfo != nil {
            map["RecognizeInfo"] = self.recognizeInfo!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageUrl") && dict["ImageUrl"] != nil {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("RecognizeInfo") && dict["RecognizeInfo"] != nil {
            self.recognizeInfo = dict["RecognizeInfo"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifyCustomOcrTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyCustomOcrTemplateResponseBody?

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
            var model = VerifyCustomOcrTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyEmailRequest : Tea.TeaModel {
    public var lang: String?

    public var sourceIp: String?

    public var verifyCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("VerifyCode") && dict["VerifyCode"] != nil {
            self.verifyCode = dict["VerifyCode"] as! String
        }
    }
}

public class VerifyEmailResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifyEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyEmailResponseBody?

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
            var model = VerifyEmailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyPhoneRequest : Tea.TeaModel {
    public var lang: String?

    public var phone: String?

    public var sourceIp: String?

    public var verifyCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Phone") && dict["Phone"] != nil {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("VerifyCode") && dict["VerifyCode"] != nil {
            self.verifyCode = dict["VerifyCode"] as! String
        }
    }
}

public class VerifyPhoneResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifyPhoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyPhoneResponseBody?

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
            var model = VerifyPhoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyWebsiteInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var sourceIp: String?

    public var verifyMethod: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.verifyMethod != nil {
            map["VerifyMethod"] = self.verifyMethod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("VerifyMethod") && dict["VerifyMethod"] != nil {
            self.verifyMethod = dict["VerifyMethod"] as! String
        }
    }
}

public class VerifyWebsiteInstanceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifyWebsiteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyWebsiteInstanceResponseBody?

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
            var model = VerifyWebsiteInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
