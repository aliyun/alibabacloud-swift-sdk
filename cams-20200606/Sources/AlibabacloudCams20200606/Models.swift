import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateChatappTemplateRequest : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public class Buttons : Tea.TeaModel {
            public var phoneNumber: String?

            public var text: String?

            public var type: String?

            public var url: String?

            public var urlType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.phoneNumber != nil {
                    map["PhoneNumber"] = self.phoneNumber!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.urlType != nil {
                    map["UrlType"] = self.urlType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PhoneNumber") {
                    self.phoneNumber = dict["PhoneNumber"] as! String
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("UrlType") {
                    self.urlType = dict["UrlType"] as! String
                }
            }
        }
        public var buttons: [CreateChatappTemplateRequest.Components.Buttons]?

        public var caption: String?

        public var fileName: String?

        public var format: String?

        public var text: String?

        public var type: String?

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
            if self.buttons != nil {
                var tmp : [Any] = []
                for k in self.buttons! {
                    tmp.append(k.toMap())
                }
                map["Buttons"] = tmp
            }
            if self.caption != nil {
                map["Caption"] = self.caption!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.format != nil {
                map["Format"] = self.format!
            }
            if self.text != nil {
                map["Text"] = self.text!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Buttons") {
                self.buttons = dict["Buttons"] as! [CreateChatappTemplateRequest.Components.Buttons]
            }
            if dict.keys.contains("Caption") {
                self.caption = dict["Caption"] as! String
            }
            if dict.keys.contains("FileName") {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("Format") {
                self.format = dict["Format"] as! String
            }
            if dict.keys.contains("Text") {
                self.text = dict["Text"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var category: String?

    public var components: [CreateChatappTemplateRequest.Components]?

    public var custWabaId: String?

    public var example: [String: String]?

    public var isvCode: String?

    public var language: String?

    public var name: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["Components"] = tmp
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.example != nil {
            map["Example"] = self.example!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Components") {
            self.components = dict["Components"] as! [CreateChatappTemplateRequest.Components]
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("Example") {
            self.example = dict["Example"] as! [String: String]
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class CreateChatappTemplateShrinkRequest : Tea.TeaModel {
    public var category: String?

    public var componentsShrink: String?

    public var custWabaId: String?

    public var exampleShrink: String?

    public var isvCode: String?

    public var language: String?

    public var name: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.componentsShrink != nil {
            map["Components"] = self.componentsShrink!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.exampleShrink != nil {
            map["Example"] = self.exampleShrink!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Components") {
            self.componentsShrink = dict["Components"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("Example") {
            self.exampleShrink = dict["Example"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class CreateChatappTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var templateCode: String?

        public var templateName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TemplateCode") {
                self.templateCode = dict["TemplateCode"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateChatappTemplateResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateChatappTemplateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateChatappTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChatappTemplateResponseBody?

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
            var model = CreateChatappTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteChatappTemplateRequest : Tea.TeaModel {
    public var custWabaId: String?

    public var isvCode: String?

    public var templateCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
    }
}

public class DeleteChatappTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteChatappTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteChatappTemplateResponseBody?

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
            var model = DeleteChatappTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetChatappTemplateDetailRequest : Tea.TeaModel {
    public var custWabaId: String?

    public var isvCode: String?

    public var language: String?

    public var templateCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
    }
}

public class GetChatappTemplateDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Components : Tea.TeaModel {
            public class Buttons : Tea.TeaModel {
                public var phoneNumber: String?

                public var text: String?

                public var type: String?

                public var url: String?

                public var urlType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.phoneNumber != nil {
                        map["PhoneNumber"] = self.phoneNumber!
                    }
                    if self.text != nil {
                        map["Text"] = self.text!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    if self.urlType != nil {
                        map["UrlType"] = self.urlType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PhoneNumber") {
                        self.phoneNumber = dict["PhoneNumber"] as! String
                    }
                    if dict.keys.contains("Text") {
                        self.text = dict["Text"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                    if dict.keys.contains("UrlType") {
                        self.urlType = dict["UrlType"] as! String
                    }
                }
            }
            public var buttons: [GetChatappTemplateDetailResponseBody.Data.Components.Buttons]?

            public var caption: String?

            public var fileName: String?

            public var format: String?

            public var text: String?

            public var type: String?

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
                if self.buttons != nil {
                    var tmp : [Any] = []
                    for k in self.buttons! {
                        tmp.append(k.toMap())
                    }
                    map["Buttons"] = tmp
                }
                if self.caption != nil {
                    map["Caption"] = self.caption!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.format != nil {
                    map["Format"] = self.format!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Buttons") {
                    self.buttons = dict["Buttons"] as! [GetChatappTemplateDetailResponseBody.Data.Components.Buttons]
                }
                if dict.keys.contains("Caption") {
                    self.caption = dict["Caption"] as! String
                }
                if dict.keys.contains("FileName") {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("Format") {
                    self.format = dict["Format"] as! String
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var auditStatus: String?

        public var category: String?

        public var components: [GetChatappTemplateDetailResponseBody.Data.Components]?

        public var example: [String: String]?

        public var language: String?

        public var name: String?

        public var templateCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.components != nil {
                var tmp : [Any] = []
                for k in self.components! {
                    tmp.append(k.toMap())
                }
                map["Components"] = tmp
            }
            if self.example != nil {
                map["Example"] = self.example!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditStatus") {
                self.auditStatus = dict["AuditStatus"] as! String
            }
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Components") {
                self.components = dict["Components"] as! [GetChatappTemplateDetailResponseBody.Data.Components]
            }
            if dict.keys.contains("Example") {
                self.example = dict["Example"] as! [String: String]
            }
            if dict.keys.contains("Language") {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("TemplateCode") {
                self.templateCode = dict["TemplateCode"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetChatappTemplateDetailResponseBody.Data?

    public var message: String?

    public var requestId: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetChatappTemplateDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetChatappTemplateDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatappTemplateDetailResponseBody?

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
            var model = GetChatappTemplateDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListChatappTemplateRequest : Tea.TeaModel {
    public class Page : Tea.TeaModel {
        public var index: Int32?

        public var size: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Index") {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int32
            }
        }
    }
    public var auditStatus: String?

    public var custWabaId: String?

    public var isvCode: String?

    public var language: String?

    public var name: String?

    public var page: ListChatappTemplateRequest.Page?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditStatus") {
            self.auditStatus = dict["AuditStatus"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Page") {
            var model = ListChatappTemplateRequest.Page()
            model.fromMap(dict["Page"] as! [String: Any])
            self.page = model
        }
    }
}

public class ListChatappTemplateShrinkRequest : Tea.TeaModel {
    public var auditStatus: String?

    public var custWabaId: String?

    public var isvCode: String?

    public var language: String?

    public var name: String?

    public var pageShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageShrink != nil {
            map["Page"] = self.pageShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditStatus") {
            self.auditStatus = dict["AuditStatus"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Page") {
            self.pageShrink = dict["Page"] as! String
        }
    }
}

public class ListChatappTemplateResponseBody : Tea.TeaModel {
    public class ListTemplate : Tea.TeaModel {
        public var auditStatus: String?

        public var category: String?

        public var language: String?

        public var templateCode: String?

        public var templateName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditStatus") {
                self.auditStatus = dict["AuditStatus"] as! String
            }
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Language") {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("TemplateCode") {
                self.templateCode = dict["TemplateCode"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
        }
    }
    public var code: String?

    public var listTemplate: [ListChatappTemplateResponseBody.ListTemplate]?

    public var message: String?

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
        if self.listTemplate != nil {
            var tmp : [Any] = []
            for k in self.listTemplate! {
                tmp.append(k.toMap())
            }
            map["ListTemplate"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ListTemplate") {
            self.listTemplate = dict["ListTemplate"] as! [ListChatappTemplateResponseBody.ListTemplate]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListChatappTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChatappTemplateResponseBody?

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
            var model = ListChatappTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendChatappMassMessageRequest : Tea.TeaModel {
    public class SenderList : Tea.TeaModel {
        public var payload: [String]?

        public var templateParams: [String: String]?

        public var to: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.payload != nil {
                map["Payload"] = self.payload!
            }
            if self.templateParams != nil {
                map["TemplateParams"] = self.templateParams!
            }
            if self.to != nil {
                map["To"] = self.to!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Payload") {
                self.payload = dict["Payload"] as! [String]
            }
            if dict.keys.contains("TemplateParams") {
                self.templateParams = dict["TemplateParams"] as! [String: String]
            }
            if dict.keys.contains("To") {
                self.to = dict["To"] as! String
            }
        }
    }
    public var channelType: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackId: String?

    public var from: String?

    public var isvCode: String?

    public var language: String?

    public var senderList: [SendChatappMassMessageRequest.SenderList]?

    public var taskId: String?

    public var templateCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.fallBackContent != nil {
            map["FallBackContent"] = self.fallBackContent!
        }
        if self.fallBackId != nil {
            map["FallBackId"] = self.fallBackId!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.senderList != nil {
            var tmp : [Any] = []
            for k in self.senderList! {
                tmp.append(k.toMap())
            }
            map["SenderList"] = tmp
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelType") {
            self.channelType = dict["ChannelType"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("FallBackContent") {
            self.fallBackContent = dict["FallBackContent"] as! String
        }
        if dict.keys.contains("FallBackId") {
            self.fallBackId = dict["FallBackId"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("SenderList") {
            self.senderList = dict["SenderList"] as! [SendChatappMassMessageRequest.SenderList]
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
    }
}

public class SendChatappMassMessageShrinkRequest : Tea.TeaModel {
    public var channelType: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackId: String?

    public var from: String?

    public var isvCode: String?

    public var language: String?

    public var senderListShrink: String?

    public var taskId: String?

    public var templateCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.fallBackContent != nil {
            map["FallBackContent"] = self.fallBackContent!
        }
        if self.fallBackId != nil {
            map["FallBackId"] = self.fallBackId!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.senderListShrink != nil {
            map["SenderList"] = self.senderListShrink!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelType") {
            self.channelType = dict["ChannelType"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("FallBackContent") {
            self.fallBackContent = dict["FallBackContent"] as! String
        }
        if dict.keys.contains("FallBackId") {
            self.fallBackId = dict["FallBackId"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("SenderList") {
            self.senderListShrink = dict["SenderList"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
    }
}

public class SendChatappMassMessageResponseBody : Tea.TeaModel {
    public var code: String?

    public var groupMessageId: String?

    public var message: String?

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
        if self.groupMessageId != nil {
            map["GroupMessageId"] = self.groupMessageId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GroupMessageId") {
            self.groupMessageId = dict["GroupMessageId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SendChatappMassMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendChatappMassMessageResponseBody?

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
            var model = SendChatappMassMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendChatappMessageRequest : Tea.TeaModel {
    public var channelType: String?

    public var content: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackId: String?

    public var from: String?

    public var isvCode: String?

    public var language: String?

    public var messageType: String?

    public var payload: [String]?

    public var templateCode: String?

    public var templateParams: [String: String]?

    public var to: String?

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
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.fallBackContent != nil {
            map["FallBackContent"] = self.fallBackContent!
        }
        if self.fallBackId != nil {
            map["FallBackId"] = self.fallBackId!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateParams != nil {
            map["TemplateParams"] = self.templateParams!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelType") {
            self.channelType = dict["ChannelType"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("FallBackContent") {
            self.fallBackContent = dict["FallBackContent"] as! String
        }
        if dict.keys.contains("FallBackId") {
            self.fallBackId = dict["FallBackId"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("MessageType") {
            self.messageType = dict["MessageType"] as! String
        }
        if dict.keys.contains("Payload") {
            self.payload = dict["Payload"] as! [String]
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateParams") {
            self.templateParams = dict["TemplateParams"] as! [String: String]
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class SendChatappMessageShrinkRequest : Tea.TeaModel {
    public var channelType: String?

    public var content: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackId: String?

    public var from: String?

    public var isvCode: String?

    public var language: String?

    public var messageType: String?

    public var payloadShrink: String?

    public var templateCode: String?

    public var templateParamsShrink: String?

    public var to: String?

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
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.fallBackContent != nil {
            map["FallBackContent"] = self.fallBackContent!
        }
        if self.fallBackId != nil {
            map["FallBackId"] = self.fallBackId!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.payloadShrink != nil {
            map["Payload"] = self.payloadShrink!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateParamsShrink != nil {
            map["TemplateParams"] = self.templateParamsShrink!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelType") {
            self.channelType = dict["ChannelType"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("CustWabaId") {
            self.custWabaId = dict["CustWabaId"] as! String
        }
        if dict.keys.contains("FallBackContent") {
            self.fallBackContent = dict["FallBackContent"] as! String
        }
        if dict.keys.contains("FallBackId") {
            self.fallBackId = dict["FallBackId"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("IsvCode") {
            self.isvCode = dict["IsvCode"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("MessageType") {
            self.messageType = dict["MessageType"] as! String
        }
        if dict.keys.contains("Payload") {
            self.payloadShrink = dict["Payload"] as! String
        }
        if dict.keys.contains("TemplateCode") {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateParams") {
            self.templateParamsShrink = dict["TemplateParams"] as! String
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class SendChatappMessageResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var messageId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("MessageId") {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SendChatappMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendChatappMessageResponseBody?

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
            var model = SendChatappMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
