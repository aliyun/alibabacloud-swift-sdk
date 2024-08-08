import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddMemberBasicInfoRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class Channels : Tea.TeaModel {
            public var appId: String?

            public var channelCode: String?

            public var channelOpenId: String?

            public var channelUnionId: String?

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
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.channelCode != nil {
                    map["ChannelCode"] = self.channelCode!
                }
                if self.channelOpenId != nil {
                    map["ChannelOpenId"] = self.channelOpenId!
                }
                if self.channelUnionId != nil {
                    map["ChannelUnionId"] = self.channelUnionId!
                }
                if self.scene != nil {
                    map["Scene"] = self.scene!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("ChannelCode") {
                    self.channelCode = dict["ChannelCode"] as! String
                }
                if dict.keys.contains("ChannelOpenId") {
                    self.channelOpenId = dict["ChannelOpenId"] as! String
                }
                if dict.keys.contains("ChannelUnionId") {
                    self.channelUnionId = dict["ChannelUnionId"] as! String
                }
                if dict.keys.contains("Scene") {
                    self.scene = dict["Scene"] as! String
                }
            }
        }
        public var area: String?

        public var avatar: String?

        public var birthday: String?

        public var channels: [AddMemberBasicInfoRequest.Body.Channels]?

        public var city: String?

        public var country: String?

        public var email: String?

        public var extra: String?

        public var gmtCreate: String?

        public var memberName: String?

        public var memberNickName: String?

        public var mixMobile: String?

        public var mobile: String?

        public var openMerchantId: String?

        public var platFormType: String?

        public var province: String?

        public var sex: String?

        public override init() {
            super.init()
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
            if self.avatar != nil {
                map["Avatar"] = self.avatar!
            }
            if self.birthday != nil {
                map["Birthday"] = self.birthday!
            }
            if self.channels != nil {
                var tmp : [Any] = []
                for k in self.channels! {
                    tmp.append(k.toMap())
                }
                map["Channels"] = tmp
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.memberName != nil {
                map["MemberName"] = self.memberName!
            }
            if self.memberNickName != nil {
                map["MemberNickName"] = self.memberNickName!
            }
            if self.mixMobile != nil {
                map["MixMobile"] = self.mixMobile!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.openMerchantId != nil {
                map["OpenMerchantId"] = self.openMerchantId!
            }
            if self.platFormType != nil {
                map["PlatFormType"] = self.platFormType!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.sex != nil {
                map["Sex"] = self.sex!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Area") {
                self.area = dict["Area"] as! String
            }
            if dict.keys.contains("Avatar") {
                self.avatar = dict["Avatar"] as! String
            }
            if dict.keys.contains("Birthday") {
                self.birthday = dict["Birthday"] as! String
            }
            if dict.keys.contains("Channels") {
                var tmp : [AddMemberBasicInfoRequest.Body.Channels] = []
                for v in dict["Channels"] as! [Any] {
                    var model = AddMemberBasicInfoRequest.Body.Channels()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.channels = tmp
            }
            if dict.keys.contains("City") {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("Country") {
                self.country = dict["Country"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Extra") {
                self.extra = dict["Extra"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("MemberName") {
                self.memberName = dict["MemberName"] as! String
            }
            if dict.keys.contains("MemberNickName") {
                self.memberNickName = dict["MemberNickName"] as! String
            }
            if dict.keys.contains("MixMobile") {
                self.mixMobile = dict["MixMobile"] as! String
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("OpenMerchantId") {
                self.openMerchantId = dict["OpenMerchantId"] as! String
            }
            if dict.keys.contains("PlatFormType") {
                self.platFormType = dict["PlatFormType"] as! String
            }
            if dict.keys.contains("Province") {
                self.province = dict["Province"] as! String
            }
            if dict.keys.contains("Sex") {
                self.sex = dict["Sex"] as! String
            }
        }
    }
    public var body: AddMemberBasicInfoRequest.Body?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = AddMemberBasicInfoRequest.Body()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddMemberBasicInfoShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.bodyShrink = dict["body"] as! String
        }
    }
}

public class AddMemberBasicInfoResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var outerMemberId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.outerMemberId != nil {
            map["OuterMemberId"] = self.outerMemberId!
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("OuterMemberId") {
            self.outerMemberId = dict["OuterMemberId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddMemberBasicInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddMemberBasicInfoResponseBody?

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
            var model = AddMemberBasicInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchSaveOrderPopRequest : Tea.TeaModel {
    public class Orders : Tea.TeaModel {
        public class SubOrderModelList : Tea.TeaModel {
            public var feature: String?

            public var openSubOrderId: String?

            public var orderPayment: String?

            public var outProductId: String?

            public var productAmount: String?

            public var productId: String?

            public var productName: String?

            public var refundStatus: String?

            public var status: String?

            public var totalFee: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.feature != nil {
                    map["Feature"] = self.feature!
                }
                if self.openSubOrderId != nil {
                    map["OpenSubOrderId"] = self.openSubOrderId!
                }
                if self.orderPayment != nil {
                    map["OrderPayment"] = self.orderPayment!
                }
                if self.outProductId != nil {
                    map["OutProductId"] = self.outProductId!
                }
                if self.productAmount != nil {
                    map["ProductAmount"] = self.productAmount!
                }
                if self.productId != nil {
                    map["ProductId"] = self.productId!
                }
                if self.productName != nil {
                    map["ProductName"] = self.productName!
                }
                if self.refundStatus != nil {
                    map["RefundStatus"] = self.refundStatus!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.totalFee != nil {
                    map["TotalFee"] = self.totalFee!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Feature") {
                    self.feature = dict["Feature"] as! String
                }
                if dict.keys.contains("OpenSubOrderId") {
                    self.openSubOrderId = dict["OpenSubOrderId"] as! String
                }
                if dict.keys.contains("OrderPayment") {
                    self.orderPayment = dict["OrderPayment"] as! String
                }
                if dict.keys.contains("OutProductId") {
                    self.outProductId = dict["OutProductId"] as! String
                }
                if dict.keys.contains("ProductAmount") {
                    self.productAmount = dict["ProductAmount"] as! String
                }
                if dict.keys.contains("ProductId") {
                    self.productId = dict["ProductId"] as! String
                }
                if dict.keys.contains("ProductName") {
                    self.productName = dict["ProductName"] as! String
                }
                if dict.keys.contains("RefundStatus") {
                    self.refundStatus = dict["RefundStatus"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TotalFee") {
                    self.totalFee = dict["TotalFee"] as! String
                }
            }
        }
        public var channelCode: String?

        public var channelOpenId: String?

        public var endTime: String?

        public var feature: String?

        public var openMerchantId: String?

        public var openOrderId: String?

        public var orderCreateTime: String?

        public var orderPayment: String?

        public var payTime: String?

        public var platformType: String?

        public var shopId: String?

        public var status: String?

        public var subOrderModelList: [BatchSaveOrderPopRequest.Orders.SubOrderModelList]?

        public var totalFee: String?

        public var buyerOpenUid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channelCode != nil {
                map["ChannelCode"] = self.channelCode!
            }
            if self.channelOpenId != nil {
                map["ChannelOpenId"] = self.channelOpenId!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.feature != nil {
                map["Feature"] = self.feature!
            }
            if self.openMerchantId != nil {
                map["OpenMerchantId"] = self.openMerchantId!
            }
            if self.openOrderId != nil {
                map["OpenOrderId"] = self.openOrderId!
            }
            if self.orderCreateTime != nil {
                map["OrderCreateTime"] = self.orderCreateTime!
            }
            if self.orderPayment != nil {
                map["OrderPayment"] = self.orderPayment!
            }
            if self.payTime != nil {
                map["PayTime"] = self.payTime!
            }
            if self.platformType != nil {
                map["PlatformType"] = self.platformType!
            }
            if self.shopId != nil {
                map["ShopId"] = self.shopId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subOrderModelList != nil {
                var tmp : [Any] = []
                for k in self.subOrderModelList! {
                    tmp.append(k.toMap())
                }
                map["SubOrderModelList"] = tmp
            }
            if self.totalFee != nil {
                map["TotalFee"] = self.totalFee!
            }
            if self.buyerOpenUid != nil {
                map["buyerOpenUid"] = self.buyerOpenUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelCode") {
                self.channelCode = dict["ChannelCode"] as! String
            }
            if dict.keys.contains("ChannelOpenId") {
                self.channelOpenId = dict["ChannelOpenId"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Feature") {
                self.feature = dict["Feature"] as! String
            }
            if dict.keys.contains("OpenMerchantId") {
                self.openMerchantId = dict["OpenMerchantId"] as! String
            }
            if dict.keys.contains("OpenOrderId") {
                self.openOrderId = dict["OpenOrderId"] as! String
            }
            if dict.keys.contains("OrderCreateTime") {
                self.orderCreateTime = dict["OrderCreateTime"] as! String
            }
            if dict.keys.contains("OrderPayment") {
                self.orderPayment = dict["OrderPayment"] as! String
            }
            if dict.keys.contains("PayTime") {
                self.payTime = dict["PayTime"] as! String
            }
            if dict.keys.contains("PlatformType") {
                self.platformType = dict["PlatformType"] as! String
            }
            if dict.keys.contains("ShopId") {
                self.shopId = dict["ShopId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubOrderModelList") {
                var tmp : [BatchSaveOrderPopRequest.Orders.SubOrderModelList] = []
                for v in dict["SubOrderModelList"] as! [Any] {
                    var model = BatchSaveOrderPopRequest.Orders.SubOrderModelList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subOrderModelList = tmp
            }
            if dict.keys.contains("TotalFee") {
                self.totalFee = dict["TotalFee"] as! String
            }
            if dict.keys.contains("buyerOpenUid") {
                self.buyerOpenUid = dict["buyerOpenUid"] as! String
            }
        }
    }
    public var orders: [BatchSaveOrderPopRequest.Orders]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orders != nil {
            var tmp : [Any] = []
            for k in self.orders! {
                tmp.append(k.toMap())
            }
            map["Orders"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Orders") {
            var tmp : [BatchSaveOrderPopRequest.Orders] = []
            for v in dict["Orders"] as! [Any] {
                var model = BatchSaveOrderPopRequest.Orders()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.orders = tmp
        }
    }
}

public class BatchSaveOrderPopShrinkRequest : Tea.TeaModel {
    public var ordersShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ordersShrink != nil {
            map["Orders"] = self.ordersShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Orders") {
            self.ordersShrink = dict["Orders"] as! String
        }
    }
}

public class BatchSaveOrderPopResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class BatchSaveOrderPopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchSaveOrderPopResponseBody?

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
            var model = BatchSaveOrderPopResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CalculateMemberLevelRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var currentGrade: Int32?

        public var currentGradeName: String?

        public var memberId: String?

        public var openMerchantId: String?

        public var platformType: String?

        public var score: String?

        public var serialNo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentGrade != nil {
                map["CurrentGrade"] = self.currentGrade!
            }
            if self.currentGradeName != nil {
                map["CurrentGradeName"] = self.currentGradeName!
            }
            if self.memberId != nil {
                map["MemberId"] = self.memberId!
            }
            if self.openMerchantId != nil {
                map["OpenMerchantId"] = self.openMerchantId!
            }
            if self.platformType != nil {
                map["PlatformType"] = self.platformType!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.serialNo != nil {
                map["SerialNo"] = self.serialNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentGrade") {
                self.currentGrade = dict["CurrentGrade"] as! Int32
            }
            if dict.keys.contains("CurrentGradeName") {
                self.currentGradeName = dict["CurrentGradeName"] as! String
            }
            if dict.keys.contains("MemberId") {
                self.memberId = dict["MemberId"] as! String
            }
            if dict.keys.contains("OpenMerchantId") {
                self.openMerchantId = dict["OpenMerchantId"] as! String
            }
            if dict.keys.contains("PlatformType") {
                self.platformType = dict["PlatformType"] as! String
            }
            if dict.keys.contains("Score") {
                self.score = dict["Score"] as! String
            }
            if dict.keys.contains("SerialNo") {
                self.serialNo = dict["SerialNo"] as! String
            }
        }
    }
    public var body: CalculateMemberLevelRequest.Body?

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
        if self.body != nil {
            map["Body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Body") {
            var model = CalculateMemberLevelRequest.Body()
            model.fromMap(dict["Body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CalculateMemberLevelShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["Body"] = self.bodyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Body") {
            self.bodyShrink = dict["Body"] as! String
        }
    }
}

public class CalculateMemberLevelResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var grade: String?

    public var httpStatusCode: String?

    public var message: String?

    public var outerMemberId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.grade != nil {
            map["Grade"] = self.grade!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.outerMemberId != nil {
            map["OuterMemberId"] = self.outerMemberId!
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Grade") {
            self.grade = dict["Grade"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OuterMemberId") {
            self.outerMemberId = dict["OuterMemberId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CalculateMemberLevelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CalculateMemberLevelResponseBody?

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
            var model = CalculateMemberLevelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EditMemberBasicInfoRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var area: String?

        public var avatar: String?

        public var birthday: String?

        public var city: String?

        public var country: String?

        public var email: String?

        public var memberName: String?

        public var memberNickName: String?

        public var mobile: String?

        public var openMerchantId: String?

        public var platformType: String?

        public var province: String?

        public var sex: String?

        public override init() {
            super.init()
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
            if self.avatar != nil {
                map["Avatar"] = self.avatar!
            }
            if self.birthday != nil {
                map["Birthday"] = self.birthday!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.memberName != nil {
                map["MemberName"] = self.memberName!
            }
            if self.memberNickName != nil {
                map["MemberNickName"] = self.memberNickName!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.openMerchantId != nil {
                map["OpenMerchantId"] = self.openMerchantId!
            }
            if self.platformType != nil {
                map["PlatformType"] = self.platformType!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.sex != nil {
                map["Sex"] = self.sex!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Area") {
                self.area = dict["Area"] as! String
            }
            if dict.keys.contains("Avatar") {
                self.avatar = dict["Avatar"] as! String
            }
            if dict.keys.contains("Birthday") {
                self.birthday = dict["Birthday"] as! String
            }
            if dict.keys.contains("City") {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("Country") {
                self.country = dict["Country"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("MemberName") {
                self.memberName = dict["MemberName"] as! String
            }
            if dict.keys.contains("MemberNickName") {
                self.memberNickName = dict["MemberNickName"] as! String
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("OpenMerchantId") {
                self.openMerchantId = dict["OpenMerchantId"] as! String
            }
            if dict.keys.contains("PlatformType") {
                self.platformType = dict["PlatformType"] as! String
            }
            if dict.keys.contains("Province") {
                self.province = dict["Province"] as! String
            }
            if dict.keys.contains("Sex") {
                self.sex = dict["Sex"] as! String
            }
        }
    }
    public var body: EditMemberBasicInfoRequest.Body?

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
        if self.body != nil {
            map["Body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Body") {
            var model = EditMemberBasicInfoRequest.Body()
            model.fromMap(dict["Body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EditMemberBasicInfoShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["Body"] = self.bodyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Body") {
            self.bodyShrink = dict["Body"] as! String
        }
    }
}

public class EditMemberBasicInfoResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
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

public class EditMemberBasicInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditMemberBasicInfoResponseBody?

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
            var model = EditMemberBasicInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MemberAccountDetailPageQueryRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var accountType: Int32?

        public var endTime: String?

        public var openMerchantId: String?

        public var outerMemberId: String?

        public var page: Int32?

        public var pageSize: Int32?

        public var platFormType: String?

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
            if self.accountType != nil {
                map["AccountType"] = self.accountType!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.openMerchantId != nil {
                map["OpenMerchantId"] = self.openMerchantId!
            }
            if self.outerMemberId != nil {
                map["OuterMemberId"] = self.outerMemberId!
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.platFormType != nil {
                map["PlatFormType"] = self.platFormType!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountType") {
                self.accountType = dict["AccountType"] as! Int32
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("OpenMerchantId") {
                self.openMerchantId = dict["OpenMerchantId"] as! String
            }
            if dict.keys.contains("OuterMemberId") {
                self.outerMemberId = dict["OuterMemberId"] as! String
            }
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("PlatFormType") {
                self.platFormType = dict["PlatFormType"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var body: MemberAccountDetailPageQueryRequest.Body?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = MemberAccountDetailPageQueryRequest.Body()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MemberAccountDetailPageQueryShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.bodyShrink = dict["body"] as! String
        }
    }
}

public class MemberAccountDetailPageQueryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountBalance: String?

        public var accountType: Int32?

        public var activityType: String?

        public var channelCode: String?

        public var detailValue: String?

        public var extra: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var openMerchantId: String?

        public var operateType: String?

        public var outerMemberId: String?

        public var remark: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountBalance != nil {
                map["AccountBalance"] = self.accountBalance!
            }
            if self.accountType != nil {
                map["AccountType"] = self.accountType!
            }
            if self.activityType != nil {
                map["ActivityType"] = self.activityType!
            }
            if self.channelCode != nil {
                map["ChannelCode"] = self.channelCode!
            }
            if self.detailValue != nil {
                map["DetailValue"] = self.detailValue!
            }
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.openMerchantId != nil {
                map["OpenMerchantId"] = self.openMerchantId!
            }
            if self.operateType != nil {
                map["OperateType"] = self.operateType!
            }
            if self.outerMemberId != nil {
                map["OuterMemberId"] = self.outerMemberId!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountBalance") {
                self.accountBalance = dict["AccountBalance"] as! String
            }
            if dict.keys.contains("AccountType") {
                self.accountType = dict["AccountType"] as! Int32
            }
            if dict.keys.contains("ActivityType") {
                self.activityType = dict["ActivityType"] as! String
            }
            if dict.keys.contains("ChannelCode") {
                self.channelCode = dict["ChannelCode"] as! String
            }
            if dict.keys.contains("DetailValue") {
                self.detailValue = dict["DetailValue"] as! String
            }
            if dict.keys.contains("Extra") {
                self.extra = dict["Extra"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("OpenMerchantId") {
                self.openMerchantId = dict["OpenMerchantId"] as! String
            }
            if dict.keys.contains("OperateType") {
                self.operateType = dict["OperateType"] as! String
            }
            if dict.keys.contains("OuterMemberId") {
                self.outerMemberId = dict["OuterMemberId"] as! String
            }
            if dict.keys.contains("Remark") {
                self.remark = dict["Remark"] as! String
            }
        }
    }
    public var data: [MemberAccountDetailPageQueryResponseBody.Data]?

    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var success: String?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("Data") {
            var tmp : [MemberAccountDetailPageQueryResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = MemberAccountDetailPageQueryResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class MemberAccountDetailPageQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MemberAccountDetailPageQueryResponseBody?

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
            var model = MemberAccountDetailPageQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MemberPointChangeRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var accountType: String?

        public var channelCode: String?

        public var extra: String?

        public var openMerchantId: String?

        public var operateType: String?

        public var outerMemberId: String?

        public var platFormType: String?

        public var quantity: String?

        public var serialNo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountType != nil {
                map["AccountType"] = self.accountType!
            }
            if self.channelCode != nil {
                map["ChannelCode"] = self.channelCode!
            }
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.openMerchantId != nil {
                map["OpenMerchantId"] = self.openMerchantId!
            }
            if self.operateType != nil {
                map["OperateType"] = self.operateType!
            }
            if self.outerMemberId != nil {
                map["OuterMemberId"] = self.outerMemberId!
            }
            if self.platFormType != nil {
                map["PlatFormType"] = self.platFormType!
            }
            if self.quantity != nil {
                map["Quantity"] = self.quantity!
            }
            if self.serialNo != nil {
                map["SerialNo"] = self.serialNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountType") {
                self.accountType = dict["AccountType"] as! String
            }
            if dict.keys.contains("ChannelCode") {
                self.channelCode = dict["ChannelCode"] as! String
            }
            if dict.keys.contains("Extra") {
                self.extra = dict["Extra"] as! String
            }
            if dict.keys.contains("OpenMerchantId") {
                self.openMerchantId = dict["OpenMerchantId"] as! String
            }
            if dict.keys.contains("OperateType") {
                self.operateType = dict["OperateType"] as! String
            }
            if dict.keys.contains("OuterMemberId") {
                self.outerMemberId = dict["OuterMemberId"] as! String
            }
            if dict.keys.contains("PlatFormType") {
                self.platFormType = dict["PlatFormType"] as! String
            }
            if dict.keys.contains("Quantity") {
                self.quantity = dict["Quantity"] as! String
            }
            if dict.keys.contains("SerialNo") {
                self.serialNo = dict["SerialNo"] as! String
            }
        }
    }
    public var body: MemberPointChangeRequest.Body?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = MemberPointChangeRequest.Body()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MemberPointChangeShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.bodyShrink = dict["body"] as! String
        }
    }
}

public class MemberPointChangeResponseBody : Tea.TeaModel {
    public var accountBalance: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var levelName: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountBalance != nil {
            map["AccountBalance"] = self.accountBalance!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.levelName != nil {
            map["LevelName"] = self.levelName!
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
        if dict.keys.contains("AccountBalance") {
            self.accountBalance = dict["AccountBalance"] as! String
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("LevelName") {
            self.levelName = dict["LevelName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class MemberPointChangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MemberPointChangeResponseBody?

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
            var model = MemberPointChangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMemberBasicInfoRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var channelCode: String?

        public var channelOpenId: String?

        public var mobile: String?

        public var openMerchantId: String?

        public var outerMemberId: String?

        public var platFormType: String?

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
            if self.channelCode != nil {
                map["ChannelCode"] = self.channelCode!
            }
            if self.channelOpenId != nil {
                map["ChannelOpenId"] = self.channelOpenId!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.openMerchantId != nil {
                map["OpenMerchantId"] = self.openMerchantId!
            }
            if self.outerMemberId != nil {
                map["OuterMemberId"] = self.outerMemberId!
            }
            if self.platFormType != nil {
                map["PlatFormType"] = self.platFormType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelCode") {
                self.channelCode = dict["ChannelCode"] as! String
            }
            if dict.keys.contains("ChannelOpenId") {
                self.channelOpenId = dict["ChannelOpenId"] as! String
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("OpenMerchantId") {
                self.openMerchantId = dict["OpenMerchantId"] as! String
            }
            if dict.keys.contains("OuterMemberId") {
                self.outerMemberId = dict["OuterMemberId"] as! String
            }
            if dict.keys.contains("PlatFormType") {
                self.platFormType = dict["PlatFormType"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var body: QueryMemberBasicInfoRequest.Body?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = QueryMemberBasicInfoRequest.Body()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMemberBasicInfoShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.bodyShrink = dict["body"] as! String
        }
    }
}

public class QueryMemberBasicInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var area: String?

        public var avatar: String?

        public var birthday: String?

        public var city: String?

        public var country: String?

        public var email: String?

        public var extra: String?

        public var levelName: String?

        public var levelNum: String?

        public var memberName: String?

        public var memberNickName: String?

        public var mobile: String?

        public var nearExpiredScore: String?

        public var openMerchantId: String?

        public var outerMemberId: String?

        public var points: String?

        public var province: String?

        public var score: String?

        public var sex: String?

        public override init() {
            super.init()
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
            if self.avatar != nil {
                map["Avatar"] = self.avatar!
            }
            if self.birthday != nil {
                map["Birthday"] = self.birthday!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.levelName != nil {
                map["LevelName"] = self.levelName!
            }
            if self.levelNum != nil {
                map["LevelNum"] = self.levelNum!
            }
            if self.memberName != nil {
                map["MemberName"] = self.memberName!
            }
            if self.memberNickName != nil {
                map["MemberNickName"] = self.memberNickName!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.nearExpiredScore != nil {
                map["NearExpiredScore"] = self.nearExpiredScore!
            }
            if self.openMerchantId != nil {
                map["OpenMerchantId"] = self.openMerchantId!
            }
            if self.outerMemberId != nil {
                map["OuterMemberId"] = self.outerMemberId!
            }
            if self.points != nil {
                map["Points"] = self.points!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.sex != nil {
                map["Sex"] = self.sex!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Area") {
                self.area = dict["Area"] as! String
            }
            if dict.keys.contains("Avatar") {
                self.avatar = dict["Avatar"] as! String
            }
            if dict.keys.contains("Birthday") {
                self.birthday = dict["Birthday"] as! String
            }
            if dict.keys.contains("City") {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("Country") {
                self.country = dict["Country"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Extra") {
                self.extra = dict["Extra"] as! String
            }
            if dict.keys.contains("LevelName") {
                self.levelName = dict["LevelName"] as! String
            }
            if dict.keys.contains("LevelNum") {
                self.levelNum = dict["LevelNum"] as! String
            }
            if dict.keys.contains("MemberName") {
                self.memberName = dict["MemberName"] as! String
            }
            if dict.keys.contains("MemberNickName") {
                self.memberNickName = dict["MemberNickName"] as! String
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("NearExpiredScore") {
                self.nearExpiredScore = dict["NearExpiredScore"] as! String
            }
            if dict.keys.contains("OpenMerchantId") {
                self.openMerchantId = dict["OpenMerchantId"] as! String
            }
            if dict.keys.contains("OuterMemberId") {
                self.outerMemberId = dict["OuterMemberId"] as! String
            }
            if dict.keys.contains("Points") {
                self.points = dict["Points"] as! String
            }
            if dict.keys.contains("Province") {
                self.province = dict["Province"] as! String
            }
            if dict.keys.contains("Score") {
                self.score = dict["Score"] as! String
            }
            if dict.keys.contains("Sex") {
                self.sex = dict["Sex"] as! String
            }
        }
    }
    public var data: QueryMemberBasicInfoResponseBody.Data?

    public var errorCode: String?

    public var errorMessage: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("Data") {
            var model = QueryMemberBasicInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryMemberBasicInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMemberBasicInfoResponseBody?

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
            var model = QueryMemberBasicInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SyncCardInfoRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class Gifters : Tea.TeaModel {
            public var headerImg: String?

            public var id: String?

            public var nickname: String?

            public var openId: String?

            public var phone: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.headerImg != nil {
                    map["HeaderImg"] = self.headerImg!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.nickname != nil {
                    map["Nickname"] = self.nickname!
                }
                if self.openId != nil {
                    map["OpenId"] = self.openId!
                }
                if self.phone != nil {
                    map["Phone"] = self.phone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HeaderImg") {
                    self.headerImg = dict["HeaderImg"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Nickname") {
                    self.nickname = dict["Nickname"] as! String
                }
                if dict.keys.contains("OpenId") {
                    self.openId = dict["OpenId"] as! String
                }
                if dict.keys.contains("Phone") {
                    self.phone = dict["Phone"] as! String
                }
            }
        }
        public class PresentDetail : Tea.TeaModel {
            public var count: Int64?

            public var itemId: String?

            public var name: String?

            public var price: Double?

            public var skuId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.itemId != nil {
                    map["ItemId"] = self.itemId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.price != nil {
                    map["Price"] = self.price!
                }
                if self.skuId != nil {
                    map["SkuId"] = self.skuId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int64
                }
                if dict.keys.contains("ItemId") {
                    self.itemId = dict["ItemId"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Price") {
                    self.price = dict["Price"] as! Double
                }
                if dict.keys.contains("SkuId") {
                    self.skuId = dict["SkuId"] as! String
                }
            }
        }
        public class Recipient : Tea.TeaModel {
            public var headerImg: String?

            public var id: String?

            public var nickname: String?

            public var openId: String?

            public var phone: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.headerImg != nil {
                    map["HeaderImg"] = self.headerImg!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.nickname != nil {
                    map["Nickname"] = self.nickname!
                }
                if self.openId != nil {
                    map["OpenId"] = self.openId!
                }
                if self.phone != nil {
                    map["Phone"] = self.phone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HeaderImg") {
                    self.headerImg = dict["HeaderImg"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Nickname") {
                    self.nickname = dict["Nickname"] as! String
                }
                if dict.keys.contains("OpenId") {
                    self.openId = dict["OpenId"] as! String
                }
                if dict.keys.contains("Phone") {
                    self.phone = dict["Phone"] as! String
                }
            }
        }
        public var buyerId: String?

        public var extra: String?

        public var gifters: SyncCardInfoRequest.Body.Gifters?

        public var occurredAt: String?

        public var openMerchantId: String?

        public var orderId: String?

        public var presentDetail: [SyncCardInfoRequest.Body.PresentDetail]?

        public var receivedAt: String?

        public var recipient: SyncCardInfoRequest.Body.Recipient?

        public var status: String?

        public var theme: String?

        public var transferId: String?

        public var transferredAt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.gifters?.validate()
            try self.recipient?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buyerId != nil {
                map["BuyerId"] = self.buyerId!
            }
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.gifters != nil {
                map["Gifters"] = self.gifters?.toMap()
            }
            if self.occurredAt != nil {
                map["OccurredAt"] = self.occurredAt!
            }
            if self.openMerchantId != nil {
                map["OpenMerchantId"] = self.openMerchantId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.presentDetail != nil {
                var tmp : [Any] = []
                for k in self.presentDetail! {
                    tmp.append(k.toMap())
                }
                map["PresentDetail"] = tmp
            }
            if self.receivedAt != nil {
                map["ReceivedAt"] = self.receivedAt!
            }
            if self.recipient != nil {
                map["Recipient"] = self.recipient?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.theme != nil {
                map["Theme"] = self.theme!
            }
            if self.transferId != nil {
                map["TransferId"] = self.transferId!
            }
            if self.transferredAt != nil {
                map["TransferredAt"] = self.transferredAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BuyerId") {
                self.buyerId = dict["BuyerId"] as! String
            }
            if dict.keys.contains("Extra") {
                self.extra = dict["Extra"] as! String
            }
            if dict.keys.contains("Gifters") {
                var model = SyncCardInfoRequest.Body.Gifters()
                model.fromMap(dict["Gifters"] as! [String: Any])
                self.gifters = model
            }
            if dict.keys.contains("OccurredAt") {
                self.occurredAt = dict["OccurredAt"] as! String
            }
            if dict.keys.contains("OpenMerchantId") {
                self.openMerchantId = dict["OpenMerchantId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("PresentDetail") {
                var tmp : [SyncCardInfoRequest.Body.PresentDetail] = []
                for v in dict["PresentDetail"] as! [Any] {
                    var model = SyncCardInfoRequest.Body.PresentDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.presentDetail = tmp
            }
            if dict.keys.contains("ReceivedAt") {
                self.receivedAt = dict["ReceivedAt"] as! String
            }
            if dict.keys.contains("Recipient") {
                var model = SyncCardInfoRequest.Body.Recipient()
                model.fromMap(dict["Recipient"] as! [String: Any])
                self.recipient = model
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Theme") {
                self.theme = dict["Theme"] as! String
            }
            if dict.keys.contains("TransferId") {
                self.transferId = dict["TransferId"] as! String
            }
            if dict.keys.contains("TransferredAt") {
                self.transferredAt = dict["TransferredAt"] as! String
            }
        }
    }
    public var body: SyncCardInfoRequest.Body?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = SyncCardInfoRequest.Body()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SyncCardInfoShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.bodyShrink = dict["body"] as! String
        }
    }
}

public class SyncCardInfoResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class SyncCardInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncCardInfoResponseBody?

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
            var model = SyncCardInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SyncMemberBehaviorInfoRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var actionDuration: String?

        public var actionEndDate: String?

        public var actionResult: Bool?

        public var actionStartDate: String?

        public var actionSubType: String?

        public var actionType: String?

        public var extra: String?

        public var openMerchantId: String?

        public var outerMemberId: String?

        public var platFormType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionDuration != nil {
                map["ActionDuration"] = self.actionDuration!
            }
            if self.actionEndDate != nil {
                map["ActionEndDate"] = self.actionEndDate!
            }
            if self.actionResult != nil {
                map["ActionResult"] = self.actionResult!
            }
            if self.actionStartDate != nil {
                map["ActionStartDate"] = self.actionStartDate!
            }
            if self.actionSubType != nil {
                map["ActionSubType"] = self.actionSubType!
            }
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.openMerchantId != nil {
                map["OpenMerchantId"] = self.openMerchantId!
            }
            if self.outerMemberId != nil {
                map["OuterMemberId"] = self.outerMemberId!
            }
            if self.platFormType != nil {
                map["PlatFormType"] = self.platFormType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActionDuration") {
                self.actionDuration = dict["ActionDuration"] as! String
            }
            if dict.keys.contains("ActionEndDate") {
                self.actionEndDate = dict["ActionEndDate"] as! String
            }
            if dict.keys.contains("ActionResult") {
                self.actionResult = dict["ActionResult"] as! Bool
            }
            if dict.keys.contains("ActionStartDate") {
                self.actionStartDate = dict["ActionStartDate"] as! String
            }
            if dict.keys.contains("ActionSubType") {
                self.actionSubType = dict["ActionSubType"] as! String
            }
            if dict.keys.contains("ActionType") {
                self.actionType = dict["ActionType"] as! String
            }
            if dict.keys.contains("Extra") {
                self.extra = dict["Extra"] as! String
            }
            if dict.keys.contains("OpenMerchantId") {
                self.openMerchantId = dict["OpenMerchantId"] as! String
            }
            if dict.keys.contains("OuterMemberId") {
                self.outerMemberId = dict["OuterMemberId"] as! String
            }
            if dict.keys.contains("PlatFormType") {
                self.platFormType = dict["PlatFormType"] as! String
            }
        }
    }
    public var body: SyncMemberBehaviorInfoRequest.Body?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = SyncMemberBehaviorInfoRequest.Body()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SyncMemberBehaviorInfoShrinkRequest : Tea.TeaModel {
    public var bodyShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyShrink != nil {
            map["body"] = self.bodyShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.bodyShrink = dict["body"] as! String
        }
    }
}

public class SyncMemberBehaviorInfoResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SyncMemberBehaviorInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncMemberBehaviorInfoResponseBody?

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
            var model = SyncMemberBehaviorInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
