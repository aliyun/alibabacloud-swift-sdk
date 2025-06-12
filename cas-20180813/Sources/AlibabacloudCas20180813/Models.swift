import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ListPCAInstanceRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var showSize: Int64?

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
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["ShowSize"] as? Int64 {
            self.showSize = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ListPCAInstanceResponseBody : Tea.TeaModel {
    public class PCAInstanceList : Tea.TeaModel {
        public var algorithm: String?

        public var aliasName: String?

        public var caIdentifier: String?

        public var certCount: Int64?

        public var endTime: Int64?

        public var instanceUuid: String?

        public var issuedCertCount: Int64?

        public var relateStatus: Bool?

        public var shareFlag: Int32?

        public var trial: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.aliasName != nil {
                map["AliasName"] = self.aliasName!
            }
            if self.caIdentifier != nil {
                map["CaIdentifier"] = self.caIdentifier!
            }
            if self.certCount != nil {
                map["CertCount"] = self.certCount!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.instanceUuid != nil {
                map["InstanceUuid"] = self.instanceUuid!
            }
            if self.issuedCertCount != nil {
                map["IssuedCertCount"] = self.issuedCertCount!
            }
            if self.relateStatus != nil {
                map["RelateStatus"] = self.relateStatus!
            }
            if self.shareFlag != nil {
                map["ShareFlag"] = self.shareFlag!
            }
            if self.trial != nil {
                map["Trial"] = self.trial!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Algorithm"] as? String {
                self.algorithm = value
            }
            if let value = dict["AliasName"] as? String {
                self.aliasName = value
            }
            if let value = dict["CaIdentifier"] as? String {
                self.caIdentifier = value
            }
            if let value = dict["CertCount"] as? Int64 {
                self.certCount = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["InstanceUuid"] as? String {
                self.instanceUuid = value
            }
            if let value = dict["IssuedCertCount"] as? Int64 {
                self.issuedCertCount = value
            }
            if let value = dict["RelateStatus"] as? Bool {
                self.relateStatus = value
            }
            if let value = dict["ShareFlag"] as? Int32 {
                self.shareFlag = value
            }
            if let value = dict["Trial"] as? String {
                self.trial = value
            }
        }
    }
    public var currentPage: Int64?

    public var PCAInstanceList: [ListPCAInstanceResponseBody.PCAInstanceList]?

    public var requestId: String?

    public var showSize: Int64?

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
        if self.PCAInstanceList != nil {
            var tmp : [Any] = []
            for k in self.PCAInstanceList! {
                tmp.append(k.toMap())
            }
            map["PCAInstanceList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["PCAInstanceList"] as? [Any?] {
            var tmp : [ListPCAInstanceResponseBody.PCAInstanceList] = []
            for v in value {
                if v != nil {
                    var model = ListPCAInstanceResponseBody.PCAInstanceList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.PCAInstanceList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShowSize"] as? Int64 {
            self.showSize = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListPCAInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPCAInstanceResponseBody?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPCAInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
