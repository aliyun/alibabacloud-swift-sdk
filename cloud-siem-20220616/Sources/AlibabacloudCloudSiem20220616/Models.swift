import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DataProductListLogMapValue : Tea.TeaModel {
    public class ExtraParameters : Tea.TeaModel {
        public var key: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var logCode: String?

    public var logName: String?

    public var logNameEn: String?

    public var logNameKey: String?

    public var status: Bool?

    public var canOperateOrNot: Bool?

    public var topic: String?

    public var extraParameters: [DataProductListLogMapValue.ExtraParameters]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logCode != nil {
            map["LogCode"] = self.logCode!
        }
        if self.logName != nil {
            map["LogName"] = self.logName!
        }
        if self.logNameEn != nil {
            map["LogNameEn"] = self.logNameEn!
        }
        if self.logNameKey != nil {
            map["LogNameKey"] = self.logNameKey!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.canOperateOrNot != nil {
            map["CanOperateOrNot"] = self.canOperateOrNot!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        if self.extraParameters != nil {
            var tmp : [Any] = []
            for k in self.extraParameters! {
                tmp.append(k.toMap())
            }
            map["ExtraParameters"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogCode"] as? String {
            self.logCode = value
        }
        if let value = dict["LogName"] as? String {
            self.logName = value
        }
        if let value = dict["LogNameEn"] as? String {
            self.logNameEn = value
        }
        if let value = dict["LogNameKey"] as? String {
            self.logNameKey = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
        if let value = dict["CanOperateOrNot"] as? Bool {
            self.canOperateOrNot = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
        if let value = dict["ExtraParameters"] as? [Any?] {
            var tmp : [DataProductListLogMapValue.ExtraParameters] = []
            for v in value {
                if v != nil {
                    var model = DataProductListLogMapValue.ExtraParameters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.extraParameters = tmp
        }
    }
}

public class AddDataSourceRequest : Tea.TeaModel {
    public var accountId: String?

    public var cloudCode: String?

    public var dataSourceInstanceName: String?

    public var dataSourceInstanceParams: String?

    public var dataSourceInstanceRemark: String?

    public var dataSourceType: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.dataSourceInstanceName != nil {
            map["DataSourceInstanceName"] = self.dataSourceInstanceName!
        }
        if self.dataSourceInstanceParams != nil {
            map["DataSourceInstanceParams"] = self.dataSourceInstanceParams!
        }
        if self.dataSourceInstanceRemark != nil {
            map["DataSourceInstanceRemark"] = self.dataSourceInstanceRemark!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["DataSourceInstanceName"] as? String {
            self.dataSourceInstanceName = value
        }
        if let value = dict["DataSourceInstanceParams"] as? String {
            self.dataSourceInstanceParams = value
        }
        if let value = dict["DataSourceInstanceRemark"] as? String {
            self.dataSourceInstanceRemark = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class AddDataSourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int32?

        public var dataSourceInstanceId: String?

        public override init() {
            super.init()
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
            if self.dataSourceInstanceId != nil {
                map["DataSourceInstanceId"] = self.dataSourceInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["DataSourceInstanceId"] as? String {
                self.dataSourceInstanceId = value
            }
        }
    }
    public var data: AddDataSourceResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = AddDataSourceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDataSourceResponseBody?

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
            var model = AddDataSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddDataSourceLogRequest : Tea.TeaModel {
    public var accountId: String?

    public var cloudCode: String?

    public var dataSourceInstanceId: String?

    public var dataSourceInstanceLogs: String?

    public var logCode: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.dataSourceInstanceId != nil {
            map["DataSourceInstanceId"] = self.dataSourceInstanceId!
        }
        if self.dataSourceInstanceLogs != nil {
            map["DataSourceInstanceLogs"] = self.dataSourceInstanceLogs!
        }
        if self.logCode != nil {
            map["LogCode"] = self.logCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["DataSourceInstanceId"] as? String {
            self.dataSourceInstanceId = value
        }
        if let value = dict["DataSourceInstanceLogs"] as? String {
            self.dataSourceInstanceLogs = value
        }
        if let value = dict["LogCode"] as? String {
            self.logCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class AddDataSourceLogResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int32?

        public var logInstanceId: String?

        public override init() {
            super.init()
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
            if self.logInstanceId != nil {
                map["LogInstanceId"] = self.logInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["LogInstanceId"] as? String {
                self.logInstanceId = value
            }
        }
    }
    public var data: AddDataSourceLogResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = AddDataSourceLogResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddDataSourceLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDataSourceLogResponseBody?

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
            var model = AddDataSourceLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddUserSourceLogConfigRequest : Tea.TeaModel {
    public var deleted: Int32?

    public var disPlayLine: String?

    public var regionId: String?

    public var sourceLogCode: String?

    public var sourceLogInfo: String?

    public var sourceProdCode: String?

    public var subUserId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleted != nil {
            map["Deleted"] = self.deleted!
        }
        if self.disPlayLine != nil {
            map["DisPlayLine"] = self.disPlayLine!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceLogCode != nil {
            map["SourceLogCode"] = self.sourceLogCode!
        }
        if self.sourceLogInfo != nil {
            map["SourceLogInfo"] = self.sourceLogInfo!
        }
        if self.sourceProdCode != nil {
            map["SourceProdCode"] = self.sourceProdCode!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Deleted"] as? Int32 {
            self.deleted = value
        }
        if let value = dict["DisPlayLine"] as? String {
            self.disPlayLine = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SourceLogCode"] as? String {
            self.sourceLogCode = value
        }
        if let value = dict["SourceLogInfo"] as? String {
            self.sourceLogInfo = value
        }
        if let value = dict["SourceProdCode"] as? String {
            self.sourceProdCode = value
        }
        if let value = dict["SubUserId"] as? Int64 {
            self.subUserId = value
        }
    }
}

public class AddUserSourceLogConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var diplayLine: String?

        public var displayed: Bool?

        public var imported: Bool?

        public var mainUserId: Int64?

        public var sourceLogCode: String?

        public var sourceProdCode: String?

        public var subUserId: Int64?

        public var subUserName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.diplayLine != nil {
                map["DiplayLine"] = self.diplayLine!
            }
            if self.displayed != nil {
                map["Displayed"] = self.displayed!
            }
            if self.imported != nil {
                map["Imported"] = self.imported!
            }
            if self.mainUserId != nil {
                map["MainUserId"] = self.mainUserId!
            }
            if self.sourceLogCode != nil {
                map["SourceLogCode"] = self.sourceLogCode!
            }
            if self.sourceProdCode != nil {
                map["SourceProdCode"] = self.sourceProdCode!
            }
            if self.subUserId != nil {
                map["SubUserId"] = self.subUserId!
            }
            if self.subUserName != nil {
                map["SubUserName"] = self.subUserName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DiplayLine"] as? String {
                self.diplayLine = value
            }
            if let value = dict["Displayed"] as? Bool {
                self.displayed = value
            }
            if let value = dict["Imported"] as? Bool {
                self.imported = value
            }
            if let value = dict["MainUserId"] as? Int64 {
                self.mainUserId = value
            }
            if let value = dict["SourceLogCode"] as? String {
                self.sourceLogCode = value
            }
            if let value = dict["SourceProdCode"] as? String {
                self.sourceProdCode = value
            }
            if let value = dict["SubUserId"] as? Int64 {
                self.subUserId = value
            }
            if let value = dict["SubUserName"] as? String {
                self.subUserName = value
            }
        }
    }
    public var data: AddUserSourceLogConfigResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = AddUserSourceLogConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddUserSourceLogConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserSourceLogConfigResponseBody?

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
            var model = AddUserSourceLogConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindAccountRequest : Tea.TeaModel {
    public var accessId: String?

    public var accountId: String?

    public var accountName: String?

    public var cloudCode: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessId != nil {
            map["AccessId"] = self.accessId!
        }
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessId"] as? String {
            self.accessId = value
        }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class BindAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int32?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
        }
    }
    public var data: BindAccountResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = BindAccountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class BindAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAccountResponseBody?

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
            var model = BindAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloseDeliveryRequest : Tea.TeaModel {
    public var logCode: String?

    public var productCode: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logCode != nil {
            map["LogCode"] = self.logCode!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogCode"] as? String {
            self.logCode = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class CloseDeliveryResponseBody : Tea.TeaModel {
    public var data: Bool?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloseDeliveryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloseDeliveryResponseBody?

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
            var model = CloseDeliveryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAutomateResponseConfigRequest : Tea.TeaModel {
    public var id: Int64?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DeleteAutomateResponseConfigResponseBody : Tea.TeaModel {
    public var code: Int32?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteAutomateResponseConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAutomateResponseConfigResponseBody?

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
            var model = DeleteAutomateResponseConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteBindAccountRequest : Tea.TeaModel {
    public var accessId: String?

    public var accountId: String?

    public var bindId: Int64?

    public var cloudCode: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessId != nil {
            map["AccessId"] = self.accessId!
        }
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.bindId != nil {
            map["BindId"] = self.bindId!
        }
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessId"] as? String {
            self.accessId = value
        }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["BindId"] as? Int64 {
            self.bindId = value
        }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DeleteBindAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int32?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
        }
    }
    public var data: DeleteBindAccountResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteBindAccountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteBindAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBindAccountResponseBody?

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
            var model = DeleteBindAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCustomizeRuleRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var ruleId: Int64?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["RuleId"] as? Int64 {
            self.ruleId = value
        }
    }
}

public class DeleteCustomizeRuleResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Int32 {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteCustomizeRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomizeRuleResponseBody?

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
            var model = DeleteCustomizeRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataSourceRequest : Tea.TeaModel {
    public var accountId: String?

    public var cloudCode: String?

    public var dataSourceInstanceId: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.dataSourceInstanceId != nil {
            map["DataSourceInstanceId"] = self.dataSourceInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["DataSourceInstanceId"] as? String {
            self.dataSourceInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteDataSourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int32?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
        }
    }
    public var data: DeleteDataSourceResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteDataSourceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataSourceResponseBody?

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
            var model = DeleteDataSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataSourceLogRequest : Tea.TeaModel {
    public var accountId: String?

    public var cloudCode: String?

    public var dataSourceInstanceId: String?

    public var logInstanceId: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.dataSourceInstanceId != nil {
            map["DataSourceInstanceId"] = self.dataSourceInstanceId!
        }
        if self.logInstanceId != nil {
            map["LogInstanceId"] = self.logInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["DataSourceInstanceId"] as? String {
            self.dataSourceInstanceId = value
        }
        if let value = dict["LogInstanceId"] as? String {
            self.logInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteDataSourceLogResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int32?

        public var logInstanceId: String?

        public override init() {
            super.init()
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
            if self.logInstanceId != nil {
                map["LogInstanceId"] = self.logInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["LogInstanceId"] as? String {
                self.logInstanceId = value
            }
        }
    }
    public var data: DeleteDataSourceLogResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteDataSourceLogResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDataSourceLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataSourceLogResponseBody?

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
            var model = DeleteDataSourceLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWhiteRuleListRequest : Tea.TeaModel {
    public var id: Int64?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DeleteWhiteRuleListResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Any?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteWhiteRuleListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWhiteRuleListResponseBody?

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
            var model = DeleteWhiteRuleListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAggregateFunctionRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeAggregateFunctionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var function: String?

        public var functionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.function != nil {
                map["Function"] = self.function!
            }
            if self.functionName != nil {
                map["FunctionName"] = self.functionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Function"] as? String {
                self.function = value
            }
            if let value = dict["FunctionName"] as? String {
                self.functionName = value
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAggregateFunctionResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeAggregateFunctionResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeAggregateFunctionResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeAggregateFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAggregateFunctionResponseBody?

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
            var model = DescribeAggregateFunctionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAlertSceneRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeAlertSceneResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Targets : Tea.TeaModel {
            public var name: String?

            public var type: String?

            public var value: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public var alertName: String?

        public var alertNameId: String?

        public var alertTile: String?

        public var alertTileId: String?

        public var alertType: String?

        public var alertTypeId: String?

        public var targets: [DescribeAlertSceneResponseBody.Data.Targets]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertName != nil {
                map["AlertName"] = self.alertName!
            }
            if self.alertNameId != nil {
                map["AlertNameId"] = self.alertNameId!
            }
            if self.alertTile != nil {
                map["AlertTile"] = self.alertTile!
            }
            if self.alertTileId != nil {
                map["AlertTileId"] = self.alertTileId!
            }
            if self.alertType != nil {
                map["AlertType"] = self.alertType!
            }
            if self.alertTypeId != nil {
                map["AlertTypeId"] = self.alertTypeId!
            }
            if self.targets != nil {
                var tmp : [Any] = []
                for k in self.targets! {
                    tmp.append(k.toMap())
                }
                map["Targets"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertName"] as? String {
                self.alertName = value
            }
            if let value = dict["AlertNameId"] as? String {
                self.alertNameId = value
            }
            if let value = dict["AlertTile"] as? String {
                self.alertTile = value
            }
            if let value = dict["AlertTileId"] as? String {
                self.alertTileId = value
            }
            if let value = dict["AlertType"] as? String {
                self.alertType = value
            }
            if let value = dict["AlertTypeId"] as? String {
                self.alertTypeId = value
            }
            if let value = dict["Targets"] as? [Any?] {
                var tmp : [DescribeAlertSceneResponseBody.Data.Targets] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAlertSceneResponseBody.Data.Targets()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.targets = tmp
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAlertSceneResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeAlertSceneResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeAlertSceneResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeAlertSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertSceneResponseBody?

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
            var model = DescribeAlertSceneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAlertSceneByEventRequest : Tea.TeaModel {
    public var incidentUuid: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeAlertSceneByEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Targets : Tea.TeaModel {
            public var name: String?

            public var type: String?

            public var value: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public var alertName: String?

        public var alertNameId: String?

        public var alertTile: String?

        public var alertTileId: String?

        public var alertType: String?

        public var alertTypeId: String?

        public var targets: [DescribeAlertSceneByEventResponseBody.Data.Targets]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertName != nil {
                map["AlertName"] = self.alertName!
            }
            if self.alertNameId != nil {
                map["AlertNameId"] = self.alertNameId!
            }
            if self.alertTile != nil {
                map["AlertTile"] = self.alertTile!
            }
            if self.alertTileId != nil {
                map["AlertTileId"] = self.alertTileId!
            }
            if self.alertType != nil {
                map["AlertType"] = self.alertType!
            }
            if self.alertTypeId != nil {
                map["AlertTypeId"] = self.alertTypeId!
            }
            if self.targets != nil {
                var tmp : [Any] = []
                for k in self.targets! {
                    tmp.append(k.toMap())
                }
                map["Targets"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertName"] as? String {
                self.alertName = value
            }
            if let value = dict["AlertNameId"] as? String {
                self.alertNameId = value
            }
            if let value = dict["AlertTile"] as? String {
                self.alertTile = value
            }
            if let value = dict["AlertTileId"] as? String {
                self.alertTileId = value
            }
            if let value = dict["AlertType"] as? String {
                self.alertType = value
            }
            if let value = dict["AlertTypeId"] as? String {
                self.alertTypeId = value
            }
            if let value = dict["Targets"] as? [Any?] {
                var tmp : [DescribeAlertSceneByEventResponseBody.Data.Targets] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAlertSceneByEventResponseBody.Data.Targets()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.targets = tmp
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAlertSceneByEventResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeAlertSceneByEventResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeAlertSceneByEventResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeAlertSceneByEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertSceneByEventResponseBody?

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
            var model = DescribeAlertSceneByEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAlertSourceRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var level: [String]?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Level"] as? [String] {
            self.level = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeAlertSourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var source: String?

        public var sourceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceName != nil {
                map["SourceName"] = self.sourceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceName"] as? String {
                self.sourceName = value
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAlertSourceResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeAlertSourceResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeAlertSourceResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeAlertSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertSourceResponseBody?

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
            var model = DescribeAlertSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAlertSourceWithEventRequest : Tea.TeaModel {
    public var incidentUuid: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeAlertSourceWithEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var source: String?

        public var sourceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceName != nil {
                map["SourceName"] = self.sourceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceName"] as? String {
                self.sourceName = value
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAlertSourceWithEventResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeAlertSourceWithEventResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeAlertSourceWithEventResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeAlertSourceWithEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertSourceWithEventResponseBody?

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
            var model = DescribeAlertSourceWithEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAlertTypeRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var ruleType: String?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["RuleType"] as? String {
            self.ruleType = value
        }
    }
}

public class DescribeAlertTypeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alertType: String?

        public var alertTypeMds: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertType != nil {
                map["AlertType"] = self.alertType!
            }
            if self.alertTypeMds != nil {
                map["AlertTypeMds"] = self.alertTypeMds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertType"] as? String {
                self.alertType = value
            }
            if let value = dict["AlertTypeMds"] as? String {
                self.alertTypeMds = value
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAlertTypeResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeAlertTypeResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeAlertTypeResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeAlertTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertTypeResponseBody?

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
            var model = DescribeAlertTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAlertsRequest : Tea.TeaModel {
    public var alertName: String?

    public var alertTitle: String?

    public var alertType: String?

    public var alertUuid: String?

    public var assetId: String?

    public var assetName: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var entityId: String?

    public var entityName: String?

    public var isDefend: String?

    public var labelType: String?

    public var level: [String]?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var source: String?

    public var startTime: Int64?

    public var subUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertName != nil {
            map["AlertName"] = self.alertName!
        }
        if self.alertTitle != nil {
            map["AlertTitle"] = self.alertTitle!
        }
        if self.alertType != nil {
            map["AlertType"] = self.alertType!
        }
        if self.alertUuid != nil {
            map["AlertUuid"] = self.alertUuid!
        }
        if self.assetId != nil {
            map["AssetId"] = self.assetId!
        }
        if self.assetName != nil {
            map["AssetName"] = self.assetName!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.entityName != nil {
            map["EntityName"] = self.entityName!
        }
        if self.isDefend != nil {
            map["IsDefend"] = self.isDefend!
        }
        if self.labelType != nil {
            map["LabelType"] = self.labelType!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertName"] as? String {
            self.alertName = value
        }
        if let value = dict["AlertTitle"] as? String {
            self.alertTitle = value
        }
        if let value = dict["AlertType"] as? String {
            self.alertType = value
        }
        if let value = dict["AlertUuid"] as? String {
            self.alertUuid = value
        }
        if let value = dict["AssetId"] as? String {
            self.assetId = value
        }
        if let value = dict["AssetName"] as? String {
            self.assetName = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
        }
        if let value = dict["EntityName"] as? String {
            self.entityName = value
        }
        if let value = dict["IsDefend"] as? String {
            self.isDefend = value
        }
        if let value = dict["LabelType"] as? String {
            self.labelType = value
        }
        if let value = dict["Level"] as? [String] {
            self.level = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["SubUserId"] as? String {
            self.subUserId = value
        }
    }
}

public class DescribeAlertsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentPage"] as? Int32 {
                    self.currentPage = value
                }
                if let value = dict["PageSize"] as? Int32 {
                    self.pageSize = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public class AlertInfoList : Tea.TeaModel {
                public var key: String?

                public var keyName: String?

                public var values: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.keyName != nil {
                        map["KeyName"] = self.keyName!
                    }
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["KeyName"] as? String {
                        self.keyName = value
                    }
                    if let value = dict["Values"] as? String {
                        self.values = value
                    }
                }
            }
            public var alertDesc: String?

            public var alertDescCode: String?

            public var alertDescEn: String?

            public var alertDetail: String?

            public var alertInfoList: [DescribeAlertsResponseBody.Data.ResponseData.AlertInfoList]?

            public var alertLevel: String?

            public var alertName: String?

            public var alertNameCode: String?

            public var alertNameEn: String?

            public var alertSrcProd: String?

            public var alertSrcProdModule: String?

            public var alertTitle: String?

            public var alertTitleEn: String?

            public var alertType: String?

            public var alertTypeCode: String?

            public var alertTypeEn: String?

            public var alertUuid: String?

            public var assetList: String?

            public var attCk: String?

            public var cloudCode: String?

            public var endTime: String?

            public var entityList: String?

            public var extendContent: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var incidentUuid: String?

            public var isDefend: String?

            public var logTime: String?

            public var logUuid: String?

            public var mainUserId: Int64?

            public var occurTime: String?

            public var startTime: String?

            public var subUserId: Int64?

            public var subUserName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertDesc != nil {
                    map["AlertDesc"] = self.alertDesc!
                }
                if self.alertDescCode != nil {
                    map["AlertDescCode"] = self.alertDescCode!
                }
                if self.alertDescEn != nil {
                    map["AlertDescEn"] = self.alertDescEn!
                }
                if self.alertDetail != nil {
                    map["AlertDetail"] = self.alertDetail!
                }
                if self.alertInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.alertInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["AlertInfoList"] = tmp
                }
                if self.alertLevel != nil {
                    map["AlertLevel"] = self.alertLevel!
                }
                if self.alertName != nil {
                    map["AlertName"] = self.alertName!
                }
                if self.alertNameCode != nil {
                    map["AlertNameCode"] = self.alertNameCode!
                }
                if self.alertNameEn != nil {
                    map["AlertNameEn"] = self.alertNameEn!
                }
                if self.alertSrcProd != nil {
                    map["AlertSrcProd"] = self.alertSrcProd!
                }
                if self.alertSrcProdModule != nil {
                    map["AlertSrcProdModule"] = self.alertSrcProdModule!
                }
                if self.alertTitle != nil {
                    map["AlertTitle"] = self.alertTitle!
                }
                if self.alertTitleEn != nil {
                    map["AlertTitleEn"] = self.alertTitleEn!
                }
                if self.alertType != nil {
                    map["AlertType"] = self.alertType!
                }
                if self.alertTypeCode != nil {
                    map["AlertTypeCode"] = self.alertTypeCode!
                }
                if self.alertTypeEn != nil {
                    map["AlertTypeEn"] = self.alertTypeEn!
                }
                if self.alertUuid != nil {
                    map["AlertUuid"] = self.alertUuid!
                }
                if self.assetList != nil {
                    map["AssetList"] = self.assetList!
                }
                if self.attCk != nil {
                    map["AttCk"] = self.attCk!
                }
                if self.cloudCode != nil {
                    map["CloudCode"] = self.cloudCode!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.entityList != nil {
                    map["EntityList"] = self.entityList!
                }
                if self.extendContent != nil {
                    map["ExtendContent"] = self.extendContent!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.isDefend != nil {
                    map["IsDefend"] = self.isDefend!
                }
                if self.logTime != nil {
                    map["LogTime"] = self.logTime!
                }
                if self.logUuid != nil {
                    map["LogUuid"] = self.logUuid!
                }
                if self.mainUserId != nil {
                    map["MainUserId"] = self.mainUserId!
                }
                if self.occurTime != nil {
                    map["OccurTime"] = self.occurTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.subUserId != nil {
                    map["SubUserId"] = self.subUserId!
                }
                if self.subUserName != nil {
                    map["SubUserName"] = self.subUserName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertDesc"] as? String {
                    self.alertDesc = value
                }
                if let value = dict["AlertDescCode"] as? String {
                    self.alertDescCode = value
                }
                if let value = dict["AlertDescEn"] as? String {
                    self.alertDescEn = value
                }
                if let value = dict["AlertDetail"] as? String {
                    self.alertDetail = value
                }
                if let value = dict["AlertInfoList"] as? [Any?] {
                    var tmp : [DescribeAlertsResponseBody.Data.ResponseData.AlertInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeAlertsResponseBody.Data.ResponseData.AlertInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.alertInfoList = tmp
                }
                if let value = dict["AlertLevel"] as? String {
                    self.alertLevel = value
                }
                if let value = dict["AlertName"] as? String {
                    self.alertName = value
                }
                if let value = dict["AlertNameCode"] as? String {
                    self.alertNameCode = value
                }
                if let value = dict["AlertNameEn"] as? String {
                    self.alertNameEn = value
                }
                if let value = dict["AlertSrcProd"] as? String {
                    self.alertSrcProd = value
                }
                if let value = dict["AlertSrcProdModule"] as? String {
                    self.alertSrcProdModule = value
                }
                if let value = dict["AlertTitle"] as? String {
                    self.alertTitle = value
                }
                if let value = dict["AlertTitleEn"] as? String {
                    self.alertTitleEn = value
                }
                if let value = dict["AlertType"] as? String {
                    self.alertType = value
                }
                if let value = dict["AlertTypeCode"] as? String {
                    self.alertTypeCode = value
                }
                if let value = dict["AlertTypeEn"] as? String {
                    self.alertTypeEn = value
                }
                if let value = dict["AlertUuid"] as? String {
                    self.alertUuid = value
                }
                if let value = dict["AssetList"] as? String {
                    self.assetList = value
                }
                if let value = dict["AttCk"] as? String {
                    self.attCk = value
                }
                if let value = dict["CloudCode"] as? String {
                    self.cloudCode = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["EntityList"] as? String {
                    self.entityList = value
                }
                if let value = dict["ExtendContent"] as? String {
                    self.extendContent = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["IncidentUuid"] as? String {
                    self.incidentUuid = value
                }
                if let value = dict["IsDefend"] as? String {
                    self.isDefend = value
                }
                if let value = dict["LogTime"] as? String {
                    self.logTime = value
                }
                if let value = dict["LogUuid"] as? String {
                    self.logUuid = value
                }
                if let value = dict["MainUserId"] as? Int64 {
                    self.mainUserId = value
                }
                if let value = dict["OccurTime"] as? String {
                    self.occurTime = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["SubUserId"] as? Int64 {
                    self.subUserId = value
                }
                if let value = dict["SubUserName"] as? String {
                    self.subUserName = value
                }
            }
        }
        public var pageInfo: DescribeAlertsResponseBody.Data.PageInfo?

        public var responseData: [DescribeAlertsResponseBody.Data.ResponseData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageInfo"] as? [String: Any?] {
                var model = DescribeAlertsResponseBody.Data.PageInfo()
                model.fromMap(value)
                self.pageInfo = model
            }
            if let value = dict["ResponseData"] as? [Any?] {
                var tmp : [DescribeAlertsResponseBody.Data.ResponseData] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAlertsResponseBody.Data.ResponseData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeAlertsResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeAlertsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeAlertsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertsResponseBody?

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
            var model = DescribeAlertsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAlertsCountRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var queryType: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeAlertsCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var all: Int64?

        public var countMap: [String: Int64]?

        public var high: Int64?

        public var low: Int64?

        public var medium: Int64?

        public var productNum: Int32?

        public override init() {
            super.init()
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
                map["All"] = self.all!
            }
            if self.countMap != nil {
                map["CountMap"] = self.countMap!
            }
            if self.high != nil {
                map["High"] = self.high!
            }
            if self.low != nil {
                map["Low"] = self.low!
            }
            if self.medium != nil {
                map["Medium"] = self.medium!
            }
            if self.productNum != nil {
                map["ProductNum"] = self.productNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["All"] as? Int64 {
                self.all = value
            }
            if let value = dict["CountMap"] as? [String: Int64] {
                self.countMap = value
            }
            if let value = dict["High"] as? Int64 {
                self.high = value
            }
            if let value = dict["Low"] as? Int64 {
                self.low = value
            }
            if let value = dict["Medium"] as? Int64 {
                self.medium = value
            }
            if let value = dict["ProductNum"] as? Int32 {
                self.productNum = value
            }
        }
    }
    public var code: Int32?

    public var data: DescribeAlertsCountResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeAlertsCountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeAlertsCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertsCountResponseBody?

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
            var model = DescribeAlertsCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAlertsWithEntityRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endTime: Int64?

    public var entityId: Int64?

    public var entityUuid: String?

    public var incidentUuid: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var sophonTaskId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.entityUuid != nil {
            map["EntityUuid"] = self.entityUuid!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.sophonTaskId != nil {
            map["SophonTaskId"] = self.sophonTaskId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EntityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["EntityUuid"] as? String {
            self.entityUuid = value
        }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["SophonTaskId"] as? String {
            self.sophonTaskId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeAlertsWithEntityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentPage"] as? Int32 {
                    self.currentPage = value
                }
                if let value = dict["PageSize"] as? Int32 {
                    self.pageSize = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public class AlertInfoList : Tea.TeaModel {
                public var key: String?

                public var keyName: String?

                public var values: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.keyName != nil {
                        map["KeyName"] = self.keyName!
                    }
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["KeyName"] as? String {
                        self.keyName = value
                    }
                    if let value = dict["Values"] as? String {
                        self.values = value
                    }
                }
            }
            public var alertDesc: String?

            public var alertDescCode: String?

            public var alertDescEn: String?

            public var alertDetail: String?

            public var alertInfoList: [DescribeAlertsWithEntityResponseBody.Data.ResponseData.AlertInfoList]?

            public var alertLevel: String?

            public var alertName: String?

            public var alertNameCode: String?

            public var alertNameEn: String?

            public var alertSrcProd: String?

            public var alertSrcProdModule: String?

            public var alertTitle: String?

            public var alertTitleEn: String?

            public var alertType: String?

            public var alertTypeCode: String?

            public var alertTypeEn: String?

            public var alertUuid: String?

            public var assetList: String?

            public var attCk: String?

            public var cloudCode: String?

            public var endTime: String?

            public var entityList: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var incidentUuid: String?

            public var isDefend: String?

            public var logTime: String?

            public var logUuid: String?

            public var mainUserId: Int64?

            public var occurTime: String?

            public var startTime: String?

            public var subUserId: Int64?

            public var subUserName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertDesc != nil {
                    map["AlertDesc"] = self.alertDesc!
                }
                if self.alertDescCode != nil {
                    map["AlertDescCode"] = self.alertDescCode!
                }
                if self.alertDescEn != nil {
                    map["AlertDescEn"] = self.alertDescEn!
                }
                if self.alertDetail != nil {
                    map["AlertDetail"] = self.alertDetail!
                }
                if self.alertInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.alertInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["AlertInfoList"] = tmp
                }
                if self.alertLevel != nil {
                    map["AlertLevel"] = self.alertLevel!
                }
                if self.alertName != nil {
                    map["AlertName"] = self.alertName!
                }
                if self.alertNameCode != nil {
                    map["AlertNameCode"] = self.alertNameCode!
                }
                if self.alertNameEn != nil {
                    map["AlertNameEn"] = self.alertNameEn!
                }
                if self.alertSrcProd != nil {
                    map["AlertSrcProd"] = self.alertSrcProd!
                }
                if self.alertSrcProdModule != nil {
                    map["AlertSrcProdModule"] = self.alertSrcProdModule!
                }
                if self.alertTitle != nil {
                    map["AlertTitle"] = self.alertTitle!
                }
                if self.alertTitleEn != nil {
                    map["AlertTitleEn"] = self.alertTitleEn!
                }
                if self.alertType != nil {
                    map["AlertType"] = self.alertType!
                }
                if self.alertTypeCode != nil {
                    map["AlertTypeCode"] = self.alertTypeCode!
                }
                if self.alertTypeEn != nil {
                    map["AlertTypeEn"] = self.alertTypeEn!
                }
                if self.alertUuid != nil {
                    map["AlertUuid"] = self.alertUuid!
                }
                if self.assetList != nil {
                    map["AssetList"] = self.assetList!
                }
                if self.attCk != nil {
                    map["AttCk"] = self.attCk!
                }
                if self.cloudCode != nil {
                    map["CloudCode"] = self.cloudCode!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.entityList != nil {
                    map["EntityList"] = self.entityList!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.isDefend != nil {
                    map["IsDefend"] = self.isDefend!
                }
                if self.logTime != nil {
                    map["LogTime"] = self.logTime!
                }
                if self.logUuid != nil {
                    map["LogUuid"] = self.logUuid!
                }
                if self.mainUserId != nil {
                    map["MainUserId"] = self.mainUserId!
                }
                if self.occurTime != nil {
                    map["OccurTime"] = self.occurTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.subUserId != nil {
                    map["SubUserId"] = self.subUserId!
                }
                if self.subUserName != nil {
                    map["SubUserName"] = self.subUserName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertDesc"] as? String {
                    self.alertDesc = value
                }
                if let value = dict["AlertDescCode"] as? String {
                    self.alertDescCode = value
                }
                if let value = dict["AlertDescEn"] as? String {
                    self.alertDescEn = value
                }
                if let value = dict["AlertDetail"] as? String {
                    self.alertDetail = value
                }
                if let value = dict["AlertInfoList"] as? [Any?] {
                    var tmp : [DescribeAlertsWithEntityResponseBody.Data.ResponseData.AlertInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeAlertsWithEntityResponseBody.Data.ResponseData.AlertInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.alertInfoList = tmp
                }
                if let value = dict["AlertLevel"] as? String {
                    self.alertLevel = value
                }
                if let value = dict["AlertName"] as? String {
                    self.alertName = value
                }
                if let value = dict["AlertNameCode"] as? String {
                    self.alertNameCode = value
                }
                if let value = dict["AlertNameEn"] as? String {
                    self.alertNameEn = value
                }
                if let value = dict["AlertSrcProd"] as? String {
                    self.alertSrcProd = value
                }
                if let value = dict["AlertSrcProdModule"] as? String {
                    self.alertSrcProdModule = value
                }
                if let value = dict["AlertTitle"] as? String {
                    self.alertTitle = value
                }
                if let value = dict["AlertTitleEn"] as? String {
                    self.alertTitleEn = value
                }
                if let value = dict["AlertType"] as? String {
                    self.alertType = value
                }
                if let value = dict["AlertTypeCode"] as? String {
                    self.alertTypeCode = value
                }
                if let value = dict["AlertTypeEn"] as? String {
                    self.alertTypeEn = value
                }
                if let value = dict["AlertUuid"] as? String {
                    self.alertUuid = value
                }
                if let value = dict["AssetList"] as? String {
                    self.assetList = value
                }
                if let value = dict["AttCk"] as? String {
                    self.attCk = value
                }
                if let value = dict["CloudCode"] as? String {
                    self.cloudCode = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["EntityList"] as? String {
                    self.entityList = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["IncidentUuid"] as? String {
                    self.incidentUuid = value
                }
                if let value = dict["IsDefend"] as? String {
                    self.isDefend = value
                }
                if let value = dict["LogTime"] as? String {
                    self.logTime = value
                }
                if let value = dict["LogUuid"] as? String {
                    self.logUuid = value
                }
                if let value = dict["MainUserId"] as? Int64 {
                    self.mainUserId = value
                }
                if let value = dict["OccurTime"] as? String {
                    self.occurTime = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["SubUserId"] as? Int64 {
                    self.subUserId = value
                }
                if let value = dict["SubUserName"] as? String {
                    self.subUserName = value
                }
            }
        }
        public var pageInfo: DescribeAlertsWithEntityResponseBody.Data.PageInfo?

        public var responseData: [DescribeAlertsWithEntityResponseBody.Data.ResponseData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageInfo"] as? [String: Any?] {
                var model = DescribeAlertsWithEntityResponseBody.Data.PageInfo()
                model.fromMap(value)
                self.pageInfo = model
            }
            if let value = dict["ResponseData"] as? [Any?] {
                var tmp : [DescribeAlertsWithEntityResponseBody.Data.ResponseData] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAlertsWithEntityResponseBody.Data.ResponseData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeAlertsWithEntityResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeAlertsWithEntityResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeAlertsWithEntityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertsWithEntityResponseBody?

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
            var model = DescribeAlertsWithEntityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAlertsWithEventRequest : Tea.TeaModel {
    public var alertName: String?

    public var alertTitle: String?

    public var alertType: String?

    public var assetId: String?

    public var assetName: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var entityId: String?

    public var entityName: String?

    public var incidentUuid: String?

    public var isDefend: String?

    public var level: [String]?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var source: String?

    public var startTime: Int64?

    public var subUserId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertName != nil {
            map["AlertName"] = self.alertName!
        }
        if self.alertTitle != nil {
            map["AlertTitle"] = self.alertTitle!
        }
        if self.alertType != nil {
            map["AlertType"] = self.alertType!
        }
        if self.assetId != nil {
            map["AssetId"] = self.assetId!
        }
        if self.assetName != nil {
            map["AssetName"] = self.assetName!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.entityName != nil {
            map["EntityName"] = self.entityName!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.isDefend != nil {
            map["IsDefend"] = self.isDefend!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertName"] as? String {
            self.alertName = value
        }
        if let value = dict["AlertTitle"] as? String {
            self.alertTitle = value
        }
        if let value = dict["AlertType"] as? String {
            self.alertType = value
        }
        if let value = dict["AssetId"] as? String {
            self.assetId = value
        }
        if let value = dict["AssetName"] as? String {
            self.assetName = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
        }
        if let value = dict["EntityName"] as? String {
            self.entityName = value
        }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["IsDefend"] as? String {
            self.isDefend = value
        }
        if let value = dict["Level"] as? [String] {
            self.level = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["SubUserId"] as? Int64 {
            self.subUserId = value
        }
    }
}

public class DescribeAlertsWithEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentPage"] as? Int32 {
                    self.currentPage = value
                }
                if let value = dict["PageSize"] as? Int32 {
                    self.pageSize = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public class AlertInfoList : Tea.TeaModel {
                public var key: String?

                public var keyName: String?

                public var values: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.keyName != nil {
                        map["KeyName"] = self.keyName!
                    }
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["KeyName"] as? String {
                        self.keyName = value
                    }
                    if let value = dict["Values"] as? String {
                        self.values = value
                    }
                }
            }
            public var alertDesc: String?

            public var alertDescCode: String?

            public var alertDescEn: String?

            public var alertDetail: String?

            public var alertInfoList: [DescribeAlertsWithEventResponseBody.Data.ResponseData.AlertInfoList]?

            public var alertLevel: String?

            public var alertName: String?

            public var alertNameCode: String?

            public var alertNameEn: String?

            public var alertSrcProd: String?

            public var alertSrcProdModule: String?

            public var alertTitle: String?

            public var alertTitleEn: String?

            public var alertType: String?

            public var alertTypeCode: String?

            public var alertTypeEn: String?

            public var alertUuid: String?

            public var assetList: String?

            public var attCk: String?

            public var cloudCode: String?

            public var endTime: String?

            public var entityList: String?

            public var extendContent: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var incidentUuid: String?

            public var isDefend: String?

            public var logTime: String?

            public var logUuid: String?

            public var mainUserId: Int64?

            public var occurTime: String?

            public var startTime: String?

            public var subUserId: Int64?

            public var subUserName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertDesc != nil {
                    map["AlertDesc"] = self.alertDesc!
                }
                if self.alertDescCode != nil {
                    map["AlertDescCode"] = self.alertDescCode!
                }
                if self.alertDescEn != nil {
                    map["AlertDescEn"] = self.alertDescEn!
                }
                if self.alertDetail != nil {
                    map["AlertDetail"] = self.alertDetail!
                }
                if self.alertInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.alertInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["AlertInfoList"] = tmp
                }
                if self.alertLevel != nil {
                    map["AlertLevel"] = self.alertLevel!
                }
                if self.alertName != nil {
                    map["AlertName"] = self.alertName!
                }
                if self.alertNameCode != nil {
                    map["AlertNameCode"] = self.alertNameCode!
                }
                if self.alertNameEn != nil {
                    map["AlertNameEn"] = self.alertNameEn!
                }
                if self.alertSrcProd != nil {
                    map["AlertSrcProd"] = self.alertSrcProd!
                }
                if self.alertSrcProdModule != nil {
                    map["AlertSrcProdModule"] = self.alertSrcProdModule!
                }
                if self.alertTitle != nil {
                    map["AlertTitle"] = self.alertTitle!
                }
                if self.alertTitleEn != nil {
                    map["AlertTitleEn"] = self.alertTitleEn!
                }
                if self.alertType != nil {
                    map["AlertType"] = self.alertType!
                }
                if self.alertTypeCode != nil {
                    map["AlertTypeCode"] = self.alertTypeCode!
                }
                if self.alertTypeEn != nil {
                    map["AlertTypeEn"] = self.alertTypeEn!
                }
                if self.alertUuid != nil {
                    map["AlertUuid"] = self.alertUuid!
                }
                if self.assetList != nil {
                    map["AssetList"] = self.assetList!
                }
                if self.attCk != nil {
                    map["AttCk"] = self.attCk!
                }
                if self.cloudCode != nil {
                    map["CloudCode"] = self.cloudCode!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.entityList != nil {
                    map["EntityList"] = self.entityList!
                }
                if self.extendContent != nil {
                    map["ExtendContent"] = self.extendContent!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.isDefend != nil {
                    map["IsDefend"] = self.isDefend!
                }
                if self.logTime != nil {
                    map["LogTime"] = self.logTime!
                }
                if self.logUuid != nil {
                    map["LogUuid"] = self.logUuid!
                }
                if self.mainUserId != nil {
                    map["MainUserId"] = self.mainUserId!
                }
                if self.occurTime != nil {
                    map["OccurTime"] = self.occurTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.subUserId != nil {
                    map["SubUserId"] = self.subUserId!
                }
                if self.subUserName != nil {
                    map["SubUserName"] = self.subUserName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertDesc"] as? String {
                    self.alertDesc = value
                }
                if let value = dict["AlertDescCode"] as? String {
                    self.alertDescCode = value
                }
                if let value = dict["AlertDescEn"] as? String {
                    self.alertDescEn = value
                }
                if let value = dict["AlertDetail"] as? String {
                    self.alertDetail = value
                }
                if let value = dict["AlertInfoList"] as? [Any?] {
                    var tmp : [DescribeAlertsWithEventResponseBody.Data.ResponseData.AlertInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeAlertsWithEventResponseBody.Data.ResponseData.AlertInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.alertInfoList = tmp
                }
                if let value = dict["AlertLevel"] as? String {
                    self.alertLevel = value
                }
                if let value = dict["AlertName"] as? String {
                    self.alertName = value
                }
                if let value = dict["AlertNameCode"] as? String {
                    self.alertNameCode = value
                }
                if let value = dict["AlertNameEn"] as? String {
                    self.alertNameEn = value
                }
                if let value = dict["AlertSrcProd"] as? String {
                    self.alertSrcProd = value
                }
                if let value = dict["AlertSrcProdModule"] as? String {
                    self.alertSrcProdModule = value
                }
                if let value = dict["AlertTitle"] as? String {
                    self.alertTitle = value
                }
                if let value = dict["AlertTitleEn"] as? String {
                    self.alertTitleEn = value
                }
                if let value = dict["AlertType"] as? String {
                    self.alertType = value
                }
                if let value = dict["AlertTypeCode"] as? String {
                    self.alertTypeCode = value
                }
                if let value = dict["AlertTypeEn"] as? String {
                    self.alertTypeEn = value
                }
                if let value = dict["AlertUuid"] as? String {
                    self.alertUuid = value
                }
                if let value = dict["AssetList"] as? String {
                    self.assetList = value
                }
                if let value = dict["AttCk"] as? String {
                    self.attCk = value
                }
                if let value = dict["CloudCode"] as? String {
                    self.cloudCode = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["EntityList"] as? String {
                    self.entityList = value
                }
                if let value = dict["ExtendContent"] as? String {
                    self.extendContent = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["IncidentUuid"] as? String {
                    self.incidentUuid = value
                }
                if let value = dict["IsDefend"] as? String {
                    self.isDefend = value
                }
                if let value = dict["LogTime"] as? String {
                    self.logTime = value
                }
                if let value = dict["LogUuid"] as? String {
                    self.logUuid = value
                }
                if let value = dict["MainUserId"] as? Int64 {
                    self.mainUserId = value
                }
                if let value = dict["OccurTime"] as? String {
                    self.occurTime = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["SubUserId"] as? Int64 {
                    self.subUserId = value
                }
                if let value = dict["SubUserName"] as? String {
                    self.subUserName = value
                }
            }
        }
        public var pageInfo: DescribeAlertsWithEventResponseBody.Data.PageInfo?

        public var responseData: [DescribeAlertsWithEventResponseBody.Data.ResponseData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageInfo"] as? [String: Any?] {
                var model = DescribeAlertsWithEventResponseBody.Data.PageInfo()
                model.fromMap(value)
                self.pageInfo = model
            }
            if let value = dict["ResponseData"] as? [Any?] {
                var tmp : [DescribeAlertsWithEventResponseBody.Data.ResponseData] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAlertsWithEventResponseBody.Data.ResponseData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeAlertsWithEventResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeAlertsWithEventResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeAlertsWithEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAlertsWithEventResponseBody?

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
            var model = DescribeAlertsWithEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAuthRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeAuthResponseBody : Tea.TeaModel {
    public var data: Bool?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeAuthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAuthResponseBody?

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
            var model = DescribeAuthResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAutomateResponseConfigCounterRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeAutomateResponseConfigCounterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var all: Int64?

        public var online: Int64?

        public override init() {
            super.init()
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
                map["All"] = self.all!
            }
            if self.online != nil {
                map["Online"] = self.online!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["All"] as? Int64 {
                self.all = value
            }
            if let value = dict["Online"] as? Int64 {
                self.online = value
            }
        }
    }
    public var code: Int32?

    public var data: DescribeAutomateResponseConfigCounterResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeAutomateResponseConfigCounterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeAutomateResponseConfigCounterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAutomateResponseConfigCounterResponseBody?

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
            var model = DescribeAutomateResponseConfigCounterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAutomateResponseConfigFeatureRequest : Tea.TeaModel {
    public var autoResponseType: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoResponseType != nil {
            map["AutoResponseType"] = self.autoResponseType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoResponseType"] as? String {
            self.autoResponseType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeAutomateResponseConfigFeatureResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RightValueEnums : Tea.TeaModel {
            public var value: String?

            public var valueMds: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.valueMds != nil {
                    map["ValueMds"] = self.valueMds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["ValueMds"] as? String {
                    self.valueMds = value
                }
            }
        }
        public class SupportOperators : Tea.TeaModel {
            public var hasRightValue: Bool?

            public var index: Int32?

            public var operator_: String?

            public var operatorDescCn: String?

            public var operatorDescEn: String?

            public var operatorName: String?

            public var supportDataType: String?

            public var supportTag: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hasRightValue != nil {
                    map["HasRightValue"] = self.hasRightValue!
                }
                if self.index != nil {
                    map["Index"] = self.index!
                }
                if self.operator_ != nil {
                    map["Operator"] = self.operator_!
                }
                if self.operatorDescCn != nil {
                    map["OperatorDescCn"] = self.operatorDescCn!
                }
                if self.operatorDescEn != nil {
                    map["OperatorDescEn"] = self.operatorDescEn!
                }
                if self.operatorName != nil {
                    map["OperatorName"] = self.operatorName!
                }
                if self.supportDataType != nil {
                    map["SupportDataType"] = self.supportDataType!
                }
                if self.supportTag != nil {
                    map["SupportTag"] = self.supportTag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HasRightValue"] as? Bool {
                    self.hasRightValue = value
                }
                if let value = dict["Index"] as? Int32 {
                    self.index = value
                }
                if let value = dict["Operator"] as? String {
                    self.operator_ = value
                }
                if let value = dict["OperatorDescCn"] as? String {
                    self.operatorDescCn = value
                }
                if let value = dict["OperatorDescEn"] as? String {
                    self.operatorDescEn = value
                }
                if let value = dict["OperatorName"] as? String {
                    self.operatorName = value
                }
                if let value = dict["SupportDataType"] as? String {
                    self.supportDataType = value
                }
                if let value = dict["SupportTag"] as? [String] {
                    self.supportTag = value
                }
            }
        }
        public var dataType: String?

        public var feature: String?

        public var rightValueEnums: [DescribeAutomateResponseConfigFeatureResponseBody.Data.RightValueEnums]?

        public var supportOperators: [DescribeAutomateResponseConfigFeatureResponseBody.Data.SupportOperators]?

        public override init() {
            super.init()
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
                map["DataType"] = self.dataType!
            }
            if self.feature != nil {
                map["Feature"] = self.feature!
            }
            if self.rightValueEnums != nil {
                var tmp : [Any] = []
                for k in self.rightValueEnums! {
                    tmp.append(k.toMap())
                }
                map["RightValueEnums"] = tmp
            }
            if self.supportOperators != nil {
                var tmp : [Any] = []
                for k in self.supportOperators! {
                    tmp.append(k.toMap())
                }
                map["SupportOperators"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataType"] as? String {
                self.dataType = value
            }
            if let value = dict["Feature"] as? String {
                self.feature = value
            }
            if let value = dict["RightValueEnums"] as? [Any?] {
                var tmp : [DescribeAutomateResponseConfigFeatureResponseBody.Data.RightValueEnums] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAutomateResponseConfigFeatureResponseBody.Data.RightValueEnums()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rightValueEnums = tmp
            }
            if let value = dict["SupportOperators"] as? [Any?] {
                var tmp : [DescribeAutomateResponseConfigFeatureResponseBody.Data.SupportOperators] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAutomateResponseConfigFeatureResponseBody.Data.SupportOperators()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.supportOperators = tmp
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAutomateResponseConfigFeatureResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeAutomateResponseConfigFeatureResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeAutomateResponseConfigFeatureResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeAutomateResponseConfigFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAutomateResponseConfigFeatureResponseBody?

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
            var model = DescribeAutomateResponseConfigFeatureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAutomateResponseConfigPlayBooksRequest : Tea.TeaModel {
    public var autoResponseType: String?

    public var entityType: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoResponseType != nil {
            map["AutoResponseType"] = self.autoResponseType!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoResponseType"] as? String {
            self.autoResponseType = value
        }
        if let value = dict["EntityType"] as? String {
            self.entityType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeAutomateResponseConfigPlayBooksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var description_: String?

        public var displayName: String?

        public var name: String?

        public var paramType: String?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.paramType != nil {
                map["ParamType"] = self.paramType!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParamType"] as? String {
                self.paramType = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAutomateResponseConfigPlayBooksResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeAutomateResponseConfigPlayBooksResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeAutomateResponseConfigPlayBooksResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeAutomateResponseConfigPlayBooksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAutomateResponseConfigPlayBooksResponseBody?

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
            var model = DescribeAutomateResponseConfigPlayBooksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCloudSiemAssetsRequest : Tea.TeaModel {
    public var assetName: String?

    public var assetType: String?

    public var assetUuid: String?

    public var currentPage: Int32?

    public var incidentUuid: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assetName != nil {
            map["AssetName"] = self.assetName!
        }
        if self.assetType != nil {
            map["AssetType"] = self.assetType!
        }
        if self.assetUuid != nil {
            map["AssetUuid"] = self.assetUuid!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetName"] as? String {
            self.assetName = value
        }
        if let value = dict["AssetType"] as? String {
            self.assetType = value
        }
        if let value = dict["AssetUuid"] as? String {
            self.assetUuid = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeCloudSiemAssetsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentPage"] as? Int32 {
                    self.currentPage = value
                }
                if let value = dict["PageSize"] as? Int32 {
                    self.pageSize = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public class AssetInfo : Tea.TeaModel {
                public var key: String?

                public var keyName: String?

                public var values: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.keyName != nil {
                        map["KeyName"] = self.keyName!
                    }
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["KeyName"] as? String {
                        self.keyName = value
                    }
                    if let value = dict["Values"] as? String {
                        self.values = value
                    }
                }
            }
            public var alertUuid: String?

            public var aliuid: Int64?

            public var assetId: String?

            public var assetInfo: [DescribeCloudSiemAssetsResponseBody.Data.ResponseData.AssetInfo]?

            public var assetName: String?

            public var assetType: String?

            public var cloudCode: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var incidentUuid: String?

            public var subUserId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertUuid != nil {
                    map["AlertUuid"] = self.alertUuid!
                }
                if self.aliuid != nil {
                    map["Aliuid"] = self.aliuid!
                }
                if self.assetId != nil {
                    map["AssetId"] = self.assetId!
                }
                if self.assetInfo != nil {
                    var tmp : [Any] = []
                    for k in self.assetInfo! {
                        tmp.append(k.toMap())
                    }
                    map["AssetInfo"] = tmp
                }
                if self.assetName != nil {
                    map["AssetName"] = self.assetName!
                }
                if self.assetType != nil {
                    map["AssetType"] = self.assetType!
                }
                if self.cloudCode != nil {
                    map["CloudCode"] = self.cloudCode!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.subUserId != nil {
                    map["SubUserId"] = self.subUserId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertUuid"] as? String {
                    self.alertUuid = value
                }
                if let value = dict["Aliuid"] as? Int64 {
                    self.aliuid = value
                }
                if let value = dict["AssetId"] as? String {
                    self.assetId = value
                }
                if let value = dict["AssetInfo"] as? [Any?] {
                    var tmp : [DescribeCloudSiemAssetsResponseBody.Data.ResponseData.AssetInfo] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeCloudSiemAssetsResponseBody.Data.ResponseData.AssetInfo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.assetInfo = tmp
                }
                if let value = dict["AssetName"] as? String {
                    self.assetName = value
                }
                if let value = dict["AssetType"] as? String {
                    self.assetType = value
                }
                if let value = dict["CloudCode"] as? String {
                    self.cloudCode = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["IncidentUuid"] as? String {
                    self.incidentUuid = value
                }
                if let value = dict["SubUserId"] as? Int64 {
                    self.subUserId = value
                }
            }
        }
        public var pageInfo: DescribeCloudSiemAssetsResponseBody.Data.PageInfo?

        public var responseData: [DescribeCloudSiemAssetsResponseBody.Data.ResponseData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageInfo"] as? [String: Any?] {
                var model = DescribeCloudSiemAssetsResponseBody.Data.PageInfo()
                model.fromMap(value)
                self.pageInfo = model
            }
            if let value = dict["ResponseData"] as? [Any?] {
                var tmp : [DescribeCloudSiemAssetsResponseBody.Data.ResponseData] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCloudSiemAssetsResponseBody.Data.ResponseData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeCloudSiemAssetsResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeCloudSiemAssetsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeCloudSiemAssetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudSiemAssetsResponseBody?

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
            var model = DescribeCloudSiemAssetsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCloudSiemAssetsCounterRequest : Tea.TeaModel {
    public var incidentUuid: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeCloudSiemAssetsCounterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var assetNum: Int32?

        public var assetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assetNum != nil {
                map["AssetNum"] = self.assetNum!
            }
            if self.assetType != nil {
                map["AssetType"] = self.assetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AssetNum"] as? Int32 {
                self.assetNum = value
            }
            if let value = dict["AssetType"] as? String {
                self.assetType = value
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeCloudSiemAssetsCounterResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeCloudSiemAssetsCounterResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeCloudSiemAssetsCounterResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeCloudSiemAssetsCounterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudSiemAssetsCounterResponseBody?

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
            var model = DescribeCloudSiemAssetsCounterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCloudSiemEventDetailRequest : Tea.TeaModel {
    public var incidentUuid: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeCloudSiemEventDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AttckStages : Tea.TeaModel {
            public var alertNum: Int32?

            public var tacticId: String?

            public var tacticName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertNum != nil {
                    map["AlertNum"] = self.alertNum!
                }
                if self.tacticId != nil {
                    map["TacticId"] = self.tacticId!
                }
                if self.tacticName != nil {
                    map["TacticName"] = self.tacticName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertNum"] as? Int32 {
                    self.alertNum = value
                }
                if let value = dict["TacticId"] as? String {
                    self.tacticId = value
                }
                if let value = dict["TacticName"] as? String {
                    self.tacticName = value
                }
            }
        }
        public var alertNum: Int32?

        public var aliuid: Int64?

        public var assetNum: Int32?

        public var attCkLabels: [String]?

        public var attckStages: [DescribeCloudSiemEventDetailResponseBody.Data.AttckStages]?

        public var dataSources: [String]?

        public var description_: String?

        public var descriptionEn: String?

        public var extContent: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var incidentName: String?

        public var incidentNameEn: String?

        public var incidentType: String?

        public var incidentUuid: String?

        public var referAccount: String?

        public var remark: String?

        public var ruleId: String?

        public var status: Int32?

        public var threatLevel: String?

        public var threatScore: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertNum != nil {
                map["AlertNum"] = self.alertNum!
            }
            if self.aliuid != nil {
                map["Aliuid"] = self.aliuid!
            }
            if self.assetNum != nil {
                map["AssetNum"] = self.assetNum!
            }
            if self.attCkLabels != nil {
                map["AttCkLabels"] = self.attCkLabels!
            }
            if self.attckStages != nil {
                var tmp : [Any] = []
                for k in self.attckStages! {
                    tmp.append(k.toMap())
                }
                map["AttckStages"] = tmp
            }
            if self.dataSources != nil {
                map["DataSources"] = self.dataSources!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.descriptionEn != nil {
                map["DescriptionEn"] = self.descriptionEn!
            }
            if self.extContent != nil {
                map["ExtContent"] = self.extContent!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.incidentName != nil {
                map["IncidentName"] = self.incidentName!
            }
            if self.incidentNameEn != nil {
                map["IncidentNameEn"] = self.incidentNameEn!
            }
            if self.incidentType != nil {
                map["IncidentType"] = self.incidentType!
            }
            if self.incidentUuid != nil {
                map["IncidentUuid"] = self.incidentUuid!
            }
            if self.referAccount != nil {
                map["ReferAccount"] = self.referAccount!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.threatLevel != nil {
                map["ThreatLevel"] = self.threatLevel!
            }
            if self.threatScore != nil {
                map["ThreatScore"] = self.threatScore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertNum"] as? Int32 {
                self.alertNum = value
            }
            if let value = dict["Aliuid"] as? Int64 {
                self.aliuid = value
            }
            if let value = dict["AssetNum"] as? Int32 {
                self.assetNum = value
            }
            if let value = dict["AttCkLabels"] as? [String] {
                self.attCkLabels = value
            }
            if let value = dict["AttckStages"] as? [Any?] {
                var tmp : [DescribeCloudSiemEventDetailResponseBody.Data.AttckStages] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCloudSiemEventDetailResponseBody.Data.AttckStages()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.attckStages = tmp
            }
            if let value = dict["DataSources"] as? [String] {
                self.dataSources = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DescriptionEn"] as? String {
                self.descriptionEn = value
            }
            if let value = dict["ExtContent"] as? String {
                self.extContent = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["IncidentName"] as? String {
                self.incidentName = value
            }
            if let value = dict["IncidentNameEn"] as? String {
                self.incidentNameEn = value
            }
            if let value = dict["IncidentType"] as? String {
                self.incidentType = value
            }
            if let value = dict["IncidentUuid"] as? String {
                self.incidentUuid = value
            }
            if let value = dict["ReferAccount"] as? String {
                self.referAccount = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["ThreatLevel"] as? String {
                self.threatLevel = value
            }
            if let value = dict["ThreatScore"] as? Double {
                self.threatScore = value
            }
        }
    }
    public var code: Int32?

    public var data: DescribeCloudSiemEventDetailResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeCloudSiemEventDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeCloudSiemEventDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudSiemEventDetailResponseBody?

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
            var model = DescribeCloudSiemEventDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCloudSiemEventsRequest : Tea.TeaModel {
    public var assetId: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var entityUuid: String?

    public var eventName: String?

    public var incidentUuid: String?

    public var order: String?

    public var orderField: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var startTime: Int64?

    public var status: Int32?

    public var threadLevel: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assetId != nil {
            map["AssetId"] = self.assetId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.entityUuid != nil {
            map["EntityUuid"] = self.entityUuid!
        }
        if self.eventName != nil {
            map["EventName"] = self.eventName!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.threadLevel != nil {
            map["ThreadLevel"] = self.threadLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssetId"] as? String {
            self.assetId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EntityUuid"] as? String {
            self.entityUuid = value
        }
        if let value = dict["EventName"] as? String {
            self.eventName = value
        }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["ThreadLevel"] as? [String] {
            self.threadLevel = value
        }
    }
}

public class DescribeCloudSiemEventsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentPage"] as? Int32 {
                    self.currentPage = value
                }
                if let value = dict["PageSize"] as? Int32 {
                    self.pageSize = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public class AttckStages : Tea.TeaModel {
                public var alertNum: Int32?

                public var tacticId: String?

                public var tacticName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.alertNum != nil {
                        map["AlertNum"] = self.alertNum!
                    }
                    if self.tacticId != nil {
                        map["TacticId"] = self.tacticId!
                    }
                    if self.tacticName != nil {
                        map["TacticName"] = self.tacticName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AlertNum"] as? Int32 {
                        self.alertNum = value
                    }
                    if let value = dict["TacticId"] as? String {
                        self.tacticId = value
                    }
                    if let value = dict["TacticName"] as? String {
                        self.tacticName = value
                    }
                }
            }
            public var alertNum: Int32?

            public var aliuid: Int64?

            public var assetNum: Int32?

            public var attCkLabels: [String]?

            public var attckStages: [DescribeCloudSiemEventsResponseBody.Data.ResponseData.AttckStages]?

            public var dataSources: [String]?

            public var description_: String?

            public var descriptionEn: String?

            public var extContent: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var incidentName: String?

            public var incidentNameEn: String?

            public var incidentType: String?

            public var incidentUuid: String?

            public var referAccount: String?

            public var remark: String?

            public var ruleId: String?

            public var status: Int32?

            public var threatLevel: String?

            public var threatScore: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertNum != nil {
                    map["AlertNum"] = self.alertNum!
                }
                if self.aliuid != nil {
                    map["Aliuid"] = self.aliuid!
                }
                if self.assetNum != nil {
                    map["AssetNum"] = self.assetNum!
                }
                if self.attCkLabels != nil {
                    map["AttCkLabels"] = self.attCkLabels!
                }
                if self.attckStages != nil {
                    var tmp : [Any] = []
                    for k in self.attckStages! {
                        tmp.append(k.toMap())
                    }
                    map["AttckStages"] = tmp
                }
                if self.dataSources != nil {
                    map["DataSources"] = self.dataSources!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.descriptionEn != nil {
                    map["DescriptionEn"] = self.descriptionEn!
                }
                if self.extContent != nil {
                    map["ExtContent"] = self.extContent!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.incidentName != nil {
                    map["IncidentName"] = self.incidentName!
                }
                if self.incidentNameEn != nil {
                    map["IncidentNameEn"] = self.incidentNameEn!
                }
                if self.incidentType != nil {
                    map["IncidentType"] = self.incidentType!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.referAccount != nil {
                    map["ReferAccount"] = self.referAccount!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.threatLevel != nil {
                    map["ThreatLevel"] = self.threatLevel!
                }
                if self.threatScore != nil {
                    map["ThreatScore"] = self.threatScore!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertNum"] as? Int32 {
                    self.alertNum = value
                }
                if let value = dict["Aliuid"] as? Int64 {
                    self.aliuid = value
                }
                if let value = dict["AssetNum"] as? Int32 {
                    self.assetNum = value
                }
                if let value = dict["AttCkLabels"] as? [String] {
                    self.attCkLabels = value
                }
                if let value = dict["AttckStages"] as? [Any?] {
                    var tmp : [DescribeCloudSiemEventsResponseBody.Data.ResponseData.AttckStages] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeCloudSiemEventsResponseBody.Data.ResponseData.AttckStages()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.attckStages = tmp
                }
                if let value = dict["DataSources"] as? [String] {
                    self.dataSources = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DescriptionEn"] as? String {
                    self.descriptionEn = value
                }
                if let value = dict["ExtContent"] as? String {
                    self.extContent = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["IncidentName"] as? String {
                    self.incidentName = value
                }
                if let value = dict["IncidentNameEn"] as? String {
                    self.incidentNameEn = value
                }
                if let value = dict["IncidentType"] as? String {
                    self.incidentType = value
                }
                if let value = dict["IncidentUuid"] as? String {
                    self.incidentUuid = value
                }
                if let value = dict["ReferAccount"] as? String {
                    self.referAccount = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["RuleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["ThreatLevel"] as? String {
                    self.threatLevel = value
                }
                if let value = dict["ThreatScore"] as? Double {
                    self.threatScore = value
                }
            }
        }
        public var pageInfo: DescribeCloudSiemEventsResponseBody.Data.PageInfo?

        public var responseData: [DescribeCloudSiemEventsResponseBody.Data.ResponseData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageInfo"] as? [String: Any?] {
                var model = DescribeCloudSiemEventsResponseBody.Data.PageInfo()
                model.fromMap(value)
                self.pageInfo = model
            }
            if let value = dict["ResponseData"] as? [Any?] {
                var tmp : [DescribeCloudSiemEventsResponseBody.Data.ResponseData] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCloudSiemEventsResponseBody.Data.ResponseData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeCloudSiemEventsResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeCloudSiemEventsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeCloudSiemEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudSiemEventsResponseBody?

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
            var model = DescribeCloudSiemEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCustomizeRuleCountRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeCustomizeRuleCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aggregationRuleNum: Int32?

        public var customizeRuleNum: Int32?

        public var expertRuleNum: Int32?

        public var graphComputingRuleNum: Int32?

        public var highRuleNum: Int32?

        public var inUseRuleNum: Int32?

        public var lowRuleNum: Int32?

        public var mediumRuleNum: Int32?

        public var predefinedRuleNum: Int32?

        public var singleAlertRuleNum: Int32?

        public var totalRuleNum: Int32?

        public var unEventRuleNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aggregationRuleNum != nil {
                map["AggregationRuleNum"] = self.aggregationRuleNum!
            }
            if self.customizeRuleNum != nil {
                map["CustomizeRuleNum"] = self.customizeRuleNum!
            }
            if self.expertRuleNum != nil {
                map["ExpertRuleNum"] = self.expertRuleNum!
            }
            if self.graphComputingRuleNum != nil {
                map["GraphComputingRuleNum"] = self.graphComputingRuleNum!
            }
            if self.highRuleNum != nil {
                map["HighRuleNum"] = self.highRuleNum!
            }
            if self.inUseRuleNum != nil {
                map["InUseRuleNum"] = self.inUseRuleNum!
            }
            if self.lowRuleNum != nil {
                map["LowRuleNum"] = self.lowRuleNum!
            }
            if self.mediumRuleNum != nil {
                map["MediumRuleNum"] = self.mediumRuleNum!
            }
            if self.predefinedRuleNum != nil {
                map["PredefinedRuleNum"] = self.predefinedRuleNum!
            }
            if self.singleAlertRuleNum != nil {
                map["SingleAlertRuleNum"] = self.singleAlertRuleNum!
            }
            if self.totalRuleNum != nil {
                map["TotalRuleNum"] = self.totalRuleNum!
            }
            if self.unEventRuleNum != nil {
                map["UnEventRuleNum"] = self.unEventRuleNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AggregationRuleNum"] as? Int32 {
                self.aggregationRuleNum = value
            }
            if let value = dict["CustomizeRuleNum"] as? Int32 {
                self.customizeRuleNum = value
            }
            if let value = dict["ExpertRuleNum"] as? Int32 {
                self.expertRuleNum = value
            }
            if let value = dict["GraphComputingRuleNum"] as? Int32 {
                self.graphComputingRuleNum = value
            }
            if let value = dict["HighRuleNum"] as? Int32 {
                self.highRuleNum = value
            }
            if let value = dict["InUseRuleNum"] as? Int32 {
                self.inUseRuleNum = value
            }
            if let value = dict["LowRuleNum"] as? Int32 {
                self.lowRuleNum = value
            }
            if let value = dict["MediumRuleNum"] as? Int32 {
                self.mediumRuleNum = value
            }
            if let value = dict["PredefinedRuleNum"] as? Int32 {
                self.predefinedRuleNum = value
            }
            if let value = dict["SingleAlertRuleNum"] as? Int32 {
                self.singleAlertRuleNum = value
            }
            if let value = dict["TotalRuleNum"] as? Int32 {
                self.totalRuleNum = value
            }
            if let value = dict["UnEventRuleNum"] as? Int32 {
                self.unEventRuleNum = value
            }
        }
    }
    public var code: Int32?

    public var data: DescribeCustomizeRuleCountResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeCustomizeRuleCountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeCustomizeRuleCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomizeRuleCountResponseBody?

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
            var model = DescribeCustomizeRuleCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCustomizeRuleTestRequest : Tea.TeaModel {
    public var id: Int64?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeCustomizeRuleTestResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: Int64?

        public var simulateData: String?

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
            if self.simulateData != nil {
                map["SimulateData"] = self.simulateData!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["SimulateData"] as? String {
                self.simulateData = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var code: Int32?

    public var data: DescribeCustomizeRuleTestResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeCustomizeRuleTestResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeCustomizeRuleTestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomizeRuleTestResponseBody?

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
            var model = DescribeCustomizeRuleTestResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCustomizeRuleTestHistogramRequest : Tea.TeaModel {
    public var id: Int64?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeCustomizeRuleTestHistogramResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int64?

        public var from: Int64?

        public var to: Int64?

        public override init() {
            super.init()
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
            if self.from != nil {
                map["From"] = self.from!
            }
            if self.to != nil {
                map["To"] = self.to!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["From"] as? Int64 {
                self.from = value
            }
            if let value = dict["To"] as? Int64 {
                self.to = value
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeCustomizeRuleTestHistogramResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeCustomizeRuleTestHistogramResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeCustomizeRuleTestHistogramResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeCustomizeRuleTestHistogramResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCustomizeRuleTestHistogramResponseBody?

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
            var model = DescribeCustomizeRuleTestHistogramResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDataSourceInstanceRequest : Tea.TeaModel {
    public var accountId: String?

    public var cloudCode: String?

    public var dataSourceInstanceId: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.dataSourceInstanceId != nil {
            map["DataSourceInstanceId"] = self.dataSourceInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["DataSourceInstanceId"] as? String {
            self.dataSourceInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDataSourceInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DataSourceInstanceParams : Tea.TeaModel {
            public var paraCode: String?

            public var paraValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.paraCode != nil {
                    map["ParaCode"] = self.paraCode!
                }
                if self.paraValue != nil {
                    map["ParaValue"] = self.paraValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ParaCode"] as? String {
                    self.paraCode = value
                }
                if let value = dict["ParaValue"] as? String {
                    self.paraValue = value
                }
            }
        }
        public var accountId: String?

        public var cloudCode: String?

        public var dataSourceInstanceId: String?

        public var dataSourceInstanceParams: [DescribeDataSourceInstanceResponseBody.Data.DataSourceInstanceParams]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.cloudCode != nil {
                map["CloudCode"] = self.cloudCode!
            }
            if self.dataSourceInstanceId != nil {
                map["DataSourceInstanceId"] = self.dataSourceInstanceId!
            }
            if self.dataSourceInstanceParams != nil {
                var tmp : [Any] = []
                for k in self.dataSourceInstanceParams! {
                    tmp.append(k.toMap())
                }
                map["DataSourceInstanceParams"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["CloudCode"] as? String {
                self.cloudCode = value
            }
            if let value = dict["DataSourceInstanceId"] as? String {
                self.dataSourceInstanceId = value
            }
            if let value = dict["DataSourceInstanceParams"] as? [Any?] {
                var tmp : [DescribeDataSourceInstanceResponseBody.Data.DataSourceInstanceParams] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDataSourceInstanceResponseBody.Data.DataSourceInstanceParams()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataSourceInstanceParams = tmp
            }
        }
    }
    public var data: DescribeDataSourceInstanceResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDataSourceInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDataSourceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataSourceInstanceResponseBody?

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
            var model = DescribeDataSourceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDataSourceParametersRequest : Tea.TeaModel {
    public var cloudCode: String?

    public var dataSourceType: String?

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
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDataSourceParametersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ParamValue : Tea.TeaModel {
            public var label: String?

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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var canEditted: Int32?

        public var cloudCode: String?

        public var dataSourceType: String?

        public var defaultValue: String?

        public var disabled: Bool?

        public var formatCheck: String?

        public var hit: String?

        public var paraCode: String?

        public var paraLevel: Int32?

        public var paraName: String?

        public var paraType: String?

        public var paramValue: [DescribeDataSourceParametersResponseBody.Data.ParamValue]?

        public var required_: Int32?

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
            if self.canEditted != nil {
                map["CanEditted"] = self.canEditted!
            }
            if self.cloudCode != nil {
                map["CloudCode"] = self.cloudCode!
            }
            if self.dataSourceType != nil {
                map["DataSourceType"] = self.dataSourceType!
            }
            if self.defaultValue != nil {
                map["DefaultValue"] = self.defaultValue!
            }
            if self.disabled != nil {
                map["Disabled"] = self.disabled!
            }
            if self.formatCheck != nil {
                map["FormatCheck"] = self.formatCheck!
            }
            if self.hit != nil {
                map["Hit"] = self.hit!
            }
            if self.paraCode != nil {
                map["ParaCode"] = self.paraCode!
            }
            if self.paraLevel != nil {
                map["ParaLevel"] = self.paraLevel!
            }
            if self.paraName != nil {
                map["ParaName"] = self.paraName!
            }
            if self.paraType != nil {
                map["ParaType"] = self.paraType!
            }
            if self.paramValue != nil {
                var tmp : [Any] = []
                for k in self.paramValue! {
                    tmp.append(k.toMap())
                }
                map["ParamValue"] = tmp
            }
            if self.required_ != nil {
                map["Required"] = self.required_!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CanEditted"] as? Int32 {
                self.canEditted = value
            }
            if let value = dict["CloudCode"] as? String {
                self.cloudCode = value
            }
            if let value = dict["DataSourceType"] as? String {
                self.dataSourceType = value
            }
            if let value = dict["DefaultValue"] as? String {
                self.defaultValue = value
            }
            if let value = dict["Disabled"] as? Bool {
                self.disabled = value
            }
            if let value = dict["FormatCheck"] as? String {
                self.formatCheck = value
            }
            if let value = dict["Hit"] as? String {
                self.hit = value
            }
            if let value = dict["ParaCode"] as? String {
                self.paraCode = value
            }
            if let value = dict["ParaLevel"] as? Int32 {
                self.paraLevel = value
            }
            if let value = dict["ParaName"] as? String {
                self.paraName = value
            }
            if let value = dict["ParaType"] as? String {
                self.paraType = value
            }
            if let value = dict["ParamValue"] as? [Any?] {
                var tmp : [DescribeDataSourceParametersResponseBody.Data.ParamValue] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDataSourceParametersResponseBody.Data.ParamValue()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.paramValue = tmp
            }
            if let value = dict["Required"] as? Int32 {
                self.required_ = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var data: [DescribeDataSourceParametersResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeDataSourceParametersResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeDataSourceParametersResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDataSourceParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataSourceParametersResponseBody?

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
            var model = DescribeDataSourceParametersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDisposeAndPlaybookRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var entityType: String?

    public var entityUuid: String?

    public var incidentUuid: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.entityUuid != nil {
            map["EntityUuid"] = self.entityUuid!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EntityType"] as? String {
            self.entityType = value
        }
        if let value = dict["EntityUuid"] as? String {
            self.entityUuid = value
        }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeDisposeAndPlaybookResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentPage"] as? Int32 {
                    self.currentPage = value
                }
                if let value = dict["PageSize"] as? Int32 {
                    self.pageSize = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public class PlaybookList : Tea.TeaModel {
                public var available: String?

                public var description_: String?

                public var displayName: String?

                public var name: String?

                public var opCode: String?

                public var opLevel: String?

                public var paramConfig: [Any]?

                public var taskConfig: String?

                public var uuid: String?

                public var wafPlaybook: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.available != nil {
                        map["Available"] = self.available!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.displayName != nil {
                        map["DisplayName"] = self.displayName!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.opCode != nil {
                        map["OpCode"] = self.opCode!
                    }
                    if self.opLevel != nil {
                        map["OpLevel"] = self.opLevel!
                    }
                    if self.paramConfig != nil {
                        map["ParamConfig"] = self.paramConfig!
                    }
                    if self.taskConfig != nil {
                        map["TaskConfig"] = self.taskConfig!
                    }
                    if self.uuid != nil {
                        map["Uuid"] = self.uuid!
                    }
                    if self.wafPlaybook != nil {
                        map["WafPlaybook"] = self.wafPlaybook!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Available"] as? String {
                        self.available = value
                    }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["DisplayName"] as? String {
                        self.displayName = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["OpCode"] as? String {
                        self.opCode = value
                    }
                    if let value = dict["OpLevel"] as? String {
                        self.opLevel = value
                    }
                    if let value = dict["ParamConfig"] as? [Any] {
                        self.paramConfig = value
                    }
                    if let value = dict["TaskConfig"] as? String {
                        self.taskConfig = value
                    }
                    if let value = dict["Uuid"] as? String {
                        self.uuid = value
                    }
                    if let value = dict["WafPlaybook"] as? Bool {
                        self.wafPlaybook = value
                    }
                }
            }
            public var alertNum: Int32?

            public var dispose: String?

            public var entityId: Int64?

            public var entityInfo: [String: Any]?

            public var entityType: String?

            public var opcodeMap: [String: String]?

            public var opcodeSet: [String]?

            public var playbookList: [DescribeDisposeAndPlaybookResponseBody.Data.ResponseData.PlaybookList]?

            public var scope: [Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertNum != nil {
                    map["AlertNum"] = self.alertNum!
                }
                if self.dispose != nil {
                    map["Dispose"] = self.dispose!
                }
                if self.entityId != nil {
                    map["EntityId"] = self.entityId!
                }
                if self.entityInfo != nil {
                    map["EntityInfo"] = self.entityInfo!
                }
                if self.entityType != nil {
                    map["EntityType"] = self.entityType!
                }
                if self.opcodeMap != nil {
                    map["OpcodeMap"] = self.opcodeMap!
                }
                if self.opcodeSet != nil {
                    map["OpcodeSet"] = self.opcodeSet!
                }
                if self.playbookList != nil {
                    var tmp : [Any] = []
                    for k in self.playbookList! {
                        tmp.append(k.toMap())
                    }
                    map["PlaybookList"] = tmp
                }
                if self.scope != nil {
                    map["Scope"] = self.scope!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertNum"] as? Int32 {
                    self.alertNum = value
                }
                if let value = dict["Dispose"] as? String {
                    self.dispose = value
                }
                if let value = dict["EntityId"] as? Int64 {
                    self.entityId = value
                }
                if let value = dict["EntityInfo"] as? [String: Any] {
                    self.entityInfo = value
                }
                if let value = dict["EntityType"] as? String {
                    self.entityType = value
                }
                if let value = dict["OpcodeMap"] as? [String: String] {
                    self.opcodeMap = value
                }
                if let value = dict["OpcodeSet"] as? [String] {
                    self.opcodeSet = value
                }
                if let value = dict["PlaybookList"] as? [Any?] {
                    var tmp : [DescribeDisposeAndPlaybookResponseBody.Data.ResponseData.PlaybookList] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeDisposeAndPlaybookResponseBody.Data.ResponseData.PlaybookList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.playbookList = tmp
                }
                if let value = dict["Scope"] as? [Any] {
                    self.scope = value
                }
            }
        }
        public var pageInfo: DescribeDisposeAndPlaybookResponseBody.Data.PageInfo?

        public var responseData: [DescribeDisposeAndPlaybookResponseBody.Data.ResponseData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageInfo"] as? [String: Any?] {
                var model = DescribeDisposeAndPlaybookResponseBody.Data.PageInfo()
                model.fromMap(value)
                self.pageInfo = model
            }
            if let value = dict["ResponseData"] as? [Any?] {
                var tmp : [DescribeDisposeAndPlaybookResponseBody.Data.ResponseData] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDisposeAndPlaybookResponseBody.Data.ResponseData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeDisposeAndPlaybookResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDisposeAndPlaybookResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDisposeAndPlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDisposeAndPlaybookResponseBody?

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
            var model = DescribeDisposeAndPlaybookResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDisposeStrategyPlaybookRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDisposeStrategyPlaybookResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var playbookName: String?

        public var playbookUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.playbookName != nil {
                map["PlaybookName"] = self.playbookName!
            }
            if self.playbookUuid != nil {
                map["PlaybookUuid"] = self.playbookUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PlaybookName"] as? String {
                self.playbookName = value
            }
            if let value = dict["PlaybookUuid"] as? String {
                self.playbookUuid = value
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeDisposeStrategyPlaybookResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeDisposeStrategyPlaybookResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeDisposeStrategyPlaybookResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDisposeStrategyPlaybookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDisposeStrategyPlaybookResponseBody?

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
            var model = DescribeDisposeStrategyPlaybookResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeEntityInfoRequest : Tea.TeaModel {
    public var entityId: Int64?

    public var entityIdentity: String?

    public var incidentUuid: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var sophonTaskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.entityIdentity != nil {
            map["EntityIdentity"] = self.entityIdentity!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.sophonTaskId != nil {
            map["SophonTaskId"] = self.sophonTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["EntityIdentity"] as? String {
            self.entityIdentity = value
        }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["SophonTaskId"] as? String {
            self.sophonTaskId = value
        }
    }
}

public class DescribeEntityInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var entityId: Int64?

        public var entityInfo: [String: Any]?

        public var entityType: String?

        public var tipInfo: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.entityInfo != nil {
                map["EntityInfo"] = self.entityInfo!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.tipInfo != nil {
                map["TipInfo"] = self.tipInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EntityId"] as? Int64 {
                self.entityId = value
            }
            if let value = dict["EntityInfo"] as? [String: Any] {
                self.entityInfo = value
            }
            if let value = dict["EntityType"] as? String {
                self.entityType = value
            }
            if let value = dict["TipInfo"] as? [String: Any] {
                self.tipInfo = value
            }
        }
    }
    public var code: Int32?

    public var data: DescribeEntityInfoResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeEntityInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeEntityInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEntityInfoResponseBody?

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
            var model = DescribeEntityInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeEventCountByThreatLevelRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeEventCountByThreatLevelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var eventNum: Int64?

        public var highLevelEventNum: Int64?

        public var lowLevelEventNum: Int64?

        public var mediumLevelEventNum: Int64?

        public var undealEventNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eventNum != nil {
                map["EventNum"] = self.eventNum!
            }
            if self.highLevelEventNum != nil {
                map["HighLevelEventNum"] = self.highLevelEventNum!
            }
            if self.lowLevelEventNum != nil {
                map["LowLevelEventNum"] = self.lowLevelEventNum!
            }
            if self.mediumLevelEventNum != nil {
                map["MediumLevelEventNum"] = self.mediumLevelEventNum!
            }
            if self.undealEventNum != nil {
                map["UndealEventNum"] = self.undealEventNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EventNum"] as? Int64 {
                self.eventNum = value
            }
            if let value = dict["HighLevelEventNum"] as? Int64 {
                self.highLevelEventNum = value
            }
            if let value = dict["LowLevelEventNum"] as? Int64 {
                self.lowLevelEventNum = value
            }
            if let value = dict["MediumLevelEventNum"] as? Int64 {
                self.mediumLevelEventNum = value
            }
            if let value = dict["UndealEventNum"] as? Int64 {
                self.undealEventNum = value
            }
        }
    }
    public var code: Int32?

    public var data: DescribeEventCountByThreatLevelResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeEventCountByThreatLevelResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeEventCountByThreatLevelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEventCountByThreatLevelResponseBody?

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
            var model = DescribeEventCountByThreatLevelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeEventDisposeRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var incidentUuid: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeEventDisposeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ReceiverInfo : Tea.TeaModel {
            public var channel: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var incidentUuid: String?

            public var messageTitle: String?

            public var receiver: String?

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
                if self.channel != nil {
                    map["Channel"] = self.channel!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.messageTitle != nil {
                    map["MessageTitle"] = self.messageTitle!
                }
                if self.receiver != nil {
                    map["Receiver"] = self.receiver!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Channel"] as? String {
                    self.channel = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["IncidentUuid"] as? String {
                    self.incidentUuid = value
                }
                if let value = dict["MessageTitle"] as? String {
                    self.messageTitle = value
                }
                if let value = dict["Receiver"] as? String {
                    self.receiver = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
            }
        }
        public var eventDispose: [Any]?

        public var receiverInfo: DescribeEventDisposeResponseBody.Data.ReceiverInfo?

        public var remark: String?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.receiverInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eventDispose != nil {
                map["EventDispose"] = self.eventDispose!
            }
            if self.receiverInfo != nil {
                map["ReceiverInfo"] = self.receiverInfo?.toMap()
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EventDispose"] as? [Any] {
                self.eventDispose = value
            }
            if let value = dict["ReceiverInfo"] as? [String: Any?] {
                var model = DescribeEventDisposeResponseBody.Data.ReceiverInfo()
                model.fromMap(value)
                self.receiverInfo = model
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var code: Int32?

    public var data: DescribeEventDisposeResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeEventDisposeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeEventDisposeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEventDisposeResponseBody?

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
            var model = DescribeEventDisposeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeImportedLogCountRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: String?

    public var roleType: String?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? String {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? String {
            self.roleType = value
        }
    }
}

public class DescribeImportedLogCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var importedLogCount: Int32?

        public var totalLogCount: Int32?

        public var unImportedLogCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.importedLogCount != nil {
                map["ImportedLogCount"] = self.importedLogCount!
            }
            if self.totalLogCount != nil {
                map["TotalLogCount"] = self.totalLogCount!
            }
            if self.unImportedLogCount != nil {
                map["UnImportedLogCount"] = self.unImportedLogCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImportedLogCount"] as? Int32 {
                self.importedLogCount = value
            }
            if let value = dict["TotalLogCount"] as? Int32 {
                self.totalLogCount = value
            }
            if let value = dict["UnImportedLogCount"] as? Int32 {
                self.unImportedLogCount = value
            }
        }
    }
    public var data: DescribeImportedLogCountResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeImportedLogCountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeImportedLogCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImportedLogCountResponseBody?

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
            var model = DescribeImportedLogCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLogFieldsRequest : Tea.TeaModel {
    public var logSource: String?

    public var logType: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logSource != nil {
            map["LogSource"] = self.logSource!
        }
        if self.logType != nil {
            map["LogType"] = self.logType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogSource"] as? String {
            self.logSource = value
        }
        if let value = dict["LogType"] as? String {
            self.logType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeLogFieldsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var activityName: String?

        public var fieldDesc: String?

        public var fieldName: String?

        public var fieldType: String?

        public var logCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activityName != nil {
                map["ActivityName"] = self.activityName!
            }
            if self.fieldDesc != nil {
                map["FieldDesc"] = self.fieldDesc!
            }
            if self.fieldName != nil {
                map["FieldName"] = self.fieldName!
            }
            if self.fieldType != nil {
                map["FieldType"] = self.fieldType!
            }
            if self.logCode != nil {
                map["LogCode"] = self.logCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActivityName"] as? String {
                self.activityName = value
            }
            if let value = dict["FieldDesc"] as? String {
                self.fieldDesc = value
            }
            if let value = dict["FieldName"] as? String {
                self.fieldName = value
            }
            if let value = dict["FieldType"] as? String {
                self.fieldType = value
            }
            if let value = dict["LogCode"] as? String {
                self.logCode = value
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeLogFieldsResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeLogFieldsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeLogFieldsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeLogFieldsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLogFieldsResponseBody?

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
            var model = DescribeLogFieldsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLogSourceRequest : Tea.TeaModel {
    public var logType: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logType != nil {
            map["LogType"] = self.logType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogType"] as? String {
            self.logType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeLogSourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var logSource: String?

        public var logSourceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logSource != nil {
                map["LogSource"] = self.logSource!
            }
            if self.logSourceName != nil {
                map["LogSourceName"] = self.logSourceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LogSource"] as? String {
                self.logSource = value
            }
            if let value = dict["LogSourceName"] as? String {
                self.logSourceName = value
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeLogSourceResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeLogSourceResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeLogSourceResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeLogSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLogSourceResponseBody?

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
            var model = DescribeLogSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLogTypeRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeLogTypeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var logType: String?

        public var logTypeName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logType != nil {
                map["LogType"] = self.logType!
            }
            if self.logTypeName != nil {
                map["LogTypeName"] = self.logTypeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LogType"] as? String {
                self.logType = value
            }
            if let value = dict["LogTypeName"] as? String {
                self.logTypeName = value
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeLogTypeResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeLogTypeResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeLogTypeResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeLogTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLogTypeResponseBody?

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
            var model = DescribeLogTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOperatorsRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var sceneType: String?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.sceneType != nil {
            map["SceneType"] = self.sceneType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["SceneType"] as? String {
            self.sceneType = value
        }
    }
}

public class DescribeOperatorsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var index: Int32?

        public var operator_: String?

        public var operatorDescCn: String?

        public var operatorDescEn: String?

        public var operatorName: String?

        public var supportDataType: String?

        public var supportTag: [String]?

        public override init() {
            super.init()
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
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.operatorDescCn != nil {
                map["OperatorDescCn"] = self.operatorDescCn!
            }
            if self.operatorDescEn != nil {
                map["OperatorDescEn"] = self.operatorDescEn!
            }
            if self.operatorName != nil {
                map["OperatorName"] = self.operatorName!
            }
            if self.supportDataType != nil {
                map["SupportDataType"] = self.supportDataType!
            }
            if self.supportTag != nil {
                map["SupportTag"] = self.supportTag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Index"] as? Int32 {
                self.index = value
            }
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["OperatorDescCn"] as? String {
                self.operatorDescCn = value
            }
            if let value = dict["OperatorDescEn"] as? String {
                self.operatorDescEn = value
            }
            if let value = dict["OperatorName"] as? String {
                self.operatorName = value
            }
            if let value = dict["SupportDataType"] as? String {
                self.supportDataType = value
            }
            if let value = dict["SupportTag"] as? [String] {
                self.supportTag = value
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeOperatorsResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeOperatorsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeOperatorsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeOperatorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOperatorsResponseBody?

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
            var model = DescribeOperatorsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeProdCountRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeProdCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliyunImportedCount: Int32?

        public var aliyunProdCount: Int32?

        public var hcloudImportedCount: Int32?

        public var hcloudProdCount: Int32?

        public var idcImportedCount: Int32?

        public var idcProdCount: Int32?

        public var qcloudImportedCount: Int32?

        public var qcloudProdCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunImportedCount != nil {
                map["AliyunImportedCount"] = self.aliyunImportedCount!
            }
            if self.aliyunProdCount != nil {
                map["AliyunProdCount"] = self.aliyunProdCount!
            }
            if self.hcloudImportedCount != nil {
                map["HcloudImportedCount"] = self.hcloudImportedCount!
            }
            if self.hcloudProdCount != nil {
                map["HcloudProdCount"] = self.hcloudProdCount!
            }
            if self.idcImportedCount != nil {
                map["IdcImportedCount"] = self.idcImportedCount!
            }
            if self.idcProdCount != nil {
                map["IdcProdCount"] = self.idcProdCount!
            }
            if self.qcloudImportedCount != nil {
                map["QcloudImportedCount"] = self.qcloudImportedCount!
            }
            if self.qcloudProdCount != nil {
                map["QcloudProdCount"] = self.qcloudProdCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliyunImportedCount"] as? Int32 {
                self.aliyunImportedCount = value
            }
            if let value = dict["AliyunProdCount"] as? Int32 {
                self.aliyunProdCount = value
            }
            if let value = dict["HcloudImportedCount"] as? Int32 {
                self.hcloudImportedCount = value
            }
            if let value = dict["HcloudProdCount"] as? Int32 {
                self.hcloudProdCount = value
            }
            if let value = dict["IdcImportedCount"] as? Int32 {
                self.idcImportedCount = value
            }
            if let value = dict["IdcProdCount"] as? Int32 {
                self.idcProdCount = value
            }
            if let value = dict["QcloudImportedCount"] as? Int32 {
                self.qcloudImportedCount = value
            }
            if let value = dict["QcloudProdCount"] as? Int32 {
                self.qcloudProdCount = value
            }
        }
    }
    public var data: DescribeProdCountResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeProdCountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeProdCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProdCountResponseBody?

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
            var model = DescribeProdCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeScopeUsersRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeScopeUsersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliUid: Int64?

        public var cloudCode: String?

        public var domains: [String]?

        public var instanceId: String?

        public var userId: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.cloudCode != nil {
                map["CloudCode"] = self.cloudCode!
            }
            if self.domains != nil {
                map["Domains"] = self.domains!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["CloudCode"] as? String {
                self.cloudCode = value
            }
            if let value = dict["Domains"] as? [String] {
                self.domains = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeScopeUsersResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeScopeUsersResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeScopeUsersResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeScopeUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScopeUsersResponseBody?

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
            var model = DescribeScopeUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceStatusRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeServiceStatusResponseBody : Tea.TeaModel {
    public var data: Bool?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceStatusResponseBody?

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
            var model = DescribeServiceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeStorageRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeStorageResponseBody : Tea.TeaModel {
    public var data: Bool?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeStorageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStorageResponseBody?

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
            var model = DescribeStorageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserBuyStatusRequest : Tea.TeaModel {
    public var regionId: String?

    public var subUserId: Int64?

    public override init() {
        super.init()
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SubUserId"] as? Int64 {
            self.subUserId = value
        }
    }
}

public class DescribeUserBuyStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var canBuy: Bool?

        public var capacity: Int32?

        public var durationDays: Int64?

        public var endTime: Int64?

        public var mainUserId: Int64?

        public var mainUserName: String?

        public var masterUserId: Int64?

        public var masterUserName: String?

        public var rdOrder: Int32?

        public var sasInstanceId: String?

        public var subUserId: Int64?

        public var subUserName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.canBuy != nil {
                map["CanBuy"] = self.canBuy!
            }
            if self.capacity != nil {
                map["Capacity"] = self.capacity!
            }
            if self.durationDays != nil {
                map["DurationDays"] = self.durationDays!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.mainUserId != nil {
                map["MainUserId"] = self.mainUserId!
            }
            if self.mainUserName != nil {
                map["MainUserName"] = self.mainUserName!
            }
            if self.masterUserId != nil {
                map["MasterUserId"] = self.masterUserId!
            }
            if self.masterUserName != nil {
                map["MasterUserName"] = self.masterUserName!
            }
            if self.rdOrder != nil {
                map["RdOrder"] = self.rdOrder!
            }
            if self.sasInstanceId != nil {
                map["SasInstanceId"] = self.sasInstanceId!
            }
            if self.subUserId != nil {
                map["SubUserId"] = self.subUserId!
            }
            if self.subUserName != nil {
                map["SubUserName"] = self.subUserName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CanBuy"] as? Bool {
                self.canBuy = value
            }
            if let value = dict["Capacity"] as? Int32 {
                self.capacity = value
            }
            if let value = dict["DurationDays"] as? Int64 {
                self.durationDays = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["MainUserId"] as? Int64 {
                self.mainUserId = value
            }
            if let value = dict["MainUserName"] as? String {
                self.mainUserName = value
            }
            if let value = dict["MasterUserId"] as? Int64 {
                self.masterUserId = value
            }
            if let value = dict["MasterUserName"] as? String {
                self.masterUserName = value
            }
            if let value = dict["RdOrder"] as? Int32 {
                self.rdOrder = value
            }
            if let value = dict["SasInstanceId"] as? String {
                self.sasInstanceId = value
            }
            if let value = dict["SubUserId"] as? Int64 {
                self.subUserId = value
            }
            if let value = dict["SubUserName"] as? String {
                self.subUserName = value
            }
        }
    }
    public var data: DescribeUserBuyStatusResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeUserBuyStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeUserBuyStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserBuyStatusResponseBody?

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
            var model = DescribeUserBuyStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWafScopeRequest : Tea.TeaModel {
    public var entityId: Int64?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntityId"] as? Int64 {
            self.entityId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeWafScopeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliuid: Int64?

        public var domains: [String]?

        public var instanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliuid != nil {
                map["Aliuid"] = self.aliuid!
            }
            if self.domains != nil {
                map["Domains"] = self.domains!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Aliuid"] as? Int64 {
                self.aliuid = value
            }
            if let value = dict["Domains"] as? [String] {
                self.domains = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeWafScopeResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeWafScopeResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeWafScopeResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeWafScopeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWafScopeResponseBody?

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
            var model = DescribeWafScopeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWhiteRuleListRequest : Tea.TeaModel {
    public var alertName: String?

    public var alertType: String?

    public var currentPage: Int32?

    public var incidentUuid: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertName != nil {
            map["AlertName"] = self.alertName!
        }
        if self.alertType != nil {
            map["AlertType"] = self.alertType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertName"] as? String {
            self.alertName = value
        }
        if let value = dict["AlertType"] as? String {
            self.alertType = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class DescribeWhiteRuleListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentPage"] as? Int32 {
                    self.currentPage = value
                }
                if let value = dict["PageSize"] as? Int32 {
                    self.pageSize = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public class Expression : Tea.TeaModel {
                public class Conditions : Tea.TeaModel {
                    public class Left_ : Tea.TeaModel {
                        public var isVar: Bool?

                        public var modifier: String?

                        public var modifierParam: [String: Any]?

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
                            if self.isVar != nil {
                                map["IsVar"] = self.isVar!
                            }
                            if self.modifier != nil {
                                map["Modifier"] = self.modifier!
                            }
                            if self.modifierParam != nil {
                                map["ModifierParam"] = self.modifierParam!
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["IsVar"] as? Bool {
                                self.isVar = value
                            }
                            if let value = dict["Modifier"] as? String {
                                self.modifier = value
                            }
                            if let value = dict["ModifierParam"] as? [String: Any] {
                                self.modifierParam = value
                            }
                            if let value = dict["Type"] as? String {
                                self.type = value
                            }
                            if let value = dict["Value"] as? String {
                                self.value = value
                            }
                        }
                    }
                    public class Right_ : Tea.TeaModel {
                        public var isVar: Bool?

                        public var modifier: String?

                        public var modifierParam: [String: Any]?

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
                            if self.isVar != nil {
                                map["IsVar"] = self.isVar!
                            }
                            if self.modifier != nil {
                                map["Modifier"] = self.modifier!
                            }
                            if self.modifierParam != nil {
                                map["ModifierParam"] = self.modifierParam!
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["IsVar"] as? Bool {
                                self.isVar = value
                            }
                            if let value = dict["Modifier"] as? String {
                                self.modifier = value
                            }
                            if let value = dict["ModifierParam"] as? [String: Any] {
                                self.modifierParam = value
                            }
                            if let value = dict["Type"] as? String {
                                self.type = value
                            }
                            if let value = dict["Value"] as? String {
                                self.value = value
                            }
                        }
                    }
                    public var isNot: Bool?

                    public var itemId: Int32?

                    public var left_: DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions.Left_?

                    public var operator_: String?

                    public var right_: DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions.Right_?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.left_?.validate()
                        try self.right_?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.isNot != nil {
                            map["IsNot"] = self.isNot!
                        }
                        if self.itemId != nil {
                            map["ItemId"] = self.itemId!
                        }
                        if self.left_ != nil {
                            map["Left"] = self.left_?.toMap()
                        }
                        if self.operator_ != nil {
                            map["Operator"] = self.operator_!
                        }
                        if self.right_ != nil {
                            map["Right"] = self.right_?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["IsNot"] as? Bool {
                            self.isNot = value
                        }
                        if let value = dict["ItemId"] as? Int32 {
                            self.itemId = value
                        }
                        if let value = dict["Left"] as? [String: Any?] {
                            var model = DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions.Left_()
                            model.fromMap(value)
                            self.left_ = model
                        }
                        if let value = dict["Operator"] as? String {
                            self.operator_ = value
                        }
                        if let value = dict["Right"] as? [String: Any?] {
                            var model = DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions.Right_()
                            model.fromMap(value)
                            self.right_ = model
                        }
                    }
                }
                public var conditions: [DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions]?

                public var logic: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.conditions != nil {
                        var tmp : [Any] = []
                        for k in self.conditions! {
                            tmp.append(k.toMap())
                        }
                        map["Conditions"] = tmp
                    }
                    if self.logic != nil {
                        map["Logic"] = self.logic!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Conditions"] as? [Any?] {
                        var tmp : [DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.conditions = tmp
                    }
                    if let value = dict["Logic"] as? String {
                        self.logic = value
                    }
                }
            }
            public var alertName: String?

            public var alertNameId: String?

            public var alertType: String?

            public var alertTypeId: String?

            public var alertUuid: String?

            public var aliuid: Int64?

            public var expression: DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var incidentUuid: String?

            public var status: Int32?

            public var subAliuid: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.expression?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertName != nil {
                    map["AlertName"] = self.alertName!
                }
                if self.alertNameId != nil {
                    map["AlertNameId"] = self.alertNameId!
                }
                if self.alertType != nil {
                    map["AlertType"] = self.alertType!
                }
                if self.alertTypeId != nil {
                    map["AlertTypeId"] = self.alertTypeId!
                }
                if self.alertUuid != nil {
                    map["AlertUuid"] = self.alertUuid!
                }
                if self.aliuid != nil {
                    map["Aliuid"] = self.aliuid!
                }
                if self.expression != nil {
                    map["Expression"] = self.expression?.toMap()
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.subAliuid != nil {
                    map["SubAliuid"] = self.subAliuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertName"] as? String {
                    self.alertName = value
                }
                if let value = dict["AlertNameId"] as? String {
                    self.alertNameId = value
                }
                if let value = dict["AlertType"] as? String {
                    self.alertType = value
                }
                if let value = dict["AlertTypeId"] as? String {
                    self.alertTypeId = value
                }
                if let value = dict["AlertUuid"] as? String {
                    self.alertUuid = value
                }
                if let value = dict["Aliuid"] as? Int64 {
                    self.aliuid = value
                }
                if let value = dict["Expression"] as? [String: Any?] {
                    var model = DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression()
                    model.fromMap(value)
                    self.expression = model
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["IncidentUuid"] as? String {
                    self.incidentUuid = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["SubAliuid"] as? Int64 {
                    self.subAliuid = value
                }
            }
        }
        public var pageInfo: DescribeWhiteRuleListResponseBody.Data.PageInfo?

        public var responseData: [DescribeWhiteRuleListResponseBody.Data.ResponseData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageInfo"] as? [String: Any?] {
                var model = DescribeWhiteRuleListResponseBody.Data.PageInfo()
                model.fromMap(value)
                self.pageInfo = model
            }
            if let value = dict["ResponseData"] as? [Any?] {
                var tmp : [DescribeWhiteRuleListResponseBody.Data.ResponseData] = []
                for v in value {
                    if v != nil {
                        var model = DescribeWhiteRuleListResponseBody.Data.ResponseData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: DescribeWhiteRuleListResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeWhiteRuleListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeWhiteRuleListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWhiteRuleListResponseBody?

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
            var model = DescribeWhiteRuleListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableAccessForCloudSiemRequest : Tea.TeaModel {
    public var autoSubmit: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoSubmit != nil {
            map["AutoSubmit"] = self.autoSubmit!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoSubmit"] as? Int32 {
            self.autoSubmit = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class EnableAccessForCloudSiemResponseBody : Tea.TeaModel {
    public var data: Bool?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnableAccessForCloudSiemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableAccessForCloudSiemResponseBody?

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
            var model = EnableAccessForCloudSiemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableServiceForCloudSiemRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class EnableServiceForCloudSiemResponseBody : Tea.TeaModel {
    public var data: Bool?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnableServiceForCloudSiemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableServiceForCloudSiemResponseBody?

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
            var model = EnableServiceForCloudSiemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCapacityRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class GetCapacityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var existLogStore: Bool?

        public var preservedCapacity: Int64?

        public var usedCapacity: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.existLogStore != nil {
                map["ExistLogStore"] = self.existLogStore!
            }
            if self.preservedCapacity != nil {
                map["PreservedCapacity"] = self.preservedCapacity!
            }
            if self.usedCapacity != nil {
                map["UsedCapacity"] = self.usedCapacity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExistLogStore"] as? Bool {
                self.existLogStore = value
            }
            if let value = dict["PreservedCapacity"] as? Int64 {
                self.preservedCapacity = value
            }
            if let value = dict["UsedCapacity"] as? Double {
                self.usedCapacity = value
            }
        }
    }
    public var data: GetCapacityResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetCapacityResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetCapacityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCapacityResponseBody?

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
            var model = GetCapacityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetStorageRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class GetStorageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var canOperate: Bool?

        public var displayRegion: Bool?

        public var region: String?

        public var ttl: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.canOperate != nil {
                map["CanOperate"] = self.canOperate!
            }
            if self.displayRegion != nil {
                map["DisplayRegion"] = self.displayRegion!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.ttl != nil {
                map["Ttl"] = self.ttl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CanOperate"] as? Bool {
                self.canOperate = value
            }
            if let value = dict["DisplayRegion"] as? Bool {
                self.displayRegion = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["Ttl"] as? Int32 {
                self.ttl = value
            }
        }
    }
    public var data: GetStorageResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetStorageResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetStorageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStorageResponseBody?

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
            var model = GetStorageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAccountAccessIdRequest : Tea.TeaModel {
    public var cloudCode: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class ListAccountAccessIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessId: String?

        public var accessIdMd5: String?

        public var accountId: String?

        public var accountStr: String?

        public var bound: Int32?

        public var cloudCode: String?

        public var subUserId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.accessIdMd5 != nil {
                map["AccessIdMd5"] = self.accessIdMd5!
            }
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountStr != nil {
                map["AccountStr"] = self.accountStr!
            }
            if self.bound != nil {
                map["Bound"] = self.bound!
            }
            if self.cloudCode != nil {
                map["CloudCode"] = self.cloudCode!
            }
            if self.subUserId != nil {
                map["SubUserId"] = self.subUserId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessId"] as? String {
                self.accessId = value
            }
            if let value = dict["AccessIdMd5"] as? String {
                self.accessIdMd5 = value
            }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountStr"] as? String {
                self.accountStr = value
            }
            if let value = dict["Bound"] as? Int32 {
                self.bound = value
            }
            if let value = dict["CloudCode"] as? String {
                self.cloudCode = value
            }
            if let value = dict["SubUserId"] as? Int64 {
                self.subUserId = value
            }
        }
    }
    public var code: Int32?

    public var data: [ListAccountAccessIdResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListAccountAccessIdResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListAccountAccessIdResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListAccountAccessIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccountAccessIdResponseBody?

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
            var model = ListAccountAccessIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAccountsByLogRequest : Tea.TeaModel {
    public var cloudCode: String?

    public var logCodes: [String]?

    public var prodCode: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.logCodes != nil {
            map["LogCodes"] = self.logCodes!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["LogCodes"] as? [String] {
            self.logCodes = value
        }
        if let value = dict["ProdCode"] as? String {
            self.prodCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class ListAccountsByLogResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountId: String?

        public var accountName: String?

        public var imported: Int32?

        public var logCode: String?

        public var mainUserId: Int64?

        public var prodCode: String?

        public var subUserId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.imported != nil {
                map["Imported"] = self.imported!
            }
            if self.logCode != nil {
                map["LogCode"] = self.logCode!
            }
            if self.mainUserId != nil {
                map["MainUserId"] = self.mainUserId!
            }
            if self.prodCode != nil {
                map["ProdCode"] = self.prodCode!
            }
            if self.subUserId != nil {
                map["SubUserId"] = self.subUserId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["Imported"] as? Int32 {
                self.imported = value
            }
            if let value = dict["LogCode"] as? String {
                self.logCode = value
            }
            if let value = dict["MainUserId"] as? Int64 {
                self.mainUserId = value
            }
            if let value = dict["ProdCode"] as? String {
                self.prodCode = value
            }
            if let value = dict["SubUserId"] as? Int64 {
                self.subUserId = value
            }
        }
    }
    public var data: [ListAccountsByLogResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListAccountsByLogResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListAccountsByLogResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAccountsByLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccountsByLogResponseBody?

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
            var model = ListAccountsByLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAllProdsRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class ListAllProdsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ProdList : Tea.TeaModel {
            public var cloudCode: String?

            public var importedLogCount: Int32?

            public var modifyTime: String?

            public var prodCode: String?

            public var totalLogCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cloudCode != nil {
                    map["CloudCode"] = self.cloudCode!
                }
                if self.importedLogCount != nil {
                    map["ImportedLogCount"] = self.importedLogCount!
                }
                if self.modifyTime != nil {
                    map["ModifyTime"] = self.modifyTime!
                }
                if self.prodCode != nil {
                    map["ProdCode"] = self.prodCode!
                }
                if self.totalLogCount != nil {
                    map["TotalLogCount"] = self.totalLogCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CloudCode"] as? String {
                    self.cloudCode = value
                }
                if let value = dict["ImportedLogCount"] as? Int32 {
                    self.importedLogCount = value
                }
                if let value = dict["ModifyTime"] as? String {
                    self.modifyTime = value
                }
                if let value = dict["ProdCode"] as? String {
                    self.prodCode = value
                }
                if let value = dict["TotalLogCount"] as? Int32 {
                    self.totalLogCount = value
                }
            }
        }
        public var currentPage: Int32?

        public var pageSize: Int32?

        public var prodList: [ListAllProdsResponseBody.Data.ProdList]?

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
            if self.prodList != nil {
                var tmp : [Any] = []
                for k in self.prodList! {
                    tmp.append(k.toMap())
                }
                map["ProdList"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["ProdList"] as? [Any?] {
                var tmp : [ListAllProdsResponseBody.Data.ProdList] = []
                for v in value {
                    if v != nil {
                        var model = ListAllProdsResponseBody.Data.ProdList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.prodList = tmp
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var data: ListAllProdsResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListAllProdsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAllProdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAllProdsResponseBody?

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
            var model = ListAllProdsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAutomateResponseConfigsRequest : Tea.TeaModel {
    public var actionType: String?

    public var autoResponseType: String?

    public var currentPage: Int32?

    public var id: Int64?

    public var pageSize: Int32?

    public var playbookUuid: String?

    public var regionId: String?

    public var responseRuleType: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var ruleName: String?

    public var status: Int32?

    public var subUserId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.autoResponseType != nil {
            map["AutoResponseType"] = self.autoResponseType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.responseRuleType != nil {
            map["ResponseRuleType"] = self.responseRuleType!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionType"] as? String {
            self.actionType = value
        }
        if let value = dict["AutoResponseType"] as? String {
            self.autoResponseType = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResponseRuleType"] as? String {
            self.responseRuleType = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["SubUserId"] as? Int64 {
            self.subUserId = value
        }
    }
}

public class ListAutomateResponseConfigsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentPage"] as? Int32 {
                    self.currentPage = value
                }
                if let value = dict["PageSize"] as? Int32 {
                    self.pageSize = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public var actionConfig: String?

            public var actionType: String?

            public var aliuid: Int64?

            public var autoResponseType: String?

            public var dataType: Int32?

            public var executionCondition: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var responseRuleType: String?

            public var ruleName: String?

            public var status: Int32?

            public var subUserId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.actionConfig != nil {
                    map["ActionConfig"] = self.actionConfig!
                }
                if self.actionType != nil {
                    map["ActionType"] = self.actionType!
                }
                if self.aliuid != nil {
                    map["Aliuid"] = self.aliuid!
                }
                if self.autoResponseType != nil {
                    map["AutoResponseType"] = self.autoResponseType!
                }
                if self.dataType != nil {
                    map["DataType"] = self.dataType!
                }
                if self.executionCondition != nil {
                    map["ExecutionCondition"] = self.executionCondition!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.responseRuleType != nil {
                    map["ResponseRuleType"] = self.responseRuleType!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.subUserId != nil {
                    map["SubUserId"] = self.subUserId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActionConfig"] as? String {
                    self.actionConfig = value
                }
                if let value = dict["ActionType"] as? String {
                    self.actionType = value
                }
                if let value = dict["Aliuid"] as? Int64 {
                    self.aliuid = value
                }
                if let value = dict["AutoResponseType"] as? String {
                    self.autoResponseType = value
                }
                if let value = dict["DataType"] as? Int32 {
                    self.dataType = value
                }
                if let value = dict["ExecutionCondition"] as? String {
                    self.executionCondition = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["ResponseRuleType"] as? String {
                    self.responseRuleType = value
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["SubUserId"] as? Int64 {
                    self.subUserId = value
                }
            }
        }
        public var pageInfo: ListAutomateResponseConfigsResponseBody.Data.PageInfo?

        public var responseData: [ListAutomateResponseConfigsResponseBody.Data.ResponseData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageInfo"] as? [String: Any?] {
                var model = ListAutomateResponseConfigsResponseBody.Data.PageInfo()
                model.fromMap(value)
                self.pageInfo = model
            }
            if let value = dict["ResponseData"] as? [Any?] {
                var tmp : [ListAutomateResponseConfigsResponseBody.Data.ResponseData] = []
                for v in value {
                    if v != nil {
                        var model = ListAutomateResponseConfigsResponseBody.Data.ResponseData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListAutomateResponseConfigsResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListAutomateResponseConfigsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListAutomateResponseConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAutomateResponseConfigsResponseBody?

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
            var model = ListAutomateResponseConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListBindAccountRequest : Tea.TeaModel {
    public var cloudCode: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class ListBindAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessId: String?

        public var accountId: String?

        public var accountName: String?

        public var bindId: Int64?

        public var cloudCode: String?

        public var createUser: String?

        public var dataSourceCount: Int64?

        public var modifyTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.bindId != nil {
                map["BindId"] = self.bindId!
            }
            if self.cloudCode != nil {
                map["CloudCode"] = self.cloudCode!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.dataSourceCount != nil {
                map["DataSourceCount"] = self.dataSourceCount!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessId"] as? String {
                self.accessId = value
            }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["BindId"] as? Int64 {
                self.bindId = value
            }
            if let value = dict["CloudCode"] as? String {
                self.cloudCode = value
            }
            if let value = dict["CreateUser"] as? String {
                self.createUser = value
            }
            if let value = dict["DataSourceCount"] as? Int64 {
                self.dataSourceCount = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
        }
    }
    public var data: [ListBindAccountResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListBindAccountResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListBindAccountResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListBindAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBindAccountResponseBody?

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
            var model = ListBindAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListBindDataSourcesRequest : Tea.TeaModel {
    public var accountId: String?

    public var cloudCode: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListBindDataSourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountId: String?

        public var accountName: String?

        public var cloudCode: String?

        public var dataSourceInstanceId: String?

        public var dataSourceName: String?

        public var dataSourceRemark: String?

        public var dataSourceType: String?

        public var logCount: Int32?

        public var taskCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.cloudCode != nil {
                map["CloudCode"] = self.cloudCode!
            }
            if self.dataSourceInstanceId != nil {
                map["DataSourceInstanceId"] = self.dataSourceInstanceId!
            }
            if self.dataSourceName != nil {
                map["DataSourceName"] = self.dataSourceName!
            }
            if self.dataSourceRemark != nil {
                map["DataSourceRemark"] = self.dataSourceRemark!
            }
            if self.dataSourceType != nil {
                map["DataSourceType"] = self.dataSourceType!
            }
            if self.logCount != nil {
                map["LogCount"] = self.logCount!
            }
            if self.taskCount != nil {
                map["TaskCount"] = self.taskCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["CloudCode"] as? String {
                self.cloudCode = value
            }
            if let value = dict["DataSourceInstanceId"] as? String {
                self.dataSourceInstanceId = value
            }
            if let value = dict["DataSourceName"] as? String {
                self.dataSourceName = value
            }
            if let value = dict["DataSourceRemark"] as? String {
                self.dataSourceRemark = value
            }
            if let value = dict["DataSourceType"] as? String {
                self.dataSourceType = value
            }
            if let value = dict["LogCount"] as? Int32 {
                self.logCount = value
            }
            if let value = dict["TaskCount"] as? Int32 {
                self.taskCount = value
            }
        }
    }
    public var data: [ListBindDataSourcesResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListBindDataSourcesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListBindDataSourcesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListBindDataSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBindDataSourcesResponseBody?

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
            var model = ListBindDataSourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCloudSiemCustomizeRulesRequest : Tea.TeaModel {
    public var alertType: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var id: String?

    public var order: String?

    public var orderField: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var ruleName: String?

    public var ruleType: String?

    public var startTime: Int64?

    public var status: Int32?

    public var threatLevel: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertType != nil {
            map["AlertType"] = self.alertType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.threatLevel != nil {
            map["ThreatLevel"] = self.threatLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertType"] as? String {
            self.alertType = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["RuleType"] as? String {
            self.ruleType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["ThreatLevel"] as? [String] {
            self.threatLevel = value
        }
    }
}

public class ListCloudSiemCustomizeRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentPage"] as? Int32 {
                    self.currentPage = value
                }
                if let value = dict["PageSize"] as? Int32 {
                    self.pageSize = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public var alertType: String?

            public var alertTypeMds: String?

            public var aliuid: Int64?

            public var attCk: String?

            public var dataType: Int32?

            public var eventTransferExt: String?

            public var eventTransferSwitch: Int32?

            public var eventTransferType: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var logSource: String?

            public var logSourceMds: String?

            public var logType: String?

            public var logTypeMds: String?

            public var queryCycle: String?

            public var ruleCondition: String?

            public var ruleDesc: String?

            public var ruleGroup: String?

            public var ruleName: String?

            public var ruleThreshold: String?

            public var ruleType: String?

            public var status: Int32?

            public var threatLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertType != nil {
                    map["AlertType"] = self.alertType!
                }
                if self.alertTypeMds != nil {
                    map["AlertTypeMds"] = self.alertTypeMds!
                }
                if self.aliuid != nil {
                    map["Aliuid"] = self.aliuid!
                }
                if self.attCk != nil {
                    map["AttCk"] = self.attCk!
                }
                if self.dataType != nil {
                    map["DataType"] = self.dataType!
                }
                if self.eventTransferExt != nil {
                    map["EventTransferExt"] = self.eventTransferExt!
                }
                if self.eventTransferSwitch != nil {
                    map["EventTransferSwitch"] = self.eventTransferSwitch!
                }
                if self.eventTransferType != nil {
                    map["EventTransferType"] = self.eventTransferType!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.logSource != nil {
                    map["LogSource"] = self.logSource!
                }
                if self.logSourceMds != nil {
                    map["LogSourceMds"] = self.logSourceMds!
                }
                if self.logType != nil {
                    map["LogType"] = self.logType!
                }
                if self.logTypeMds != nil {
                    map["LogTypeMds"] = self.logTypeMds!
                }
                if self.queryCycle != nil {
                    map["QueryCycle"] = self.queryCycle!
                }
                if self.ruleCondition != nil {
                    map["RuleCondition"] = self.ruleCondition!
                }
                if self.ruleDesc != nil {
                    map["RuleDesc"] = self.ruleDesc!
                }
                if self.ruleGroup != nil {
                    map["RuleGroup"] = self.ruleGroup!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.ruleThreshold != nil {
                    map["RuleThreshold"] = self.ruleThreshold!
                }
                if self.ruleType != nil {
                    map["RuleType"] = self.ruleType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.threatLevel != nil {
                    map["ThreatLevel"] = self.threatLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertType"] as? String {
                    self.alertType = value
                }
                if let value = dict["AlertTypeMds"] as? String {
                    self.alertTypeMds = value
                }
                if let value = dict["Aliuid"] as? Int64 {
                    self.aliuid = value
                }
                if let value = dict["AttCk"] as? String {
                    self.attCk = value
                }
                if let value = dict["DataType"] as? Int32 {
                    self.dataType = value
                }
                if let value = dict["EventTransferExt"] as? String {
                    self.eventTransferExt = value
                }
                if let value = dict["EventTransferSwitch"] as? Int32 {
                    self.eventTransferSwitch = value
                }
                if let value = dict["EventTransferType"] as? String {
                    self.eventTransferType = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["LogSource"] as? String {
                    self.logSource = value
                }
                if let value = dict["LogSourceMds"] as? String {
                    self.logSourceMds = value
                }
                if let value = dict["LogType"] as? String {
                    self.logType = value
                }
                if let value = dict["LogTypeMds"] as? String {
                    self.logTypeMds = value
                }
                if let value = dict["QueryCycle"] as? String {
                    self.queryCycle = value
                }
                if let value = dict["RuleCondition"] as? String {
                    self.ruleCondition = value
                }
                if let value = dict["RuleDesc"] as? String {
                    self.ruleDesc = value
                }
                if let value = dict["RuleGroup"] as? String {
                    self.ruleGroup = value
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
                }
                if let value = dict["RuleThreshold"] as? String {
                    self.ruleThreshold = value
                }
                if let value = dict["RuleType"] as? String {
                    self.ruleType = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["ThreatLevel"] as? String {
                    self.threatLevel = value
                }
            }
        }
        public var pageInfo: ListCloudSiemCustomizeRulesResponseBody.Data.PageInfo?

        public var responseData: [ListCloudSiemCustomizeRulesResponseBody.Data.ResponseData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageInfo"] as? [String: Any?] {
                var model = ListCloudSiemCustomizeRulesResponseBody.Data.PageInfo()
                model.fromMap(value)
                self.pageInfo = model
            }
            if let value = dict["ResponseData"] as? [Any?] {
                var tmp : [ListCloudSiemCustomizeRulesResponseBody.Data.ResponseData] = []
                for v in value {
                    if v != nil {
                        var model = ListCloudSiemCustomizeRulesResponseBody.Data.ResponseData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListCloudSiemCustomizeRulesResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListCloudSiemCustomizeRulesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListCloudSiemCustomizeRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCloudSiemCustomizeRulesResponseBody?

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
            var model = ListCloudSiemCustomizeRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCloudSiemPredefinedRulesRequest : Tea.TeaModel {
    public var alertType: String?

    public var attCk: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var eventTransferType: String?

    public var id: String?

    public var logSource: String?

    public var order: String?

    public var orderField: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var ruleName: String?

    public var ruleType: String?

    public var startTime: Int64?

    public var status: Int32?

    public var threatLevel: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertType != nil {
            map["AlertType"] = self.alertType!
        }
        if self.attCk != nil {
            map["AttCk"] = self.attCk!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.eventTransferType != nil {
            map["EventTransferType"] = self.eventTransferType!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.logSource != nil {
            map["LogSource"] = self.logSource!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.threatLevel != nil {
            map["ThreatLevel"] = self.threatLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertType"] as? String {
            self.alertType = value
        }
        if let value = dict["AttCk"] as? String {
            self.attCk = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EventTransferType"] as? String {
            self.eventTransferType = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["LogSource"] as? String {
            self.logSource = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["RuleType"] as? String {
            self.ruleType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["ThreatLevel"] as? [String] {
            self.threatLevel = value
        }
    }
}

public class ListCloudSiemPredefinedRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentPage"] as? Int32 {
                    self.currentPage = value
                }
                if let value = dict["PageSize"] as? Int32 {
                    self.pageSize = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public var alertType: String?

            public var attCk: String?

            public var eventTransferType: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var ruleDescMds: String?

            public var ruleName: String?

            public var ruleNameCn: String?

            public var ruleNameEn: String?

            public var ruleNameMds: String?

            public var source: String?

            public var status: Int32?

            public var threatLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertType != nil {
                    map["AlertType"] = self.alertType!
                }
                if self.attCk != nil {
                    map["AttCk"] = self.attCk!
                }
                if self.eventTransferType != nil {
                    map["EventTransferType"] = self.eventTransferType!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.ruleDescMds != nil {
                    map["RuleDescMds"] = self.ruleDescMds!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.ruleNameCn != nil {
                    map["RuleNameCn"] = self.ruleNameCn!
                }
                if self.ruleNameEn != nil {
                    map["RuleNameEn"] = self.ruleNameEn!
                }
                if self.ruleNameMds != nil {
                    map["RuleNameMds"] = self.ruleNameMds!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.threatLevel != nil {
                    map["ThreatLevel"] = self.threatLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertType"] as? String {
                    self.alertType = value
                }
                if let value = dict["AttCk"] as? String {
                    self.attCk = value
                }
                if let value = dict["EventTransferType"] as? String {
                    self.eventTransferType = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["RuleDescMds"] as? String {
                    self.ruleDescMds = value
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
                }
                if let value = dict["RuleNameCn"] as? String {
                    self.ruleNameCn = value
                }
                if let value = dict["RuleNameEn"] as? String {
                    self.ruleNameEn = value
                }
                if let value = dict["RuleNameMds"] as? String {
                    self.ruleNameMds = value
                }
                if let value = dict["Source"] as? String {
                    self.source = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["ThreatLevel"] as? String {
                    self.threatLevel = value
                }
            }
        }
        public var pageInfo: ListCloudSiemPredefinedRulesResponseBody.Data.PageInfo?

        public var responseData: [ListCloudSiemPredefinedRulesResponseBody.Data.ResponseData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageInfo"] as? [String: Any?] {
                var model = ListCloudSiemPredefinedRulesResponseBody.Data.PageInfo()
                model.fromMap(value)
                self.pageInfo = model
            }
            if let value = dict["ResponseData"] as? [Any?] {
                var tmp : [ListCloudSiemPredefinedRulesResponseBody.Data.ResponseData] = []
                for v in value {
                    if v != nil {
                        var model = ListCloudSiemPredefinedRulesResponseBody.Data.ResponseData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListCloudSiemPredefinedRulesResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListCloudSiemPredefinedRulesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListCloudSiemPredefinedRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCloudSiemPredefinedRulesResponseBody?

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
            var model = ListCloudSiemPredefinedRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCustomizeRuleTestResultRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var detectionRuleId: String?

    public var endTime: Int64?

    public var id: Int64?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var startTime: Int64?

    public var verifyType: String?

    public override init() {
        super.init()
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
        if self.detectionRuleId != nil {
            map["DetectionRuleId"] = self.detectionRuleId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.verifyType != nil {
            map["VerifyType"] = self.verifyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DetectionRuleId"] as? String {
            self.detectionRuleId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["VerifyType"] as? String {
            self.verifyType = value
        }
    }
}

public class ListCustomizeRuleTestResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

            public var totalCount: Int64?

            public var verifiedCount: Int64?

            public override init() {
                super.init()
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
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                if self.verifiedCount != nil {
                    map["VerifiedCount"] = self.verifiedCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentPage"] as? Int32 {
                    self.currentPage = value
                }
                if let value = dict["PageSize"] as? Int32 {
                    self.pageSize = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
                if let value = dict["VerifiedCount"] as? Int64 {
                    self.verifiedCount = value
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public var alertDesc: String?

            public var alertDetail: String?

            public var alertSrcProd: String?

            public var alertSrcProdModule: String?

            public var attCk: String?

            public var eventName: String?

            public var eventType: String?

            public var level: String?

            public var logSource: String?

            public var logTime: String?

            public var logType: String?

            public var mainUserId: String?

            public var onlineStatus: String?

            public var subUserId: String?

            public var uuid: String?

            public var verifyType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertDesc != nil {
                    map["AlertDesc"] = self.alertDesc!
                }
                if self.alertDetail != nil {
                    map["AlertDetail"] = self.alertDetail!
                }
                if self.alertSrcProd != nil {
                    map["AlertSrcProd"] = self.alertSrcProd!
                }
                if self.alertSrcProdModule != nil {
                    map["AlertSrcProdModule"] = self.alertSrcProdModule!
                }
                if self.attCk != nil {
                    map["AttCk"] = self.attCk!
                }
                if self.eventName != nil {
                    map["EventName"] = self.eventName!
                }
                if self.eventType != nil {
                    map["EventType"] = self.eventType!
                }
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.logSource != nil {
                    map["LogSource"] = self.logSource!
                }
                if self.logTime != nil {
                    map["LogTime"] = self.logTime!
                }
                if self.logType != nil {
                    map["LogType"] = self.logType!
                }
                if self.mainUserId != nil {
                    map["MainUserId"] = self.mainUserId!
                }
                if self.onlineStatus != nil {
                    map["OnlineStatus"] = self.onlineStatus!
                }
                if self.subUserId != nil {
                    map["SubUserId"] = self.subUserId!
                }
                if self.uuid != nil {
                    map["Uuid"] = self.uuid!
                }
                if self.verifyType != nil {
                    map["VerifyType"] = self.verifyType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertDesc"] as? String {
                    self.alertDesc = value
                }
                if let value = dict["AlertDetail"] as? String {
                    self.alertDetail = value
                }
                if let value = dict["AlertSrcProd"] as? String {
                    self.alertSrcProd = value
                }
                if let value = dict["AlertSrcProdModule"] as? String {
                    self.alertSrcProdModule = value
                }
                if let value = dict["AttCk"] as? String {
                    self.attCk = value
                }
                if let value = dict["EventName"] as? String {
                    self.eventName = value
                }
                if let value = dict["EventType"] as? String {
                    self.eventType = value
                }
                if let value = dict["Level"] as? String {
                    self.level = value
                }
                if let value = dict["LogSource"] as? String {
                    self.logSource = value
                }
                if let value = dict["LogTime"] as? String {
                    self.logTime = value
                }
                if let value = dict["LogType"] as? String {
                    self.logType = value
                }
                if let value = dict["MainUserId"] as? String {
                    self.mainUserId = value
                }
                if let value = dict["OnlineStatus"] as? String {
                    self.onlineStatus = value
                }
                if let value = dict["SubUserId"] as? String {
                    self.subUserId = value
                }
                if let value = dict["Uuid"] as? String {
                    self.uuid = value
                }
                if let value = dict["VerifyType"] as? String {
                    self.verifyType = value
                }
            }
        }
        public var pageInfo: ListCustomizeRuleTestResultResponseBody.Data.PageInfo?

        public var responseData: [ListCustomizeRuleTestResultResponseBody.Data.ResponseData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageInfo"] as? [String: Any?] {
                var model = ListCustomizeRuleTestResultResponseBody.Data.PageInfo()
                model.fromMap(value)
                self.pageInfo = model
            }
            if let value = dict["ResponseData"] as? [Any?] {
                var tmp : [ListCustomizeRuleTestResultResponseBody.Data.ResponseData] = []
                for v in value {
                    if v != nil {
                        var model = ListCustomizeRuleTestResultResponseBody.Data.ResponseData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListCustomizeRuleTestResultResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListCustomizeRuleTestResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListCustomizeRuleTestResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomizeRuleTestResultResponseBody?

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
            var model = ListCustomizeRuleTestResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataSourceLogsRequest : Tea.TeaModel {
    public var accountId: String?

    public var cloudCode: String?

    public var dataSourceInstanceId: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.dataSourceInstanceId != nil {
            map["DataSourceInstanceId"] = self.dataSourceInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["DataSourceInstanceId"] as? String {
            self.dataSourceInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListDataSourceLogsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DataSourceInstanceLogs : Tea.TeaModel {
            public class LogParams : Tea.TeaModel {
                public var paraCode: String?

                public var paraValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.paraCode != nil {
                        map["ParaCode"] = self.paraCode!
                    }
                    if self.paraValue != nil {
                        map["ParaValue"] = self.paraValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ParaCode"] as? String {
                        self.paraCode = value
                    }
                    if let value = dict["ParaValue"] as? String {
                        self.paraValue = value
                    }
                }
            }
            public var logCode: String?

            public var logInstanceId: String?

            public var logMdsCode: String?

            public var logParams: [ListDataSourceLogsResponseBody.Data.DataSourceInstanceLogs.LogParams]?

            public var taskStatus: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.logCode != nil {
                    map["LogCode"] = self.logCode!
                }
                if self.logInstanceId != nil {
                    map["LogInstanceId"] = self.logInstanceId!
                }
                if self.logMdsCode != nil {
                    map["LogMdsCode"] = self.logMdsCode!
                }
                if self.logParams != nil {
                    var tmp : [Any] = []
                    for k in self.logParams! {
                        tmp.append(k.toMap())
                    }
                    map["LogParams"] = tmp
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LogCode"] as? String {
                    self.logCode = value
                }
                if let value = dict["LogInstanceId"] as? String {
                    self.logInstanceId = value
                }
                if let value = dict["LogMdsCode"] as? String {
                    self.logMdsCode = value
                }
                if let value = dict["LogParams"] as? [Any?] {
                    var tmp : [ListDataSourceLogsResponseBody.Data.DataSourceInstanceLogs.LogParams] = []
                    for v in value {
                        if v != nil {
                            var model = ListDataSourceLogsResponseBody.Data.DataSourceInstanceLogs.LogParams()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.logParams = tmp
                }
                if let value = dict["TaskStatus"] as? Int32 {
                    self.taskStatus = value
                }
            }
        }
        public var accountId: String?

        public var cloudCode: String?

        public var dataSourceInstanceId: String?

        public var dataSourceInstanceLogs: [ListDataSourceLogsResponseBody.Data.DataSourceInstanceLogs]?

        public var dataSourceInstanceName: String?

        public var dataSourceInstanceRemark: String?

        public var subUserId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.cloudCode != nil {
                map["CloudCode"] = self.cloudCode!
            }
            if self.dataSourceInstanceId != nil {
                map["DataSourceInstanceId"] = self.dataSourceInstanceId!
            }
            if self.dataSourceInstanceLogs != nil {
                var tmp : [Any] = []
                for k in self.dataSourceInstanceLogs! {
                    tmp.append(k.toMap())
                }
                map["DataSourceInstanceLogs"] = tmp
            }
            if self.dataSourceInstanceName != nil {
                map["DataSourceInstanceName"] = self.dataSourceInstanceName!
            }
            if self.dataSourceInstanceRemark != nil {
                map["DataSourceInstanceRemark"] = self.dataSourceInstanceRemark!
            }
            if self.subUserId != nil {
                map["SubUserId"] = self.subUserId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["CloudCode"] as? String {
                self.cloudCode = value
            }
            if let value = dict["DataSourceInstanceId"] as? String {
                self.dataSourceInstanceId = value
            }
            if let value = dict["DataSourceInstanceLogs"] as? [Any?] {
                var tmp : [ListDataSourceLogsResponseBody.Data.DataSourceInstanceLogs] = []
                for v in value {
                    if v != nil {
                        var model = ListDataSourceLogsResponseBody.Data.DataSourceInstanceLogs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataSourceInstanceLogs = tmp
            }
            if let value = dict["DataSourceInstanceName"] as? String {
                self.dataSourceInstanceName = value
            }
            if let value = dict["DataSourceInstanceRemark"] as? String {
                self.dataSourceInstanceRemark = value
            }
            if let value = dict["SubUserId"] as? Int64 {
                self.subUserId = value
            }
        }
    }
    public var data: ListDataSourceLogsResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListDataSourceLogsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDataSourceLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourceLogsResponseBody?

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
            var model = ListDataSourceLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataSourceTypesRequest : Tea.TeaModel {
    public var cloudCode: String?

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
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListDataSourceTypesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cloudCode: String?

        public var dataSourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cloudCode != nil {
                map["CloudCode"] = self.cloudCode!
            }
            if self.dataSourceType != nil {
                map["DataSourceType"] = self.dataSourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CloudCode"] as? String {
                self.cloudCode = value
            }
            if let value = dict["DataSourceType"] as? String {
                self.dataSourceType = value
            }
        }
    }
    public var data: [ListDataSourceTypesResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListDataSourceTypesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListDataSourceTypesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDataSourceTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourceTypesResponseBody?

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
            var model = ListDataSourceTypesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDeliveryRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class ListDeliveryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ProductList : Tea.TeaModel {
            public class LogList : Tea.TeaModel {
                public class ExtraParameters : Tea.TeaModel {
                    public var key: String?

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
                        if self.key != nil {
                            map["Key"] = self.key!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Key"] as? String {
                            self.key = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
                        }
                    }
                }
                public var canOperateOrNot: Bool?

                public var extraParameters: [ListDeliveryResponseBody.Data.ProductList.LogList.ExtraParameters]?

                public var logCode: String?

                public var logName: String?

                public var logNameEn: String?

                public var logNameKey: String?

                public var status: Bool?

                public var topic: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.canOperateOrNot != nil {
                        map["CanOperateOrNot"] = self.canOperateOrNot!
                    }
                    if self.extraParameters != nil {
                        var tmp : [Any] = []
                        for k in self.extraParameters! {
                            tmp.append(k.toMap())
                        }
                        map["ExtraParameters"] = tmp
                    }
                    if self.logCode != nil {
                        map["LogCode"] = self.logCode!
                    }
                    if self.logName != nil {
                        map["LogName"] = self.logName!
                    }
                    if self.logNameEn != nil {
                        map["LogNameEn"] = self.logNameEn!
                    }
                    if self.logNameKey != nil {
                        map["LogNameKey"] = self.logNameKey!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.topic != nil {
                        map["Topic"] = self.topic!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CanOperateOrNot"] as? Bool {
                        self.canOperateOrNot = value
                    }
                    if let value = dict["ExtraParameters"] as? [Any?] {
                        var tmp : [ListDeliveryResponseBody.Data.ProductList.LogList.ExtraParameters] = []
                        for v in value {
                            if v != nil {
                                var model = ListDeliveryResponseBody.Data.ProductList.LogList.ExtraParameters()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.extraParameters = tmp
                    }
                    if let value = dict["LogCode"] as? String {
                        self.logCode = value
                    }
                    if let value = dict["LogName"] as? String {
                        self.logName = value
                    }
                    if let value = dict["LogNameEn"] as? String {
                        self.logNameEn = value
                    }
                    if let value = dict["LogNameKey"] as? String {
                        self.logNameKey = value
                    }
                    if let value = dict["Status"] as? Bool {
                        self.status = value
                    }
                    if let value = dict["Topic"] as? String {
                        self.topic = value
                    }
                }
            }
            public var logList: [ListDeliveryResponseBody.Data.ProductList.LogList]?

            public var logMap: [String: [DataProductListLogMapValue]]?

            public var productCode: String?

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
                if self.logList != nil {
                    var tmp : [Any] = []
                    for k in self.logList! {
                        tmp.append(k.toMap())
                    }
                    map["LogList"] = tmp
                }
                if self.logMap != nil {
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.logMap! {
                        var l1 : [Any] = []
                        for k1 in v {
                            l1.append(k1.toMap())
                        }
                        tmp[k] = l1
                    }
                    map["LogMap"] = tmp
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                if self.productName != nil {
                    map["ProductName"] = self.productName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LogList"] as? [Any?] {
                    var tmp : [ListDeliveryResponseBody.Data.ProductList.LogList] = []
                    for v in value {
                        if v != nil {
                            var model = ListDeliveryResponseBody.Data.ProductList.LogList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.logList = tmp
                }
                if let value = dict["LogMap"] as? [String: Any?] {
                    var tmp : [String: [DataProductListLogMapValue]] = [:]
                    for (k, v) in value {
                        var l1 : [DataProductListLogMapValue] = []
                        for v1 in v as! [Any?] {
                            if v1 != nil {
                                var model = DataProductListLogMapValue()
                                if v1 != nil {
                                    model.fromMap(v1 as? [String: Any?])
                                }
                                l1.append(model)
                            }
                        }
                        tmp[k] = l1
                    }
                    self.logMap = tmp
                }
                if let value = dict["ProductCode"] as? String {
                    self.productCode = value
                }
                if let value = dict["ProductName"] as? String {
                    self.productName = value
                }
            }
        }
        public var dashboardUrl: String?

        public var displaySwitchOrNot: Bool?

        public var logStoreName: String?

        public var productList: [ListDeliveryResponseBody.Data.ProductList]?

        public var projectName: String?

        public var searchUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dashboardUrl != nil {
                map["DashboardUrl"] = self.dashboardUrl!
            }
            if self.displaySwitchOrNot != nil {
                map["DisplaySwitchOrNot"] = self.displaySwitchOrNot!
            }
            if self.logStoreName != nil {
                map["LogStoreName"] = self.logStoreName!
            }
            if self.productList != nil {
                var tmp : [Any] = []
                for k in self.productList! {
                    tmp.append(k.toMap())
                }
                map["ProductList"] = tmp
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.searchUrl != nil {
                map["SearchUrl"] = self.searchUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DashboardUrl"] as? String {
                self.dashboardUrl = value
            }
            if let value = dict["DisplaySwitchOrNot"] as? Bool {
                self.displaySwitchOrNot = value
            }
            if let value = dict["LogStoreName"] as? String {
                self.logStoreName = value
            }
            if let value = dict["ProductList"] as? [Any?] {
                var tmp : [ListDeliveryResponseBody.Data.ProductList] = []
                for v in value {
                    if v != nil {
                        var model = ListDeliveryResponseBody.Data.ProductList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.productList = tmp
            }
            if let value = dict["ProjectName"] as? String {
                self.projectName = value
            }
            if let value = dict["SearchUrl"] as? String {
                self.searchUrl = value
            }
        }
    }
    public var data: ListDeliveryResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListDeliveryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDeliveryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeliveryResponseBody?

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
            var model = ListDeliveryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDisposeStrategyRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var effectiveStatus: Int32?

    public var endTime: Int64?

    public var entityIdentity: String?

    public var entityType: String?

    public var incidentUuid: String?

    public var order: String?

    public var orderField: String?

    public var pageSize: Int32?

    public var playbookName: String?

    public var playbookTypes: String?

    public var playbookUuid: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var sophonTaskId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.effectiveStatus != nil {
            map["EffectiveStatus"] = self.effectiveStatus!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.entityIdentity != nil {
            map["EntityIdentity"] = self.entityIdentity!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.playbookName != nil {
            map["PlaybookName"] = self.playbookName!
        }
        if self.playbookTypes != nil {
            map["PlaybookTypes"] = self.playbookTypes!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.sophonTaskId != nil {
            map["SophonTaskId"] = self.sophonTaskId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EffectiveStatus"] as? Int32 {
            self.effectiveStatus = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EntityIdentity"] as? String {
            self.entityIdentity = value
        }
        if let value = dict["EntityType"] as? String {
            self.entityType = value
        }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PlaybookName"] as? String {
            self.playbookName = value
        }
        if let value = dict["PlaybookTypes"] as? String {
            self.playbookTypes = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["SophonTaskId"] as? String {
            self.sophonTaskId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class ListDisposeStrategyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentPage"] as? Int32 {
                    self.currentPage = value
                }
                if let value = dict["PageSize"] as? Int32 {
                    self.pageSize = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public var alertUuid: String?

            public var aliuid: Int64?

            public var effectiveStatus: Int32?

            public var entity: [Any]?

            public var entityId: Int64?

            public var entityType: String?

            public var errorMessage: String?

            public var finishTime: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var incidentName: String?

            public var incidentUuid: String?

            public var playbookName: String?

            public var playbookType: String?

            public var playbookUuid: String?

            public var scope: [Any]?

            public var sophonTaskId: String?

            public var status: Int32?

            public var subAliuid: Int64?

            public var taskParam: String?

            public var taskUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertUuid != nil {
                    map["AlertUuid"] = self.alertUuid!
                }
                if self.aliuid != nil {
                    map["Aliuid"] = self.aliuid!
                }
                if self.effectiveStatus != nil {
                    map["EffectiveStatus"] = self.effectiveStatus!
                }
                if self.entity != nil {
                    map["Entity"] = self.entity!
                }
                if self.entityId != nil {
                    map["EntityId"] = self.entityId!
                }
                if self.entityType != nil {
                    map["EntityType"] = self.entityType!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.incidentName != nil {
                    map["IncidentName"] = self.incidentName!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.playbookName != nil {
                    map["PlaybookName"] = self.playbookName!
                }
                if self.playbookType != nil {
                    map["PlaybookType"] = self.playbookType!
                }
                if self.playbookUuid != nil {
                    map["PlaybookUuid"] = self.playbookUuid!
                }
                if self.scope != nil {
                    map["Scope"] = self.scope!
                }
                if self.sophonTaskId != nil {
                    map["SophonTaskId"] = self.sophonTaskId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.subAliuid != nil {
                    map["SubAliuid"] = self.subAliuid!
                }
                if self.taskParam != nil {
                    map["TaskParam"] = self.taskParam!
                }
                if self.taskUrl != nil {
                    map["TaskUrl"] = self.taskUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertUuid"] as? String {
                    self.alertUuid = value
                }
                if let value = dict["Aliuid"] as? Int64 {
                    self.aliuid = value
                }
                if let value = dict["EffectiveStatus"] as? Int32 {
                    self.effectiveStatus = value
                }
                if let value = dict["Entity"] as? [Any] {
                    self.entity = value
                }
                if let value = dict["EntityId"] as? Int64 {
                    self.entityId = value
                }
                if let value = dict["EntityType"] as? String {
                    self.entityType = value
                }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["FinishTime"] as? String {
                    self.finishTime = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["IncidentName"] as? String {
                    self.incidentName = value
                }
                if let value = dict["IncidentUuid"] as? String {
                    self.incidentUuid = value
                }
                if let value = dict["PlaybookName"] as? String {
                    self.playbookName = value
                }
                if let value = dict["PlaybookType"] as? String {
                    self.playbookType = value
                }
                if let value = dict["PlaybookUuid"] as? String {
                    self.playbookUuid = value
                }
                if let value = dict["Scope"] as? [Any] {
                    self.scope = value
                }
                if let value = dict["SophonTaskId"] as? String {
                    self.sophonTaskId = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["SubAliuid"] as? Int64 {
                    self.subAliuid = value
                }
                if let value = dict["TaskParam"] as? String {
                    self.taskParam = value
                }
                if let value = dict["TaskUrl"] as? String {
                    self.taskUrl = value
                }
            }
        }
        public var pageInfo: ListDisposeStrategyResponseBody.Data.PageInfo?

        public var responseData: [ListDisposeStrategyResponseBody.Data.ResponseData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageInfo"] as? [String: Any?] {
                var model = ListDisposeStrategyResponseBody.Data.PageInfo()
                model.fromMap(value)
                self.pageInfo = model
            }
            if let value = dict["ResponseData"] as? [Any?] {
                var tmp : [ListDisposeStrategyResponseBody.Data.ResponseData] = []
                for v in value {
                    if v != nil {
                        var model = ListDisposeStrategyResponseBody.Data.ResponseData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListDisposeStrategyResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListDisposeStrategyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDisposeStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDisposeStrategyResponseBody?

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
            var model = ListDisposeStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEntitiesRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var entityName: String?

    public var entityType: String?

    public var entityUuid: String?

    public var incidentUuid: String?

    public var isMalwareEntity: String?

    public var malwareType: String?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var tags: String?

    public override init() {
        super.init()
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
        if self.entityName != nil {
            map["EntityName"] = self.entityName!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.entityUuid != nil {
            map["EntityUuid"] = self.entityUuid!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.isMalwareEntity != nil {
            map["IsMalwareEntity"] = self.isMalwareEntity!
        }
        if self.malwareType != nil {
            map["MalwareType"] = self.malwareType!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EntityName"] as? String {
            self.entityName = value
        }
        if let value = dict["EntityType"] as? String {
            self.entityType = value
        }
        if let value = dict["EntityUuid"] as? String {
            self.entityUuid = value
        }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["IsMalwareEntity"] as? String {
            self.isMalwareEntity = value
        }
        if let value = dict["MalwareType"] as? String {
            self.malwareType = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
    }
}

public class ListEntitiesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PageInfo : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentPage"] as? Int32 {
                    self.currentPage = value
                }
                if let value = dict["PageSize"] as? Int32 {
                    self.pageSize = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public var alertNum: Int32?

            public var alertUuid: String?

            public var aliuid: Int64?

            public var cloudCode: String?

            public var entityId: String?

            public var entityInfo: String?

            public var entityName: String?

            public var entityType: String?

            public var entityUuid: String?

            public var eventNum: Int32?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var incidentUuid: String?

            public var isAsset: String?

            public var isMalware: String?

            public var malwareType: String?

            public var subUserId: Int64?

            public var tags: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertNum != nil {
                    map["AlertNum"] = self.alertNum!
                }
                if self.alertUuid != nil {
                    map["AlertUuid"] = self.alertUuid!
                }
                if self.aliuid != nil {
                    map["Aliuid"] = self.aliuid!
                }
                if self.cloudCode != nil {
                    map["CloudCode"] = self.cloudCode!
                }
                if self.entityId != nil {
                    map["EntityId"] = self.entityId!
                }
                if self.entityInfo != nil {
                    map["EntityInfo"] = self.entityInfo!
                }
                if self.entityName != nil {
                    map["EntityName"] = self.entityName!
                }
                if self.entityType != nil {
                    map["EntityType"] = self.entityType!
                }
                if self.entityUuid != nil {
                    map["EntityUuid"] = self.entityUuid!
                }
                if self.eventNum != nil {
                    map["EventNum"] = self.eventNum!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.isAsset != nil {
                    map["IsAsset"] = self.isAsset!
                }
                if self.isMalware != nil {
                    map["IsMalware"] = self.isMalware!
                }
                if self.malwareType != nil {
                    map["MalwareType"] = self.malwareType!
                }
                if self.subUserId != nil {
                    map["SubUserId"] = self.subUserId!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertNum"] as? Int32 {
                    self.alertNum = value
                }
                if let value = dict["AlertUuid"] as? String {
                    self.alertUuid = value
                }
                if let value = dict["Aliuid"] as? Int64 {
                    self.aliuid = value
                }
                if let value = dict["CloudCode"] as? String {
                    self.cloudCode = value
                }
                if let value = dict["EntityId"] as? String {
                    self.entityId = value
                }
                if let value = dict["EntityInfo"] as? String {
                    self.entityInfo = value
                }
                if let value = dict["EntityName"] as? String {
                    self.entityName = value
                }
                if let value = dict["EntityType"] as? String {
                    self.entityType = value
                }
                if let value = dict["EntityUuid"] as? String {
                    self.entityUuid = value
                }
                if let value = dict["EventNum"] as? Int32 {
                    self.eventNum = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["IncidentUuid"] as? String {
                    self.incidentUuid = value
                }
                if let value = dict["IsAsset"] as? String {
                    self.isAsset = value
                }
                if let value = dict["IsMalware"] as? String {
                    self.isMalware = value
                }
                if let value = dict["MalwareType"] as? String {
                    self.malwareType = value
                }
                if let value = dict["SubUserId"] as? Int64 {
                    self.subUserId = value
                }
                if let value = dict["Tags"] as? String {
                    self.tags = value
                }
            }
        }
        public var pageInfo: ListEntitiesResponseBody.Data.PageInfo?

        public var responseData: [ListEntitiesResponseBody.Data.ResponseData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                var tmp : [Any] = []
                for k in self.responseData! {
                    tmp.append(k.toMap())
                }
                map["ResponseData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageInfo"] as? [String: Any?] {
                var model = ListEntitiesResponseBody.Data.PageInfo()
                model.fromMap(value)
                self.pageInfo = model
            }
            if let value = dict["ResponseData"] as? [Any?] {
                var tmp : [ListEntitiesResponseBody.Data.ResponseData] = []
                for v in value {
                    if v != nil {
                        var model = ListEntitiesResponseBody.Data.ResponseData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.responseData = tmp
            }
        }
    }
    public var code: Int32?

    public var data: ListEntitiesResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListEntitiesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListEntitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEntitiesResponseBody?

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
            var model = ListEntitiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListImportedLogsByProdRequest : Tea.TeaModel {
    public var cloudCode: String?

    public var prodCode: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["ProdCode"] as? String {
            self.prodCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class ListImportedLogsByProdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var autoImported: Int32?

        public var cloudCode: String?

        public var imported: Int32?

        public var importedUserCount: Int32?

        public var logCode: String?

        public var logMdsCode: String?

        public var logType: Int32?

        public var modifyTime: String?

        public var prodCode: String?

        public var totalUserCount: Int32?

        public var unImportedUserCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoImported != nil {
                map["AutoImported"] = self.autoImported!
            }
            if self.cloudCode != nil {
                map["CloudCode"] = self.cloudCode!
            }
            if self.imported != nil {
                map["Imported"] = self.imported!
            }
            if self.importedUserCount != nil {
                map["ImportedUserCount"] = self.importedUserCount!
            }
            if self.logCode != nil {
                map["LogCode"] = self.logCode!
            }
            if self.logMdsCode != nil {
                map["LogMdsCode"] = self.logMdsCode!
            }
            if self.logType != nil {
                map["LogType"] = self.logType!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.prodCode != nil {
                map["ProdCode"] = self.prodCode!
            }
            if self.totalUserCount != nil {
                map["TotalUserCount"] = self.totalUserCount!
            }
            if self.unImportedUserCount != nil {
                map["UnImportedUserCount"] = self.unImportedUserCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoImported"] as? Int32 {
                self.autoImported = value
            }
            if let value = dict["CloudCode"] as? String {
                self.cloudCode = value
            }
            if let value = dict["Imported"] as? Int32 {
                self.imported = value
            }
            if let value = dict["ImportedUserCount"] as? Int32 {
                self.importedUserCount = value
            }
            if let value = dict["LogCode"] as? String {
                self.logCode = value
            }
            if let value = dict["LogMdsCode"] as? String {
                self.logMdsCode = value
            }
            if let value = dict["LogType"] as? Int32 {
                self.logType = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["ProdCode"] as? String {
                self.prodCode = value
            }
            if let value = dict["TotalUserCount"] as? Int32 {
                self.totalUserCount = value
            }
            if let value = dict["UnImportedUserCount"] as? Int32 {
                self.unImportedUserCount = value
            }
        }
    }
    public var data: [ListImportedLogsByProdResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListImportedLogsByProdResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListImportedLogsByProdResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListImportedLogsByProdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListImportedLogsByProdResponseBody?

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
            var model = ListImportedLogsByProdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProjectLogStoresRequest : Tea.TeaModel {
    public var regionId: String?

    public var sourceLogCode: String?

    public var sourceProdCode: String?

    public var subUserId: Int64?

    public override init() {
        super.init()
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
        if self.sourceLogCode != nil {
            map["SourceLogCode"] = self.sourceLogCode!
        }
        if self.sourceProdCode != nil {
            map["SourceProdCode"] = self.sourceProdCode!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SourceLogCode"] as? String {
            self.sourceLogCode = value
        }
        if let value = dict["SourceProdCode"] as? String {
            self.sourceProdCode = value
        }
        if let value = dict["SubUserId"] as? Int64 {
            self.subUserId = value
        }
    }
}

public class ListProjectLogStoresResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var endPoint: String?

        public var localName: String?

        public var logStore: String?

        public var mainUserId: Int64?

        public var project: String?

        public var regionId: String?

        public var subUserId: Int64?

        public var subUserName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endPoint != nil {
                map["EndPoint"] = self.endPoint!
            }
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.logStore != nil {
                map["LogStore"] = self.logStore!
            }
            if self.mainUserId != nil {
                map["MainUserId"] = self.mainUserId!
            }
            if self.project != nil {
                map["Project"] = self.project!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.subUserId != nil {
                map["SubUserId"] = self.subUserId!
            }
            if self.subUserName != nil {
                map["SubUserName"] = self.subUserName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndPoint"] as? String {
                self.endPoint = value
            }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["LogStore"] as? String {
                self.logStore = value
            }
            if let value = dict["MainUserId"] as? Int64 {
                self.mainUserId = value
            }
            if let value = dict["Project"] as? String {
                self.project = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SubUserId"] as? Int64 {
                self.subUserId = value
            }
            if let value = dict["SubUserName"] as? String {
                self.subUserName = value
            }
        }
    }
    public var data: [ListProjectLogStoresResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListProjectLogStoresResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListProjectLogStoresResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListProjectLogStoresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectLogStoresResponseBody?

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
            var model = ListProjectLogStoresResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRdUsersRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListRdUsersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var delegatedOrNot: Bool?

        public var joined: Bool?

        public var joinedTime: String?

        public var mainUserId: Int64?

        public var subUserId: Int64?

        public var subUserName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.delegatedOrNot != nil {
                map["DelegatedOrNot"] = self.delegatedOrNot!
            }
            if self.joined != nil {
                map["Joined"] = self.joined!
            }
            if self.joinedTime != nil {
                map["JoinedTime"] = self.joinedTime!
            }
            if self.mainUserId != nil {
                map["MainUserId"] = self.mainUserId!
            }
            if self.subUserId != nil {
                map["SubUserId"] = self.subUserId!
            }
            if self.subUserName != nil {
                map["SubUserName"] = self.subUserName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DelegatedOrNot"] as? Bool {
                self.delegatedOrNot = value
            }
            if let value = dict["Joined"] as? Bool {
                self.joined = value
            }
            if let value = dict["JoinedTime"] as? String {
                self.joinedTime = value
            }
            if let value = dict["MainUserId"] as? Int64 {
                self.mainUserId = value
            }
            if let value = dict["SubUserId"] as? Int64 {
                self.subUserId = value
            }
            if let value = dict["SubUserName"] as? String {
                self.subUserName = value
            }
        }
    }
    public var data: [ListRdUsersResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListRdUsersResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListRdUsersResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListRdUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRdUsersResponseBody?

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
            var model = ListRdUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyBindAccountRequest : Tea.TeaModel {
    public var accessId: String?

    public var accountId: String?

    public var accountName: String?

    public var bindId: Int64?

    public var cloudCode: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessId != nil {
            map["AccessId"] = self.accessId!
        }
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.bindId != nil {
            map["BindId"] = self.bindId!
        }
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessId"] as? String {
            self.accessId = value
        }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["BindId"] as? Int64 {
            self.bindId = value
        }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class ModifyBindAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int32?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
        }
    }
    public var data: ModifyBindAccountResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifyBindAccountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyBindAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBindAccountResponseBody?

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
            var model = ModifyBindAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDataSourceRequest : Tea.TeaModel {
    public var accountId: String?

    public var cloudCode: String?

    public var dataSourceInstanceId: String?

    public var dataSourceInstanceName: String?

    public var dataSourceInstanceParams: String?

    public var dataSourceInstanceRemark: String?

    public var dataSourceType: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.dataSourceInstanceId != nil {
            map["DataSourceInstanceId"] = self.dataSourceInstanceId!
        }
        if self.dataSourceInstanceName != nil {
            map["DataSourceInstanceName"] = self.dataSourceInstanceName!
        }
        if self.dataSourceInstanceParams != nil {
            map["DataSourceInstanceParams"] = self.dataSourceInstanceParams!
        }
        if self.dataSourceInstanceRemark != nil {
            map["DataSourceInstanceRemark"] = self.dataSourceInstanceRemark!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["DataSourceInstanceId"] as? String {
            self.dataSourceInstanceId = value
        }
        if let value = dict["DataSourceInstanceName"] as? String {
            self.dataSourceInstanceName = value
        }
        if let value = dict["DataSourceInstanceParams"] as? String {
            self.dataSourceInstanceParams = value
        }
        if let value = dict["DataSourceInstanceRemark"] as? String {
            self.dataSourceInstanceRemark = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyDataSourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int32?

        public var dataSourceInstanceId: String?

        public override init() {
            super.init()
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
            if self.dataSourceInstanceId != nil {
                map["DataSourceInstanceId"] = self.dataSourceInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["DataSourceInstanceId"] as? String {
                self.dataSourceInstanceId = value
            }
        }
    }
    public var data: ModifyDataSourceResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifyDataSourceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDataSourceResponseBody?

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
            var model = ModifyDataSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDataSourceLogRequest : Tea.TeaModel {
    public var accountId: String?

    public var cloudCode: String?

    public var dataSourceInstanceId: String?

    public var dataSourceInstanceLogs: String?

    public var dataSourceType: String?

    public var logCode: String?

    public var logInstanceId: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.dataSourceInstanceId != nil {
            map["DataSourceInstanceId"] = self.dataSourceInstanceId!
        }
        if self.dataSourceInstanceLogs != nil {
            map["DataSourceInstanceLogs"] = self.dataSourceInstanceLogs!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.logCode != nil {
            map["LogCode"] = self.logCode!
        }
        if self.logInstanceId != nil {
            map["LogInstanceId"] = self.logInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["DataSourceInstanceId"] as? String {
            self.dataSourceInstanceId = value
        }
        if let value = dict["DataSourceInstanceLogs"] as? String {
            self.dataSourceInstanceLogs = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["LogCode"] as? String {
            self.logCode = value
        }
        if let value = dict["LogInstanceId"] as? String {
            self.logInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyDataSourceLogResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int32?

        public var logInstanceId: String?

        public override init() {
            super.init()
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
            if self.logInstanceId != nil {
                map["LogInstanceId"] = self.logInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["LogInstanceId"] as? String {
                self.logInstanceId = value
            }
        }
    }
    public var data: ModifyDataSourceLogResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifyDataSourceLogResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyDataSourceLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDataSourceLogResponseBody?

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
            var model = ModifyDataSourceLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OpenDeliveryRequest : Tea.TeaModel {
    public var logCode: String?

    public var productCode: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logCode != nil {
            map["LogCode"] = self.logCode!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogCode"] as? String {
            self.logCode = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class OpenDeliveryResponseBody : Tea.TeaModel {
    public var data: Bool?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class OpenDeliveryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenDeliveryResponseBody?

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
            var model = OpenDeliveryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PostAutomateResponseConfigRequest : Tea.TeaModel {
    public var actionConfig: String?

    public var actionType: String?

    public var autoResponseType: String?

    public var executionCondition: String?

    public var id: Int64?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var ruleName: String?

    public var subUserId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionConfig != nil {
            map["ActionConfig"] = self.actionConfig!
        }
        if self.actionType != nil {
            map["ActionType"] = self.actionType!
        }
        if self.autoResponseType != nil {
            map["AutoResponseType"] = self.autoResponseType!
        }
        if self.executionCondition != nil {
            map["ExecutionCondition"] = self.executionCondition!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionConfig"] as? String {
            self.actionConfig = value
        }
        if let value = dict["ActionType"] as? String {
            self.actionType = value
        }
        if let value = dict["AutoResponseType"] as? String {
            self.autoResponseType = value
        }
        if let value = dict["ExecutionCondition"] as? String {
            self.executionCondition = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["SubUserId"] as? Int64 {
            self.subUserId = value
        }
    }
}

public class PostAutomateResponseConfigResponseBody : Tea.TeaModel {
    public var code: Int32?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PostAutomateResponseConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostAutomateResponseConfigResponseBody?

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
            var model = PostAutomateResponseConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PostCustomizeRuleRequest : Tea.TeaModel {
    public var alertType: String?

    public var alertTypeMds: String?

    public var attCk: String?

    public var eventTransferExt: String?

    public var eventTransferSwitch: Int32?

    public var eventTransferType: String?

    public var id: Int64?

    public var logSource: String?

    public var logSourceMds: String?

    public var logType: String?

    public var logTypeMds: String?

    public var queryCycle: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var ruleCondition: String?

    public var ruleDesc: String?

    public var ruleGroup: String?

    public var ruleName: String?

    public var ruleThreshold: String?

    public var threatLevel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertType != nil {
            map["AlertType"] = self.alertType!
        }
        if self.alertTypeMds != nil {
            map["AlertTypeMds"] = self.alertTypeMds!
        }
        if self.attCk != nil {
            map["AttCk"] = self.attCk!
        }
        if self.eventTransferExt != nil {
            map["EventTransferExt"] = self.eventTransferExt!
        }
        if self.eventTransferSwitch != nil {
            map["EventTransferSwitch"] = self.eventTransferSwitch!
        }
        if self.eventTransferType != nil {
            map["EventTransferType"] = self.eventTransferType!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.logSource != nil {
            map["LogSource"] = self.logSource!
        }
        if self.logSourceMds != nil {
            map["LogSourceMds"] = self.logSourceMds!
        }
        if self.logType != nil {
            map["LogType"] = self.logType!
        }
        if self.logTypeMds != nil {
            map["LogTypeMds"] = self.logTypeMds!
        }
        if self.queryCycle != nil {
            map["QueryCycle"] = self.queryCycle!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.ruleCondition != nil {
            map["RuleCondition"] = self.ruleCondition!
        }
        if self.ruleDesc != nil {
            map["RuleDesc"] = self.ruleDesc!
        }
        if self.ruleGroup != nil {
            map["RuleGroup"] = self.ruleGroup!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleThreshold != nil {
            map["RuleThreshold"] = self.ruleThreshold!
        }
        if self.threatLevel != nil {
            map["ThreatLevel"] = self.threatLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertType"] as? String {
            self.alertType = value
        }
        if let value = dict["AlertTypeMds"] as? String {
            self.alertTypeMds = value
        }
        if let value = dict["AttCk"] as? String {
            self.attCk = value
        }
        if let value = dict["EventTransferExt"] as? String {
            self.eventTransferExt = value
        }
        if let value = dict["EventTransferSwitch"] as? Int32 {
            self.eventTransferSwitch = value
        }
        if let value = dict["EventTransferType"] as? String {
            self.eventTransferType = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["LogSource"] as? String {
            self.logSource = value
        }
        if let value = dict["LogSourceMds"] as? String {
            self.logSourceMds = value
        }
        if let value = dict["LogType"] as? String {
            self.logType = value
        }
        if let value = dict["LogTypeMds"] as? String {
            self.logTypeMds = value
        }
        if let value = dict["QueryCycle"] as? String {
            self.queryCycle = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["RuleCondition"] as? String {
            self.ruleCondition = value
        }
        if let value = dict["RuleDesc"] as? String {
            self.ruleDesc = value
        }
        if let value = dict["RuleGroup"] as? String {
            self.ruleGroup = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["RuleThreshold"] as? String {
            self.ruleThreshold = value
        }
        if let value = dict["ThreatLevel"] as? String {
            self.threatLevel = value
        }
    }
}

public class PostCustomizeRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alertType: String?

        public var alertTypeMds: String?

        public var aliuid: Int64?

        public var attCk: String?

        public var dataType: Int32?

        public var eventTransferExt: String?

        public var eventTransferSwitch: Int32?

        public var eventTransferType: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var logSource: String?

        public var logSourceMds: String?

        public var logType: String?

        public var logTypeMds: String?

        public var queryCycle: String?

        public var ruleCondition: String?

        public var ruleDesc: String?

        public var ruleGroup: String?

        public var ruleName: String?

        public var ruleThreshold: String?

        public var ruleType: String?

        public var status: Int32?

        public var threatLevel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertType != nil {
                map["AlertType"] = self.alertType!
            }
            if self.alertTypeMds != nil {
                map["AlertTypeMds"] = self.alertTypeMds!
            }
            if self.aliuid != nil {
                map["Aliuid"] = self.aliuid!
            }
            if self.attCk != nil {
                map["AttCk"] = self.attCk!
            }
            if self.dataType != nil {
                map["DataType"] = self.dataType!
            }
            if self.eventTransferExt != nil {
                map["EventTransferExt"] = self.eventTransferExt!
            }
            if self.eventTransferSwitch != nil {
                map["EventTransferSwitch"] = self.eventTransferSwitch!
            }
            if self.eventTransferType != nil {
                map["EventTransferType"] = self.eventTransferType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.logSource != nil {
                map["LogSource"] = self.logSource!
            }
            if self.logSourceMds != nil {
                map["LogSourceMds"] = self.logSourceMds!
            }
            if self.logType != nil {
                map["LogType"] = self.logType!
            }
            if self.logTypeMds != nil {
                map["LogTypeMds"] = self.logTypeMds!
            }
            if self.queryCycle != nil {
                map["QueryCycle"] = self.queryCycle!
            }
            if self.ruleCondition != nil {
                map["RuleCondition"] = self.ruleCondition!
            }
            if self.ruleDesc != nil {
                map["RuleDesc"] = self.ruleDesc!
            }
            if self.ruleGroup != nil {
                map["RuleGroup"] = self.ruleGroup!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.ruleThreshold != nil {
                map["RuleThreshold"] = self.ruleThreshold!
            }
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.threatLevel != nil {
                map["ThreatLevel"] = self.threatLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertType"] as? String {
                self.alertType = value
            }
            if let value = dict["AlertTypeMds"] as? String {
                self.alertTypeMds = value
            }
            if let value = dict["Aliuid"] as? Int64 {
                self.aliuid = value
            }
            if let value = dict["AttCk"] as? String {
                self.attCk = value
            }
            if let value = dict["DataType"] as? Int32 {
                self.dataType = value
            }
            if let value = dict["EventTransferExt"] as? String {
                self.eventTransferExt = value
            }
            if let value = dict["EventTransferSwitch"] as? Int32 {
                self.eventTransferSwitch = value
            }
            if let value = dict["EventTransferType"] as? String {
                self.eventTransferType = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["LogSource"] as? String {
                self.logSource = value
            }
            if let value = dict["LogSourceMds"] as? String {
                self.logSourceMds = value
            }
            if let value = dict["LogType"] as? String {
                self.logType = value
            }
            if let value = dict["LogTypeMds"] as? String {
                self.logTypeMds = value
            }
            if let value = dict["QueryCycle"] as? String {
                self.queryCycle = value
            }
            if let value = dict["RuleCondition"] as? String {
                self.ruleCondition = value
            }
            if let value = dict["RuleDesc"] as? String {
                self.ruleDesc = value
            }
            if let value = dict["RuleGroup"] as? String {
                self.ruleGroup = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["RuleThreshold"] as? String {
                self.ruleThreshold = value
            }
            if let value = dict["RuleType"] as? String {
                self.ruleType = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["ThreatLevel"] as? String {
                self.threatLevel = value
            }
        }
    }
    public var code: Int32?

    public var data: PostCustomizeRuleResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = PostCustomizeRuleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PostCustomizeRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostCustomizeRuleResponseBody?

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
            var model = PostCustomizeRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PostCustomizeRuleTestRequest : Tea.TeaModel {
    public var id: Int64?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var simulatedData: String?

    public var testType: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.simulatedData != nil {
            map["SimulatedData"] = self.simulatedData!
        }
        if self.testType != nil {
            map["TestType"] = self.testType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["SimulatedData"] as? String {
            self.simulatedData = value
        }
        if let value = dict["TestType"] as? String {
            self.testType = value
        }
    }
}

public class PostCustomizeRuleTestResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Any?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PostCustomizeRuleTestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostCustomizeRuleTestResponseBody?

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
            var model = PostCustomizeRuleTestResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PostEventDisposeAndWhiteruleListRequest : Tea.TeaModel {
    public var eventDispose: String?

    public var incidentUuid: String?

    public var receiverInfo: String?

    public var regionId: String?

    public var remark: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var status: Int32?

    public var threatLevel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventDispose != nil {
            map["EventDispose"] = self.eventDispose!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.receiverInfo != nil {
            map["ReceiverInfo"] = self.receiverInfo!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.threatLevel != nil {
            map["ThreatLevel"] = self.threatLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventDispose"] as? String {
            self.eventDispose = value
        }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["ReceiverInfo"] as? String {
            self.receiverInfo = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["ThreatLevel"] as? String {
            self.threatLevel = value
        }
    }
}

public class PostEventDisposeAndWhiteruleListResponseBody : Tea.TeaModel {
    public var code: Int32?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PostEventDisposeAndWhiteruleListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostEventDisposeAndWhiteruleListResponseBody?

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
            var model = PostEventDisposeAndWhiteruleListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PostEventWhiteruleListRequest : Tea.TeaModel {
    public var incidentUuid: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var whiteruleList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.whiteruleList != nil {
            map["WhiteruleList"] = self.whiteruleList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["WhiteruleList"] as? String {
            self.whiteruleList = value
        }
    }
}

public class PostEventWhiteruleListResponseBody : Tea.TeaModel {
    public var code: Int32?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PostEventWhiteruleListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostEventWhiteruleListResponseBody?

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
            var model = PostEventWhiteruleListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PostFinishCustomizeRuleTestRequest : Tea.TeaModel {
    public var id: Int64?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class PostFinishCustomizeRuleTestResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Any?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PostFinishCustomizeRuleTestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostFinishCustomizeRuleTestResponseBody?

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
            var model = PostFinishCustomizeRuleTestResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PostRuleStatusChangeRequest : Tea.TeaModel {
    public var ids: String?

    public var inUse: Bool?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var ruleType: String?

    public override init() {
        super.init()
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
        if self.inUse != nil {
            map["InUse"] = self.inUse!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ids"] as? String {
            self.ids = value
        }
        if let value = dict["InUse"] as? Bool {
            self.inUse = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["RuleType"] as? String {
            self.ruleType = value
        }
    }
}

public class PostRuleStatusChangeResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Any?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PostRuleStatusChangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostRuleStatusChangeResponseBody?

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
            var model = PostRuleStatusChangeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestoreCapacityRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class RestoreCapacityResponseBody : Tea.TeaModel {
    public var data: Bool?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RestoreCapacityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestoreCapacityResponseBody?

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
            var model = RestoreCapacityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetStorageRequest : Tea.TeaModel {
    public var region: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var ttl: Int32?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["Ttl"] as? Int32 {
            self.ttl = value
        }
    }
}

public class SetStorageResponseBody : Tea.TeaModel {
    public var data: Bool?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SetStorageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetStorageResponseBody?

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
            var model = SetStorageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitImportLogTasksRequest : Tea.TeaModel {
    public var accounts: String?

    public var autoImported: Int32?

    public var cloudCode: String?

    public var logCodes: String?

    public var prodCode: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accounts != nil {
            map["Accounts"] = self.accounts!
        }
        if self.autoImported != nil {
            map["AutoImported"] = self.autoImported!
        }
        if self.cloudCode != nil {
            map["CloudCode"] = self.cloudCode!
        }
        if self.logCodes != nil {
            map["LogCodes"] = self.logCodes!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accounts"] as? String {
            self.accounts = value
        }
        if let value = dict["AutoImported"] as? Int32 {
            self.autoImported = value
        }
        if let value = dict["CloudCode"] as? String {
            self.cloudCode = value
        }
        if let value = dict["LogCodes"] as? String {
            self.logCodes = value
        }
        if let value = dict["ProdCode"] as? String {
            self.prodCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class SubmitImportLogTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int32?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
        }
    }
    public var data: SubmitImportLogTasksResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SubmitImportLogTasksResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SubmitImportLogTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitImportLogTasksResponseBody?

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
            var model = SubmitImportLogTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAutomateResponseConfigStatusRequest : Tea.TeaModel {
    public var ids: String?

    public var inUse: Bool?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public override init() {
        super.init()
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
        if self.inUse != nil {
            map["InUse"] = self.inUse!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ids"] as? String {
            self.ids = value
        }
        if let value = dict["InUse"] as? Bool {
            self.inUse = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
    }
}

public class UpdateAutomateResponseConfigStatusResponseBody : Tea.TeaModel {
    public var code: Int32?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateAutomateResponseConfigStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAutomateResponseConfigStatusResponseBody?

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
            var model = UpdateAutomateResponseConfigStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateWhiteRuleListRequest : Tea.TeaModel {
    public var expression: String?

    public var incidentUuid: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var whiteRuleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expression != nil {
            map["Expression"] = self.expression!
        }
        if self.incidentUuid != nil {
            map["IncidentUuid"] = self.incidentUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.roleType != nil {
            map["RoleType"] = self.roleType!
        }
        if self.whiteRuleId != nil {
            map["WhiteRuleId"] = self.whiteRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Expression"] as? String {
            self.expression = value
        }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["RoleType"] as? Int32 {
            self.roleType = value
        }
        if let value = dict["WhiteRuleId"] as? Int64 {
            self.whiteRuleId = value
        }
    }
}

public class UpdateWhiteRuleListResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Any?

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
        if self.data != nil {
            map["Data"] = self.data!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateWhiteRuleListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWhiteRuleListResponseBody?

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
            var model = UpdateWhiteRuleListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
