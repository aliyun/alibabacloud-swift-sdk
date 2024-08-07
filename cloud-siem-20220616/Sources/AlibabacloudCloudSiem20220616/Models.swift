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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogCode") {
            self.logCode = dict["LogCode"] as! String
        }
        if dict.keys.contains("LogName") {
            self.logName = dict["LogName"] as! String
        }
        if dict.keys.contains("LogNameEn") {
            self.logNameEn = dict["LogNameEn"] as! String
        }
        if dict.keys.contains("LogNameKey") {
            self.logNameKey = dict["LogNameKey"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Bool
        }
        if dict.keys.contains("CanOperateOrNot") {
            self.canOperateOrNot = dict["CanOperateOrNot"] as! Bool
        }
        if dict.keys.contains("Topic") {
            self.topic = dict["Topic"] as! String
        }
        if dict.keys.contains("ExtraParameters") {
            var tmp : [DataProductListLogMapValue.ExtraParameters] = []
            for v in dict["ExtraParameters"] as! [Any] {
                var model = DataProductListLogMapValue.ExtraParameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("DataSourceInstanceName") {
            self.dataSourceInstanceName = dict["DataSourceInstanceName"] as! String
        }
        if dict.keys.contains("DataSourceInstanceParams") {
            self.dataSourceInstanceParams = dict["DataSourceInstanceParams"] as! String
        }
        if dict.keys.contains("DataSourceInstanceRemark") {
            self.dataSourceInstanceRemark = dict["DataSourceInstanceRemark"] as! String
        }
        if dict.keys.contains("DataSourceType") {
            self.dataSourceType = dict["DataSourceType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("DataSourceInstanceId") {
                self.dataSourceInstanceId = dict["DataSourceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = AddDataSourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("DataSourceInstanceId") {
            self.dataSourceInstanceId = dict["DataSourceInstanceId"] as! String
        }
        if dict.keys.contains("DataSourceInstanceLogs") {
            self.dataSourceInstanceLogs = dict["DataSourceInstanceLogs"] as! String
        }
        if dict.keys.contains("LogCode") {
            self.logCode = dict["LogCode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("LogInstanceId") {
                self.logInstanceId = dict["LogInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = AddDataSourceLogResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddDataSourceLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddUserRequest : Tea.TeaModel {
    public var addedUserId: Int64?

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
        if self.addedUserId != nil {
            map["AddedUserId"] = self.addedUserId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddedUserId") {
            self.addedUserId = dict["AddedUserId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AddUserResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserResponseBody?

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
            var model = AddUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Deleted") {
            self.deleted = dict["Deleted"] as! Int32
        }
        if dict.keys.contains("DisPlayLine") {
            self.disPlayLine = dict["DisPlayLine"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceLogCode") {
            self.sourceLogCode = dict["SourceLogCode"] as! String
        }
        if dict.keys.contains("SourceLogInfo") {
            self.sourceLogInfo = dict["SourceLogInfo"] as! String
        }
        if dict.keys.contains("SourceProdCode") {
            self.sourceProdCode = dict["SourceProdCode"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DiplayLine") {
                self.diplayLine = dict["DiplayLine"] as! String
            }
            if dict.keys.contains("Displayed") {
                self.displayed = dict["Displayed"] as! Bool
            }
            if dict.keys.contains("Imported") {
                self.imported = dict["Imported"] as! Bool
            }
            if dict.keys.contains("MainUserId") {
                self.mainUserId = dict["MainUserId"] as! Int64
            }
            if dict.keys.contains("SourceLogCode") {
                self.sourceLogCode = dict["SourceLogCode"] as! String
            }
            if dict.keys.contains("SourceProdCode") {
                self.sourceProdCode = dict["SourceProdCode"] as! String
            }
            if dict.keys.contains("SubUserId") {
                self.subUserId = dict["SubUserId"] as! Int64
            }
            if dict.keys.contains("SubUserName") {
                self.subUserName = dict["SubUserName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = AddUserSourceLogConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddUserSourceLogConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchJobSubmitRequest : Tea.TeaModel {
    public var jsonConfig: String?

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
        if self.jsonConfig != nil {
            map["JsonConfig"] = self.jsonConfig!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonConfig") {
            self.jsonConfig = dict["JsonConfig"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class BatchJobSubmitResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConfigList : Tea.TeaModel {
            public class ProductList : Tea.TeaModel {
                public class LogList : Tea.TeaModel {
                    public var errorCode: String?

                    public var logCode: String?

                    public var logStoreNamePattern: String?

                    public var productCode: String?

                    public var projectNamePattern: String?

                    public var regionCode: String?

                    public override init() {
                        super.init()
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
                        if self.logCode != nil {
                            map["LogCode"] = self.logCode!
                        }
                        if self.logStoreNamePattern != nil {
                            map["LogStoreNamePattern"] = self.logStoreNamePattern!
                        }
                        if self.productCode != nil {
                            map["ProductCode"] = self.productCode!
                        }
                        if self.projectNamePattern != nil {
                            map["ProjectNamePattern"] = self.projectNamePattern!
                        }
                        if self.regionCode != nil {
                            map["RegionCode"] = self.regionCode!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ErrorCode") {
                            self.errorCode = dict["ErrorCode"] as! String
                        }
                        if dict.keys.contains("LogCode") {
                            self.logCode = dict["LogCode"] as! String
                        }
                        if dict.keys.contains("LogStoreNamePattern") {
                            self.logStoreNamePattern = dict["LogStoreNamePattern"] as! String
                        }
                        if dict.keys.contains("ProductCode") {
                            self.productCode = dict["ProductCode"] as! String
                        }
                        if dict.keys.contains("ProjectNamePattern") {
                            self.projectNamePattern = dict["ProjectNamePattern"] as! String
                        }
                        if dict.keys.contains("RegionCode") {
                            self.regionCode = dict["RegionCode"] as! String
                        }
                    }
                }
                public var logList: [BatchJobSubmitResponseBody.Data.ConfigList.ProductList.LogList]?

                public var productCode: String?

                public override init() {
                    super.init()
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
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LogList") {
                        var tmp : [BatchJobSubmitResponseBody.Data.ConfigList.ProductList.LogList] = []
                        for v in dict["LogList"] as! [Any] {
                            var model = BatchJobSubmitResponseBody.Data.ConfigList.ProductList.LogList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.logList = tmp
                    }
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! String
                    }
                }
            }
            public var productList: [BatchJobSubmitResponseBody.Data.ConfigList.ProductList]?

            public var userId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.productList != nil {
                    var tmp : [Any] = []
                    for k in self.productList! {
                        tmp.append(k.toMap())
                    }
                    map["ProductList"] = tmp
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ProductList") {
                    var tmp : [BatchJobSubmitResponseBody.Data.ConfigList.ProductList] = []
                    for v in dict["ProductList"] as! [Any] {
                        var model = BatchJobSubmitResponseBody.Data.ConfigList.ProductList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.productList = tmp
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! Int64
                }
            }
        }
        public var configId: String?

        public var configList: [BatchJobSubmitResponseBody.Data.ConfigList]?

        public var submitId: String?

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
            if self.configId != nil {
                map["ConfigId"] = self.configId!
            }
            if self.configList != nil {
                var tmp : [Any] = []
                for k in self.configList! {
                    tmp.append(k.toMap())
                }
                map["ConfigList"] = tmp
            }
            if self.submitId != nil {
                map["SubmitId"] = self.submitId!
            }
            if self.taskCount != nil {
                map["TaskCount"] = self.taskCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigId") {
                self.configId = dict["ConfigId"] as! String
            }
            if dict.keys.contains("ConfigList") {
                var tmp : [BatchJobSubmitResponseBody.Data.ConfigList] = []
                for v in dict["ConfigList"] as! [Any] {
                    var model = BatchJobSubmitResponseBody.Data.ConfigList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.configList = tmp
            }
            if dict.keys.contains("SubmitId") {
                self.submitId = dict["SubmitId"] as! String
            }
            if dict.keys.contains("TaskCount") {
                self.taskCount = dict["TaskCount"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: BatchJobSubmitResponseBody.Data?

    public var errCode: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = BatchJobSubmitResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
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

public class BatchJobSubmitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchJobSubmitResponseBody?

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
            var model = BatchJobSubmitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessId") {
            self.accessId = dict["AccessId"] as! String
        }
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = BindAccountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BindAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogCode") {
            self.logCode = dict["LogCode"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CloseDeliveryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAutomateResponseConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessId") {
            self.accessId = dict["AccessId"] as! String
        }
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("BindId") {
            self.bindId = dict["BindId"] as! Int64
        }
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DeleteBindAccountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteBindAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteCustomizeRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("DataSourceInstanceId") {
            self.dataSourceInstanceId = dict["DataSourceInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DeleteDataSourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("DataSourceInstanceId") {
            self.dataSourceInstanceId = dict["DataSourceInstanceId"] as! String
        }
        if dict.keys.contains("LogInstanceId") {
            self.logInstanceId = dict["LogInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("LogInstanceId") {
                self.logInstanceId = dict["LogInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DeleteDataSourceLogResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDataSourceLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserRequest : Tea.TeaModel {
    public var addedUserId: Int64?

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
        if self.addedUserId != nil {
            map["AddedUserId"] = self.addedUserId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddedUserId") {
            self.addedUserId = dict["AddedUserId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteUserResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserResponseBody?

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
            var model = DeleteUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Any
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteWhiteRuleListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Function") {
                self.function = dict["Function"] as! String
            }
            if dict.keys.contains("FunctionName") {
                self.functionName = dict["FunctionName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeAggregateFunctionResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAggregateFunctionResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAggregateFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertName") {
                self.alertName = dict["AlertName"] as! String
            }
            if dict.keys.contains("AlertNameId") {
                self.alertNameId = dict["AlertNameId"] as! String
            }
            if dict.keys.contains("AlertTile") {
                self.alertTile = dict["AlertTile"] as! String
            }
            if dict.keys.contains("AlertTileId") {
                self.alertTileId = dict["AlertTileId"] as! String
            }
            if dict.keys.contains("AlertType") {
                self.alertType = dict["AlertType"] as! String
            }
            if dict.keys.contains("AlertTypeId") {
                self.alertTypeId = dict["AlertTypeId"] as! String
            }
            if dict.keys.contains("Targets") {
                var tmp : [DescribeAlertSceneResponseBody.Data.Targets] = []
                for v in dict["Targets"] as! [Any] {
                    var model = DescribeAlertSceneResponseBody.Data.Targets()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeAlertSceneResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAlertSceneResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAlertSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncidentUuid") {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertName") {
                self.alertName = dict["AlertName"] as! String
            }
            if dict.keys.contains("AlertNameId") {
                self.alertNameId = dict["AlertNameId"] as! String
            }
            if dict.keys.contains("AlertTile") {
                self.alertTile = dict["AlertTile"] as! String
            }
            if dict.keys.contains("AlertTileId") {
                self.alertTileId = dict["AlertTileId"] as! String
            }
            if dict.keys.contains("AlertType") {
                self.alertType = dict["AlertType"] as! String
            }
            if dict.keys.contains("AlertTypeId") {
                self.alertTypeId = dict["AlertTypeId"] as! String
            }
            if dict.keys.contains("Targets") {
                var tmp : [DescribeAlertSceneByEventResponseBody.Data.Targets] = []
                for v in dict["Targets"] as! [Any] {
                    var model = DescribeAlertSceneByEventResponseBody.Data.Targets()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeAlertSceneByEventResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAlertSceneByEventResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAlertSceneByEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Level") {
            self.level = dict["Level"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceName") {
                self.sourceName = dict["SourceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeAlertSourceResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAlertSourceResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAlertSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncidentUuid") {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceName") {
                self.sourceName = dict["SourceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeAlertSourceWithEventResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAlertSourceWithEventResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAlertSourceWithEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("RuleType") {
            self.ruleType = dict["RuleType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertType") {
                self.alertType = dict["AlertType"] as! String
            }
            if dict.keys.contains("AlertTypeMds") {
                self.alertTypeMds = dict["AlertTypeMds"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeAlertTypeResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAlertTypeResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAlertTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAlertsRequest : Tea.TeaModel {
    public var alertTitle: String?

    public var alertUuid: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var isDefend: String?

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
        if self.alertTitle != nil {
            map["AlertTitle"] = self.alertTitle!
        }
        if self.alertUuid != nil {
            map["AlertUuid"] = self.alertUuid!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertTitle") {
            self.alertTitle = dict["AlertTitle"] as! String
        }
        if dict.keys.contains("AlertUuid") {
            self.alertUuid = dict["AlertUuid"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("IsDefend") {
            self.isDefend = dict["IsDefend"] as! String
        }
        if dict.keys.contains("Level") {
            self.level = dict["Level"] as! [String]
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("KeyName") {
                        self.keyName = dict["KeyName"] as! String
                    }
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! String
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

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertDesc") {
                    self.alertDesc = dict["AlertDesc"] as! String
                }
                if dict.keys.contains("AlertDescCode") {
                    self.alertDescCode = dict["AlertDescCode"] as! String
                }
                if dict.keys.contains("AlertDescEn") {
                    self.alertDescEn = dict["AlertDescEn"] as! String
                }
                if dict.keys.contains("AlertDetail") {
                    self.alertDetail = dict["AlertDetail"] as! String
                }
                if dict.keys.contains("AlertInfoList") {
                    var tmp : [DescribeAlertsResponseBody.Data.ResponseData.AlertInfoList] = []
                    for v in dict["AlertInfoList"] as! [Any] {
                        var model = DescribeAlertsResponseBody.Data.ResponseData.AlertInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.alertInfoList = tmp
                }
                if dict.keys.contains("AlertLevel") {
                    self.alertLevel = dict["AlertLevel"] as! String
                }
                if dict.keys.contains("AlertName") {
                    self.alertName = dict["AlertName"] as! String
                }
                if dict.keys.contains("AlertNameCode") {
                    self.alertNameCode = dict["AlertNameCode"] as! String
                }
                if dict.keys.contains("AlertNameEn") {
                    self.alertNameEn = dict["AlertNameEn"] as! String
                }
                if dict.keys.contains("AlertSrcProd") {
                    self.alertSrcProd = dict["AlertSrcProd"] as! String
                }
                if dict.keys.contains("AlertSrcProdModule") {
                    self.alertSrcProdModule = dict["AlertSrcProdModule"] as! String
                }
                if dict.keys.contains("AlertTitle") {
                    self.alertTitle = dict["AlertTitle"] as! String
                }
                if dict.keys.contains("AlertTitleEn") {
                    self.alertTitleEn = dict["AlertTitleEn"] as! String
                }
                if dict.keys.contains("AlertType") {
                    self.alertType = dict["AlertType"] as! String
                }
                if dict.keys.contains("AlertTypeCode") {
                    self.alertTypeCode = dict["AlertTypeCode"] as! String
                }
                if dict.keys.contains("AlertTypeEn") {
                    self.alertTypeEn = dict["AlertTypeEn"] as! String
                }
                if dict.keys.contains("AlertUuid") {
                    self.alertUuid = dict["AlertUuid"] as! String
                }
                if dict.keys.contains("AssetList") {
                    self.assetList = dict["AssetList"] as! String
                }
                if dict.keys.contains("AttCk") {
                    self.attCk = dict["AttCk"] as! String
                }
                if dict.keys.contains("CloudCode") {
                    self.cloudCode = dict["CloudCode"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IncidentUuid") {
                    self.incidentUuid = dict["IncidentUuid"] as! String
                }
                if dict.keys.contains("IsDefend") {
                    self.isDefend = dict["IsDefend"] as! String
                }
                if dict.keys.contains("LogTime") {
                    self.logTime = dict["LogTime"] as! String
                }
                if dict.keys.contains("LogUuid") {
                    self.logUuid = dict["LogUuid"] as! String
                }
                if dict.keys.contains("MainUserId") {
                    self.mainUserId = dict["MainUserId"] as! Int64
                }
                if dict.keys.contains("OccurTime") {
                    self.occurTime = dict["OccurTime"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("SubUserId") {
                    self.subUserId = dict["SubUserId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") {
                var model = DescribeAlertsResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") {
                var tmp : [DescribeAlertsResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = DescribeAlertsResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeAlertsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAlertsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAlertsCountRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeAlertsCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var all: Int64?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") {
                self.all = dict["All"] as! Int64
            }
            if dict.keys.contains("High") {
                self.high = dict["High"] as! Int64
            }
            if dict.keys.contains("Low") {
                self.low = dict["Low"] as! Int64
            }
            if dict.keys.contains("Medium") {
                self.medium = dict["Medium"] as! Int64
            }
            if dict.keys.contains("ProductNum") {
                self.productNum = dict["ProductNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeAlertsCountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAlertsCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAlertsWithEntityRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var entityId: Int64?

    public var incidentUuid: String?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("IncidentUuid") {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("SophonTaskId") {
            self.sophonTaskId = dict["SophonTaskId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("KeyName") {
                        self.keyName = dict["KeyName"] as! String
                    }
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! String
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

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertDesc") {
                    self.alertDesc = dict["AlertDesc"] as! String
                }
                if dict.keys.contains("AlertDescCode") {
                    self.alertDescCode = dict["AlertDescCode"] as! String
                }
                if dict.keys.contains("AlertDescEn") {
                    self.alertDescEn = dict["AlertDescEn"] as! String
                }
                if dict.keys.contains("AlertDetail") {
                    self.alertDetail = dict["AlertDetail"] as! String
                }
                if dict.keys.contains("AlertInfoList") {
                    var tmp : [DescribeAlertsWithEntityResponseBody.Data.ResponseData.AlertInfoList] = []
                    for v in dict["AlertInfoList"] as! [Any] {
                        var model = DescribeAlertsWithEntityResponseBody.Data.ResponseData.AlertInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.alertInfoList = tmp
                }
                if dict.keys.contains("AlertLevel") {
                    self.alertLevel = dict["AlertLevel"] as! String
                }
                if dict.keys.contains("AlertName") {
                    self.alertName = dict["AlertName"] as! String
                }
                if dict.keys.contains("AlertNameCode") {
                    self.alertNameCode = dict["AlertNameCode"] as! String
                }
                if dict.keys.contains("AlertNameEn") {
                    self.alertNameEn = dict["AlertNameEn"] as! String
                }
                if dict.keys.contains("AlertSrcProd") {
                    self.alertSrcProd = dict["AlertSrcProd"] as! String
                }
                if dict.keys.contains("AlertSrcProdModule") {
                    self.alertSrcProdModule = dict["AlertSrcProdModule"] as! String
                }
                if dict.keys.contains("AlertTitle") {
                    self.alertTitle = dict["AlertTitle"] as! String
                }
                if dict.keys.contains("AlertTitleEn") {
                    self.alertTitleEn = dict["AlertTitleEn"] as! String
                }
                if dict.keys.contains("AlertType") {
                    self.alertType = dict["AlertType"] as! String
                }
                if dict.keys.contains("AlertTypeCode") {
                    self.alertTypeCode = dict["AlertTypeCode"] as! String
                }
                if dict.keys.contains("AlertTypeEn") {
                    self.alertTypeEn = dict["AlertTypeEn"] as! String
                }
                if dict.keys.contains("AlertUuid") {
                    self.alertUuid = dict["AlertUuid"] as! String
                }
                if dict.keys.contains("AssetList") {
                    self.assetList = dict["AssetList"] as! String
                }
                if dict.keys.contains("AttCk") {
                    self.attCk = dict["AttCk"] as! String
                }
                if dict.keys.contains("CloudCode") {
                    self.cloudCode = dict["CloudCode"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IncidentUuid") {
                    self.incidentUuid = dict["IncidentUuid"] as! String
                }
                if dict.keys.contains("IsDefend") {
                    self.isDefend = dict["IsDefend"] as! String
                }
                if dict.keys.contains("LogTime") {
                    self.logTime = dict["LogTime"] as! String
                }
                if dict.keys.contains("LogUuid") {
                    self.logUuid = dict["LogUuid"] as! String
                }
                if dict.keys.contains("MainUserId") {
                    self.mainUserId = dict["MainUserId"] as! Int64
                }
                if dict.keys.contains("OccurTime") {
                    self.occurTime = dict["OccurTime"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("SubUserId") {
                    self.subUserId = dict["SubUserId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") {
                var model = DescribeAlertsWithEntityResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") {
                var tmp : [DescribeAlertsWithEntityResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = DescribeAlertsWithEntityResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeAlertsWithEntityResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAlertsWithEntityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAlertsWithEventRequest : Tea.TeaModel {
    public var alertTitle: String?

    public var currentPage: Int32?

    public var incidentUuid: String?

    public var isDefend: String?

    public var level: [String]?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var source: String?

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
        if self.alertTitle != nil {
            map["AlertTitle"] = self.alertTitle!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
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
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertTitle") {
            self.alertTitle = dict["AlertTitle"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("IncidentUuid") {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("IsDefend") {
            self.isDefend = dict["IsDefend"] as! String
        }
        if dict.keys.contains("Level") {
            self.level = dict["Level"] as! [String]
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("KeyName") {
                        self.keyName = dict["KeyName"] as! String
                    }
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! String
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

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertDesc") {
                    self.alertDesc = dict["AlertDesc"] as! String
                }
                if dict.keys.contains("AlertDescCode") {
                    self.alertDescCode = dict["AlertDescCode"] as! String
                }
                if dict.keys.contains("AlertDescEn") {
                    self.alertDescEn = dict["AlertDescEn"] as! String
                }
                if dict.keys.contains("AlertDetail") {
                    self.alertDetail = dict["AlertDetail"] as! String
                }
                if dict.keys.contains("AlertInfoList") {
                    var tmp : [DescribeAlertsWithEventResponseBody.Data.ResponseData.AlertInfoList] = []
                    for v in dict["AlertInfoList"] as! [Any] {
                        var model = DescribeAlertsWithEventResponseBody.Data.ResponseData.AlertInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.alertInfoList = tmp
                }
                if dict.keys.contains("AlertLevel") {
                    self.alertLevel = dict["AlertLevel"] as! String
                }
                if dict.keys.contains("AlertName") {
                    self.alertName = dict["AlertName"] as! String
                }
                if dict.keys.contains("AlertNameCode") {
                    self.alertNameCode = dict["AlertNameCode"] as! String
                }
                if dict.keys.contains("AlertNameEn") {
                    self.alertNameEn = dict["AlertNameEn"] as! String
                }
                if dict.keys.contains("AlertSrcProd") {
                    self.alertSrcProd = dict["AlertSrcProd"] as! String
                }
                if dict.keys.contains("AlertSrcProdModule") {
                    self.alertSrcProdModule = dict["AlertSrcProdModule"] as! String
                }
                if dict.keys.contains("AlertTitle") {
                    self.alertTitle = dict["AlertTitle"] as! String
                }
                if dict.keys.contains("AlertTitleEn") {
                    self.alertTitleEn = dict["AlertTitleEn"] as! String
                }
                if dict.keys.contains("AlertType") {
                    self.alertType = dict["AlertType"] as! String
                }
                if dict.keys.contains("AlertTypeCode") {
                    self.alertTypeCode = dict["AlertTypeCode"] as! String
                }
                if dict.keys.contains("AlertTypeEn") {
                    self.alertTypeEn = dict["AlertTypeEn"] as! String
                }
                if dict.keys.contains("AlertUuid") {
                    self.alertUuid = dict["AlertUuid"] as! String
                }
                if dict.keys.contains("AssetList") {
                    self.assetList = dict["AssetList"] as! String
                }
                if dict.keys.contains("AttCk") {
                    self.attCk = dict["AttCk"] as! String
                }
                if dict.keys.contains("CloudCode") {
                    self.cloudCode = dict["CloudCode"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("EntityList") {
                    self.entityList = dict["EntityList"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IncidentUuid") {
                    self.incidentUuid = dict["IncidentUuid"] as! String
                }
                if dict.keys.contains("IsDefend") {
                    self.isDefend = dict["IsDefend"] as! String
                }
                if dict.keys.contains("LogTime") {
                    self.logTime = dict["LogTime"] as! String
                }
                if dict.keys.contains("LogUuid") {
                    self.logUuid = dict["LogUuid"] as! String
                }
                if dict.keys.contains("MainUserId") {
                    self.mainUserId = dict["MainUserId"] as! Int64
                }
                if dict.keys.contains("OccurTime") {
                    self.occurTime = dict["OccurTime"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("SubUserId") {
                    self.subUserId = dict["SubUserId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") {
                var model = DescribeAlertsWithEventResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") {
                var tmp : [DescribeAlertsWithEventResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = DescribeAlertsWithEventResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeAlertsWithEventResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAlertsWithEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAttackTimeLineRequest : Tea.TeaModel {
    public var assetName: String?

    public var endTime: Int64?

    public var incidentUuid: String?

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
        if self.assetName != nil {
            map["AssetName"] = self.assetName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetName") {
            self.assetName = dict["AssetName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("IncidentUuid") {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeAttackTimeLineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alertLevel: String?

        public var alertName: String?

        public var alertNameCode: String?

        public var alertNameEn: String?

        public var alertSrcProd: String?

        public var alertSrcProdModule: String?

        public var alertTime: Int64?

        public var alertTitle: String?

        public var alertTitleEn: String?

        public var alertType: String?

        public var alertTypeCode: String?

        public var alertTypeEn: String?

        public var alertUuid: String?

        public var assetId: String?

        public var assetList: String?

        public var assetName: String?

        public var attCk: String?

        public var cloudCode: String?

        public var incidentUuid: String?

        public var logTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
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
            if self.alertTime != nil {
                map["AlertTime"] = self.alertTime!
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
            if self.assetId != nil {
                map["AssetId"] = self.assetId!
            }
            if self.assetList != nil {
                map["AssetList"] = self.assetList!
            }
            if self.assetName != nil {
                map["AssetName"] = self.assetName!
            }
            if self.attCk != nil {
                map["AttCk"] = self.attCk!
            }
            if self.cloudCode != nil {
                map["CloudCode"] = self.cloudCode!
            }
            if self.incidentUuid != nil {
                map["IncidentUuid"] = self.incidentUuid!
            }
            if self.logTime != nil {
                map["LogTime"] = self.logTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertLevel") {
                self.alertLevel = dict["AlertLevel"] as! String
            }
            if dict.keys.contains("AlertName") {
                self.alertName = dict["AlertName"] as! String
            }
            if dict.keys.contains("AlertNameCode") {
                self.alertNameCode = dict["AlertNameCode"] as! String
            }
            if dict.keys.contains("AlertNameEn") {
                self.alertNameEn = dict["AlertNameEn"] as! String
            }
            if dict.keys.contains("AlertSrcProd") {
                self.alertSrcProd = dict["AlertSrcProd"] as! String
            }
            if dict.keys.contains("AlertSrcProdModule") {
                self.alertSrcProdModule = dict["AlertSrcProdModule"] as! String
            }
            if dict.keys.contains("AlertTime") {
                self.alertTime = dict["AlertTime"] as! Int64
            }
            if dict.keys.contains("AlertTitle") {
                self.alertTitle = dict["AlertTitle"] as! String
            }
            if dict.keys.contains("AlertTitleEn") {
                self.alertTitleEn = dict["AlertTitleEn"] as! String
            }
            if dict.keys.contains("AlertType") {
                self.alertType = dict["AlertType"] as! String
            }
            if dict.keys.contains("AlertTypeCode") {
                self.alertTypeCode = dict["AlertTypeCode"] as! String
            }
            if dict.keys.contains("AlertTypeEn") {
                self.alertTypeEn = dict["AlertTypeEn"] as! String
            }
            if dict.keys.contains("AlertUuid") {
                self.alertUuid = dict["AlertUuid"] as! String
            }
            if dict.keys.contains("AssetId") {
                self.assetId = dict["AssetId"] as! String
            }
            if dict.keys.contains("AssetList") {
                self.assetList = dict["AssetList"] as! String
            }
            if dict.keys.contains("AssetName") {
                self.assetName = dict["AssetName"] as! String
            }
            if dict.keys.contains("AttCk") {
                self.attCk = dict["AttCk"] as! String
            }
            if dict.keys.contains("CloudCode") {
                self.cloudCode = dict["CloudCode"] as! String
            }
            if dict.keys.contains("IncidentUuid") {
                self.incidentUuid = dict["IncidentUuid"] as! String
            }
            if dict.keys.contains("LogTime") {
                self.logTime = dict["LogTime"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: [DescribeAttackTimeLineResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeAttackTimeLineResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAttackTimeLineResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeAttackTimeLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAttackTimeLineResponseBody?

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
            var model = DescribeAttackTimeLineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAuthResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("All") {
                self.all = dict["All"] as! Int64
            }
            if dict.keys.contains("Online") {
                self.online = dict["Online"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeAutomateResponseConfigCounterResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAutomateResponseConfigCounterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoResponseType") {
            self.autoResponseType = dict["AutoResponseType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
                if dict.keys.contains("ValueMds") {
                    self.valueMds = dict["ValueMds"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HasRightValue") {
                    self.hasRightValue = dict["HasRightValue"] as! Bool
                }
                if dict.keys.contains("Index") {
                    self.index = dict["Index"] as! Int32
                }
                if dict.keys.contains("Operator") {
                    self.operator_ = dict["Operator"] as! String
                }
                if dict.keys.contains("OperatorDescCn") {
                    self.operatorDescCn = dict["OperatorDescCn"] as! String
                }
                if dict.keys.contains("OperatorDescEn") {
                    self.operatorDescEn = dict["OperatorDescEn"] as! String
                }
                if dict.keys.contains("OperatorName") {
                    self.operatorName = dict["OperatorName"] as! String
                }
                if dict.keys.contains("SupportDataType") {
                    self.supportDataType = dict["SupportDataType"] as! String
                }
                if dict.keys.contains("SupportTag") {
                    self.supportTag = dict["SupportTag"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataType") {
                self.dataType = dict["DataType"] as! String
            }
            if dict.keys.contains("Feature") {
                self.feature = dict["Feature"] as! String
            }
            if dict.keys.contains("RightValueEnums") {
                var tmp : [DescribeAutomateResponseConfigFeatureResponseBody.Data.RightValueEnums] = []
                for v in dict["RightValueEnums"] as! [Any] {
                    var model = DescribeAutomateResponseConfigFeatureResponseBody.Data.RightValueEnums()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rightValueEnums = tmp
            }
            if dict.keys.contains("SupportOperators") {
                var tmp : [DescribeAutomateResponseConfigFeatureResponseBody.Data.SupportOperators] = []
                for v in dict["SupportOperators"] as! [Any] {
                    var model = DescribeAutomateResponseConfigFeatureResponseBody.Data.SupportOperators()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeAutomateResponseConfigFeatureResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAutomateResponseConfigFeatureResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAutomateResponseConfigFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoResponseType") {
            self.autoResponseType = dict["AutoResponseType"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParamType") {
                self.paramType = dict["ParamType"] as! String
            }
            if dict.keys.contains("Uuid") {
                self.uuid = dict["Uuid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeAutomateResponseConfigPlayBooksResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAutomateResponseConfigPlayBooksResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAutomateResponseConfigPlayBooksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCloudSiemAssetsRequest : Tea.TeaModel {
    public var assetType: String?

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
        if self.assetType != nil {
            map["AssetType"] = self.assetType!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetType") {
            self.assetType = dict["AssetType"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("IncidentUuid") {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("KeyName") {
                        self.keyName = dict["KeyName"] as! String
                    }
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertUuid") {
                    self.alertUuid = dict["AlertUuid"] as! String
                }
                if dict.keys.contains("Aliuid") {
                    self.aliuid = dict["Aliuid"] as! Int64
                }
                if dict.keys.contains("AssetId") {
                    self.assetId = dict["AssetId"] as! String
                }
                if dict.keys.contains("AssetInfo") {
                    var tmp : [DescribeCloudSiemAssetsResponseBody.Data.ResponseData.AssetInfo] = []
                    for v in dict["AssetInfo"] as! [Any] {
                        var model = DescribeCloudSiemAssetsResponseBody.Data.ResponseData.AssetInfo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.assetInfo = tmp
                }
                if dict.keys.contains("AssetName") {
                    self.assetName = dict["AssetName"] as! String
                }
                if dict.keys.contains("AssetType") {
                    self.assetType = dict["AssetType"] as! String
                }
                if dict.keys.contains("CloudCode") {
                    self.cloudCode = dict["CloudCode"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IncidentUuid") {
                    self.incidentUuid = dict["IncidentUuid"] as! String
                }
                if dict.keys.contains("SubUserId") {
                    self.subUserId = dict["SubUserId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") {
                var model = DescribeCloudSiemAssetsResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") {
                var tmp : [DescribeCloudSiemAssetsResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = DescribeCloudSiemAssetsResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeCloudSiemAssetsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCloudSiemAssetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncidentUuid") {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssetNum") {
                self.assetNum = dict["AssetNum"] as! Int32
            }
            if dict.keys.contains("AssetType") {
                self.assetType = dict["AssetType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeCloudSiemAssetsCounterResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeCloudSiemAssetsCounterResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCloudSiemAssetsCounterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncidentUuid") {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
    }
}

public class DescribeCloudSiemEventDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var alertNum: Int32?

        public var aliuid: Int64?

        public var assetNum: Int32?

        public var attCkLabels: [String]?

        public var dataSources: [String]?

        public var description_: String?

        public var descriptionEn: String?

        public var extContent: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var incidentName: String?

        public var incidentNameEn: String?

        public var incidentUuid: String?

        public var referAccount: String?

        public var remark: String?

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
            if self.incidentUuid != nil {
                map["IncidentUuid"] = self.incidentUuid!
            }
            if self.referAccount != nil {
                map["ReferAccount"] = self.referAccount!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertNum") {
                self.alertNum = dict["AlertNum"] as! Int32
            }
            if dict.keys.contains("Aliuid") {
                self.aliuid = dict["Aliuid"] as! Int64
            }
            if dict.keys.contains("AssetNum") {
                self.assetNum = dict["AssetNum"] as! Int32
            }
            if dict.keys.contains("AttCkLabels") {
                self.attCkLabels = dict["AttCkLabels"] as! [String]
            }
            if dict.keys.contains("DataSources") {
                self.dataSources = dict["DataSources"] as! [String]
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DescriptionEn") {
                self.descriptionEn = dict["DescriptionEn"] as! String
            }
            if dict.keys.contains("ExtContent") {
                self.extContent = dict["ExtContent"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("IncidentName") {
                self.incidentName = dict["IncidentName"] as! String
            }
            if dict.keys.contains("IncidentNameEn") {
                self.incidentNameEn = dict["IncidentNameEn"] as! String
            }
            if dict.keys.contains("IncidentUuid") {
                self.incidentUuid = dict["IncidentUuid"] as! String
            }
            if dict.keys.contains("ReferAccount") {
                self.referAccount = dict["ReferAccount"] as! String
            }
            if dict.keys.contains("Remark") {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("ThreatLevel") {
                self.threatLevel = dict["ThreatLevel"] as! String
            }
            if dict.keys.contains("ThreatScore") {
                self.threatScore = dict["ThreatScore"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeCloudSiemEventDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCloudSiemEventDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCloudSiemEventsRequest : Tea.TeaModel {
    public var assetId: String?

    public var currentPage: Int32?

    public var endTime: Int64?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssetId") {
            self.assetId = dict["AssetId"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("EventName") {
            self.eventName = dict["EventName"] as! String
        }
        if dict.keys.contains("IncidentUuid") {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OrderField") {
            self.orderField = dict["OrderField"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("ThreadLevel") {
            self.threadLevel = dict["ThreadLevel"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public var alertNum: Int32?

            public var aliuid: Int64?

            public var assetNum: Int32?

            public var attCkLabels: [String]?

            public var dataSources: [String]?

            public var description_: String?

            public var descriptionEn: String?

            public var extContent: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var incidentName: String?

            public var incidentNameEn: String?

            public var incidentUuid: String?

            public var referAccount: String?

            public var remark: String?

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
                if self.incidentUuid != nil {
                    map["IncidentUuid"] = self.incidentUuid!
                }
                if self.referAccount != nil {
                    map["ReferAccount"] = self.referAccount!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertNum") {
                    self.alertNum = dict["AlertNum"] as! Int32
                }
                if dict.keys.contains("Aliuid") {
                    self.aliuid = dict["Aliuid"] as! Int64
                }
                if dict.keys.contains("AssetNum") {
                    self.assetNum = dict["AssetNum"] as! Int32
                }
                if dict.keys.contains("AttCkLabels") {
                    self.attCkLabels = dict["AttCkLabels"] as! [String]
                }
                if dict.keys.contains("DataSources") {
                    self.dataSources = dict["DataSources"] as! [String]
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DescriptionEn") {
                    self.descriptionEn = dict["DescriptionEn"] as! String
                }
                if dict.keys.contains("ExtContent") {
                    self.extContent = dict["ExtContent"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("IncidentName") {
                    self.incidentName = dict["IncidentName"] as! String
                }
                if dict.keys.contains("IncidentNameEn") {
                    self.incidentNameEn = dict["IncidentNameEn"] as! String
                }
                if dict.keys.contains("IncidentUuid") {
                    self.incidentUuid = dict["IncidentUuid"] as! String
                }
                if dict.keys.contains("ReferAccount") {
                    self.referAccount = dict["ReferAccount"] as! String
                }
                if dict.keys.contains("Remark") {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("ThreatLevel") {
                    self.threatLevel = dict["ThreatLevel"] as! String
                }
                if dict.keys.contains("ThreatScore") {
                    self.threatScore = dict["ThreatScore"] as! Double
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") {
                var model = DescribeCloudSiemEventsResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") {
                var tmp : [DescribeCloudSiemEventsResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = DescribeCloudSiemEventsResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeCloudSiemEventsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCloudSiemEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCsImportedProdStatusByUserRequest : Tea.TeaModel {
    public var regionId: String?

    public var sourceLogProd: String?

    public var userId: Int64?

    public override init() {
        super.init()
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
        if self.sourceLogProd != nil {
            map["SourceLogProd"] = self.sourceLogProd!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceLogProd") {
            self.sourceLogProd = dict["SourceLogProd"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! Int64
        }
    }
}

public class DescribeCsImportedProdStatusByUserResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCsImportedProdStatusByUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCsImportedProdStatusByUserResponseBody?

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
            var model = DescribeCsImportedProdStatusByUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AggregationRuleNum") {
                self.aggregationRuleNum = dict["AggregationRuleNum"] as! Int32
            }
            if dict.keys.contains("CustomizeRuleNum") {
                self.customizeRuleNum = dict["CustomizeRuleNum"] as! Int32
            }
            if dict.keys.contains("ExpertRuleNum") {
                self.expertRuleNum = dict["ExpertRuleNum"] as! Int32
            }
            if dict.keys.contains("GraphComputingRuleNum") {
                self.graphComputingRuleNum = dict["GraphComputingRuleNum"] as! Int32
            }
            if dict.keys.contains("HighRuleNum") {
                self.highRuleNum = dict["HighRuleNum"] as! Int32
            }
            if dict.keys.contains("InUseRuleNum") {
                self.inUseRuleNum = dict["InUseRuleNum"] as! Int32
            }
            if dict.keys.contains("LowRuleNum") {
                self.lowRuleNum = dict["LowRuleNum"] as! Int32
            }
            if dict.keys.contains("MediumRuleNum") {
                self.mediumRuleNum = dict["MediumRuleNum"] as! Int32
            }
            if dict.keys.contains("PredefinedRuleNum") {
                self.predefinedRuleNum = dict["PredefinedRuleNum"] as! Int32
            }
            if dict.keys.contains("SingleAlertRuleNum") {
                self.singleAlertRuleNum = dict["SingleAlertRuleNum"] as! Int32
            }
            if dict.keys.contains("TotalRuleNum") {
                self.totalRuleNum = dict["TotalRuleNum"] as! Int32
            }
            if dict.keys.contains("UnEventRuleNum") {
                self.unEventRuleNum = dict["UnEventRuleNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeCustomizeRuleCountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCustomizeRuleCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("SimulateData") {
                self.simulateData = dict["SimulateData"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeCustomizeRuleTestResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCustomizeRuleTestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("From") {
                self.from = dict["From"] as! Int64
            }
            if dict.keys.contains("To") {
                self.to = dict["To"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeCustomizeRuleTestHistogramResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeCustomizeRuleTestHistogramResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCustomizeRuleTestHistogramResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("DataSourceInstanceId") {
            self.dataSourceInstanceId = dict["DataSourceInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParaCode") {
                    self.paraCode = dict["ParaCode"] as! String
                }
                if dict.keys.contains("ParaValue") {
                    self.paraValue = dict["ParaValue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("CloudCode") {
                self.cloudCode = dict["CloudCode"] as! String
            }
            if dict.keys.contains("DataSourceInstanceId") {
                self.dataSourceInstanceId = dict["DataSourceInstanceId"] as! String
            }
            if dict.keys.contains("DataSourceInstanceParams") {
                var tmp : [DescribeDataSourceInstanceResponseBody.Data.DataSourceInstanceParams] = []
                for v in dict["DataSourceInstanceParams"] as! [Any] {
                    var model = DescribeDataSourceInstanceResponseBody.Data.DataSourceInstanceParams()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeDataSourceInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDataSourceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("DataSourceType") {
            self.dataSourceType = dict["DataSourceType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CanEditted") {
                self.canEditted = dict["CanEditted"] as! Int32
            }
            if dict.keys.contains("CloudCode") {
                self.cloudCode = dict["CloudCode"] as! String
            }
            if dict.keys.contains("DataSourceType") {
                self.dataSourceType = dict["DataSourceType"] as! String
            }
            if dict.keys.contains("DefaultValue") {
                self.defaultValue = dict["DefaultValue"] as! String
            }
            if dict.keys.contains("Disabled") {
                self.disabled = dict["Disabled"] as! Bool
            }
            if dict.keys.contains("FormatCheck") {
                self.formatCheck = dict["FormatCheck"] as! String
            }
            if dict.keys.contains("Hit") {
                self.hit = dict["Hit"] as! String
            }
            if dict.keys.contains("ParaCode") {
                self.paraCode = dict["ParaCode"] as! String
            }
            if dict.keys.contains("ParaLevel") {
                self.paraLevel = dict["ParaLevel"] as! Int32
            }
            if dict.keys.contains("ParaName") {
                self.paraName = dict["ParaName"] as! String
            }
            if dict.keys.contains("ParaType") {
                self.paraType = dict["ParaType"] as! String
            }
            if dict.keys.contains("ParamValue") {
                var tmp : [DescribeDataSourceParametersResponseBody.Data.ParamValue] = []
                for v in dict["ParamValue"] as! [Any] {
                    var model = DescribeDataSourceParametersResponseBody.Data.ParamValue()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.paramValue = tmp
            }
            if dict.keys.contains("Required") {
                self.required_ = dict["Required"] as! Int32
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [DescribeDataSourceParametersResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeDataSourceParametersResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDataSourceParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDisposeAndPlaybookRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var entityType: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("IncidentUuid") {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public class PlaybookList : Tea.TeaModel {
                public var description_: String?

                public var displayName: String?

                public var name: String?

                public var opCode: String?

                public var opLevel: String?

                public var paramConfig: [Any]?

                public var taskConfig: String?

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
                    if self.wafPlaybook != nil {
                        map["WafPlaybook"] = self.wafPlaybook!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("DisplayName") {
                        self.displayName = dict["DisplayName"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("OpCode") {
                        self.opCode = dict["OpCode"] as! String
                    }
                    if dict.keys.contains("OpLevel") {
                        self.opLevel = dict["OpLevel"] as! String
                    }
                    if dict.keys.contains("ParamConfig") {
                        self.paramConfig = dict["ParamConfig"] as! [Any]
                    }
                    if dict.keys.contains("TaskConfig") {
                        self.taskConfig = dict["TaskConfig"] as! String
                    }
                    if dict.keys.contains("WafPlaybook") {
                        self.wafPlaybook = dict["WafPlaybook"] as! Bool
                    }
                }
            }
            public var alertNum: Int32?

            public var dispose: String?

            public var entityId: Int64?

            public var entityInfo: [String: Any]?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertNum") {
                    self.alertNum = dict["AlertNum"] as! Int32
                }
                if dict.keys.contains("Dispose") {
                    self.dispose = dict["Dispose"] as! String
                }
                if dict.keys.contains("EntityId") {
                    self.entityId = dict["EntityId"] as! Int64
                }
                if dict.keys.contains("EntityInfo") {
                    self.entityInfo = dict["EntityInfo"] as! [String: Any]
                }
                if dict.keys.contains("OpcodeMap") {
                    self.opcodeMap = dict["OpcodeMap"] as! [String: String]
                }
                if dict.keys.contains("OpcodeSet") {
                    self.opcodeSet = dict["OpcodeSet"] as! [String]
                }
                if dict.keys.contains("PlaybookList") {
                    var tmp : [DescribeDisposeAndPlaybookResponseBody.Data.ResponseData.PlaybookList] = []
                    for v in dict["PlaybookList"] as! [Any] {
                        var model = DescribeDisposeAndPlaybookResponseBody.Data.ResponseData.PlaybookList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.playbookList = tmp
                }
                if dict.keys.contains("Scope") {
                    self.scope = dict["Scope"] as! [Any]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") {
                var model = DescribeDisposeAndPlaybookResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") {
                var tmp : [DescribeDisposeAndPlaybookResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = DescribeDisposeAndPlaybookResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeDisposeAndPlaybookResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDisposeAndPlaybookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PlaybookName") {
                self.playbookName = dict["PlaybookName"] as! String
            }
            if dict.keys.contains("PlaybookUuid") {
                self.playbookUuid = dict["PlaybookUuid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeDisposeStrategyPlaybookResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeDisposeStrategyPlaybookResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDisposeStrategyPlaybookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("EntityIdentity") {
            self.entityIdentity = dict["EntityIdentity"] as! String
        }
        if dict.keys.contains("IncidentUuid") {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("SophonTaskId") {
            self.sophonTaskId = dict["SophonTaskId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntityId") {
                self.entityId = dict["EntityId"] as! Int64
            }
            if dict.keys.contains("EntityInfo") {
                self.entityInfo = dict["EntityInfo"] as! [String: Any]
            }
            if dict.keys.contains("EntityType") {
                self.entityType = dict["EntityType"] as! String
            }
            if dict.keys.contains("TipInfo") {
                self.tipInfo = dict["TipInfo"] as! [String: Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeEntityInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeEntityInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EventNum") {
                self.eventNum = dict["EventNum"] as! Int64
            }
            if dict.keys.contains("HighLevelEventNum") {
                self.highLevelEventNum = dict["HighLevelEventNum"] as! Int64
            }
            if dict.keys.contains("LowLevelEventNum") {
                self.lowLevelEventNum = dict["LowLevelEventNum"] as! Int64
            }
            if dict.keys.contains("MediumLevelEventNum") {
                self.mediumLevelEventNum = dict["MediumLevelEventNum"] as! Int64
            }
            if dict.keys.contains("UndealEventNum") {
                self.undealEventNum = dict["UndealEventNum"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeEventCountByThreatLevelResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeEventCountByThreatLevelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("IncidentUuid") {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Channel") {
                    self.channel = dict["Channel"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IncidentUuid") {
                    self.incidentUuid = dict["IncidentUuid"] as! String
                }
                if dict.keys.contains("MessageTitle") {
                    self.messageTitle = dict["MessageTitle"] as! String
                }
                if dict.keys.contains("Receiver") {
                    self.receiver = dict["Receiver"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EventDispose") {
                self.eventDispose = dict["EventDispose"] as! [Any]
            }
            if dict.keys.contains("ReceiverInfo") {
                var model = DescribeEventDisposeResponseBody.Data.ReceiverInfo()
                model.fromMap(dict["ReceiverInfo"] as! [String: Any])
                self.receiverInfo = model
            }
            if dict.keys.contains("Remark") {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeEventDisposeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeEventDisposeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! String
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImportedLogCount") {
                self.importedLogCount = dict["ImportedLogCount"] as! Int32
            }
            if dict.keys.contains("TotalLogCount") {
                self.totalLogCount = dict["TotalLogCount"] as! Int32
            }
            if dict.keys.contains("UnImportedLogCount") {
                self.unImportedLogCount = dict["UnImportedLogCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeImportedLogCountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeImportedLogCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeJobStatusRequest : Tea.TeaModel {
    public var regionId: String?

    public var submitId: String?

    public override init() {
        super.init()
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
        if self.submitId != nil {
            map["SubmitId"] = self.submitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SubmitId") {
            self.submitId = dict["SubmitId"] as! String
        }
    }
}

public class DescribeJobStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ErrTaskList : Tea.TeaModel {
            public class ProductList : Tea.TeaModel {
                public class LogList : Tea.TeaModel {
                    public var errorCode: String?

                    public var logCode: String?

                    public var logStoreNamePattern: String?

                    public var productCode: String?

                    public var projectNamePattern: String?

                    public var regionCode: String?

                    public override init() {
                        super.init()
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
                        if self.logCode != nil {
                            map["LogCode"] = self.logCode!
                        }
                        if self.logStoreNamePattern != nil {
                            map["LogStoreNamePattern"] = self.logStoreNamePattern!
                        }
                        if self.productCode != nil {
                            map["ProductCode"] = self.productCode!
                        }
                        if self.projectNamePattern != nil {
                            map["ProjectNamePattern"] = self.projectNamePattern!
                        }
                        if self.regionCode != nil {
                            map["RegionCode"] = self.regionCode!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ErrorCode") {
                            self.errorCode = dict["ErrorCode"] as! String
                        }
                        if dict.keys.contains("LogCode") {
                            self.logCode = dict["LogCode"] as! String
                        }
                        if dict.keys.contains("LogStoreNamePattern") {
                            self.logStoreNamePattern = dict["LogStoreNamePattern"] as! String
                        }
                        if dict.keys.contains("ProductCode") {
                            self.productCode = dict["ProductCode"] as! String
                        }
                        if dict.keys.contains("ProjectNamePattern") {
                            self.projectNamePattern = dict["ProjectNamePattern"] as! String
                        }
                        if dict.keys.contains("RegionCode") {
                            self.regionCode = dict["RegionCode"] as! String
                        }
                    }
                }
                public var logList: [DescribeJobStatusResponseBody.Data.ErrTaskList.ProductList.LogList]?

                public var productCode: String?

                public override init() {
                    super.init()
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
                    if self.productCode != nil {
                        map["ProductCode"] = self.productCode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LogList") {
                        var tmp : [DescribeJobStatusResponseBody.Data.ErrTaskList.ProductList.LogList] = []
                        for v in dict["LogList"] as! [Any] {
                            var model = DescribeJobStatusResponseBody.Data.ErrTaskList.ProductList.LogList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.logList = tmp
                    }
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! String
                    }
                }
            }
            public var productList: [DescribeJobStatusResponseBody.Data.ErrTaskList.ProductList]?

            public var userId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.productList != nil {
                    var tmp : [Any] = []
                    for k in self.productList! {
                        tmp.append(k.toMap())
                    }
                    map["ProductList"] = tmp
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ProductList") {
                    var tmp : [DescribeJobStatusResponseBody.Data.ErrTaskList.ProductList] = []
                    for v in dict["ProductList"] as! [Any] {
                        var model = DescribeJobStatusResponseBody.Data.ErrTaskList.ProductList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.productList = tmp
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! Int64
                }
            }
        }
        public var configId: String?

        public var errTaskList: [DescribeJobStatusResponseBody.Data.ErrTaskList]?

        public var failedCount: Int32?

        public var finishCount: Int32?

        public var folderId: String?

        public var taskCount: Int32?

        public var taskStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configId != nil {
                map["ConfigId"] = self.configId!
            }
            if self.errTaskList != nil {
                var tmp : [Any] = []
                for k in self.errTaskList! {
                    tmp.append(k.toMap())
                }
                map["ErrTaskList"] = tmp
            }
            if self.failedCount != nil {
                map["FailedCount"] = self.failedCount!
            }
            if self.finishCount != nil {
                map["FinishCount"] = self.finishCount!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.taskCount != nil {
                map["TaskCount"] = self.taskCount!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigId") {
                self.configId = dict["ConfigId"] as! String
            }
            if dict.keys.contains("ErrTaskList") {
                var tmp : [DescribeJobStatusResponseBody.Data.ErrTaskList] = []
                for v in dict["ErrTaskList"] as! [Any] {
                    var model = DescribeJobStatusResponseBody.Data.ErrTaskList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.errTaskList = tmp
            }
            if dict.keys.contains("FailedCount") {
                self.failedCount = dict["FailedCount"] as! Int32
            }
            if dict.keys.contains("FinishCount") {
                self.finishCount = dict["FinishCount"] as! Int32
            }
            if dict.keys.contains("FolderId") {
                self.folderId = dict["FolderId"] as! String
            }
            if dict.keys.contains("TaskCount") {
                self.taskCount = dict["TaskCount"] as! Int32
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: DescribeJobStatusResponseBody.Data?

    public var errCode: String?

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
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeJobStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrCode") {
            self.errCode = dict["ErrCode"] as! String
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

public class DescribeJobStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeJobStatusResponseBody?

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
            var model = DescribeJobStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogSource") {
            self.logSource = dict["LogSource"] as! String
        }
        if dict.keys.contains("LogType") {
            self.logType = dict["LogType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActivityName") {
                self.activityName = dict["ActivityName"] as! String
            }
            if dict.keys.contains("FieldDesc") {
                self.fieldDesc = dict["FieldDesc"] as! String
            }
            if dict.keys.contains("FieldName") {
                self.fieldName = dict["FieldName"] as! String
            }
            if dict.keys.contains("FieldType") {
                self.fieldType = dict["FieldType"] as! String
            }
            if dict.keys.contains("LogCode") {
                self.logCode = dict["LogCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeLogFieldsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeLogFieldsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeLogFieldsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogType") {
            self.logType = dict["LogType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogSource") {
                self.logSource = dict["LogSource"] as! String
            }
            if dict.keys.contains("LogSourceName") {
                self.logSourceName = dict["LogSourceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeLogSourceResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeLogSourceResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeLogSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLogStoreRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeLogStoreResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appendMeta: Bool?

        public var autoSplit: Bool?

        public var enableTracking: Bool?

        public var logStoreName: String?

        public var maxSplitShard: Int32?

        public var shardCount: Int32?

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
            if self.appendMeta != nil {
                map["AppendMeta"] = self.appendMeta!
            }
            if self.autoSplit != nil {
                map["AutoSplit"] = self.autoSplit!
            }
            if self.enableTracking != nil {
                map["EnableTracking"] = self.enableTracking!
            }
            if self.logStoreName != nil {
                map["LogStoreName"] = self.logStoreName!
            }
            if self.maxSplitShard != nil {
                map["MaxSplitShard"] = self.maxSplitShard!
            }
            if self.shardCount != nil {
                map["ShardCount"] = self.shardCount!
            }
            if self.ttl != nil {
                map["Ttl"] = self.ttl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppendMeta") {
                self.appendMeta = dict["AppendMeta"] as! Bool
            }
            if dict.keys.contains("AutoSplit") {
                self.autoSplit = dict["AutoSplit"] as! Bool
            }
            if dict.keys.contains("EnableTracking") {
                self.enableTracking = dict["EnableTracking"] as! Bool
            }
            if dict.keys.contains("LogStoreName") {
                self.logStoreName = dict["LogStoreName"] as! String
            }
            if dict.keys.contains("MaxSplitShard") {
                self.maxSplitShard = dict["MaxSplitShard"] as! Int32
            }
            if dict.keys.contains("ShardCount") {
                self.shardCount = dict["ShardCount"] as! Int32
            }
            if dict.keys.contains("Ttl") {
                self.ttl = dict["Ttl"] as! Int32
            }
        }
    }
    public var data: DescribeLogStoreResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeLogStoreResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeLogStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLogStoreResponseBody?

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
            var model = DescribeLogStoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogType") {
                self.logType = dict["LogType"] as! String
            }
            if dict.keys.contains("LogTypeName") {
                self.logTypeName = dict["LogTypeName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeLogTypeResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeLogTypeResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeLogTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("SceneType") {
            self.sceneType = dict["SceneType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Index") {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("Operator") {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("OperatorDescCn") {
                self.operatorDescCn = dict["OperatorDescCn"] as! String
            }
            if dict.keys.contains("OperatorDescEn") {
                self.operatorDescEn = dict["OperatorDescEn"] as! String
            }
            if dict.keys.contains("OperatorName") {
                self.operatorName = dict["OperatorName"] as! String
            }
            if dict.keys.contains("SupportDataType") {
                self.supportDataType = dict["SupportDataType"] as! String
            }
            if dict.keys.contains("SupportTag") {
                self.supportTag = dict["SupportTag"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeOperatorsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeOperatorsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeOperatorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
    }
}

public class DescribeProdCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliyunProdCount: Int32?

        public var hcloudProdCount: Int32?

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
            if self.aliyunProdCount != nil {
                map["AliyunProdCount"] = self.aliyunProdCount!
            }
            if self.hcloudProdCount != nil {
                map["HcloudProdCount"] = self.hcloudProdCount!
            }
            if self.qcloudProdCount != nil {
                map["QcloudProdCount"] = self.qcloudProdCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliyunProdCount") {
                self.aliyunProdCount = dict["AliyunProdCount"] as! Int32
            }
            if dict.keys.contains("HcloudProdCount") {
                self.hcloudProdCount = dict["HcloudProdCount"] as! Int32
            }
            if dict.keys.contains("QcloudProdCount") {
                self.qcloudProdCount = dict["QcloudProdCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeProdCountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeProdCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! Int64
            }
            if dict.keys.contains("CloudCode") {
                self.cloudCode = dict["CloudCode"] as! String
            }
            if dict.keys.contains("Domains") {
                self.domains = dict["Domains"] as! [String]
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeScopeUsersResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeScopeUsersResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeScopeUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeServiceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeStorageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CanBuy") {
                self.canBuy = dict["CanBuy"] as! Bool
            }
            if dict.keys.contains("Capacity") {
                self.capacity = dict["Capacity"] as! Int32
            }
            if dict.keys.contains("DurationDays") {
                self.durationDays = dict["DurationDays"] as! Int64
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("MainUserId") {
                self.mainUserId = dict["MainUserId"] as! Int64
            }
            if dict.keys.contains("MainUserName") {
                self.mainUserName = dict["MainUserName"] as! String
            }
            if dict.keys.contains("MasterUserId") {
                self.masterUserId = dict["MasterUserId"] as! Int64
            }
            if dict.keys.contains("MasterUserName") {
                self.masterUserName = dict["MasterUserName"] as! String
            }
            if dict.keys.contains("RdOrder") {
                self.rdOrder = dict["RdOrder"] as! Int32
            }
            if dict.keys.contains("SasInstanceId") {
                self.sasInstanceId = dict["SasInstanceId"] as! String
            }
            if dict.keys.contains("SubUserId") {
                self.subUserId = dict["SubUserId"] as! Int64
            }
            if dict.keys.contains("SubUserName") {
                self.subUserName = dict["SubUserName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeUserBuyStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeUserBuyStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Aliuid") {
                self.aliuid = dict["Aliuid"] as! Int64
            }
            if dict.keys.contains("Domains") {
                self.domains = dict["Domains"] as! [String]
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [DescribeWafScopeResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeWafScopeResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeWafScopeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertName") {
            self.alertName = dict["AlertName"] as! String
        }
        if dict.keys.contains("AlertType") {
            self.alertType = dict["AlertType"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("IncidentUuid") {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("IsVar") {
                                self.isVar = dict["IsVar"] as! Bool
                            }
                            if dict.keys.contains("Modifier") {
                                self.modifier = dict["Modifier"] as! String
                            }
                            if dict.keys.contains("ModifierParam") {
                                self.modifierParam = dict["ModifierParam"] as! [String: Any]
                            }
                            if dict.keys.contains("Type") {
                                self.type = dict["Type"] as! String
                            }
                            if dict.keys.contains("Value") {
                                self.value = dict["Value"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("IsVar") {
                                self.isVar = dict["IsVar"] as! Bool
                            }
                            if dict.keys.contains("Modifier") {
                                self.modifier = dict["Modifier"] as! String
                            }
                            if dict.keys.contains("ModifierParam") {
                                self.modifierParam = dict["ModifierParam"] as! [String: Any]
                            }
                            if dict.keys.contains("Type") {
                                self.type = dict["Type"] as! String
                            }
                            if dict.keys.contains("Value") {
                                self.value = dict["Value"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("IsNot") {
                            self.isNot = dict["IsNot"] as! Bool
                        }
                        if dict.keys.contains("ItemId") {
                            self.itemId = dict["ItemId"] as! Int32
                        }
                        if dict.keys.contains("Left") {
                            var model = DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions.Left_()
                            model.fromMap(dict["Left"] as! [String: Any])
                            self.left_ = model
                        }
                        if dict.keys.contains("Operator") {
                            self.operator_ = dict["Operator"] as! String
                        }
                        if dict.keys.contains("Right") {
                            var model = DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions.Right_()
                            model.fromMap(dict["Right"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Conditions") {
                        var tmp : [DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions] = []
                        for v in dict["Conditions"] as! [Any] {
                            var model = DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression.Conditions()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.conditions = tmp
                    }
                    if dict.keys.contains("Logic") {
                        self.logic = dict["Logic"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertName") {
                    self.alertName = dict["AlertName"] as! String
                }
                if dict.keys.contains("AlertNameId") {
                    self.alertNameId = dict["AlertNameId"] as! String
                }
                if dict.keys.contains("AlertType") {
                    self.alertType = dict["AlertType"] as! String
                }
                if dict.keys.contains("AlertTypeId") {
                    self.alertTypeId = dict["AlertTypeId"] as! String
                }
                if dict.keys.contains("AlertUuid") {
                    self.alertUuid = dict["AlertUuid"] as! String
                }
                if dict.keys.contains("Aliuid") {
                    self.aliuid = dict["Aliuid"] as! Int64
                }
                if dict.keys.contains("Expression") {
                    var model = DescribeWhiteRuleListResponseBody.Data.ResponseData.Expression()
                    model.fromMap(dict["Expression"] as! [String: Any])
                    self.expression = model
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IncidentUuid") {
                    self.incidentUuid = dict["IncidentUuid"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("SubAliuid") {
                    self.subAliuid = dict["SubAliuid"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") {
                var model = DescribeWhiteRuleListResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") {
                var tmp : [DescribeWhiteRuleListResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = DescribeWhiteRuleListResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DescribeWhiteRuleListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeWhiteRuleListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DoQuickFieldRequest : Tea.TeaModel {
    public var from: Int32?

    public var index: String?

    public var page: Int32?

    public var regionId: String?

    public var reverse: Bool?

    public var size: Int32?

    public var to: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.index != nil {
            map["Index"] = self.index!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("From") {
            self.from = dict["From"] as! Int32
        }
        if dict.keys.contains("Index") {
            self.index = dict["Index"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Reverse") {
            self.reverse = dict["Reverse"] as! Bool
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! Int32
        }
    }
}

public class DoQuickFieldResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aggQueryd: String?

        public var completeOrNot: Bool?

        public var count: Int32?

        public var hasSQL: Bool?

        public var keys: [String]?

        public var limited: Int64?

        public var logs: [Any]?

        public var PQuery: String?

        public var processedRows: Int64?

        public var queryMode: Int32?

        public var whereQuery: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aggQueryd != nil {
                map["AggQueryd"] = self.aggQueryd!
            }
            if self.completeOrNot != nil {
                map["CompleteOrNot"] = self.completeOrNot!
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.hasSQL != nil {
                map["HasSQL"] = self.hasSQL!
            }
            if self.keys != nil {
                map["Keys"] = self.keys!
            }
            if self.limited != nil {
                map["Limited"] = self.limited!
            }
            if self.logs != nil {
                map["Logs"] = self.logs!
            }
            if self.PQuery != nil {
                map["PQuery"] = self.PQuery!
            }
            if self.processedRows != nil {
                map["ProcessedRows"] = self.processedRows!
            }
            if self.queryMode != nil {
                map["QueryMode"] = self.queryMode!
            }
            if self.whereQuery != nil {
                map["WhereQuery"] = self.whereQuery!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AggQueryd") {
                self.aggQueryd = dict["AggQueryd"] as! String
            }
            if dict.keys.contains("CompleteOrNot") {
                self.completeOrNot = dict["CompleteOrNot"] as! Bool
            }
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("HasSQL") {
                self.hasSQL = dict["HasSQL"] as! Bool
            }
            if dict.keys.contains("Keys") {
                self.keys = dict["Keys"] as! [String]
            }
            if dict.keys.contains("Limited") {
                self.limited = dict["Limited"] as! Int64
            }
            if dict.keys.contains("Logs") {
                self.logs = dict["Logs"] as! [Any]
            }
            if dict.keys.contains("PQuery") {
                self.PQuery = dict["PQuery"] as! String
            }
            if dict.keys.contains("ProcessedRows") {
                self.processedRows = dict["ProcessedRows"] as! Int64
            }
            if dict.keys.contains("QueryMode") {
                self.queryMode = dict["QueryMode"] as! Int32
            }
            if dict.keys.contains("WhereQuery") {
                self.whereQuery = dict["WhereQuery"] as! String
            }
        }
    }
    public var data: DoQuickFieldResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DoQuickFieldResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DoQuickFieldResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DoQuickFieldResponseBody?

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
            var model = DoQuickFieldResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DoSelfDelegateRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var delegateOrNot: Int32?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.delegateOrNot != nil {
            map["DelegateOrNot"] = self.delegateOrNot!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("DelegateOrNot") {
            self.delegateOrNot = dict["DelegateOrNot"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DoSelfDelegateResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DoSelfDelegateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DoSelfDelegateResponseBody?

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
            var model = DoSelfDelegateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoSubmit") {
            self.autoSubmit = dict["AutoSubmit"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnableAccessForCloudSiemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnableServiceForCloudSiemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExistLogStore") {
                self.existLogStore = dict["ExistLogStore"] as! Bool
            }
            if dict.keys.contains("PreservedCapacity") {
                self.preservedCapacity = dict["PreservedCapacity"] as! Int64
            }
            if dict.keys.contains("UsedCapacity") {
                self.usedCapacity = dict["UsedCapacity"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetCapacityResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCapacityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHistogramsRequest : Tea.TeaModel {
    public var from: Int32?

    public var query: String?

    public var regionId: String?

    public var to: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("From") {
            self.from = dict["From"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! Int32
        }
    }
}

public class GetHistogramsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Histograms : Tea.TeaModel {
            public var completedOrNot: Bool?

            public var count: Int64?

            public var from: Int32?

            public var to: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completedOrNot != nil {
                    map["CompletedOrNot"] = self.completedOrNot!
                }
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompletedOrNot") {
                    self.completedOrNot = dict["CompletedOrNot"] as! Bool
                }
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int64
                }
                if dict.keys.contains("From") {
                    self.from = dict["From"] as! Int32
                }
                if dict.keys.contains("To") {
                    self.to = dict["To"] as! Int32
                }
            }
        }
        public var histograms: [GetHistogramsResponseBody.Data.Histograms]?

        public var server: String?

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
            if self.histograms != nil {
                var tmp : [Any] = []
                for k in self.histograms! {
                    tmp.append(k.toMap())
                }
                map["Histograms"] = tmp
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Histograms") {
                var tmp : [GetHistogramsResponseBody.Data.Histograms] = []
                for v in dict["Histograms"] as! [Any] {
                    var model = GetHistogramsResponseBody.Data.Histograms()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.histograms = tmp
            }
            if dict.keys.contains("Server") {
                self.server = dict["Server"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var data: GetHistogramsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetHistogramsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetHistogramsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHistogramsResponseBody?

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
            var model = GetHistogramsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLogsRequest : Tea.TeaModel {
    public var from: Int32?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var regionId: String?

    public var reverseOrNot: Bool?

    public var to: Int32?

    public var total: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.reverseOrNot != nil {
            map["ReverseOrNot"] = self.reverseOrNot!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("From") {
            self.from = dict["From"] as! Int32
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReverseOrNot") {
            self.reverseOrNot = dict["ReverseOrNot"] as! Bool
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! Int32
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int64
        }
    }
}

public class GetLogsResponseBody : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
                }
            }
        }
        public class ResponseData : Tea.TeaModel {
            public var completeOrNot: Bool?

            public var cost: Int64?

            public var count: Int32?

            public var hasSql: Bool?

            public var keys: [String]?

            public var lines: [Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completeOrNot != nil {
                    map["CompleteOrNot"] = self.completeOrNot!
                }
                if self.cost != nil {
                    map["Cost"] = self.cost!
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.hasSql != nil {
                    map["HasSql"] = self.hasSql!
                }
                if self.keys != nil {
                    map["Keys"] = self.keys!
                }
                if self.lines != nil {
                    map["Lines"] = self.lines!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompleteOrNot") {
                    self.completeOrNot = dict["CompleteOrNot"] as! Bool
                }
                if dict.keys.contains("Cost") {
                    self.cost = dict["Cost"] as! Int64
                }
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("HasSql") {
                    self.hasSql = dict["HasSql"] as! Bool
                }
                if dict.keys.contains("Keys") {
                    self.keys = dict["Keys"] as! [String]
                }
                if dict.keys.contains("Lines") {
                    self.lines = dict["Lines"] as! [Any]
                }
            }
        }
        public var pageInfo: GetLogsResponseBody.Data.PageInfo?

        public var responseData: GetLogsResponseBody.Data.ResponseData?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pageInfo?.validate()
            try self.responseData?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageInfo != nil {
                map["PageInfo"] = self.pageInfo?.toMap()
            }
            if self.responseData != nil {
                map["ResponseData"] = self.responseData?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") {
                var model = GetLogsResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") {
                var model = GetLogsResponseBody.Data.ResponseData()
                model.fromMap(dict["ResponseData"] as! [String: Any])
                self.responseData = model
            }
        }
    }
    public var code: Int32?

    public var data: GetLogsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetLogsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class GetLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLogsResponseBody?

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
            var model = GetLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetQuickQueryRequest : Tea.TeaModel {
    public var regionId: String?

    public var searchName: String?

    public override init() {
        super.init()
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
        if self.searchName != nil {
            map["SearchName"] = self.searchName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SearchName") {
            self.searchName = dict["SearchName"] as! String
        }
    }
}

public class GetQuickQueryResponseBody : Tea.TeaModel {
    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetQuickQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQuickQueryResponseBody?

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
            var model = GetQuickQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CanOperate") {
                self.canOperate = dict["CanOperate"] as! Bool
            }
            if dict.keys.contains("DisplayRegion") {
                self.displayRegion = dict["DisplayRegion"] as! Bool
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Ttl") {
                self.ttl = dict["Ttl"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetStorageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetStorageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessId") {
                self.accessId = dict["AccessId"] as! String
            }
            if dict.keys.contains("AccessIdMd5") {
                self.accessIdMd5 = dict["AccessIdMd5"] as! String
            }
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AccountStr") {
                self.accountStr = dict["AccountStr"] as! String
            }
            if dict.keys.contains("Bound") {
                self.bound = dict["Bound"] as! Int32
            }
            if dict.keys.contains("CloudCode") {
                self.cloudCode = dict["CloudCode"] as! String
            }
            if dict.keys.contains("SubUserId") {
                self.subUserId = dict["SubUserId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var tmp : [ListAccountAccessIdResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListAccountAccessIdResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAccountAccessIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("LogCodes") {
            self.logCodes = dict["LogCodes"] as! [String]
        }
        if dict.keys.contains("ProdCode") {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("Imported") {
                self.imported = dict["Imported"] as! Int32
            }
            if dict.keys.contains("LogCode") {
                self.logCode = dict["LogCode"] as! String
            }
            if dict.keys.contains("MainUserId") {
                self.mainUserId = dict["MainUserId"] as! Int64
            }
            if dict.keys.contains("ProdCode") {
                self.prodCode = dict["ProdCode"] as! String
            }
            if dict.keys.contains("SubUserId") {
                self.subUserId = dict["SubUserId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [ListAccountsByLogResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListAccountsByLogResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAccountsByLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CloudCode") {
                    self.cloudCode = dict["CloudCode"] as! String
                }
                if dict.keys.contains("ImportedLogCount") {
                    self.importedLogCount = dict["ImportedLogCount"] as! Int32
                }
                if dict.keys.contains("ModifyTime") {
                    self.modifyTime = dict["ModifyTime"] as! String
                }
                if dict.keys.contains("ProdCode") {
                    self.prodCode = dict["ProdCode"] as! String
                }
                if dict.keys.contains("TotalLogCount") {
                    self.totalLogCount = dict["TotalLogCount"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPage") {
                self.currentPage = dict["CurrentPage"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("ProdList") {
                var tmp : [ListAllProdsResponseBody.Data.ProdList] = []
                for v in dict["ProdList"] as! [Any] {
                    var model = ListAllProdsResponseBody.Data.ProdList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.prodList = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ListAllProdsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAllProdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionType") {
            self.actionType = dict["ActionType"] as! String
        }
        if dict.keys.contains("AutoResponseType") {
            self.autoResponseType = dict["AutoResponseType"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActionConfig") {
                    self.actionConfig = dict["ActionConfig"] as! String
                }
                if dict.keys.contains("ActionType") {
                    self.actionType = dict["ActionType"] as! String
                }
                if dict.keys.contains("Aliuid") {
                    self.aliuid = dict["Aliuid"] as! Int64
                }
                if dict.keys.contains("AutoResponseType") {
                    self.autoResponseType = dict["AutoResponseType"] as! String
                }
                if dict.keys.contains("DataType") {
                    self.dataType = dict["DataType"] as! Int32
                }
                if dict.keys.contains("ExecutionCondition") {
                    self.executionCondition = dict["ExecutionCondition"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("RuleName") {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("SubUserId") {
                    self.subUserId = dict["SubUserId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") {
                var model = ListAutomateResponseConfigsResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") {
                var tmp : [ListAutomateResponseConfigsResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = ListAutomateResponseConfigsResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListAutomateResponseConfigsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAutomateResponseConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessId") {
                self.accessId = dict["AccessId"] as! String
            }
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("BindId") {
                self.bindId = dict["BindId"] as! Int64
            }
            if dict.keys.contains("CloudCode") {
                self.cloudCode = dict["CloudCode"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("DataSourceCount") {
                self.dataSourceCount = dict["DataSourceCount"] as! Int64
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [ListBindAccountResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListBindAccountResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListBindAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("CloudCode") {
                self.cloudCode = dict["CloudCode"] as! String
            }
            if dict.keys.contains("DataSourceInstanceId") {
                self.dataSourceInstanceId = dict["DataSourceInstanceId"] as! String
            }
            if dict.keys.contains("DataSourceName") {
                self.dataSourceName = dict["DataSourceName"] as! String
            }
            if dict.keys.contains("DataSourceRemark") {
                self.dataSourceRemark = dict["DataSourceRemark"] as! String
            }
            if dict.keys.contains("DataSourceType") {
                self.dataSourceType = dict["DataSourceType"] as! String
            }
            if dict.keys.contains("LogCount") {
                self.logCount = dict["LogCount"] as! Int32
            }
            if dict.keys.contains("TaskCount") {
                self.taskCount = dict["TaskCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [ListBindDataSourcesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListBindDataSourcesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListBindDataSourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertType") {
            self.alertType = dict["AlertType"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OrderField") {
            self.orderField = dict["OrderField"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("RuleType") {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("ThreatLevel") {
            self.threatLevel = dict["ThreatLevel"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertType") {
                    self.alertType = dict["AlertType"] as! String
                }
                if dict.keys.contains("AlertTypeMds") {
                    self.alertTypeMds = dict["AlertTypeMds"] as! String
                }
                if dict.keys.contains("Aliuid") {
                    self.aliuid = dict["Aliuid"] as! Int64
                }
                if dict.keys.contains("AttCk") {
                    self.attCk = dict["AttCk"] as! String
                }
                if dict.keys.contains("DataType") {
                    self.dataType = dict["DataType"] as! Int32
                }
                if dict.keys.contains("EventTransferExt") {
                    self.eventTransferExt = dict["EventTransferExt"] as! String
                }
                if dict.keys.contains("EventTransferSwitch") {
                    self.eventTransferSwitch = dict["EventTransferSwitch"] as! Int32
                }
                if dict.keys.contains("EventTransferType") {
                    self.eventTransferType = dict["EventTransferType"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("LogSource") {
                    self.logSource = dict["LogSource"] as! String
                }
                if dict.keys.contains("LogSourceMds") {
                    self.logSourceMds = dict["LogSourceMds"] as! String
                }
                if dict.keys.contains("LogType") {
                    self.logType = dict["LogType"] as! String
                }
                if dict.keys.contains("LogTypeMds") {
                    self.logTypeMds = dict["LogTypeMds"] as! String
                }
                if dict.keys.contains("QueryCycle") {
                    self.queryCycle = dict["QueryCycle"] as! String
                }
                if dict.keys.contains("RuleCondition") {
                    self.ruleCondition = dict["RuleCondition"] as! String
                }
                if dict.keys.contains("RuleDesc") {
                    self.ruleDesc = dict["RuleDesc"] as! String
                }
                if dict.keys.contains("RuleGroup") {
                    self.ruleGroup = dict["RuleGroup"] as! String
                }
                if dict.keys.contains("RuleName") {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("RuleThreshold") {
                    self.ruleThreshold = dict["RuleThreshold"] as! String
                }
                if dict.keys.contains("RuleType") {
                    self.ruleType = dict["RuleType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("ThreatLevel") {
                    self.threatLevel = dict["ThreatLevel"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") {
                var model = ListCloudSiemCustomizeRulesResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") {
                var tmp : [ListCloudSiemCustomizeRulesResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = ListCloudSiemCustomizeRulesResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListCloudSiemCustomizeRulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCloudSiemCustomizeRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertType") {
            self.alertType = dict["AlertType"] as! String
        }
        if dict.keys.contains("AttCk") {
            self.attCk = dict["AttCk"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("EventTransferType") {
            self.eventTransferType = dict["EventTransferType"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("LogSource") {
            self.logSource = dict["LogSource"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OrderField") {
            self.orderField = dict["OrderField"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("RuleType") {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("ThreatLevel") {
            self.threatLevel = dict["ThreatLevel"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertType") {
                    self.alertType = dict["AlertType"] as! String
                }
                if dict.keys.contains("AttCk") {
                    self.attCk = dict["AttCk"] as! String
                }
                if dict.keys.contains("EventTransferType") {
                    self.eventTransferType = dict["EventTransferType"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("RuleDescMds") {
                    self.ruleDescMds = dict["RuleDescMds"] as! String
                }
                if dict.keys.contains("RuleName") {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("RuleNameCn") {
                    self.ruleNameCn = dict["RuleNameCn"] as! String
                }
                if dict.keys.contains("RuleNameEn") {
                    self.ruleNameEn = dict["RuleNameEn"] as! String
                }
                if dict.keys.contains("RuleNameMds") {
                    self.ruleNameMds = dict["RuleNameMds"] as! String
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("ThreatLevel") {
                    self.threatLevel = dict["ThreatLevel"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") {
                var model = ListCloudSiemPredefinedRulesResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") {
                var tmp : [ListCloudSiemPredefinedRulesResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = ListCloudSiemPredefinedRulesResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListCloudSiemPredefinedRulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCloudSiemPredefinedRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCustomizeRuleTestResultRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var id: Int64?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
    }
}

public class ListCustomizeRuleTestResultResponseBody : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
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

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertDesc") {
                    self.alertDesc = dict["AlertDesc"] as! String
                }
                if dict.keys.contains("AlertDetail") {
                    self.alertDetail = dict["AlertDetail"] as! String
                }
                if dict.keys.contains("AlertSrcProd") {
                    self.alertSrcProd = dict["AlertSrcProd"] as! String
                }
                if dict.keys.contains("AlertSrcProdModule") {
                    self.alertSrcProdModule = dict["AlertSrcProdModule"] as! String
                }
                if dict.keys.contains("AttCk") {
                    self.attCk = dict["AttCk"] as! String
                }
                if dict.keys.contains("EventName") {
                    self.eventName = dict["EventName"] as! String
                }
                if dict.keys.contains("EventType") {
                    self.eventType = dict["EventType"] as! String
                }
                if dict.keys.contains("Level") {
                    self.level = dict["Level"] as! String
                }
                if dict.keys.contains("LogSource") {
                    self.logSource = dict["LogSource"] as! String
                }
                if dict.keys.contains("LogTime") {
                    self.logTime = dict["LogTime"] as! String
                }
                if dict.keys.contains("LogType") {
                    self.logType = dict["LogType"] as! String
                }
                if dict.keys.contains("MainUserId") {
                    self.mainUserId = dict["MainUserId"] as! String
                }
                if dict.keys.contains("OnlineStatus") {
                    self.onlineStatus = dict["OnlineStatus"] as! String
                }
                if dict.keys.contains("SubUserId") {
                    self.subUserId = dict["SubUserId"] as! String
                }
                if dict.keys.contains("Uuid") {
                    self.uuid = dict["Uuid"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") {
                var model = ListCustomizeRuleTestResultResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") {
                var tmp : [ListCustomizeRuleTestResultResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = ListCustomizeRuleTestResultResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListCustomizeRuleTestResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCustomizeRuleTestResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("DataSourceInstanceId") {
            self.dataSourceInstanceId = dict["DataSourceInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ParaCode") {
                        self.paraCode = dict["ParaCode"] as! String
                    }
                    if dict.keys.contains("ParaValue") {
                        self.paraValue = dict["ParaValue"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LogCode") {
                    self.logCode = dict["LogCode"] as! String
                }
                if dict.keys.contains("LogInstanceId") {
                    self.logInstanceId = dict["LogInstanceId"] as! String
                }
                if dict.keys.contains("LogMdsCode") {
                    self.logMdsCode = dict["LogMdsCode"] as! String
                }
                if dict.keys.contains("LogParams") {
                    var tmp : [ListDataSourceLogsResponseBody.Data.DataSourceInstanceLogs.LogParams] = []
                    for v in dict["LogParams"] as! [Any] {
                        var model = ListDataSourceLogsResponseBody.Data.DataSourceInstanceLogs.LogParams()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.logParams = tmp
                }
                if dict.keys.contains("TaskStatus") {
                    self.taskStatus = dict["TaskStatus"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("CloudCode") {
                self.cloudCode = dict["CloudCode"] as! String
            }
            if dict.keys.contains("DataSourceInstanceId") {
                self.dataSourceInstanceId = dict["DataSourceInstanceId"] as! String
            }
            if dict.keys.contains("DataSourceInstanceLogs") {
                var tmp : [ListDataSourceLogsResponseBody.Data.DataSourceInstanceLogs] = []
                for v in dict["DataSourceInstanceLogs"] as! [Any] {
                    var model = ListDataSourceLogsResponseBody.Data.DataSourceInstanceLogs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataSourceInstanceLogs = tmp
            }
            if dict.keys.contains("DataSourceInstanceName") {
                self.dataSourceInstanceName = dict["DataSourceInstanceName"] as! String
            }
            if dict.keys.contains("DataSourceInstanceRemark") {
                self.dataSourceInstanceRemark = dict["DataSourceInstanceRemark"] as! String
            }
            if dict.keys.contains("SubUserId") {
                self.subUserId = dict["SubUserId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ListDataSourceLogsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDataSourceLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CloudCode") {
                self.cloudCode = dict["CloudCode"] as! String
            }
            if dict.keys.contains("DataSourceType") {
                self.dataSourceType = dict["DataSourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [ListDataSourceTypesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListDataSourceTypesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDataSourceTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CanOperateOrNot") {
                        self.canOperateOrNot = dict["CanOperateOrNot"] as! Bool
                    }
                    if dict.keys.contains("ExtraParameters") {
                        var tmp : [ListDeliveryResponseBody.Data.ProductList.LogList.ExtraParameters] = []
                        for v in dict["ExtraParameters"] as! [Any] {
                            var model = ListDeliveryResponseBody.Data.ProductList.LogList.ExtraParameters()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.extraParameters = tmp
                    }
                    if dict.keys.contains("LogCode") {
                        self.logCode = dict["LogCode"] as! String
                    }
                    if dict.keys.contains("LogName") {
                        self.logName = dict["LogName"] as! String
                    }
                    if dict.keys.contains("LogNameEn") {
                        self.logNameEn = dict["LogNameEn"] as! String
                    }
                    if dict.keys.contains("LogNameKey") {
                        self.logNameKey = dict["LogNameKey"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! Bool
                    }
                    if dict.keys.contains("Topic") {
                        self.topic = dict["Topic"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LogList") {
                    var tmp : [ListDeliveryResponseBody.Data.ProductList.LogList] = []
                    for v in dict["LogList"] as! [Any] {
                        var model = ListDeliveryResponseBody.Data.ProductList.LogList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.logList = tmp
                }
                if dict.keys.contains("LogMap") {
                    var tmp : [String: [DataProductListLogMapValue]] = [:]
                    for (k, v) in dict["LogMap"] as! [String: Any] {
                        var l1 : [DataProductListLogMapValue] = []
                        for v1 in v as! [Any] {
                            var model = DataProductListLogMapValue()
                            if v1 != nil {
                                model.fromMap(v1 as! [String: Any])
                            }
                            l1.append(model)
                        }
                        tmp[k] = l1
                    }
                    self.logMap = tmp
                }
                if dict.keys.contains("ProductCode") {
                    self.productCode = dict["ProductCode"] as! String
                }
                if dict.keys.contains("ProductName") {
                    self.productName = dict["ProductName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DashboardUrl") {
                self.dashboardUrl = dict["DashboardUrl"] as! String
            }
            if dict.keys.contains("DisplaySwitchOrNot") {
                self.displaySwitchOrNot = dict["DisplaySwitchOrNot"] as! Bool
            }
            if dict.keys.contains("LogStoreName") {
                self.logStoreName = dict["LogStoreName"] as! String
            }
            if dict.keys.contains("ProductList") {
                var tmp : [ListDeliveryResponseBody.Data.ProductList] = []
                for v in dict["ProductList"] as! [Any] {
                    var model = ListDeliveryResponseBody.Data.ProductList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.productList = tmp
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("SearchUrl") {
                self.searchUrl = dict["SearchUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ListDeliveryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDeliveryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EffectiveStatus") {
            self.effectiveStatus = dict["EffectiveStatus"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("EntityIdentity") {
            self.entityIdentity = dict["EntityIdentity"] as! String
        }
        if dict.keys.contains("EntityType") {
            self.entityType = dict["EntityType"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OrderField") {
            self.orderField = dict["OrderField"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PlaybookName") {
            self.playbookName = dict["PlaybookName"] as! String
        }
        if dict.keys.contains("PlaybookTypes") {
            self.playbookTypes = dict["PlaybookTypes"] as! String
        }
        if dict.keys.contains("PlaybookUuid") {
            self.playbookUuid = dict["PlaybookUuid"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("SophonTaskId") {
            self.sophonTaskId = dict["SophonTaskId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentPage") {
                    self.currentPage = dict["CurrentPage"] as! Int32
                }
                if dict.keys.contains("PageSize") {
                    self.pageSize = dict["PageSize"] as! Int32
                }
                if dict.keys.contains("TotalCount") {
                    self.totalCount = dict["TotalCount"] as! Int64
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

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertUuid") {
                    self.alertUuid = dict["AlertUuid"] as! String
                }
                if dict.keys.contains("Aliuid") {
                    self.aliuid = dict["Aliuid"] as! Int64
                }
                if dict.keys.contains("EffectiveStatus") {
                    self.effectiveStatus = dict["EffectiveStatus"] as! Int32
                }
                if dict.keys.contains("Entity") {
                    self.entity = dict["Entity"] as! [Any]
                }
                if dict.keys.contains("EntityId") {
                    self.entityId = dict["EntityId"] as! Int64
                }
                if dict.keys.contains("EntityType") {
                    self.entityType = dict["EntityType"] as! String
                }
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("FinishTime") {
                    self.finishTime = dict["FinishTime"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IncidentName") {
                    self.incidentName = dict["IncidentName"] as! String
                }
                if dict.keys.contains("IncidentUuid") {
                    self.incidentUuid = dict["IncidentUuid"] as! String
                }
                if dict.keys.contains("PlaybookName") {
                    self.playbookName = dict["PlaybookName"] as! String
                }
                if dict.keys.contains("PlaybookType") {
                    self.playbookType = dict["PlaybookType"] as! String
                }
                if dict.keys.contains("PlaybookUuid") {
                    self.playbookUuid = dict["PlaybookUuid"] as! String
                }
                if dict.keys.contains("Scope") {
                    self.scope = dict["Scope"] as! [Any]
                }
                if dict.keys.contains("SophonTaskId") {
                    self.sophonTaskId = dict["SophonTaskId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("SubAliuid") {
                    self.subAliuid = dict["SubAliuid"] as! Int64
                }
                if dict.keys.contains("TaskParam") {
                    self.taskParam = dict["TaskParam"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageInfo") {
                var model = ListDisposeStrategyResponseBody.Data.PageInfo()
                model.fromMap(dict["PageInfo"] as! [String: Any])
                self.pageInfo = model
            }
            if dict.keys.contains("ResponseData") {
                var tmp : [ListDisposeStrategyResponseBody.Data.ResponseData] = []
                for v in dict["ResponseData"] as! [Any] {
                    var model = ListDisposeStrategyResponseBody.Data.ResponseData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = ListDisposeStrategyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDisposeStrategyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("ProdCode") {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoImported") {
                self.autoImported = dict["AutoImported"] as! Int32
            }
            if dict.keys.contains("CloudCode") {
                self.cloudCode = dict["CloudCode"] as! String
            }
            if dict.keys.contains("Imported") {
                self.imported = dict["Imported"] as! Int32
            }
            if dict.keys.contains("ImportedUserCount") {
                self.importedUserCount = dict["ImportedUserCount"] as! Int32
            }
            if dict.keys.contains("LogCode") {
                self.logCode = dict["LogCode"] as! String
            }
            if dict.keys.contains("LogMdsCode") {
                self.logMdsCode = dict["LogMdsCode"] as! String
            }
            if dict.keys.contains("LogType") {
                self.logType = dict["LogType"] as! Int32
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ProdCode") {
                self.prodCode = dict["ProdCode"] as! String
            }
            if dict.keys.contains("TotalUserCount") {
                self.totalUserCount = dict["TotalUserCount"] as! Int32
            }
            if dict.keys.contains("UnImportedUserCount") {
                self.unImportedUserCount = dict["UnImportedUserCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [ListImportedLogsByProdResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListImportedLogsByProdResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListImportedLogsByProdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOperationRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListOperationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var adminOrNot: Bool?

        public var operationList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adminOrNot != nil {
                map["AdminOrNot"] = self.adminOrNot!
            }
            if self.operationList != nil {
                map["OperationList"] = self.operationList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdminOrNot") {
                self.adminOrNot = dict["AdminOrNot"] as! Bool
            }
            if dict.keys.contains("OperationList") {
                self.operationList = dict["OperationList"] as! [String]
            }
        }
    }
    public var data: ListOperationResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ListOperationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOperationResponseBody?

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
            var model = ListOperationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceLogCode") {
            self.sourceLogCode = dict["SourceLogCode"] as! String
        }
        if dict.keys.contains("SourceProdCode") {
            self.sourceProdCode = dict["SourceProdCode"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndPoint") {
                self.endPoint = dict["EndPoint"] as! String
            }
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("LogStore") {
                self.logStore = dict["LogStore"] as! String
            }
            if dict.keys.contains("MainUserId") {
                self.mainUserId = dict["MainUserId"] as! Int64
            }
            if dict.keys.contains("Project") {
                self.project = dict["Project"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("SubUserId") {
                self.subUserId = dict["SubUserId"] as! Int64
            }
            if dict.keys.contains("SubUserName") {
                self.subUserName = dict["SubUserName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [ListProjectLogStoresResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListProjectLogStoresResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListProjectLogStoresResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListQuickQueryRequest : Tea.TeaModel {
    public var offset: Int32?

    public var pageSize: Int32?

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
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Offset") {
            self.offset = dict["Offset"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListQuickQueryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class QuickQueryList : Tea.TeaModel {
            public var displayName: String?

            public var query: String?

            public var searchName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.query != nil {
                    map["Query"] = self.query!
                }
                if self.searchName != nil {
                    map["SearchName"] = self.searchName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("Query") {
                    self.query = dict["Query"] as! String
                }
                if dict.keys.contains("SearchName") {
                    self.searchName = dict["SearchName"] as! String
                }
            }
        }
        public var count: Int32?

        public var quickQueryList: [ListQuickQueryResponseBody.Data.QuickQueryList]?

        public var total: Int32?

        public override init() {
            super.init()
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
            if self.quickQueryList != nil {
                var tmp : [Any] = []
                for k in self.quickQueryList! {
                    tmp.append(k.toMap())
                }
                map["QuickQueryList"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("QuickQueryList") {
                var tmp : [ListQuickQueryResponseBody.Data.QuickQueryList] = []
                for v in dict["QuickQueryList"] as! [Any] {
                    var model = ListQuickQueryResponseBody.Data.QuickQueryList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.quickQueryList = tmp
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var data: ListQuickQueryResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ListQuickQueryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListQuickQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQuickQueryResponseBody?

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
            var model = ListQuickQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DelegatedOrNot") {
                self.delegatedOrNot = dict["DelegatedOrNot"] as! Bool
            }
            if dict.keys.contains("Joined") {
                self.joined = dict["Joined"] as! Bool
            }
            if dict.keys.contains("JoinedTime") {
                self.joinedTime = dict["JoinedTime"] as! String
            }
            if dict.keys.contains("MainUserId") {
                self.mainUserId = dict["MainUserId"] as! Int64
            }
            if dict.keys.contains("SubUserId") {
                self.subUserId = dict["SubUserId"] as! Int64
            }
            if dict.keys.contains("SubUserName") {
                self.subUserName = dict["SubUserName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [ListRdUsersResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListRdUsersResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListRdUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserProdLogsRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var sourceLogCode: String?

    public var sourceProdCode: String?

    public override init() {
        super.init()
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
        if self.sourceLogCode != nil {
            map["SourceLogCode"] = self.sourceLogCode!
        }
        if self.sourceProdCode != nil {
            map["SourceProdCode"] = self.sourceProdCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("SourceLogCode") {
            self.sourceLogCode = dict["SourceLogCode"] as! String
        }
        if dict.keys.contains("SourceProdCode") {
            self.sourceProdCode = dict["SourceProdCode"] as! String
        }
    }
}

public class ListUserProdLogsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var displayLine: String?

        public var displayed: Bool?

        public var imported: Bool?

        public var isDeleted: Int32?

        public var mainUserId: Int64?

        public var sourceLogCode: String?

        public var sourceLogInfo: String?

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
            if self.displayLine != nil {
                map["DisplayLine"] = self.displayLine!
            }
            if self.displayed != nil {
                map["Displayed"] = self.displayed!
            }
            if self.imported != nil {
                map["Imported"] = self.imported!
            }
            if self.isDeleted != nil {
                map["IsDeleted"] = self.isDeleted!
            }
            if self.mainUserId != nil {
                map["MainUserId"] = self.mainUserId!
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
            if self.subUserName != nil {
                map["SubUserName"] = self.subUserName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisplayLine") {
                self.displayLine = dict["DisplayLine"] as! String
            }
            if dict.keys.contains("Displayed") {
                self.displayed = dict["Displayed"] as! Bool
            }
            if dict.keys.contains("Imported") {
                self.imported = dict["Imported"] as! Bool
            }
            if dict.keys.contains("IsDeleted") {
                self.isDeleted = dict["IsDeleted"] as! Int32
            }
            if dict.keys.contains("MainUserId") {
                self.mainUserId = dict["MainUserId"] as! Int64
            }
            if dict.keys.contains("SourceLogCode") {
                self.sourceLogCode = dict["SourceLogCode"] as! String
            }
            if dict.keys.contains("SourceLogInfo") {
                self.sourceLogInfo = dict["SourceLogInfo"] as! String
            }
            if dict.keys.contains("SourceProdCode") {
                self.sourceProdCode = dict["SourceProdCode"] as! String
            }
            if dict.keys.contains("SubUserId") {
                self.subUserId = dict["SubUserId"] as! Int64
            }
            if dict.keys.contains("SubUserName") {
                self.subUserName = dict["SubUserName"] as! String
            }
        }
    }
    public var data: [ListUserProdLogsResponseBody.Data]?

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
        if dict.keys.contains("Data") {
            var tmp : [ListUserProdLogsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListUserProdLogsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListUserProdLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserProdLogsResponseBody?

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
            var model = ListUserProdLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersByProdRequest : Tea.TeaModel {
    public var regionId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var sourceProdCode: String?

    public override init() {
        super.init()
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
        if self.sourceProdCode != nil {
            map["SourceProdCode"] = self.sourceProdCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("SourceProdCode") {
            self.sourceProdCode = dict["SourceProdCode"] as! String
        }
    }
}

public class ListUsersByProdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cloudCode: String?

        public var imported: Bool?

        public var logMdsCode: String?

        public var mainUserId: Int64?

        public var sourceLogCode: String?

        public var sourceLogName: String?

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
            if self.cloudCode != nil {
                map["CloudCode"] = self.cloudCode!
            }
            if self.imported != nil {
                map["Imported"] = self.imported!
            }
            if self.logMdsCode != nil {
                map["LogMdsCode"] = self.logMdsCode!
            }
            if self.mainUserId != nil {
                map["MainUserId"] = self.mainUserId!
            }
            if self.sourceLogCode != nil {
                map["SourceLogCode"] = self.sourceLogCode!
            }
            if self.sourceLogName != nil {
                map["SourceLogName"] = self.sourceLogName!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CloudCode") {
                self.cloudCode = dict["CloudCode"] as! String
            }
            if dict.keys.contains("Imported") {
                self.imported = dict["Imported"] as! Bool
            }
            if dict.keys.contains("LogMdsCode") {
                self.logMdsCode = dict["LogMdsCode"] as! String
            }
            if dict.keys.contains("MainUserId") {
                self.mainUserId = dict["MainUserId"] as! Int64
            }
            if dict.keys.contains("SourceLogCode") {
                self.sourceLogCode = dict["SourceLogCode"] as! String
            }
            if dict.keys.contains("SourceLogName") {
                self.sourceLogName = dict["SourceLogName"] as! String
            }
            if dict.keys.contains("SourceProdCode") {
                self.sourceProdCode = dict["SourceProdCode"] as! String
            }
            if dict.keys.contains("SubUserId") {
                self.subUserId = dict["SubUserId"] as! Int64
            }
            if dict.keys.contains("SubUserName") {
                self.subUserName = dict["SubUserName"] as! String
            }
        }
    }
    public var data: [ListUsersByProdResponseBody.Data]?

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
        if dict.keys.contains("Data") {
            var tmp : [ListUsersByProdResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListUsersByProdResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListUsersByProdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersByProdResponseBody?

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
            var model = ListUsersByProdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessId") {
            self.accessId = dict["AccessId"] as! String
        }
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("BindId") {
            self.bindId = dict["BindId"] as! Int64
        }
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ModifyBindAccountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyBindAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("DataSourceInstanceId") {
            self.dataSourceInstanceId = dict["DataSourceInstanceId"] as! String
        }
        if dict.keys.contains("DataSourceInstanceName") {
            self.dataSourceInstanceName = dict["DataSourceInstanceName"] as! String
        }
        if dict.keys.contains("DataSourceInstanceParams") {
            self.dataSourceInstanceParams = dict["DataSourceInstanceParams"] as! String
        }
        if dict.keys.contains("DataSourceInstanceRemark") {
            self.dataSourceInstanceRemark = dict["DataSourceInstanceRemark"] as! String
        }
        if dict.keys.contains("DataSourceType") {
            self.dataSourceType = dict["DataSourceType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("DataSourceInstanceId") {
                self.dataSourceInstanceId = dict["DataSourceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ModifyDataSourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("DataSourceInstanceId") {
            self.dataSourceInstanceId = dict["DataSourceInstanceId"] as! String
        }
        if dict.keys.contains("DataSourceInstanceLogs") {
            self.dataSourceInstanceLogs = dict["DataSourceInstanceLogs"] as! String
        }
        if dict.keys.contains("DataSourceType") {
            self.dataSourceType = dict["DataSourceType"] as! String
        }
        if dict.keys.contains("LogCode") {
            self.logCode = dict["LogCode"] as! String
        }
        if dict.keys.contains("LogInstanceId") {
            self.logInstanceId = dict["LogInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("LogInstanceId") {
                self.logInstanceId = dict["LogInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ModifyDataSourceLogResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDataSourceLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogCode") {
            self.logCode = dict["LogCode"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OpenDeliveryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionConfig") {
            self.actionConfig = dict["ActionConfig"] as! String
        }
        if dict.keys.contains("ActionType") {
            self.actionType = dict["ActionType"] as! String
        }
        if dict.keys.contains("AutoResponseType") {
            self.autoResponseType = dict["AutoResponseType"] as! String
        }
        if dict.keys.contains("ExecutionCondition") {
            self.executionCondition = dict["ExecutionCondition"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PostAutomateResponseConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertType") {
            self.alertType = dict["AlertType"] as! String
        }
        if dict.keys.contains("AlertTypeMds") {
            self.alertTypeMds = dict["AlertTypeMds"] as! String
        }
        if dict.keys.contains("AttCk") {
            self.attCk = dict["AttCk"] as! String
        }
        if dict.keys.contains("EventTransferExt") {
            self.eventTransferExt = dict["EventTransferExt"] as! String
        }
        if dict.keys.contains("EventTransferSwitch") {
            self.eventTransferSwitch = dict["EventTransferSwitch"] as! Int32
        }
        if dict.keys.contains("EventTransferType") {
            self.eventTransferType = dict["EventTransferType"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("LogSource") {
            self.logSource = dict["LogSource"] as! String
        }
        if dict.keys.contains("LogSourceMds") {
            self.logSourceMds = dict["LogSourceMds"] as! String
        }
        if dict.keys.contains("LogType") {
            self.logType = dict["LogType"] as! String
        }
        if dict.keys.contains("LogTypeMds") {
            self.logTypeMds = dict["LogTypeMds"] as! String
        }
        if dict.keys.contains("QueryCycle") {
            self.queryCycle = dict["QueryCycle"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("RuleCondition") {
            self.ruleCondition = dict["RuleCondition"] as! String
        }
        if dict.keys.contains("RuleDesc") {
            self.ruleDesc = dict["RuleDesc"] as! String
        }
        if dict.keys.contains("RuleGroup") {
            self.ruleGroup = dict["RuleGroup"] as! String
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("RuleThreshold") {
            self.ruleThreshold = dict["RuleThreshold"] as! String
        }
        if dict.keys.contains("ThreatLevel") {
            self.threatLevel = dict["ThreatLevel"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertType") {
                self.alertType = dict["AlertType"] as! String
            }
            if dict.keys.contains("AlertTypeMds") {
                self.alertTypeMds = dict["AlertTypeMds"] as! String
            }
            if dict.keys.contains("Aliuid") {
                self.aliuid = dict["Aliuid"] as! Int64
            }
            if dict.keys.contains("AttCk") {
                self.attCk = dict["AttCk"] as! String
            }
            if dict.keys.contains("DataType") {
                self.dataType = dict["DataType"] as! Int32
            }
            if dict.keys.contains("EventTransferExt") {
                self.eventTransferExt = dict["EventTransferExt"] as! String
            }
            if dict.keys.contains("EventTransferSwitch") {
                self.eventTransferSwitch = dict["EventTransferSwitch"] as! Int32
            }
            if dict.keys.contains("EventTransferType") {
                self.eventTransferType = dict["EventTransferType"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LogSource") {
                self.logSource = dict["LogSource"] as! String
            }
            if dict.keys.contains("LogSourceMds") {
                self.logSourceMds = dict["LogSourceMds"] as! String
            }
            if dict.keys.contains("LogType") {
                self.logType = dict["LogType"] as! String
            }
            if dict.keys.contains("LogTypeMds") {
                self.logTypeMds = dict["LogTypeMds"] as! String
            }
            if dict.keys.contains("QueryCycle") {
                self.queryCycle = dict["QueryCycle"] as! String
            }
            if dict.keys.contains("RuleCondition") {
                self.ruleCondition = dict["RuleCondition"] as! String
            }
            if dict.keys.contains("RuleDesc") {
                self.ruleDesc = dict["RuleDesc"] as! String
            }
            if dict.keys.contains("RuleGroup") {
                self.ruleGroup = dict["RuleGroup"] as! String
            }
            if dict.keys.contains("RuleName") {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("RuleThreshold") {
                self.ruleThreshold = dict["RuleThreshold"] as! String
            }
            if dict.keys.contains("RuleType") {
                self.ruleType = dict["RuleType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("ThreatLevel") {
                self.threatLevel = dict["ThreatLevel"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = PostCustomizeRuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PostCustomizeRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("SimulatedData") {
            self.simulatedData = dict["SimulatedData"] as! String
        }
        if dict.keys.contains("TestType") {
            self.testType = dict["TestType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Any
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PostCustomizeRuleTestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventDispose") {
            self.eventDispose = dict["EventDispose"] as! String
        }
        if dict.keys.contains("IncidentUuid") {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("ReceiverInfo") {
            self.receiverInfo = dict["ReceiverInfo"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PostEventDisposeAndWhiteruleListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncidentUuid") {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("WhiteruleList") {
            self.whiteruleList = dict["WhiteruleList"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PostEventWhiteruleListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Any
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PostFinishCustomizeRuleTestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("InUse") {
            self.inUse = dict["InUse"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("RuleType") {
            self.ruleType = dict["RuleType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Any
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PostRuleStatusChangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RestoreCapacityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveQuickQueryRequest : Tea.TeaModel {
    public var displayName: String?

    public var query: String?

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
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SaveQuickQueryResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SaveQuickQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveQuickQueryResponseBody?

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
            var model = SaveQuickQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("Ttl") {
            self.ttl = dict["Ttl"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetStorageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ShowQuickAnalysisRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ShowQuickAnalysisResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var indexList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.indexList != nil {
                map["IndexList"] = self.indexList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IndexList") {
                self.indexList = dict["IndexList"] as! [String]
            }
        }
    }
    public var data: ShowQuickAnalysisResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ShowQuickAnalysisResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ShowQuickAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ShowQuickAnalysisResponseBody?

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
            var model = ShowQuickAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accounts") {
            self.accounts = dict["Accounts"] as! String
        }
        if dict.keys.contains("AutoImported") {
            self.autoImported = dict["AutoImported"] as! Int32
        }
        if dict.keys.contains("CloudCode") {
            self.cloudCode = dict["CloudCode"] as! String
        }
        if dict.keys.contains("LogCodes") {
            self.logCodes = dict["LogCodes"] as! String
        }
        if dict.keys.contains("ProdCode") {
            self.prodCode = dict["ProdCode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = SubmitImportLogTasksResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SubmitImportLogTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitJobsRequest : Tea.TeaModel {
    public var jsonParam: String?

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
        if self.jsonParam != nil {
            map["JsonParam"] = self.jsonParam!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JsonParam") {
            self.jsonParam = dict["JsonParam"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SubmitJobsResponseBody : Tea.TeaModel {
    public var data: Int32?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitJobsResponseBody?

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
            var model = SubmitJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("InUse") {
            self.inUse = dict["InUse"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAutomateResponseConfigStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Expression") {
            self.expression = dict["Expression"] as! String
        }
        if dict.keys.contains("IncidentUuid") {
            self.incidentUuid = dict["IncidentUuid"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleFor") {
            self.roleFor = dict["RoleFor"] as! Int64
        }
        if dict.keys.contains("RoleType") {
            self.roleType = dict["RoleType"] as! Int32
        }
        if dict.keys.contains("WhiteRuleId") {
            self.whiteRuleId = dict["WhiteRuleId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Any
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateWhiteRuleListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
