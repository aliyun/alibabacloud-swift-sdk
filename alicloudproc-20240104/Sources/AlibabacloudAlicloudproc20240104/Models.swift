import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Address : Tea.TeaModel {
    public var cityCode: String?

    public var detail: String?

    public var districtCode: String?

    public var provinceCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cityCode != nil {
            map["cityCode"] = self.cityCode!
        }
        if self.detail != nil {
            map["detail"] = self.detail!
        }
        if self.districtCode != nil {
            map["districtCode"] = self.districtCode!
        }
        if self.provinceCode != nil {
            map["provinceCode"] = self.provinceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cityCode") && dict["cityCode"] != nil {
            self.cityCode = dict["cityCode"] as! String
        }
        if dict.keys.contains("detail") && dict["detail"] != nil {
            self.detail = dict["detail"] as! String
        }
        if dict.keys.contains("districtCode") && dict["districtCode"] != nil {
            self.districtCode = dict["districtCode"] as! String
        }
        if dict.keys.contains("provinceCode") && dict["provinceCode"] != nil {
            self.provinceCode = dict["provinceCode"] as! String
        }
    }
}

public class Company : Tea.TeaModel {
    public var name: String?

    public var uscc: String?

    public override init() {
        super.init()
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
            map["name"] = self.name!
        }
        if self.uscc != nil {
            map["uscc"] = self.uscc!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("uscc") && dict["uscc"] != nil {
            self.uscc = dict["uscc"] as! String
        }
    }
}

public class Contact : Tea.TeaModel {
    public var email: String?

    public var name: String?

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
        if self.email != nil {
            map["email"] = self.email!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.phone != nil {
            map["phone"] = self.phone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("email") && dict["email"] != nil {
            self.email = dict["email"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("phone") && dict["phone"] != nil {
            self.phone = dict["phone"] as! String
        }
    }
}

public class ExtendInfo : Tea.TeaModel {
    public var depositAmount: Double?

    public var desc: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.depositAmount != nil {
            map["depositAmount"] = self.depositAmount!
        }
        if self.desc != nil {
            map["desc"] = self.desc!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("depositAmount") && dict["depositAmount"] != nil {
            self.depositAmount = dict["depositAmount"] as! Double
        }
        if dict.keys.contains("desc") && dict["desc"] != nil {
            self.desc = dict["desc"] as! String
        }
    }
}

public class SubjectExtendInfo : Tea.TeaModel {
    public var deliveryDesc: String?

    public var desc: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryDesc != nil {
            map["deliveryDesc"] = self.deliveryDesc!
        }
        if self.desc != nil {
            map["desc"] = self.desc!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deliveryDesc") && dict["deliveryDesc"] != nil {
            self.deliveryDesc = dict["deliveryDesc"] as! String
        }
        if dict.keys.contains("desc") && dict["desc"] != nil {
            self.desc = dict["desc"] as! String
        }
    }
}

public class CreateSourcingProjectRequest : Tea.TeaModel {
    public class Address : Tea.TeaModel {
        public var cityCode: String?

        public var detail: String?

        public var districtCode: String?

        public var provinceCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cityCode != nil {
                map["CityCode"] = self.cityCode!
            }
            if self.detail != nil {
                map["Detail"] = self.detail!
            }
            if self.districtCode != nil {
                map["DistrictCode"] = self.districtCode!
            }
            if self.provinceCode != nil {
                map["ProvinceCode"] = self.provinceCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CityCode") && dict["CityCode"] != nil {
                self.cityCode = dict["CityCode"] as! String
            }
            if dict.keys.contains("Detail") && dict["Detail"] != nil {
                self.detail = dict["Detail"] as! String
            }
            if dict.keys.contains("DistrictCode") && dict["DistrictCode"] != nil {
                self.districtCode = dict["DistrictCode"] as! String
            }
            if dict.keys.contains("ProvinceCode") && dict["ProvinceCode"] != nil {
                self.provinceCode = dict["ProvinceCode"] as! String
            }
        }
    }
    public class Company : Tea.TeaModel {
        public var name: String?

        public var uscc: String?

        public override init() {
            super.init()
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
            if self.uscc != nil {
                map["Uscc"] = self.uscc!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Uscc") && dict["Uscc"] != nil {
                self.uscc = dict["Uscc"] as! String
            }
        }
    }
    public class Contact : Tea.TeaModel {
        public var email: String?

        public var name: String?

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
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Phone") && dict["Phone"] != nil {
                self.phone = dict["Phone"] as! String
            }
        }
    }
    public class Subjects : Tea.TeaModel {
        public class Address : Tea.TeaModel {
            public var cityCode: String?

            public var detail: String?

            public var districtCode: String?

            public var provinceCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cityCode != nil {
                    map["CityCode"] = self.cityCode!
                }
                if self.detail != nil {
                    map["Detail"] = self.detail!
                }
                if self.districtCode != nil {
                    map["DistrictCode"] = self.districtCode!
                }
                if self.provinceCode != nil {
                    map["ProvinceCode"] = self.provinceCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CityCode") && dict["CityCode"] != nil {
                    self.cityCode = dict["CityCode"] as! String
                }
                if dict.keys.contains("Detail") && dict["Detail"] != nil {
                    self.detail = dict["Detail"] as! String
                }
                if dict.keys.contains("DistrictCode") && dict["DistrictCode"] != nil {
                    self.districtCode = dict["DistrictCode"] as! String
                }
                if dict.keys.contains("ProvinceCode") && dict["ProvinceCode"] != nil {
                    self.provinceCode = dict["ProvinceCode"] as! String
                }
            }
        }
        public var address: CreateSourcingProjectRequest.Subjects.Address?

        public var code: String?

        public var extendInfo: [String: String]?

        public var name: String?

        public var quantity: Double?

        public var spec: String?

        public var unit: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.address?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address?.toMap()
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.extendInfo != nil {
                map["ExtendInfo"] = self.extendInfo!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.quantity != nil {
                map["Quantity"] = self.quantity!
            }
            if self.spec != nil {
                map["Spec"] = self.spec!
            }
            if self.unit != nil {
                map["Unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") && dict["Address"] != nil {
                var model = CreateSourcingProjectRequest.Subjects.Address()
                model.fromMap(dict["Address"] as! [String: Any])
                self.address = model
            }
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("ExtendInfo") && dict["ExtendInfo"] != nil {
                self.extendInfo = dict["ExtendInfo"] as! [String: String]
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Quantity") && dict["Quantity"] != nil {
                self.quantity = dict["Quantity"] as! Double
            }
            if dict.keys.contains("Spec") && dict["Spec"] != nil {
                self.spec = dict["Spec"] as! String
            }
            if dict.keys.contains("Unit") && dict["Unit"] != nil {
                self.unit = dict["Unit"] as! String
            }
        }
    }
    public var address: CreateSourcingProjectRequest.Address?

    public var bizId: String?

    public var bizNo: String?

    public var bizType: String?

    public var company: CreateSourcingProjectRequest.Company?

    public var contact: CreateSourcingProjectRequest.Contact?

    public var createTime: String?

    public var expireTime: String?

    public var extendInfo: [String: String]?

    public var sourceUrl: String?

    public var subBizType: String?

    public var subjects: [CreateSourcingProjectRequest.Subjects]?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.address?.validate()
        try self.company?.validate()
        try self.contact?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address?.toMap()
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.bizNo != nil {
            map["BizNo"] = self.bizNo!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.company != nil {
            map["Company"] = self.company?.toMap()
        }
        if self.contact != nil {
            map["Contact"] = self.contact?.toMap()
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.extendInfo != nil {
            map["ExtendInfo"] = self.extendInfo!
        }
        if self.sourceUrl != nil {
            map["SourceUrl"] = self.sourceUrl!
        }
        if self.subBizType != nil {
            map["SubBizType"] = self.subBizType!
        }
        if self.subjects != nil {
            var tmp : [Any] = []
            for k in self.subjects! {
                tmp.append(k.toMap())
            }
            map["Subjects"] = tmp
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            var model = CreateSourcingProjectRequest.Address()
            model.fromMap(dict["Address"] as! [String: Any])
            self.address = model
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("BizNo") && dict["BizNo"] != nil {
            self.bizNo = dict["BizNo"] as! String
        }
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("Company") && dict["Company"] != nil {
            var model = CreateSourcingProjectRequest.Company()
            model.fromMap(dict["Company"] as! [String: Any])
            self.company = model
        }
        if dict.keys.contains("Contact") && dict["Contact"] != nil {
            var model = CreateSourcingProjectRequest.Contact()
            model.fromMap(dict["Contact"] as! [String: Any])
            self.contact = model
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("ExtendInfo") && dict["ExtendInfo"] != nil {
            self.extendInfo = dict["ExtendInfo"] as! [String: String]
        }
        if dict.keys.contains("SourceUrl") && dict["SourceUrl"] != nil {
            self.sourceUrl = dict["SourceUrl"] as! String
        }
        if dict.keys.contains("SubBizType") && dict["SubBizType"] != nil {
            self.subBizType = dict["SubBizType"] as! String
        }
        if dict.keys.contains("Subjects") && dict["Subjects"] != nil {
            var tmp : [CreateSourcingProjectRequest.Subjects] = []
            for v in dict["Subjects"] as! [Any] {
                var model = CreateSourcingProjectRequest.Subjects()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subjects = tmp
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
    }
}

public class CreateSourcingProjectShrinkRequest : Tea.TeaModel {
    public var addressShrink: String?

    public var bizId: String?

    public var bizNo: String?

    public var bizType: String?

    public var companyShrink: String?

    public var contactShrink: String?

    public var createTime: String?

    public var expireTime: String?

    public var extendInfoShrink: String?

    public var sourceUrl: String?

    public var subBizType: String?

    public var subjectsShrink: String?

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
        if self.addressShrink != nil {
            map["Address"] = self.addressShrink!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.bizNo != nil {
            map["BizNo"] = self.bizNo!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.companyShrink != nil {
            map["Company"] = self.companyShrink!
        }
        if self.contactShrink != nil {
            map["Contact"] = self.contactShrink!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.extendInfoShrink != nil {
            map["ExtendInfo"] = self.extendInfoShrink!
        }
        if self.sourceUrl != nil {
            map["SourceUrl"] = self.sourceUrl!
        }
        if self.subBizType != nil {
            map["SubBizType"] = self.subBizType!
        }
        if self.subjectsShrink != nil {
            map["Subjects"] = self.subjectsShrink!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.addressShrink = dict["Address"] as! String
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("BizNo") && dict["BizNo"] != nil {
            self.bizNo = dict["BizNo"] as! String
        }
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("Company") && dict["Company"] != nil {
            self.companyShrink = dict["Company"] as! String
        }
        if dict.keys.contains("Contact") && dict["Contact"] != nil {
            self.contactShrink = dict["Contact"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("ExtendInfo") && dict["ExtendInfo"] != nil {
            self.extendInfoShrink = dict["ExtendInfo"] as! String
        }
        if dict.keys.contains("SourceUrl") && dict["SourceUrl"] != nil {
            self.sourceUrl = dict["SourceUrl"] as! String
        }
        if dict.keys.contains("SubBizType") && dict["SubBizType"] != nil {
            self.subBizType = dict["SubBizType"] as! String
        }
        if dict.keys.contains("Subjects") && dict["Subjects"] != nil {
            self.subjectsShrink = dict["Subjects"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
    }
}

public class CreateSourcingProjectResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.message != nil {
            map["message"] = self.message!
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
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateSourcingProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSourcingProjectResponseBody?

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
            var model = CreateSourcingProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSourcingProjectRequest : Tea.TeaModel {
    public var bizId: String?

    public var status: String?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class UpdateSourcingProjectResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.message != nil {
            map["message"] = self.message!
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
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdateSourcingProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSourcingProjectResponseBody?

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
            var model = UpdateSourcingProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
