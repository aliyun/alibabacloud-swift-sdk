import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CheckUpgradeItemRequest : Tea.TeaModel {
    public var lang: String?

    public var regionId: String?

    public var roleFor: String?

    public var upgradeItemId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.upgradeItemId != nil {
            map["UpgradeItemId"] = self.upgradeItemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? String {
            self.roleFor = value
        }
        if let value = dict["UpgradeItemId"] as? String {
            self.upgradeItemId = value
        }
    }
}

public class CheckUpgradeItemResponseBody : Tea.TeaModel {
    public class UpgradeItem : Tea.TeaModel {
        public var checkResult: String?

        public var checkStatus: String?

        public var upgradeItemId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkResult != nil {
                map["CheckResult"] = self.checkResult!
            }
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.upgradeItemId != nil {
                map["UpgradeItemId"] = self.upgradeItemId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CheckResult"] as? String {
                self.checkResult = value
            }
            if let value = dict["CheckStatus"] as? String {
                self.checkStatus = value
            }
            if let value = dict["UpgradeItemId"] as? String {
                self.upgradeItemId = value
            }
        }
    }
    public var requestId: String?

    public var upgradeItem: CheckUpgradeItemResponseBody.UpgradeItem?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.upgradeItem?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.upgradeItem != nil {
            map["UpgradeItem"] = self.upgradeItem?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UpgradeItem"] as? [String: Any?] {
            var model = CheckUpgradeItemResponseBody.UpgradeItem()
            model.fromMap(value)
            self.upgradeItem = model
        }
    }
}

public class CheckUpgradeItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckUpgradeItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckUpgradeItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDataIngestionRequest : Tea.TeaModel {
    public var capacityCount: Int32?

    public var dataIngestionMode: String?

    public var dataIngestionStateCode: String?

    public var dataIngestionType: String?

    public var dataSourceEditable: Bool?

    public var dataSourceId: String?

    public var lang: String?

    public var normalizationRuleEditable: Bool?

    public var normalizationRuleId: String?

    public var productId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var scanDataSourceId: String?

    public var streamJobId: String?

    public var updateTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.capacityCount != nil {
            map["CapacityCount"] = self.capacityCount!
        }
        if self.dataIngestionMode != nil {
            map["DataIngestionMode"] = self.dataIngestionMode!
        }
        if self.dataIngestionStateCode != nil {
            map["DataIngestionStateCode"] = self.dataIngestionStateCode!
        }
        if self.dataIngestionType != nil {
            map["DataIngestionType"] = self.dataIngestionType!
        }
        if self.dataSourceEditable != nil {
            map["DataSourceEditable"] = self.dataSourceEditable!
        }
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.normalizationRuleEditable != nil {
            map["NormalizationRuleEditable"] = self.normalizationRuleEditable!
        }
        if self.normalizationRuleId != nil {
            map["NormalizationRuleId"] = self.normalizationRuleId!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.scanDataSourceId != nil {
            map["ScanDataSourceId"] = self.scanDataSourceId!
        }
        if self.streamJobId != nil {
            map["StreamJobId"] = self.streamJobId!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CapacityCount"] as? Int32 {
            self.capacityCount = value
        }
        if let value = dict["DataIngestionMode"] as? String {
            self.dataIngestionMode = value
        }
        if let value = dict["DataIngestionStateCode"] as? String {
            self.dataIngestionStateCode = value
        }
        if let value = dict["DataIngestionType"] as? String {
            self.dataIngestionType = value
        }
        if let value = dict["DataSourceEditable"] as? Bool {
            self.dataSourceEditable = value
        }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NormalizationRuleEditable"] as? Bool {
            self.normalizationRuleEditable = value
        }
        if let value = dict["NormalizationRuleId"] as? String {
            self.normalizationRuleId = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["ScanDataSourceId"] as? String {
            self.scanDataSourceId = value
        }
        if let value = dict["StreamJobId"] as? String {
            self.streamJobId = value
        }
        if let value = dict["UpdateTime"] as? Int64 {
            self.updateTime = value
        }
    }
}

public class CreateDataIngestionResponseBody : Tea.TeaModel {
    public var dataIngestionId: String?

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
        if self.dataIngestionId != nil {
            map["DataIngestionId"] = self.dataIngestionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataIngestionId"] as? String {
            self.dataIngestionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDataIngestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataIngestionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDataIngestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDataSetRequest : Tea.TeaModel {
    public class IpWhitelistRecognizers : Tea.TeaModel {
        public var autoRecognizeStatus: String?

        public var ipWhitelistRecognizerType: String?

        public var recognizeScope: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRecognizeStatus != nil {
                map["AutoRecognizeStatus"] = self.autoRecognizeStatus!
            }
            if self.ipWhitelistRecognizerType != nil {
                map["IpWhitelistRecognizerType"] = self.ipWhitelistRecognizerType!
            }
            if self.recognizeScope != nil {
                map["RecognizeScope"] = self.recognizeScope!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoRecognizeStatus"] as? String {
                self.autoRecognizeStatus = value
            }
            if let value = dict["IpWhitelistRecognizerType"] as? String {
                self.ipWhitelistRecognizerType = value
            }
            if let value = dict["RecognizeScope"] as? String {
                self.recognizeScope = value
            }
        }
    }
    public var dataSetDescription: String?

    public var dataSetFieldKeyName: String?

    public var dataSetFileName: String?

    public var dataSetName: String?

    public var dataSetStatus: Int32?

    public var dataSetType: String?

    public var ipWhitelistRecognizers: [CreateDataSetRequest.IpWhitelistRecognizers]?

    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSetDescription != nil {
            map["DataSetDescription"] = self.dataSetDescription!
        }
        if self.dataSetFieldKeyName != nil {
            map["DataSetFieldKeyName"] = self.dataSetFieldKeyName!
        }
        if self.dataSetFileName != nil {
            map["DataSetFileName"] = self.dataSetFileName!
        }
        if self.dataSetName != nil {
            map["DataSetName"] = self.dataSetName!
        }
        if self.dataSetStatus != nil {
            map["DataSetStatus"] = self.dataSetStatus!
        }
        if self.dataSetType != nil {
            map["DataSetType"] = self.dataSetType!
        }
        if self.ipWhitelistRecognizers != nil {
            var tmp : [Any] = []
            for k in self.ipWhitelistRecognizers! {
                tmp.append(k.toMap())
            }
            map["IpWhitelistRecognizers"] = tmp
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSetDescription"] as? String {
            self.dataSetDescription = value
        }
        if let value = dict["DataSetFieldKeyName"] as? String {
            self.dataSetFieldKeyName = value
        }
        if let value = dict["DataSetFileName"] as? String {
            self.dataSetFileName = value
        }
        if let value = dict["DataSetName"] as? String {
            self.dataSetName = value
        }
        if let value = dict["DataSetStatus"] as? Int32 {
            self.dataSetStatus = value
        }
        if let value = dict["DataSetType"] as? String {
            self.dataSetType = value
        }
        if let value = dict["IpWhitelistRecognizers"] as? [Any?] {
            var tmp : [CreateDataSetRequest.IpWhitelistRecognizers] = []
            for v in value {
                if v != nil {
                    var model = CreateDataSetRequest.IpWhitelistRecognizers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipWhitelistRecognizers = tmp
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class CreateDataSetResponseBody : Tea.TeaModel {
    public class DataSetRecordStatistic : Tea.TeaModel {
        public var dataSetId: String?

        public var newDataSetRecordCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataSetId != nil {
                map["DataSetId"] = self.dataSetId!
            }
            if self.newDataSetRecordCount != nil {
                map["NewDataSetRecordCount"] = self.newDataSetRecordCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataSetId"] as? String {
                self.dataSetId = value
            }
            if let value = dict["NewDataSetRecordCount"] as? Int32 {
                self.newDataSetRecordCount = value
            }
        }
    }
    public var dataSetRecordStatistic: CreateDataSetResponseBody.DataSetRecordStatistic?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataSetRecordStatistic?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSetRecordStatistic != nil {
            map["DataSetRecordStatistic"] = self.dataSetRecordStatistic?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSetRecordStatistic"] as? [String: Any?] {
            var model = CreateDataSetResponseBody.DataSetRecordStatistic()
            model.fromMap(value)
            self.dataSetRecordStatistic = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDataSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDataSetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDataSourceRequest : Tea.TeaModel {
    public class DataSourceStores : Tea.TeaModel {
        public var createTime: Int64?

        public var dataSourceStoreFrom: String?

        public var dataSourceStoreId: String?

        public var dataSourceStoreStatus: String?

        public var logProjectName: String?

        public var logRegionId: String?

        public var logStoreName: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.dataSourceStoreFrom != nil {
                map["DataSourceStoreFrom"] = self.dataSourceStoreFrom!
            }
            if self.dataSourceStoreId != nil {
                map["DataSourceStoreId"] = self.dataSourceStoreId!
            }
            if self.dataSourceStoreStatus != nil {
                map["DataSourceStoreStatus"] = self.dataSourceStoreStatus!
            }
            if self.logProjectName != nil {
                map["LogProjectName"] = self.logProjectName!
            }
            if self.logRegionId != nil {
                map["LogRegionId"] = self.logRegionId!
            }
            if self.logStoreName != nil {
                map["LogStoreName"] = self.logStoreName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DataSourceStoreFrom"] as? String {
                self.dataSourceStoreFrom = value
            }
            if let value = dict["DataSourceStoreId"] as? String {
                self.dataSourceStoreId = value
            }
            if let value = dict["DataSourceStoreStatus"] as? String {
                self.dataSourceStoreStatus = value
            }
            if let value = dict["LogProjectName"] as? String {
                self.logProjectName = value
            }
            if let value = dict["LogRegionId"] as? String {
                self.logRegionId = value
            }
            if let value = dict["LogStoreName"] as? String {
                self.logStoreName = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var dataSourceFrom: String?

    public var dataSourceIds: [String]?

    public var dataSourceName: String?

    public var dataSourceRecognizeEnabled: Bool?

    public var dataSourceRecognizer: String?

    public var dataSourceReferences: [String]?

    public var dataSourceStores: [CreateDataSourceRequest.DataSourceStores]?

    public var dataSourceTemplateId: String?

    public var dataSourceType: String?

    public var lang: String?

    public var logProjectName: String?

    public var logRegionId: String?

    public var logStoreName: String?

    public var logUserId: Int64?

    public var order: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var updateTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceFrom != nil {
            map["DataSourceFrom"] = self.dataSourceFrom!
        }
        if self.dataSourceIds != nil {
            map["DataSourceIds"] = self.dataSourceIds!
        }
        if self.dataSourceName != nil {
            map["DataSourceName"] = self.dataSourceName!
        }
        if self.dataSourceRecognizeEnabled != nil {
            map["DataSourceRecognizeEnabled"] = self.dataSourceRecognizeEnabled!
        }
        if self.dataSourceRecognizer != nil {
            map["DataSourceRecognizer"] = self.dataSourceRecognizer!
        }
        if self.dataSourceReferences != nil {
            map["DataSourceReferences"] = self.dataSourceReferences!
        }
        if self.dataSourceStores != nil {
            var tmp : [Any] = []
            for k in self.dataSourceStores! {
                tmp.append(k.toMap())
            }
            map["DataSourceStores"] = tmp
        }
        if self.dataSourceTemplateId != nil {
            map["DataSourceTemplateId"] = self.dataSourceTemplateId!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.logProjectName != nil {
            map["LogProjectName"] = self.logProjectName!
        }
        if self.logRegionId != nil {
            map["LogRegionId"] = self.logRegionId!
        }
        if self.logStoreName != nil {
            map["LogStoreName"] = self.logStoreName!
        }
        if self.logUserId != nil {
            map["LogUserId"] = self.logUserId!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceFrom"] as? String {
            self.dataSourceFrom = value
        }
        if let value = dict["DataSourceIds"] as? [String] {
            self.dataSourceIds = value
        }
        if let value = dict["DataSourceName"] as? String {
            self.dataSourceName = value
        }
        if let value = dict["DataSourceRecognizeEnabled"] as? Bool {
            self.dataSourceRecognizeEnabled = value
        }
        if let value = dict["DataSourceRecognizer"] as? String {
            self.dataSourceRecognizer = value
        }
        if let value = dict["DataSourceReferences"] as? [String] {
            self.dataSourceReferences = value
        }
        if let value = dict["DataSourceStores"] as? [Any?] {
            var tmp : [CreateDataSourceRequest.DataSourceStores] = []
            for v in value {
                if v != nil {
                    var model = CreateDataSourceRequest.DataSourceStores()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSourceStores = tmp
        }
        if let value = dict["DataSourceTemplateId"] as? String {
            self.dataSourceTemplateId = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogProjectName"] as? String {
            self.logProjectName = value
        }
        if let value = dict["LogRegionId"] as? String {
            self.logRegionId = value
        }
        if let value = dict["LogStoreName"] as? String {
            self.logStoreName = value
        }
        if let value = dict["LogUserId"] as? Int64 {
            self.logUserId = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["UpdateTime"] as? Int64 {
            self.updateTime = value
        }
    }
}

public class CreateDataSourceShrinkRequest : Tea.TeaModel {
    public class DataSourceStores : Tea.TeaModel {
        public var createTime: Int64?

        public var dataSourceStoreFrom: String?

        public var dataSourceStoreId: String?

        public var dataSourceStoreStatus: String?

        public var logProjectName: String?

        public var logRegionId: String?

        public var logStoreName: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.dataSourceStoreFrom != nil {
                map["DataSourceStoreFrom"] = self.dataSourceStoreFrom!
            }
            if self.dataSourceStoreId != nil {
                map["DataSourceStoreId"] = self.dataSourceStoreId!
            }
            if self.dataSourceStoreStatus != nil {
                map["DataSourceStoreStatus"] = self.dataSourceStoreStatus!
            }
            if self.logProjectName != nil {
                map["LogProjectName"] = self.logProjectName!
            }
            if self.logRegionId != nil {
                map["LogRegionId"] = self.logRegionId!
            }
            if self.logStoreName != nil {
                map["LogStoreName"] = self.logStoreName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DataSourceStoreFrom"] as? String {
                self.dataSourceStoreFrom = value
            }
            if let value = dict["DataSourceStoreId"] as? String {
                self.dataSourceStoreId = value
            }
            if let value = dict["DataSourceStoreStatus"] as? String {
                self.dataSourceStoreStatus = value
            }
            if let value = dict["LogProjectName"] as? String {
                self.logProjectName = value
            }
            if let value = dict["LogRegionId"] as? String {
                self.logRegionId = value
            }
            if let value = dict["LogStoreName"] as? String {
                self.logStoreName = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var dataSourceFrom: String?

    public var dataSourceIdsShrink: String?

    public var dataSourceName: String?

    public var dataSourceRecognizeEnabled: Bool?

    public var dataSourceRecognizer: String?

    public var dataSourceReferencesShrink: String?

    public var dataSourceStores: [CreateDataSourceShrinkRequest.DataSourceStores]?

    public var dataSourceTemplateId: String?

    public var dataSourceType: String?

    public var lang: String?

    public var logProjectName: String?

    public var logRegionId: String?

    public var logStoreName: String?

    public var logUserId: Int64?

    public var order: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var updateTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceFrom != nil {
            map["DataSourceFrom"] = self.dataSourceFrom!
        }
        if self.dataSourceIdsShrink != nil {
            map["DataSourceIds"] = self.dataSourceIdsShrink!
        }
        if self.dataSourceName != nil {
            map["DataSourceName"] = self.dataSourceName!
        }
        if self.dataSourceRecognizeEnabled != nil {
            map["DataSourceRecognizeEnabled"] = self.dataSourceRecognizeEnabled!
        }
        if self.dataSourceRecognizer != nil {
            map["DataSourceRecognizer"] = self.dataSourceRecognizer!
        }
        if self.dataSourceReferencesShrink != nil {
            map["DataSourceReferences"] = self.dataSourceReferencesShrink!
        }
        if self.dataSourceStores != nil {
            var tmp : [Any] = []
            for k in self.dataSourceStores! {
                tmp.append(k.toMap())
            }
            map["DataSourceStores"] = tmp
        }
        if self.dataSourceTemplateId != nil {
            map["DataSourceTemplateId"] = self.dataSourceTemplateId!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.logProjectName != nil {
            map["LogProjectName"] = self.logProjectName!
        }
        if self.logRegionId != nil {
            map["LogRegionId"] = self.logRegionId!
        }
        if self.logStoreName != nil {
            map["LogStoreName"] = self.logStoreName!
        }
        if self.logUserId != nil {
            map["LogUserId"] = self.logUserId!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceFrom"] as? String {
            self.dataSourceFrom = value
        }
        if let value = dict["DataSourceIds"] as? String {
            self.dataSourceIdsShrink = value
        }
        if let value = dict["DataSourceName"] as? String {
            self.dataSourceName = value
        }
        if let value = dict["DataSourceRecognizeEnabled"] as? Bool {
            self.dataSourceRecognizeEnabled = value
        }
        if let value = dict["DataSourceRecognizer"] as? String {
            self.dataSourceRecognizer = value
        }
        if let value = dict["DataSourceReferences"] as? String {
            self.dataSourceReferencesShrink = value
        }
        if let value = dict["DataSourceStores"] as? [Any?] {
            var tmp : [CreateDataSourceShrinkRequest.DataSourceStores] = []
            for v in value {
                if v != nil {
                    var model = CreateDataSourceShrinkRequest.DataSourceStores()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSourceStores = tmp
        }
        if let value = dict["DataSourceTemplateId"] as? String {
            self.dataSourceTemplateId = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogProjectName"] as? String {
            self.logProjectName = value
        }
        if let value = dict["LogRegionId"] as? String {
            self.logRegionId = value
        }
        if let value = dict["LogStoreName"] as? String {
            self.logStoreName = value
        }
        if let value = dict["LogUserId"] as? Int64 {
            self.logUserId = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["UpdateTime"] as? Int64 {
            self.updateTime = value
        }
    }
}

public class CreateDataSourceResponseBody : Tea.TeaModel {
    public var dataSourceId: String?

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
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDataSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDetectionRuleRequest : Tea.TeaModel {
    public var alertAttCk: String?

    public var alertLevel: String?

    public var alertSchemaId: String?

    public var alertTacticId: String?

    public var alertThresholdCount: Int32?

    public var alertThresholdGroup: String?

    public var alertThresholdPeriod: String?

    public var alertType: String?

    public var detectionExpressionContent: String?

    public var detectionExpressionType: String?

    public var detectionRuleDescription: String?

    public var detectionRuleName: String?

    public var detectionRuleStatus: String?

    public var detectionRuleType: String?

    public var entityMappings: String?

    public var incidentAggregationExpression: String?

    public var incidentAggregationType: String?

    public var lang: String?

    public var logCategoryId: String?

    public var logSchemaId: String?

    public var playbookParameters: String?

    public var playbookUuid: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var scheduleBeginTime: Int64?

    public var scheduleExpression: String?

    public var scheduleMaxRetries: Int32?

    public var scheduleMaxTimeout: Int32?

    public var scheduleType: String?

    public var scheduleWindow: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertAttCk != nil {
            map["AlertAttCk"] = self.alertAttCk!
        }
        if self.alertLevel != nil {
            map["AlertLevel"] = self.alertLevel!
        }
        if self.alertSchemaId != nil {
            map["AlertSchemaId"] = self.alertSchemaId!
        }
        if self.alertTacticId != nil {
            map["AlertTacticId"] = self.alertTacticId!
        }
        if self.alertThresholdCount != nil {
            map["AlertThresholdCount"] = self.alertThresholdCount!
        }
        if self.alertThresholdGroup != nil {
            map["AlertThresholdGroup"] = self.alertThresholdGroup!
        }
        if self.alertThresholdPeriod != nil {
            map["AlertThresholdPeriod"] = self.alertThresholdPeriod!
        }
        if self.alertType != nil {
            map["AlertType"] = self.alertType!
        }
        if self.detectionExpressionContent != nil {
            map["DetectionExpressionContent"] = self.detectionExpressionContent!
        }
        if self.detectionExpressionType != nil {
            map["DetectionExpressionType"] = self.detectionExpressionType!
        }
        if self.detectionRuleDescription != nil {
            map["DetectionRuleDescription"] = self.detectionRuleDescription!
        }
        if self.detectionRuleName != nil {
            map["DetectionRuleName"] = self.detectionRuleName!
        }
        if self.detectionRuleStatus != nil {
            map["DetectionRuleStatus"] = self.detectionRuleStatus!
        }
        if self.detectionRuleType != nil {
            map["DetectionRuleType"] = self.detectionRuleType!
        }
        if self.entityMappings != nil {
            map["EntityMappings"] = self.entityMappings!
        }
        if self.incidentAggregationExpression != nil {
            map["IncidentAggregationExpression"] = self.incidentAggregationExpression!
        }
        if self.incidentAggregationType != nil {
            map["IncidentAggregationType"] = self.incidentAggregationType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.logCategoryId != nil {
            map["LogCategoryId"] = self.logCategoryId!
        }
        if self.logSchemaId != nil {
            map["LogSchemaId"] = self.logSchemaId!
        }
        if self.playbookParameters != nil {
            map["PlaybookParameters"] = self.playbookParameters!
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
        if self.scheduleBeginTime != nil {
            map["ScheduleBeginTime"] = self.scheduleBeginTime!
        }
        if self.scheduleExpression != nil {
            map["ScheduleExpression"] = self.scheduleExpression!
        }
        if self.scheduleMaxRetries != nil {
            map["ScheduleMaxRetries"] = self.scheduleMaxRetries!
        }
        if self.scheduleMaxTimeout != nil {
            map["ScheduleMaxTimeout"] = self.scheduleMaxTimeout!
        }
        if self.scheduleType != nil {
            map["ScheduleType"] = self.scheduleType!
        }
        if self.scheduleWindow != nil {
            map["ScheduleWindow"] = self.scheduleWindow!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertAttCk"] as? String {
            self.alertAttCk = value
        }
        if let value = dict["AlertLevel"] as? String {
            self.alertLevel = value
        }
        if let value = dict["AlertSchemaId"] as? String {
            self.alertSchemaId = value
        }
        if let value = dict["AlertTacticId"] as? String {
            self.alertTacticId = value
        }
        if let value = dict["AlertThresholdCount"] as? Int32 {
            self.alertThresholdCount = value
        }
        if let value = dict["AlertThresholdGroup"] as? String {
            self.alertThresholdGroup = value
        }
        if let value = dict["AlertThresholdPeriod"] as? String {
            self.alertThresholdPeriod = value
        }
        if let value = dict["AlertType"] as? String {
            self.alertType = value
        }
        if let value = dict["DetectionExpressionContent"] as? String {
            self.detectionExpressionContent = value
        }
        if let value = dict["DetectionExpressionType"] as? String {
            self.detectionExpressionType = value
        }
        if let value = dict["DetectionRuleDescription"] as? String {
            self.detectionRuleDescription = value
        }
        if let value = dict["DetectionRuleName"] as? String {
            self.detectionRuleName = value
        }
        if let value = dict["DetectionRuleStatus"] as? String {
            self.detectionRuleStatus = value
        }
        if let value = dict["DetectionRuleType"] as? String {
            self.detectionRuleType = value
        }
        if let value = dict["EntityMappings"] as? String {
            self.entityMappings = value
        }
        if let value = dict["IncidentAggregationExpression"] as? String {
            self.incidentAggregationExpression = value
        }
        if let value = dict["IncidentAggregationType"] as? String {
            self.incidentAggregationType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogCategoryId"] as? String {
            self.logCategoryId = value
        }
        if let value = dict["LogSchemaId"] as? String {
            self.logSchemaId = value
        }
        if let value = dict["PlaybookParameters"] as? String {
            self.playbookParameters = value
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
        if let value = dict["ScheduleBeginTime"] as? Int64 {
            self.scheduleBeginTime = value
        }
        if let value = dict["ScheduleExpression"] as? String {
            self.scheduleExpression = value
        }
        if let value = dict["ScheduleMaxRetries"] as? Int32 {
            self.scheduleMaxRetries = value
        }
        if let value = dict["ScheduleMaxTimeout"] as? Int32 {
            self.scheduleMaxTimeout = value
        }
        if let value = dict["ScheduleType"] as? String {
            self.scheduleType = value
        }
        if let value = dict["ScheduleWindow"] as? String {
            self.scheduleWindow = value
        }
    }
}

public class CreateDetectionRuleResponseBody : Tea.TeaModel {
    public var detectionRuleId: String?

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
        if self.detectionRuleId != nil {
            map["DetectionRuleId"] = self.detectionRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DetectionRuleId"] as? String {
            self.detectionRuleId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDetectionRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDetectionRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDetectionRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateExportTaskRequest : Tea.TeaModel {
    public var exportTaskParameter: String?

    public var exportTaskType: String?

    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exportTaskParameter != nil {
            map["ExportTaskParameter"] = self.exportTaskParameter!
        }
        if self.exportTaskType != nil {
            map["ExportTaskType"] = self.exportTaskType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExportTaskParameter"] as? String {
            self.exportTaskParameter = value
        }
        if let value = dict["ExportTaskType"] as? String {
            self.exportTaskType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class CreateExportTaskResponseBody : Tea.TeaModel {
    public var fileName: String?

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
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateExportTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateExportTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLogStoreRequest : Tea.TeaModel {
    public var lang: String?

    public var logProjectName: String?

    public var logRegionId: String?

    public var logStoreName: String?

    public var logUserId: Int64?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.logProjectName != nil {
            map["LogProjectName"] = self.logProjectName!
        }
        if self.logRegionId != nil {
            map["LogRegionId"] = self.logRegionId!
        }
        if self.logStoreName != nil {
            map["LogStoreName"] = self.logStoreName!
        }
        if self.logUserId != nil {
            map["LogUserId"] = self.logUserId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogProjectName"] as? String {
            self.logProjectName = value
        }
        if let value = dict["LogRegionId"] as? String {
            self.logRegionId = value
        }
        if let value = dict["LogStoreName"] as? String {
            self.logStoreName = value
        }
        if let value = dict["LogUserId"] as? Int64 {
            self.logUserId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class CreateLogStoreResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateLogStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLogStoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateLogStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateNormalizationRuleRequest : Tea.TeaModel {
    public var extendContentPacked: String?

    public var lang: String?

    public var normalizationCategoryId: String?

    public var normalizationRuleDescription: String?

    public var normalizationRuleExpression: String?

    public var normalizationRuleFormat: String?

    public var normalizationRuleIds: [String]?

    public var normalizationRuleMode: String?

    public var normalizationRuleName: String?

    public var normalizationRuleType: String?

    public var normalizationRuleVersion: Int32?

    public var normalizationSchemaId: String?

    public var orderField: String?

    public var productId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var vendorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extendContentPacked != nil {
            map["ExtendContentPacked"] = self.extendContentPacked!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.normalizationCategoryId != nil {
            map["NormalizationCategoryId"] = self.normalizationCategoryId!
        }
        if self.normalizationRuleDescription != nil {
            map["NormalizationRuleDescription"] = self.normalizationRuleDescription!
        }
        if self.normalizationRuleExpression != nil {
            map["NormalizationRuleExpression"] = self.normalizationRuleExpression!
        }
        if self.normalizationRuleFormat != nil {
            map["NormalizationRuleFormat"] = self.normalizationRuleFormat!
        }
        if self.normalizationRuleIds != nil {
            map["NormalizationRuleIds"] = self.normalizationRuleIds!
        }
        if self.normalizationRuleMode != nil {
            map["NormalizationRuleMode"] = self.normalizationRuleMode!
        }
        if self.normalizationRuleName != nil {
            map["NormalizationRuleName"] = self.normalizationRuleName!
        }
        if self.normalizationRuleType != nil {
            map["NormalizationRuleType"] = self.normalizationRuleType!
        }
        if self.normalizationRuleVersion != nil {
            map["NormalizationRuleVersion"] = self.normalizationRuleVersion!
        }
        if self.normalizationSchemaId != nil {
            map["NormalizationSchemaId"] = self.normalizationSchemaId!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.vendorId != nil {
            map["VendorId"] = self.vendorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExtendContentPacked"] as? String {
            self.extendContentPacked = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NormalizationCategoryId"] as? String {
            self.normalizationCategoryId = value
        }
        if let value = dict["NormalizationRuleDescription"] as? String {
            self.normalizationRuleDescription = value
        }
        if let value = dict["NormalizationRuleExpression"] as? String {
            self.normalizationRuleExpression = value
        }
        if let value = dict["NormalizationRuleFormat"] as? String {
            self.normalizationRuleFormat = value
        }
        if let value = dict["NormalizationRuleIds"] as? [String] {
            self.normalizationRuleIds = value
        }
        if let value = dict["NormalizationRuleMode"] as? String {
            self.normalizationRuleMode = value
        }
        if let value = dict["NormalizationRuleName"] as? String {
            self.normalizationRuleName = value
        }
        if let value = dict["NormalizationRuleType"] as? String {
            self.normalizationRuleType = value
        }
        if let value = dict["NormalizationRuleVersion"] as? Int32 {
            self.normalizationRuleVersion = value
        }
        if let value = dict["NormalizationSchemaId"] as? String {
            self.normalizationSchemaId = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["VendorId"] as? String {
            self.vendorId = value
        }
    }
}

public class CreateNormalizationRuleShrinkRequest : Tea.TeaModel {
    public var extendContentPacked: String?

    public var lang: String?

    public var normalizationCategoryId: String?

    public var normalizationRuleDescription: String?

    public var normalizationRuleExpression: String?

    public var normalizationRuleFormat: String?

    public var normalizationRuleIdsShrink: String?

    public var normalizationRuleMode: String?

    public var normalizationRuleName: String?

    public var normalizationRuleType: String?

    public var normalizationRuleVersion: Int32?

    public var normalizationSchemaId: String?

    public var orderField: String?

    public var productId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var vendorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extendContentPacked != nil {
            map["ExtendContentPacked"] = self.extendContentPacked!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.normalizationCategoryId != nil {
            map["NormalizationCategoryId"] = self.normalizationCategoryId!
        }
        if self.normalizationRuleDescription != nil {
            map["NormalizationRuleDescription"] = self.normalizationRuleDescription!
        }
        if self.normalizationRuleExpression != nil {
            map["NormalizationRuleExpression"] = self.normalizationRuleExpression!
        }
        if self.normalizationRuleFormat != nil {
            map["NormalizationRuleFormat"] = self.normalizationRuleFormat!
        }
        if self.normalizationRuleIdsShrink != nil {
            map["NormalizationRuleIds"] = self.normalizationRuleIdsShrink!
        }
        if self.normalizationRuleMode != nil {
            map["NormalizationRuleMode"] = self.normalizationRuleMode!
        }
        if self.normalizationRuleName != nil {
            map["NormalizationRuleName"] = self.normalizationRuleName!
        }
        if self.normalizationRuleType != nil {
            map["NormalizationRuleType"] = self.normalizationRuleType!
        }
        if self.normalizationRuleVersion != nil {
            map["NormalizationRuleVersion"] = self.normalizationRuleVersion!
        }
        if self.normalizationSchemaId != nil {
            map["NormalizationSchemaId"] = self.normalizationSchemaId!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.vendorId != nil {
            map["VendorId"] = self.vendorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExtendContentPacked"] as? String {
            self.extendContentPacked = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NormalizationCategoryId"] as? String {
            self.normalizationCategoryId = value
        }
        if let value = dict["NormalizationRuleDescription"] as? String {
            self.normalizationRuleDescription = value
        }
        if let value = dict["NormalizationRuleExpression"] as? String {
            self.normalizationRuleExpression = value
        }
        if let value = dict["NormalizationRuleFormat"] as? String {
            self.normalizationRuleFormat = value
        }
        if let value = dict["NormalizationRuleIds"] as? String {
            self.normalizationRuleIdsShrink = value
        }
        if let value = dict["NormalizationRuleMode"] as? String {
            self.normalizationRuleMode = value
        }
        if let value = dict["NormalizationRuleName"] as? String {
            self.normalizationRuleName = value
        }
        if let value = dict["NormalizationRuleType"] as? String {
            self.normalizationRuleType = value
        }
        if let value = dict["NormalizationRuleVersion"] as? Int32 {
            self.normalizationRuleVersion = value
        }
        if let value = dict["NormalizationSchemaId"] as? String {
            self.normalizationSchemaId = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["VendorId"] as? String {
            self.vendorId = value
        }
    }
}

public class CreateNormalizationRuleResponseBody : Tea.TeaModel {
    public var normalizationRuleId: String?

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
        if self.normalizationRuleId != nil {
            map["NormalizationRuleId"] = self.normalizationRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NormalizationRuleId"] as? String {
            self.normalizationRuleId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateNormalizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNormalizationRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateNormalizationRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateProductRequest : Tea.TeaModel {
    public var lang: String?

    public var productName: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var vendorName: String?

    public override init() {
        super.init()
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
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.vendorName != nil {
            map["VendorName"] = self.vendorName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["VendorName"] as? String {
            self.vendorName = value
        }
    }
}

public class CreateProductResponseBody : Tea.TeaModel {
    public var productId: String?

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
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProductResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateProductResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVendorRequest : Tea.TeaModel {
    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var vendorName: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.vendorName != nil {
            map["VendorName"] = self.vendorName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["VendorName"] as? String {
            self.vendorName = value
        }
    }
}

public class CreateVendorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var vendorId: String?

    public override init() {
        super.init()
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
        if self.vendorId != nil {
            map["VendorId"] = self.vendorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VendorId"] as? String {
            self.vendorId = value
        }
    }
}

public class CreateVendorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVendorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVendorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataIngestionRequest : Tea.TeaModel {
    public var dataIngestionId: String?

    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataIngestionId != nil {
            map["DataIngestionId"] = self.dataIngestionId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataIngestionId"] as? String {
            self.dataIngestionId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class DeleteDataIngestionResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDataIngestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataIngestionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDataIngestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataSetRequest : Tea.TeaModel {
    public var dataSetId: String?

    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSetId != nil {
            map["DataSetId"] = self.dataSetId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSetId"] as? String {
            self.dataSetId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class DeleteDataSetResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDataSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDataSetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataSetRecordRequest : Tea.TeaModel {
    public var dataSetId: String?

    public var dataSetRecordIds: String?

    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSetId != nil {
            map["DataSetId"] = self.dataSetId!
        }
        if self.dataSetRecordIds != nil {
            map["DataSetRecordIds"] = self.dataSetRecordIds!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSetId"] as? String {
            self.dataSetId = value
        }
        if let value = dict["DataSetRecordIds"] as? String {
            self.dataSetRecordIds = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class DeleteDataSetRecordResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDataSetRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataSetRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDataSetRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataSourceRequest : Tea.TeaModel {
    public var dataSourceId: String?

    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class DeleteDataSourceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
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

public class DeleteDetectionRuleRequest : Tea.TeaModel {
    public var detectionRuleId: String?

    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.detectionRuleId != nil {
            map["DetectionRuleId"] = self.detectionRuleId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DetectionRuleId"] as? String {
            self.detectionRuleId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class DeleteDetectionRuleResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDetectionRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDetectionRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDetectionRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteLogStoreRequest : Tea.TeaModel {
    public var lang: String?

    public var logProjectName: String?

    public var logRegionId: String?

    public var logStoreName: String?

    public var logUserId: Int64?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.logProjectName != nil {
            map["LogProjectName"] = self.logProjectName!
        }
        if self.logRegionId != nil {
            map["LogRegionId"] = self.logRegionId!
        }
        if self.logStoreName != nil {
            map["LogStoreName"] = self.logStoreName!
        }
        if self.logUserId != nil {
            map["LogUserId"] = self.logUserId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogProjectName"] as? String {
            self.logProjectName = value
        }
        if let value = dict["LogRegionId"] as? String {
            self.logRegionId = value
        }
        if let value = dict["LogStoreName"] as? String {
            self.logStoreName = value
        }
        if let value = dict["LogUserId"] as? Int64 {
            self.logUserId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class DeleteLogStoreResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteLogStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLogStoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteLogStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteNormalizationRuleRequest : Tea.TeaModel {
    public var lang: String?

    public var normalizationRuleId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.normalizationRuleId != nil {
            map["NormalizationRuleId"] = self.normalizationRuleId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NormalizationRuleId"] as? String {
            self.normalizationRuleId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class DeleteNormalizationRuleResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteNormalizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNormalizationRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteNormalizationRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteNormalizationRuleVersionRequest : Tea.TeaModel {
    public var lang: String?

    public var normalizationRuleId: String?

    public var normalizationRuleVersion: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.normalizationRuleId != nil {
            map["NormalizationRuleId"] = self.normalizationRuleId!
        }
        if self.normalizationRuleVersion != nil {
            map["NormalizationRuleVersion"] = self.normalizationRuleVersion!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NormalizationRuleId"] as? String {
            self.normalizationRuleId = value
        }
        if let value = dict["NormalizationRuleVersion"] as? Int32 {
            self.normalizationRuleVersion = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class DeleteNormalizationRuleVersionResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteNormalizationRuleVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNormalizationRuleVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteNormalizationRuleVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteProductRequest : Tea.TeaModel {
    public var lang: String?

    public var productId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class DeleteProductResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProductResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteProductResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVendorRequest : Tea.TeaModel {
    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var vendorId: String?

    public var vendorName: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.vendorId != nil {
            map["VendorId"] = self.vendorId!
        }
        if self.vendorName != nil {
            map["VendorName"] = self.vendorName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["VendorId"] as? String {
            self.vendorId = value
        }
        if let value = dict["VendorName"] as? String {
            self.vendorName = value
        }
    }
}

public class DeleteVendorResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteVendorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVendorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteVendorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableDataIngestionRequest : Tea.TeaModel {
    public var dataIngestionId: String?

    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataIngestionId != nil {
            map["DataIngestionId"] = self.dataIngestionId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataIngestionId"] as? String {
            self.dataIngestionId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class DisableDataIngestionResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DisableDataIngestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableDataIngestionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableDataIngestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableDataIngestionRequest : Tea.TeaModel {
    public var dataIngestionId: String?

    public var lang: String?

    public var productId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataIngestionId != nil {
            map["DataIngestionId"] = self.dataIngestionId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataIngestionId"] as? String {
            self.dataIngestionId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class EnableDataIngestionResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnableDataIngestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableDataIngestionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableDataIngestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteLogQueryRequest : Tea.TeaModel {
    public var endTime: String?

    public var extendContentPacked: String?

    public var lang: String?

    public var logProjectName: String?

    public var logQuery: String?

    public var logRegionId: String?

    public var logStoreName: String?

    public var logUserId: Int64?

    public var normalizationSchemaId: String?

    public var regionId: String?

    public var roleFor: Int64?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.extendContentPacked != nil {
            map["ExtendContentPacked"] = self.extendContentPacked!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.logProjectName != nil {
            map["LogProjectName"] = self.logProjectName!
        }
        if self.logQuery != nil {
            map["LogQuery"] = self.logQuery!
        }
        if self.logRegionId != nil {
            map["LogRegionId"] = self.logRegionId!
        }
        if self.logStoreName != nil {
            map["LogStoreName"] = self.logStoreName!
        }
        if self.logUserId != nil {
            map["LogUserId"] = self.logUserId!
        }
        if self.normalizationSchemaId != nil {
            map["NormalizationSchemaId"] = self.normalizationSchemaId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["ExtendContentPacked"] as? String {
            self.extendContentPacked = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogProjectName"] as? String {
            self.logProjectName = value
        }
        if let value = dict["LogQuery"] as? String {
            self.logQuery = value
        }
        if let value = dict["LogRegionId"] as? String {
            self.logRegionId = value
        }
        if let value = dict["LogStoreName"] as? String {
            self.logStoreName = value
        }
        if let value = dict["LogUserId"] as? Int64 {
            self.logUserId = value
        }
        if let value = dict["NormalizationSchemaId"] as? String {
            self.normalizationSchemaId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class ExecuteLogQueryResponseBody : Tea.TeaModel {
    public var queryResult: [Any]?

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
        if self.queryResult != nil {
            map["QueryResult"] = self.queryResult!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QueryResult"] as? [Any] {
            self.queryResult = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExecuteLogQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteLogQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExecuteLogQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecuteUpgradeRequest : Tea.TeaModel {
    public var lang: String?

    public var regionId: String?

    public var roleFor: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? String {
            self.roleFor = value
        }
    }
}

public class ExecuteUpgradeResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExecuteUpgradeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecuteUpgradeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExecuteUpgradeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataBatchIngestionRequest : Tea.TeaModel {
    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class GetDataBatchIngestionResponseBody : Tea.TeaModel {
    public class DataBatchIngestion : Tea.TeaModel {
        public class DataIngestions : Tea.TeaModel {
            public var dataIngestionId: String?

            public var dataIngestionStatus: String?

            public var dataSourceId: String?

            public var productId: String?

            public var vendorId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataIngestionId != nil {
                    map["DataIngestionId"] = self.dataIngestionId!
                }
                if self.dataIngestionStatus != nil {
                    map["DataIngestionStatus"] = self.dataIngestionStatus!
                }
                if self.dataSourceId != nil {
                    map["DataSourceId"] = self.dataSourceId!
                }
                if self.productId != nil {
                    map["ProductId"] = self.productId!
                }
                if self.vendorId != nil {
                    map["VendorId"] = self.vendorId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataIngestionId"] as? String {
                    self.dataIngestionId = value
                }
                if let value = dict["DataIngestionStatus"] as? String {
                    self.dataIngestionStatus = value
                }
                if let value = dict["DataSourceId"] as? String {
                    self.dataSourceId = value
                }
                if let value = dict["ProductId"] as? String {
                    self.productId = value
                }
                if let value = dict["VendorId"] as? String {
                    self.vendorId = value
                }
            }
        }
        public var apsaraDataIngestionIds: [String]?

        public var autoScanNew: String?

        public var dataBatchIngestionEffectTime: String?

        public var dataBatchIngestionMode: String?

        public var dataBatchIngestionSetTime: String?

        public var dataBatchIngestionStatus: String?

        public var dataIngestions: [GetDataBatchIngestionResponseBody.DataBatchIngestion.DataIngestions]?

        public var dataSourceRecognizeEnabled: Bool?

        public var logUserIds: [String]?

        public var recommendDataIngestionIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apsaraDataIngestionIds != nil {
                map["ApsaraDataIngestionIds"] = self.apsaraDataIngestionIds!
            }
            if self.autoScanNew != nil {
                map["AutoScanNew"] = self.autoScanNew!
            }
            if self.dataBatchIngestionEffectTime != nil {
                map["DataBatchIngestionEffectTime"] = self.dataBatchIngestionEffectTime!
            }
            if self.dataBatchIngestionMode != nil {
                map["DataBatchIngestionMode"] = self.dataBatchIngestionMode!
            }
            if self.dataBatchIngestionSetTime != nil {
                map["DataBatchIngestionSetTime"] = self.dataBatchIngestionSetTime!
            }
            if self.dataBatchIngestionStatus != nil {
                map["DataBatchIngestionStatus"] = self.dataBatchIngestionStatus!
            }
            if self.dataIngestions != nil {
                var tmp : [Any] = []
                for k in self.dataIngestions! {
                    tmp.append(k.toMap())
                }
                map["DataIngestions"] = tmp
            }
            if self.dataSourceRecognizeEnabled != nil {
                map["DataSourceRecognizeEnabled"] = self.dataSourceRecognizeEnabled!
            }
            if self.logUserIds != nil {
                map["LogUserIds"] = self.logUserIds!
            }
            if self.recommendDataIngestionIds != nil {
                map["RecommendDataIngestionIds"] = self.recommendDataIngestionIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApsaraDataIngestionIds"] as? [String] {
                self.apsaraDataIngestionIds = value
            }
            if let value = dict["AutoScanNew"] as? String {
                self.autoScanNew = value
            }
            if let value = dict["DataBatchIngestionEffectTime"] as? String {
                self.dataBatchIngestionEffectTime = value
            }
            if let value = dict["DataBatchIngestionMode"] as? String {
                self.dataBatchIngestionMode = value
            }
            if let value = dict["DataBatchIngestionSetTime"] as? String {
                self.dataBatchIngestionSetTime = value
            }
            if let value = dict["DataBatchIngestionStatus"] as? String {
                self.dataBatchIngestionStatus = value
            }
            if let value = dict["DataIngestions"] as? [Any?] {
                var tmp : [GetDataBatchIngestionResponseBody.DataBatchIngestion.DataIngestions] = []
                for v in value {
                    if v != nil {
                        var model = GetDataBatchIngestionResponseBody.DataBatchIngestion.DataIngestions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataIngestions = tmp
            }
            if let value = dict["DataSourceRecognizeEnabled"] as? Bool {
                self.dataSourceRecognizeEnabled = value
            }
            if let value = dict["LogUserIds"] as? [String] {
                self.logUserIds = value
            }
            if let value = dict["RecommendDataIngestionIds"] as? [String] {
                self.recommendDataIngestionIds = value
            }
        }
    }
    public var dataBatchIngestion: GetDataBatchIngestionResponseBody.DataBatchIngestion?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataBatchIngestion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataBatchIngestion != nil {
            map["DataBatchIngestion"] = self.dataBatchIngestion?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataBatchIngestion"] as? [String: Any?] {
            var model = GetDataBatchIngestionResponseBody.DataBatchIngestion()
            model.fromMap(value)
            self.dataBatchIngestion = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDataBatchIngestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataBatchIngestionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataBatchIngestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataStorageRequest : Tea.TeaModel {
    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class GetDataStorageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class NormalizationLogStores : Tea.TeaModel {
            public var logStoreName: String?

            public var logStoreTtl: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.logStoreName != nil {
                    map["LogStoreName"] = self.logStoreName!
                }
                if self.logStoreTtl != nil {
                    map["LogStoreTtl"] = self.logStoreTtl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LogStoreName"] as? String {
                    self.logStoreName = value
                }
                if let value = dict["LogStoreTtl"] as? Int32 {
                    self.logStoreTtl = value
                }
            }
        }
        public class NormalizationLogViews : Tea.TeaModel {
            public var activityName: String?

            public var categoryName: String?

            public var detectionRuleReferenceCount: Int32?

            public var detectionRuleReferenceProductIds: [String]?

            public var logSearchConditions: String?

            public var logStoreName: String?

            public var logViewExisted: Bool?

            public var logViewName: String?

            public override init() {
                super.init()
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
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.detectionRuleReferenceCount != nil {
                    map["DetectionRuleReferenceCount"] = self.detectionRuleReferenceCount!
                }
                if self.detectionRuleReferenceProductIds != nil {
                    map["DetectionRuleReferenceProductIds"] = self.detectionRuleReferenceProductIds!
                }
                if self.logSearchConditions != nil {
                    map["LogSearchConditions"] = self.logSearchConditions!
                }
                if self.logStoreName != nil {
                    map["LogStoreName"] = self.logStoreName!
                }
                if self.logViewExisted != nil {
                    map["LogViewExisted"] = self.logViewExisted!
                }
                if self.logViewName != nil {
                    map["LogViewName"] = self.logViewName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActivityName"] as? String {
                    self.activityName = value
                }
                if let value = dict["CategoryName"] as? String {
                    self.categoryName = value
                }
                if let value = dict["DetectionRuleReferenceCount"] as? Int32 {
                    self.detectionRuleReferenceCount = value
                }
                if let value = dict["DetectionRuleReferenceProductIds"] as? [String] {
                    self.detectionRuleReferenceProductIds = value
                }
                if let value = dict["LogSearchConditions"] as? String {
                    self.logSearchConditions = value
                }
                if let value = dict["LogStoreName"] as? String {
                    self.logStoreName = value
                }
                if let value = dict["LogViewExisted"] as? Bool {
                    self.logViewExisted = value
                }
                if let value = dict["LogViewName"] as? String {
                    self.logViewName = value
                }
            }
        }
        public class SasLogStores : Tea.TeaModel {
            public var logCode: String?

            public var logDeliveryGroup: String?

            public var logDeliveryPermission: String?

            public var logDeliveryStatus: String?

            public var logDeliveryUpdateTime: String?

            public var logName: String?

            public var logSearchConditions: String?

            public var logStoreExisted: Bool?

            public var logStoreName: String?

            public var logStoreTtl: Int32?

            public override init() {
                super.init()
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
                if self.logDeliveryGroup != nil {
                    map["LogDeliveryGroup"] = self.logDeliveryGroup!
                }
                if self.logDeliveryPermission != nil {
                    map["LogDeliveryPermission"] = self.logDeliveryPermission!
                }
                if self.logDeliveryStatus != nil {
                    map["LogDeliveryStatus"] = self.logDeliveryStatus!
                }
                if self.logDeliveryUpdateTime != nil {
                    map["LogDeliveryUpdateTime"] = self.logDeliveryUpdateTime!
                }
                if self.logName != nil {
                    map["LogName"] = self.logName!
                }
                if self.logSearchConditions != nil {
                    map["LogSearchConditions"] = self.logSearchConditions!
                }
                if self.logStoreExisted != nil {
                    map["LogStoreExisted"] = self.logStoreExisted!
                }
                if self.logStoreName != nil {
                    map["LogStoreName"] = self.logStoreName!
                }
                if self.logStoreTtl != nil {
                    map["LogStoreTtl"] = self.logStoreTtl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LogCode"] as? String {
                    self.logCode = value
                }
                if let value = dict["LogDeliveryGroup"] as? String {
                    self.logDeliveryGroup = value
                }
                if let value = dict["LogDeliveryPermission"] as? String {
                    self.logDeliveryPermission = value
                }
                if let value = dict["LogDeliveryStatus"] as? String {
                    self.logDeliveryStatus = value
                }
                if let value = dict["LogDeliveryUpdateTime"] as? String {
                    self.logDeliveryUpdateTime = value
                }
                if let value = dict["LogName"] as? String {
                    self.logName = value
                }
                if let value = dict["LogSearchConditions"] as? String {
                    self.logSearchConditions = value
                }
                if let value = dict["LogStoreExisted"] as? Bool {
                    self.logStoreExisted = value
                }
                if let value = dict["LogStoreName"] as? String {
                    self.logStoreName = value
                }
                if let value = dict["LogStoreTtl"] as? Int32 {
                    self.logStoreTtl = value
                }
            }
        }
        public var coldStorageUsedCapacity: Double?

        public var dataStorageRegionId: String?

        public var dataStorageRegionPermission: String?

        public var dataStorageTotalCapacity: Int64?

        public var dataStorageUsedCapacity: Double?

        public var dataStorageUsedCapacityDetail: String?

        public var logProject: String?

        public var normalizationLogStores: [GetDataStorageResponseBody.Data.NormalizationLogStores]?

        public var normalizationLogViews: [GetDataStorageResponseBody.Data.NormalizationLogViews]?

        public var sasLogStores: [GetDataStorageResponseBody.Data.SasLogStores]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.coldStorageUsedCapacity != nil {
                map["ColdStorageUsedCapacity"] = self.coldStorageUsedCapacity!
            }
            if self.dataStorageRegionId != nil {
                map["DataStorageRegionId"] = self.dataStorageRegionId!
            }
            if self.dataStorageRegionPermission != nil {
                map["DataStorageRegionPermission"] = self.dataStorageRegionPermission!
            }
            if self.dataStorageTotalCapacity != nil {
                map["DataStorageTotalCapacity"] = self.dataStorageTotalCapacity!
            }
            if self.dataStorageUsedCapacity != nil {
                map["DataStorageUsedCapacity"] = self.dataStorageUsedCapacity!
            }
            if self.dataStorageUsedCapacityDetail != nil {
                map["DataStorageUsedCapacityDetail"] = self.dataStorageUsedCapacityDetail!
            }
            if self.logProject != nil {
                map["LogProject"] = self.logProject!
            }
            if self.normalizationLogStores != nil {
                var tmp : [Any] = []
                for k in self.normalizationLogStores! {
                    tmp.append(k.toMap())
                }
                map["NormalizationLogStores"] = tmp
            }
            if self.normalizationLogViews != nil {
                var tmp : [Any] = []
                for k in self.normalizationLogViews! {
                    tmp.append(k.toMap())
                }
                map["NormalizationLogViews"] = tmp
            }
            if self.sasLogStores != nil {
                var tmp : [Any] = []
                for k in self.sasLogStores! {
                    tmp.append(k.toMap())
                }
                map["SasLogStores"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ColdStorageUsedCapacity"] as? Double {
                self.coldStorageUsedCapacity = value
            }
            if let value = dict["DataStorageRegionId"] as? String {
                self.dataStorageRegionId = value
            }
            if let value = dict["DataStorageRegionPermission"] as? String {
                self.dataStorageRegionPermission = value
            }
            if let value = dict["DataStorageTotalCapacity"] as? Int64 {
                self.dataStorageTotalCapacity = value
            }
            if let value = dict["DataStorageUsedCapacity"] as? Double {
                self.dataStorageUsedCapacity = value
            }
            if let value = dict["DataStorageUsedCapacityDetail"] as? String {
                self.dataStorageUsedCapacityDetail = value
            }
            if let value = dict["LogProject"] as? String {
                self.logProject = value
            }
            if let value = dict["NormalizationLogStores"] as? [Any?] {
                var tmp : [GetDataStorageResponseBody.Data.NormalizationLogStores] = []
                for v in value {
                    if v != nil {
                        var model = GetDataStorageResponseBody.Data.NormalizationLogStores()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.normalizationLogStores = tmp
            }
            if let value = dict["NormalizationLogViews"] as? [Any?] {
                var tmp : [GetDataStorageResponseBody.Data.NormalizationLogViews] = []
                for v in value {
                    if v != nil {
                        var model = GetDataStorageResponseBody.Data.NormalizationLogViews()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.normalizationLogViews = tmp
            }
            if let value = dict["SasLogStores"] as? [Any?] {
                var tmp : [GetDataStorageResponseBody.Data.SasLogStores] = []
                for v in value {
                    if v != nil {
                        var model = GetDataStorageResponseBody.Data.SasLogStores()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sasLogStores = tmp
            }
        }
    }
    public var data: GetDataStorageResponseBody.Data?

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
            var model = GetDataStorageResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDataStorageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataStorageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataStorageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDetectionStatisticRequest : Tea.TeaModel {
    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class GetDetectionStatisticResponseBody : Tea.TeaModel {
    public class DetectionStatistic : Tea.TeaModel {
        public var detectionRuleOnlineCount: Int32?

        public var detectionRuleTemplateCount: Int32?

        public var detectionRuleTestCount: Int32?

        public var graphComputeRuleCount: Int32?

        public var passthroughRuleCount: Int32?

        public var windowRuleCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detectionRuleOnlineCount != nil {
                map["DetectionRuleOnlineCount"] = self.detectionRuleOnlineCount!
            }
            if self.detectionRuleTemplateCount != nil {
                map["DetectionRuleTemplateCount"] = self.detectionRuleTemplateCount!
            }
            if self.detectionRuleTestCount != nil {
                map["DetectionRuleTestCount"] = self.detectionRuleTestCount!
            }
            if self.graphComputeRuleCount != nil {
                map["GraphComputeRuleCount"] = self.graphComputeRuleCount!
            }
            if self.passthroughRuleCount != nil {
                map["PassthroughRuleCount"] = self.passthroughRuleCount!
            }
            if self.windowRuleCount != nil {
                map["WindowRuleCount"] = self.windowRuleCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DetectionRuleOnlineCount"] as? Int32 {
                self.detectionRuleOnlineCount = value
            }
            if let value = dict["DetectionRuleTemplateCount"] as? Int32 {
                self.detectionRuleTemplateCount = value
            }
            if let value = dict["DetectionRuleTestCount"] as? Int32 {
                self.detectionRuleTestCount = value
            }
            if let value = dict["GraphComputeRuleCount"] as? Int32 {
                self.graphComputeRuleCount = value
            }
            if let value = dict["PassthroughRuleCount"] as? Int32 {
                self.passthroughRuleCount = value
            }
            if let value = dict["WindowRuleCount"] as? Int32 {
                self.windowRuleCount = value
            }
        }
    }
    public var detectionStatistic: GetDetectionStatisticResponseBody.DetectionStatistic?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.detectionStatistic?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.detectionStatistic != nil {
            map["DetectionStatistic"] = self.detectionStatistic?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DetectionStatistic"] as? [String: Any?] {
            var model = GetDetectionStatisticResponseBody.DetectionStatistic()
            model.fromMap(value)
            self.detectionStatistic = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDetectionStatisticResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDetectionStatisticResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDetectionStatisticResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExportTaskRequest : Tea.TeaModel {
    public var exportId: Int64?

    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exportId != nil {
            map["ExportId"] = self.exportId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExportId"] as? Int64 {
            self.exportId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class GetExportTaskResponseBody : Tea.TeaModel {
    public var exportStatus: String?

    public var exportType: String?

    public var fileName: String?

    public var gmtCreate: String?

    public var id: Int64?

    public var link: String?

    public var progress: Int32?

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
        if self.exportStatus != nil {
            map["ExportStatus"] = self.exportStatus!
        }
        if self.exportType != nil {
            map["ExportType"] = self.exportType!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.link != nil {
            map["Link"] = self.link!
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExportStatus"] as? String {
            self.exportStatus = value
        }
        if let value = dict["ExportType"] as? String {
            self.exportType = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Link"] as? String {
            self.link = value
        }
        if let value = dict["Progress"] as? Int32 {
            self.progress = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExportTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetExportTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIncidentRequest : Tea.TeaModel {
    public var incidentUuid: String?

    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IncidentUuid"] as? String {
            self.incidentUuid = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class GetIncidentResponseBody : Tea.TeaModel {
    public class Incident : Tea.TeaModel {
        public var attckTactics: Any?

        public var createTime: Int64?

        public var detectionRuleId: String?

        public var incidentAggregationType: String?

        public var incidentDescription: String?

        public var incidentName: String?

        public var incidentRemark: String?

        public var incidentStatus: Int32?

        public var incidentTags: String?

        public var incidentUuid: String?

        public var relateAlertCount: Int32?

        public var relateAssetCount: Int32?

        public var relateDataSourceIds: Any?

        public var relateUserIds: Any?

        public var threatLevel: String?

        public var threatScore: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attckTactics != nil {
                map["AttckTactics"] = self.attckTactics!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.detectionRuleId != nil {
                map["DetectionRuleId"] = self.detectionRuleId!
            }
            if self.incidentAggregationType != nil {
                map["IncidentAggregationType"] = self.incidentAggregationType!
            }
            if self.incidentDescription != nil {
                map["IncidentDescription"] = self.incidentDescription!
            }
            if self.incidentName != nil {
                map["IncidentName"] = self.incidentName!
            }
            if self.incidentRemark != nil {
                map["IncidentRemark"] = self.incidentRemark!
            }
            if self.incidentStatus != nil {
                map["IncidentStatus"] = self.incidentStatus!
            }
            if self.incidentTags != nil {
                map["IncidentTags"] = self.incidentTags!
            }
            if self.incidentUuid != nil {
                map["IncidentUuid"] = self.incidentUuid!
            }
            if self.relateAlertCount != nil {
                map["RelateAlertCount"] = self.relateAlertCount!
            }
            if self.relateAssetCount != nil {
                map["RelateAssetCount"] = self.relateAssetCount!
            }
            if self.relateDataSourceIds != nil {
                map["RelateDataSourceIds"] = self.relateDataSourceIds!
            }
            if self.relateUserIds != nil {
                map["RelateUserIds"] = self.relateUserIds!
            }
            if self.threatLevel != nil {
                map["ThreatLevel"] = self.threatLevel!
            }
            if self.threatScore != nil {
                map["ThreatScore"] = self.threatScore!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttckTactics"] as? Any {
                self.attckTactics = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DetectionRuleId"] as? String {
                self.detectionRuleId = value
            }
            if let value = dict["IncidentAggregationType"] as? String {
                self.incidentAggregationType = value
            }
            if let value = dict["IncidentDescription"] as? String {
                self.incidentDescription = value
            }
            if let value = dict["IncidentName"] as? String {
                self.incidentName = value
            }
            if let value = dict["IncidentRemark"] as? String {
                self.incidentRemark = value
            }
            if let value = dict["IncidentStatus"] as? Int32 {
                self.incidentStatus = value
            }
            if let value = dict["IncidentTags"] as? String {
                self.incidentTags = value
            }
            if let value = dict["IncidentUuid"] as? String {
                self.incidentUuid = value
            }
            if let value = dict["RelateAlertCount"] as? Int32 {
                self.relateAlertCount = value
            }
            if let value = dict["RelateAssetCount"] as? Int32 {
                self.relateAssetCount = value
            }
            if let value = dict["RelateDataSourceIds"] as? Any {
                self.relateDataSourceIds = value
            }
            if let value = dict["RelateUserIds"] as? Any {
                self.relateUserIds = value
            }
            if let value = dict["ThreatLevel"] as? String {
                self.threatLevel = value
            }
            if let value = dict["ThreatScore"] as? String {
                self.threatScore = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var incident: GetIncidentResponseBody.Incident?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.incident?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.incident != nil {
            map["Incident"] = self.incident?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Incident"] as? [String: Any?] {
            var model = GetIncidentResponseBody.Incident()
            model.fromMap(value)
            self.incident = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetIncidentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIncidentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetIncidentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLogTicketRequest : Tea.TeaModel {
    public var lang: String?

    public var logUserId: Int64?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.logUserId != nil {
            map["LogUserId"] = self.logUserId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogUserId"] as? Int64 {
            self.logUserId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class GetLogTicketResponseBody : Tea.TeaModel {
    public var logTicket: String?

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
        if self.logTicket != nil {
            map["LogTicket"] = self.logTicket!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogTicket"] as? String {
            self.logTicket = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetLogTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLogTicketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetLogTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetNormalizationRuleRequest : Tea.TeaModel {
    public var lang: String?

    public var normalizationRuleId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.normalizationRuleId != nil {
            map["NormalizationRuleId"] = self.normalizationRuleId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NormalizationRuleId"] as? String {
            self.normalizationRuleId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class GetNormalizationRuleResponseBody : Tea.TeaModel {
    public class NormalizationRule : Tea.TeaModel {
        public var createTime: Int64?

        public var extendContentPacked: String?

        public var normalizationCategoryId: String?

        public var normalizationRuleDescription: String?

        public var normalizationRuleExpression: String?

        public var normalizationRuleFormat: String?

        public var normalizationRuleId: String?

        public var normalizationRuleIds: [String]?

        public var normalizationRuleMode: String?

        public var normalizationRuleName: String?

        public var normalizationRuleStatus: String?

        public var normalizationRuleType: String?

        public var normalizationRuleVersion: Int32?

        public var normalizationSchemaId: String?

        public var orderField: String?

        public var productId: String?

        public var updateTime: Int64?

        public var vendorId: String?

        public override init() {
            super.init()
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
            if self.extendContentPacked != nil {
                map["ExtendContentPacked"] = self.extendContentPacked!
            }
            if self.normalizationCategoryId != nil {
                map["NormalizationCategoryId"] = self.normalizationCategoryId!
            }
            if self.normalizationRuleDescription != nil {
                map["NormalizationRuleDescription"] = self.normalizationRuleDescription!
            }
            if self.normalizationRuleExpression != nil {
                map["NormalizationRuleExpression"] = self.normalizationRuleExpression!
            }
            if self.normalizationRuleFormat != nil {
                map["NormalizationRuleFormat"] = self.normalizationRuleFormat!
            }
            if self.normalizationRuleId != nil {
                map["NormalizationRuleId"] = self.normalizationRuleId!
            }
            if self.normalizationRuleIds != nil {
                map["NormalizationRuleIds"] = self.normalizationRuleIds!
            }
            if self.normalizationRuleMode != nil {
                map["NormalizationRuleMode"] = self.normalizationRuleMode!
            }
            if self.normalizationRuleName != nil {
                map["NormalizationRuleName"] = self.normalizationRuleName!
            }
            if self.normalizationRuleStatus != nil {
                map["NormalizationRuleStatus"] = self.normalizationRuleStatus!
            }
            if self.normalizationRuleType != nil {
                map["NormalizationRuleType"] = self.normalizationRuleType!
            }
            if self.normalizationRuleVersion != nil {
                map["NormalizationRuleVersion"] = self.normalizationRuleVersion!
            }
            if self.normalizationSchemaId != nil {
                map["NormalizationSchemaId"] = self.normalizationSchemaId!
            }
            if self.orderField != nil {
                map["OrderField"] = self.orderField!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.vendorId != nil {
                map["VendorId"] = self.vendorId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["ExtendContentPacked"] as? String {
                self.extendContentPacked = value
            }
            if let value = dict["NormalizationCategoryId"] as? String {
                self.normalizationCategoryId = value
            }
            if let value = dict["NormalizationRuleDescription"] as? String {
                self.normalizationRuleDescription = value
            }
            if let value = dict["NormalizationRuleExpression"] as? String {
                self.normalizationRuleExpression = value
            }
            if let value = dict["NormalizationRuleFormat"] as? String {
                self.normalizationRuleFormat = value
            }
            if let value = dict["NormalizationRuleId"] as? String {
                self.normalizationRuleId = value
            }
            if let value = dict["NormalizationRuleIds"] as? [String] {
                self.normalizationRuleIds = value
            }
            if let value = dict["NormalizationRuleMode"] as? String {
                self.normalizationRuleMode = value
            }
            if let value = dict["NormalizationRuleName"] as? String {
                self.normalizationRuleName = value
            }
            if let value = dict["NormalizationRuleStatus"] as? String {
                self.normalizationRuleStatus = value
            }
            if let value = dict["NormalizationRuleType"] as? String {
                self.normalizationRuleType = value
            }
            if let value = dict["NormalizationRuleVersion"] as? Int32 {
                self.normalizationRuleVersion = value
            }
            if let value = dict["NormalizationSchemaId"] as? String {
                self.normalizationSchemaId = value
            }
            if let value = dict["OrderField"] as? String {
                self.orderField = value
            }
            if let value = dict["ProductId"] as? String {
                self.productId = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["VendorId"] as? String {
                self.vendorId = value
            }
        }
    }
    public var normalizationRule: GetNormalizationRuleResponseBody.NormalizationRule?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.normalizationRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.normalizationRule != nil {
            map["NormalizationRule"] = self.normalizationRule?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NormalizationRule"] as? [String: Any?] {
            var model = GetNormalizationRuleResponseBody.NormalizationRule()
            model.fromMap(value)
            self.normalizationRule = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetNormalizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNormalizationRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetNormalizationRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetNormalizationRuleVersionRequest : Tea.TeaModel {
    public var lang: String?

    public var normalizationRuleId: String?

    public var normalizationRuleVersion: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.normalizationRuleId != nil {
            map["NormalizationRuleId"] = self.normalizationRuleId!
        }
        if self.normalizationRuleVersion != nil {
            map["NormalizationRuleVersion"] = self.normalizationRuleVersion!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NormalizationRuleId"] as? String {
            self.normalizationRuleId = value
        }
        if let value = dict["NormalizationRuleVersion"] as? Int32 {
            self.normalizationRuleVersion = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class GetNormalizationRuleVersionResponseBody : Tea.TeaModel {
    public class NormalizationRuleVersion : Tea.TeaModel {
        public var createTime: Int64?

        public var normalizationCategoryId: String?

        public var normalizationRuleDescription: String?

        public var normalizationRuleExpression: String?

        public var normalizationRuleFormat: String?

        public var normalizationRuleId: String?

        public var normalizationRuleName: String?

        public var normalizationRuleStatus: String?

        public var normalizationRuleType: String?

        public var normalizationRuleVersion: Int32?

        public var normalizationRuleVersionName: String?

        public var normalizationSchemaId: String?

        public var productId: String?

        public var regionId: String?

        public var updateTime: Int64?

        public var vendorId: String?

        public override init() {
            super.init()
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
            if self.normalizationCategoryId != nil {
                map["NormalizationCategoryId"] = self.normalizationCategoryId!
            }
            if self.normalizationRuleDescription != nil {
                map["NormalizationRuleDescription"] = self.normalizationRuleDescription!
            }
            if self.normalizationRuleExpression != nil {
                map["NormalizationRuleExpression"] = self.normalizationRuleExpression!
            }
            if self.normalizationRuleFormat != nil {
                map["NormalizationRuleFormat"] = self.normalizationRuleFormat!
            }
            if self.normalizationRuleId != nil {
                map["NormalizationRuleId"] = self.normalizationRuleId!
            }
            if self.normalizationRuleName != nil {
                map["NormalizationRuleName"] = self.normalizationRuleName!
            }
            if self.normalizationRuleStatus != nil {
                map["NormalizationRuleStatus"] = self.normalizationRuleStatus!
            }
            if self.normalizationRuleType != nil {
                map["NormalizationRuleType"] = self.normalizationRuleType!
            }
            if self.normalizationRuleVersion != nil {
                map["NormalizationRuleVersion"] = self.normalizationRuleVersion!
            }
            if self.normalizationRuleVersionName != nil {
                map["NormalizationRuleVersionName"] = self.normalizationRuleVersionName!
            }
            if self.normalizationSchemaId != nil {
                map["NormalizationSchemaId"] = self.normalizationSchemaId!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.vendorId != nil {
                map["VendorId"] = self.vendorId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["NormalizationCategoryId"] as? String {
                self.normalizationCategoryId = value
            }
            if let value = dict["NormalizationRuleDescription"] as? String {
                self.normalizationRuleDescription = value
            }
            if let value = dict["NormalizationRuleExpression"] as? String {
                self.normalizationRuleExpression = value
            }
            if let value = dict["NormalizationRuleFormat"] as? String {
                self.normalizationRuleFormat = value
            }
            if let value = dict["NormalizationRuleId"] as? String {
                self.normalizationRuleId = value
            }
            if let value = dict["NormalizationRuleName"] as? String {
                self.normalizationRuleName = value
            }
            if let value = dict["NormalizationRuleStatus"] as? String {
                self.normalizationRuleStatus = value
            }
            if let value = dict["NormalizationRuleType"] as? String {
                self.normalizationRuleType = value
            }
            if let value = dict["NormalizationRuleVersion"] as? Int32 {
                self.normalizationRuleVersion = value
            }
            if let value = dict["NormalizationRuleVersionName"] as? String {
                self.normalizationRuleVersionName = value
            }
            if let value = dict["NormalizationSchemaId"] as? String {
                self.normalizationSchemaId = value
            }
            if let value = dict["ProductId"] as? String {
                self.productId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["VendorId"] as? String {
                self.vendorId = value
            }
        }
    }
    public var normalizationRuleVersion: GetNormalizationRuleVersionResponseBody.NormalizationRuleVersion?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.normalizationRuleVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.normalizationRuleVersion != nil {
            map["NormalizationRuleVersion"] = self.normalizationRuleVersion?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NormalizationRuleVersion"] as? [String: Any?] {
            var model = GetNormalizationRuleVersionResponseBody.NormalizationRuleVersion()
            model.fromMap(value)
            self.normalizationRuleVersion = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetNormalizationRuleVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNormalizationRuleVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetNormalizationRuleVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetNormalizationSchemaRequest : Tea.TeaModel {
    public var lang: String?

    public var normalizationSchemaId: String?

    public var normalizationSchemaType: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.normalizationSchemaId != nil {
            map["NormalizationSchemaId"] = self.normalizationSchemaId!
        }
        if self.normalizationSchemaType != nil {
            map["NormalizationSchemaType"] = self.normalizationSchemaType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NormalizationSchemaId"] as? String {
            self.normalizationSchemaId = value
        }
        if let value = dict["NormalizationSchemaType"] as? String {
            self.normalizationSchemaType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class GetNormalizationSchemaResponseBody : Tea.TeaModel {
    public class NormalizationSchema : Tea.TeaModel {
        public class NormalizationFields : Tea.TeaModel {
            public var normalizationFieldDescription: String?

            public var normalizationFieldExample: String?

            public var normalizationFieldName: String?

            public var normalizationFieldRequirement: Bool?

            public var normalizationFieldReserved: Bool?

            public var normalizationFieldType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.normalizationFieldDescription != nil {
                    map["NormalizationFieldDescription"] = self.normalizationFieldDescription!
                }
                if self.normalizationFieldExample != nil {
                    map["NormalizationFieldExample"] = self.normalizationFieldExample!
                }
                if self.normalizationFieldName != nil {
                    map["NormalizationFieldName"] = self.normalizationFieldName!
                }
                if self.normalizationFieldRequirement != nil {
                    map["NormalizationFieldRequirement"] = self.normalizationFieldRequirement!
                }
                if self.normalizationFieldReserved != nil {
                    map["NormalizationFieldReserved"] = self.normalizationFieldReserved!
                }
                if self.normalizationFieldType != nil {
                    map["NormalizationFieldType"] = self.normalizationFieldType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NormalizationFieldDescription"] as? String {
                    self.normalizationFieldDescription = value
                }
                if let value = dict["NormalizationFieldExample"] as? String {
                    self.normalizationFieldExample = value
                }
                if let value = dict["NormalizationFieldName"] as? String {
                    self.normalizationFieldName = value
                }
                if let value = dict["NormalizationFieldRequirement"] as? Bool {
                    self.normalizationFieldRequirement = value
                }
                if let value = dict["NormalizationFieldReserved"] as? Bool {
                    self.normalizationFieldReserved = value
                }
                if let value = dict["NormalizationFieldType"] as? String {
                    self.normalizationFieldType = value
                }
            }
        }
        public var createTime: Int64?

        public var normalizationCategoryId: String?

        public var normalizationFields: [GetNormalizationSchemaResponseBody.NormalizationSchema.NormalizationFields]?

        public var normalizationSchemaId: String?

        public var normalizationSchemaName: String?

        public var normalizationSchemaType: String?

        public var targetLogStore: String?

        public var targetStoreView: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.normalizationCategoryId != nil {
                map["NormalizationCategoryId"] = self.normalizationCategoryId!
            }
            if self.normalizationFields != nil {
                var tmp : [Any] = []
                for k in self.normalizationFields! {
                    tmp.append(k.toMap())
                }
                map["NormalizationFields"] = tmp
            }
            if self.normalizationSchemaId != nil {
                map["NormalizationSchemaId"] = self.normalizationSchemaId!
            }
            if self.normalizationSchemaName != nil {
                map["NormalizationSchemaName"] = self.normalizationSchemaName!
            }
            if self.normalizationSchemaType != nil {
                map["NormalizationSchemaType"] = self.normalizationSchemaType!
            }
            if self.targetLogStore != nil {
                map["TargetLogStore"] = self.targetLogStore!
            }
            if self.targetStoreView != nil {
                map["TargetStoreView"] = self.targetStoreView!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["NormalizationCategoryId"] as? String {
                self.normalizationCategoryId = value
            }
            if let value = dict["NormalizationFields"] as? [Any?] {
                var tmp : [GetNormalizationSchemaResponseBody.NormalizationSchema.NormalizationFields] = []
                for v in value {
                    if v != nil {
                        var model = GetNormalizationSchemaResponseBody.NormalizationSchema.NormalizationFields()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.normalizationFields = tmp
            }
            if let value = dict["NormalizationSchemaId"] as? String {
                self.normalizationSchemaId = value
            }
            if let value = dict["NormalizationSchemaName"] as? String {
                self.normalizationSchemaName = value
            }
            if let value = dict["NormalizationSchemaType"] as? String {
                self.normalizationSchemaType = value
            }
            if let value = dict["TargetLogStore"] as? String {
                self.targetLogStore = value
            }
            if let value = dict["TargetStoreView"] as? String {
                self.targetStoreView = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var normalizationSchema: GetNormalizationSchemaResponseBody.NormalizationSchema?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.normalizationSchema?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.normalizationSchema != nil {
            map["NormalizationSchema"] = self.normalizationSchema?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NormalizationSchema"] as? [String: Any?] {
            var model = GetNormalizationSchemaResponseBody.NormalizationSchema()
            model.fromMap(value)
            self.normalizationSchema = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetNormalizationSchemaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNormalizationSchemaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetNormalizationSchemaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserConfigRequest : Tea.TeaModel {
    public var lang: String?

    public var regionId: String?

    public var roleFor: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? String {
            self.roleFor = value
        }
    }
}

public class GetUserConfigResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var ctdrVersion: String?

        public var dataStorageVersion: String?

        public var upgradeCtdrVersion: String?

        public var upgradeStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ctdrVersion != nil {
                map["CtdrVersion"] = self.ctdrVersion!
            }
            if self.dataStorageVersion != nil {
                map["DataStorageVersion"] = self.dataStorageVersion!
            }
            if self.upgradeCtdrVersion != nil {
                map["UpgradeCtdrVersion"] = self.upgradeCtdrVersion!
            }
            if self.upgradeStatus != nil {
                map["UpgradeStatus"] = self.upgradeStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CtdrVersion"] as? String {
                self.ctdrVersion = value
            }
            if let value = dict["DataStorageVersion"] as? String {
                self.dataStorageVersion = value
            }
            if let value = dict["UpgradeCtdrVersion"] as? String {
                self.upgradeCtdrVersion = value
            }
            if let value = dict["UpgradeStatus"] as? String {
                self.upgradeStatus = value
            }
        }
    }
    public var requestId: String?

    public var user: GetUserConfigResponseBody.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["User"] as? [String: Any?] {
            var model = GetUserConfigResponseBody.User()
            model.fromMap(value)
            self.user = model
        }
    }
}

public class GetUserConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataIngestionTemplatesRequest : Tea.TeaModel {
    public var dataIngestionTemplateStatus: String?

    public var dataSourceTemplateIds: String?

    public var lang: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var productId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataIngestionTemplateStatus != nil {
            map["DataIngestionTemplateStatus"] = self.dataIngestionTemplateStatus!
        }
        if self.dataSourceTemplateIds != nil {
            map["DataSourceTemplateIds"] = self.dataSourceTemplateIds!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataIngestionTemplateStatus"] as? String {
            self.dataIngestionTemplateStatus = value
        }
        if let value = dict["DataSourceTemplateIds"] as? String {
            self.dataSourceTemplateIds = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListDataIngestionTemplatesResponseBody : Tea.TeaModel {
    public class DataIngestionTemplates : Tea.TeaModel {
        public var capacityCount: String?

        public var createTime: Int64?

        public var dataIngestionMode: String?

        public var dataIngestionStatus: String?

        public var dataIngestionTemplateId: String?

        public var dataIngestionTemplateName: String?

        public var dataIngestionTemplateStatus: String?

        public var dataSourceTemplateId: String?

        public var normalizationRuleId: String?

        public var normalizationRuleName: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capacityCount != nil {
                map["CapacityCount"] = self.capacityCount!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataIngestionMode != nil {
                map["DataIngestionMode"] = self.dataIngestionMode!
            }
            if self.dataIngestionStatus != nil {
                map["DataIngestionStatus"] = self.dataIngestionStatus!
            }
            if self.dataIngestionTemplateId != nil {
                map["DataIngestionTemplateId"] = self.dataIngestionTemplateId!
            }
            if self.dataIngestionTemplateName != nil {
                map["DataIngestionTemplateName"] = self.dataIngestionTemplateName!
            }
            if self.dataIngestionTemplateStatus != nil {
                map["DataIngestionTemplateStatus"] = self.dataIngestionTemplateStatus!
            }
            if self.dataSourceTemplateId != nil {
                map["DataSourceTemplateId"] = self.dataSourceTemplateId!
            }
            if self.normalizationRuleId != nil {
                map["NormalizationRuleId"] = self.normalizationRuleId!
            }
            if self.normalizationRuleName != nil {
                map["NormalizationRuleName"] = self.normalizationRuleName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CapacityCount"] as? String {
                self.capacityCount = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DataIngestionMode"] as? String {
                self.dataIngestionMode = value
            }
            if let value = dict["DataIngestionStatus"] as? String {
                self.dataIngestionStatus = value
            }
            if let value = dict["DataIngestionTemplateId"] as? String {
                self.dataIngestionTemplateId = value
            }
            if let value = dict["DataIngestionTemplateName"] as? String {
                self.dataIngestionTemplateName = value
            }
            if let value = dict["DataIngestionTemplateStatus"] as? String {
                self.dataIngestionTemplateStatus = value
            }
            if let value = dict["DataSourceTemplateId"] as? String {
                self.dataSourceTemplateId = value
            }
            if let value = dict["NormalizationRuleId"] as? String {
                self.normalizationRuleId = value
            }
            if let value = dict["NormalizationRuleName"] as? String {
                self.normalizationRuleName = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var dataIngestionTemplates: [ListDataIngestionTemplatesResponseBody.DataIngestionTemplates]?

    public var pageNumber: String?

    public var pageSize: String?

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
        if self.dataIngestionTemplates != nil {
            var tmp : [Any] = []
            for k in self.dataIngestionTemplates! {
                tmp.append(k.toMap())
            }
            map["DataIngestionTemplates"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataIngestionTemplates"] as? [Any?] {
            var tmp : [ListDataIngestionTemplatesResponseBody.DataIngestionTemplates] = []
            for v in value {
                if v != nil {
                    var model = ListDataIngestionTemplatesResponseBody.DataIngestionTemplates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataIngestionTemplates = tmp
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDataIngestionTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataIngestionTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataIngestionTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataIngestionsRequest : Tea.TeaModel {
    public var dataIngestionIds: [String]?

    public var dataIngestionStatus: String?

    public var dataIngestionTemplateIds: [String]?

    public var lang: String?

    public var productId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataIngestionIds != nil {
            map["DataIngestionIds"] = self.dataIngestionIds!
        }
        if self.dataIngestionStatus != nil {
            map["DataIngestionStatus"] = self.dataIngestionStatus!
        }
        if self.dataIngestionTemplateIds != nil {
            map["DataIngestionTemplateIds"] = self.dataIngestionTemplateIds!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataIngestionIds"] as? [String] {
            self.dataIngestionIds = value
        }
        if let value = dict["DataIngestionStatus"] as? String {
            self.dataIngestionStatus = value
        }
        if let value = dict["DataIngestionTemplateIds"] as? [String] {
            self.dataIngestionTemplateIds = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListDataIngestionsShrinkRequest : Tea.TeaModel {
    public var dataIngestionIdsShrink: String?

    public var dataIngestionStatus: String?

    public var dataIngestionTemplateIdsShrink: String?

    public var lang: String?

    public var productId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataIngestionIdsShrink != nil {
            map["DataIngestionIds"] = self.dataIngestionIdsShrink!
        }
        if self.dataIngestionStatus != nil {
            map["DataIngestionStatus"] = self.dataIngestionStatus!
        }
        if self.dataIngestionTemplateIdsShrink != nil {
            map["DataIngestionTemplateIds"] = self.dataIngestionTemplateIdsShrink!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataIngestionIds"] as? String {
            self.dataIngestionIdsShrink = value
        }
        if let value = dict["DataIngestionStatus"] as? String {
            self.dataIngestionStatus = value
        }
        if let value = dict["DataIngestionTemplateIds"] as? String {
            self.dataIngestionTemplateIdsShrink = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListDataIngestionsResponseBody : Tea.TeaModel {
    public class DataIngestions : Tea.TeaModel {
        public var activeTime: Int64?

        public var capacityCount: Int32?

        public var createTime: Int64?

        public var dataIngestionId: String?

        public var dataIngestionMode: String?

        public var dataIngestionModeEditable: Bool?

        public var dataIngestionState: String?

        public var dataIngestionStateCode: String?

        public var dataIngestionStatus: String?

        public var dataIngestionTemplateId: String?

        public var dataIngestionType: String?

        public var dataSourceEditable: Bool?

        public var dataSourceId: String?

        public var normalizationRuleEditable: Bool?

        public var normalizationRuleId: String?

        public var realtimeDataSourceId: String?

        public var scanDataSourceId: String?

        public var streamJobId: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeTime != nil {
                map["ActiveTime"] = self.activeTime!
            }
            if self.capacityCount != nil {
                map["CapacityCount"] = self.capacityCount!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataIngestionId != nil {
                map["DataIngestionId"] = self.dataIngestionId!
            }
            if self.dataIngestionMode != nil {
                map["DataIngestionMode"] = self.dataIngestionMode!
            }
            if self.dataIngestionModeEditable != nil {
                map["DataIngestionModeEditable"] = self.dataIngestionModeEditable!
            }
            if self.dataIngestionState != nil {
                map["DataIngestionState"] = self.dataIngestionState!
            }
            if self.dataIngestionStateCode != nil {
                map["DataIngestionStateCode"] = self.dataIngestionStateCode!
            }
            if self.dataIngestionStatus != nil {
                map["DataIngestionStatus"] = self.dataIngestionStatus!
            }
            if self.dataIngestionTemplateId != nil {
                map["DataIngestionTemplateId"] = self.dataIngestionTemplateId!
            }
            if self.dataIngestionType != nil {
                map["DataIngestionType"] = self.dataIngestionType!
            }
            if self.dataSourceEditable != nil {
                map["DataSourceEditable"] = self.dataSourceEditable!
            }
            if self.dataSourceId != nil {
                map["DataSourceId"] = self.dataSourceId!
            }
            if self.normalizationRuleEditable != nil {
                map["NormalizationRuleEditable"] = self.normalizationRuleEditable!
            }
            if self.normalizationRuleId != nil {
                map["NormalizationRuleId"] = self.normalizationRuleId!
            }
            if self.realtimeDataSourceId != nil {
                map["RealtimeDataSourceId"] = self.realtimeDataSourceId!
            }
            if self.scanDataSourceId != nil {
                map["ScanDataSourceId"] = self.scanDataSourceId!
            }
            if self.streamJobId != nil {
                map["StreamJobId"] = self.streamJobId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveTime"] as? Int64 {
                self.activeTime = value
            }
            if let value = dict["CapacityCount"] as? Int32 {
                self.capacityCount = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DataIngestionId"] as? String {
                self.dataIngestionId = value
            }
            if let value = dict["DataIngestionMode"] as? String {
                self.dataIngestionMode = value
            }
            if let value = dict["DataIngestionModeEditable"] as? Bool {
                self.dataIngestionModeEditable = value
            }
            if let value = dict["DataIngestionState"] as? String {
                self.dataIngestionState = value
            }
            if let value = dict["DataIngestionStateCode"] as? String {
                self.dataIngestionStateCode = value
            }
            if let value = dict["DataIngestionStatus"] as? String {
                self.dataIngestionStatus = value
            }
            if let value = dict["DataIngestionTemplateId"] as? String {
                self.dataIngestionTemplateId = value
            }
            if let value = dict["DataIngestionType"] as? String {
                self.dataIngestionType = value
            }
            if let value = dict["DataSourceEditable"] as? Bool {
                self.dataSourceEditable = value
            }
            if let value = dict["DataSourceId"] as? String {
                self.dataSourceId = value
            }
            if let value = dict["NormalizationRuleEditable"] as? Bool {
                self.normalizationRuleEditable = value
            }
            if let value = dict["NormalizationRuleId"] as? String {
                self.normalizationRuleId = value
            }
            if let value = dict["RealtimeDataSourceId"] as? String {
                self.realtimeDataSourceId = value
            }
            if let value = dict["ScanDataSourceId"] as? String {
                self.scanDataSourceId = value
            }
            if let value = dict["StreamJobId"] as? String {
                self.streamJobId = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var dataIngestions: [ListDataIngestionsResponseBody.DataIngestions]?

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
        if self.dataIngestions != nil {
            var tmp : [Any] = []
            for k in self.dataIngestions! {
                tmp.append(k.toMap())
            }
            map["DataIngestions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataIngestions"] as? [Any?] {
            var tmp : [ListDataIngestionsResponseBody.DataIngestions] = []
            for v in value {
                if v != nil {
                    var model = ListDataIngestionsResponseBody.DataIngestions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataIngestions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDataIngestionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataIngestionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataIngestionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataSetRecordsRequest : Tea.TeaModel {
    public var dataSetId: String?

    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSetId != nil {
            map["DataSetId"] = self.dataSetId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSetId"] as? String {
            self.dataSetId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
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
    }
}

public class ListDataSetRecordsResponseBody : Tea.TeaModel {
    public class DataSetRecords : Tea.TeaModel {
        public var createTime: Int64?

        public var dataSetId: String?

        public var dataSetName: String?

        public var dataSetRecordId: String?

        public var dataSetRecordValues: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.dataSetId != nil {
                map["DataSetId"] = self.dataSetId!
            }
            if self.dataSetName != nil {
                map["DataSetName"] = self.dataSetName!
            }
            if self.dataSetRecordId != nil {
                map["DataSetRecordId"] = self.dataSetRecordId!
            }
            if self.dataSetRecordValues != nil {
                map["DataSetRecordValues"] = self.dataSetRecordValues!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DataSetId"] as? String {
                self.dataSetId = value
            }
            if let value = dict["DataSetName"] as? String {
                self.dataSetName = value
            }
            if let value = dict["DataSetRecordId"] as? String {
                self.dataSetRecordId = value
            }
            if let value = dict["DataSetRecordValues"] as? String {
                self.dataSetRecordValues = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var dataSetRecords: [ListDataSetRecordsResponseBody.DataSetRecords]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

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
        if self.dataSetRecords != nil {
            var tmp : [Any] = []
            for k in self.dataSetRecords! {
                tmp.append(k.toMap())
            }
            map["DataSetRecords"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSetRecords"] as? [Any?] {
            var tmp : [ListDataSetRecordsResponseBody.DataSetRecords] = []
            for v in value {
                if v != nil {
                    var model = ListDataSetRecordsResponseBody.DataSetRecords()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSetRecords = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDataSetRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSetRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataSetRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataSetsRequest : Tea.TeaModel {
    public var dataSetId: String?

    public var dataSetIds: [String]?

    public var dataSetName: String?

    public var dataSetStatus: Int32?

    public var dataSetType: String?

    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderDirection: String?

    public var orderFieldName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSetId != nil {
            map["DataSetId"] = self.dataSetId!
        }
        if self.dataSetIds != nil {
            map["DataSetIds"] = self.dataSetIds!
        }
        if self.dataSetName != nil {
            map["DataSetName"] = self.dataSetName!
        }
        if self.dataSetStatus != nil {
            map["DataSetStatus"] = self.dataSetStatus!
        }
        if self.dataSetType != nil {
            map["DataSetType"] = self.dataSetType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderDirection != nil {
            map["OrderDirection"] = self.orderDirection!
        }
        if self.orderFieldName != nil {
            map["OrderFieldName"] = self.orderFieldName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSetId"] as? String {
            self.dataSetId = value
        }
        if let value = dict["DataSetIds"] as? [String] {
            self.dataSetIds = value
        }
        if let value = dict["DataSetName"] as? String {
            self.dataSetName = value
        }
        if let value = dict["DataSetStatus"] as? Int32 {
            self.dataSetStatus = value
        }
        if let value = dict["DataSetType"] as? String {
            self.dataSetType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["OrderFieldName"] as? String {
            self.orderFieldName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
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
    }
}

public class ListDataSetsShrinkRequest : Tea.TeaModel {
    public var dataSetId: String?

    public var dataSetIdsShrink: String?

    public var dataSetName: String?

    public var dataSetStatus: Int32?

    public var dataSetType: String?

    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderDirection: String?

    public var orderFieldName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSetId != nil {
            map["DataSetId"] = self.dataSetId!
        }
        if self.dataSetIdsShrink != nil {
            map["DataSetIds"] = self.dataSetIdsShrink!
        }
        if self.dataSetName != nil {
            map["DataSetName"] = self.dataSetName!
        }
        if self.dataSetStatus != nil {
            map["DataSetStatus"] = self.dataSetStatus!
        }
        if self.dataSetType != nil {
            map["DataSetType"] = self.dataSetType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderDirection != nil {
            map["OrderDirection"] = self.orderDirection!
        }
        if self.orderFieldName != nil {
            map["OrderFieldName"] = self.orderFieldName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSetId"] as? String {
            self.dataSetId = value
        }
        if let value = dict["DataSetIds"] as? String {
            self.dataSetIdsShrink = value
        }
        if let value = dict["DataSetName"] as? String {
            self.dataSetName = value
        }
        if let value = dict["DataSetStatus"] as? Int32 {
            self.dataSetStatus = value
        }
        if let value = dict["DataSetType"] as? String {
            self.dataSetType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["OrderFieldName"] as? String {
            self.orderFieldName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
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
    }
}

public class ListDataSetsResponseBody : Tea.TeaModel {
    public class DataSets : Tea.TeaModel {
        public class DataSetReferences : Tea.TeaModel {
            public var dataSetId: String?

            public var dataSetReferenceId: String?

            public var dataSetReferenceName: String?

            public var dataSetReferenceType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataSetId != nil {
                    map["DataSetId"] = self.dataSetId!
                }
                if self.dataSetReferenceId != nil {
                    map["DataSetReferenceId"] = self.dataSetReferenceId!
                }
                if self.dataSetReferenceName != nil {
                    map["DataSetReferenceName"] = self.dataSetReferenceName!
                }
                if self.dataSetReferenceType != nil {
                    map["DataSetReferenceType"] = self.dataSetReferenceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataSetId"] as? String {
                    self.dataSetId = value
                }
                if let value = dict["DataSetReferenceId"] as? String {
                    self.dataSetReferenceId = value
                }
                if let value = dict["DataSetReferenceName"] as? String {
                    self.dataSetReferenceName = value
                }
                if let value = dict["DataSetReferenceType"] as? String {
                    self.dataSetReferenceType = value
                }
            }
        }
        public class IpWhitelistRecognizers : Tea.TeaModel {
            public var autoRecognizeStatus: String?

            public var ipWhitelistRecognizerType: String?

            public var recognizeScope: String?

            public var updateTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoRecognizeStatus != nil {
                    map["AutoRecognizeStatus"] = self.autoRecognizeStatus!
                }
                if self.ipWhitelistRecognizerType != nil {
                    map["IpWhitelistRecognizerType"] = self.ipWhitelistRecognizerType!
                }
                if self.recognizeScope != nil {
                    map["RecognizeScope"] = self.recognizeScope!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoRecognizeStatus"] as? String {
                    self.autoRecognizeStatus = value
                }
                if let value = dict["IpWhitelistRecognizerType"] as? String {
                    self.ipWhitelistRecognizerType = value
                }
                if let value = dict["RecognizeScope"] as? String {
                    self.recognizeScope = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
            }
        }
        public var createTime: Int64?

        public var dataSetDescription: String?

        public var dataSetFieldKeyName: String?

        public var dataSetFieldNames: String?

        public var dataSetFileName: String?

        public var dataSetId: String?

        public var dataSetName: String?

        public var dataSetReferences: [ListDataSetsResponseBody.DataSets.DataSetReferences]?

        public var dataSetStatus: Int32?

        public var dataSetType: String?

        public var ipWhitelistRecognizers: [ListDataSetsResponseBody.DataSets.IpWhitelistRecognizers]?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.dataSetDescription != nil {
                map["DataSetDescription"] = self.dataSetDescription!
            }
            if self.dataSetFieldKeyName != nil {
                map["DataSetFieldKeyName"] = self.dataSetFieldKeyName!
            }
            if self.dataSetFieldNames != nil {
                map["DataSetFieldNames"] = self.dataSetFieldNames!
            }
            if self.dataSetFileName != nil {
                map["DataSetFileName"] = self.dataSetFileName!
            }
            if self.dataSetId != nil {
                map["DataSetId"] = self.dataSetId!
            }
            if self.dataSetName != nil {
                map["DataSetName"] = self.dataSetName!
            }
            if self.dataSetReferences != nil {
                var tmp : [Any] = []
                for k in self.dataSetReferences! {
                    tmp.append(k.toMap())
                }
                map["DataSetReferences"] = tmp
            }
            if self.dataSetStatus != nil {
                map["DataSetStatus"] = self.dataSetStatus!
            }
            if self.dataSetType != nil {
                map["DataSetType"] = self.dataSetType!
            }
            if self.ipWhitelistRecognizers != nil {
                var tmp : [Any] = []
                for k in self.ipWhitelistRecognizers! {
                    tmp.append(k.toMap())
                }
                map["IpWhitelistRecognizers"] = tmp
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DataSetDescription"] as? String {
                self.dataSetDescription = value
            }
            if let value = dict["DataSetFieldKeyName"] as? String {
                self.dataSetFieldKeyName = value
            }
            if let value = dict["DataSetFieldNames"] as? String {
                self.dataSetFieldNames = value
            }
            if let value = dict["DataSetFileName"] as? String {
                self.dataSetFileName = value
            }
            if let value = dict["DataSetId"] as? String {
                self.dataSetId = value
            }
            if let value = dict["DataSetName"] as? String {
                self.dataSetName = value
            }
            if let value = dict["DataSetReferences"] as? [Any?] {
                var tmp : [ListDataSetsResponseBody.DataSets.DataSetReferences] = []
                for v in value {
                    if v != nil {
                        var model = ListDataSetsResponseBody.DataSets.DataSetReferences()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataSetReferences = tmp
            }
            if let value = dict["DataSetStatus"] as? Int32 {
                self.dataSetStatus = value
            }
            if let value = dict["DataSetType"] as? String {
                self.dataSetType = value
            }
            if let value = dict["IpWhitelistRecognizers"] as? [Any?] {
                var tmp : [ListDataSetsResponseBody.DataSets.IpWhitelistRecognizers] = []
                for v in value {
                    if v != nil {
                        var model = ListDataSetsResponseBody.DataSets.IpWhitelistRecognizers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ipWhitelistRecognizers = tmp
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var dataSets: [ListDataSetsResponseBody.DataSets]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

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
        if self.dataSets != nil {
            var tmp : [Any] = []
            for k in self.dataSets! {
                tmp.append(k.toMap())
            }
            map["DataSets"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSets"] as? [Any?] {
            var tmp : [ListDataSetsResponseBody.DataSets] = []
            for v in value {
                if v != nil {
                    var model = ListDataSetsResponseBody.DataSets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSets = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDataSetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataSetsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataSourceTemplatesRequest : Tea.TeaModel {
    public var dataSourceTemplateIds: [String]?

    public var lang: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceTemplateIds != nil {
            map["DataSourceTemplateIds"] = self.dataSourceTemplateIds!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceTemplateIds"] as? [String] {
            self.dataSourceTemplateIds = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListDataSourceTemplatesShrinkRequest : Tea.TeaModel {
    public var dataSourceTemplateIdsShrink: String?

    public var lang: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceTemplateIdsShrink != nil {
            map["DataSourceTemplateIds"] = self.dataSourceTemplateIdsShrink!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceTemplateIds"] as? String {
            self.dataSourceTemplateIdsShrink = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListDataSourceTemplatesResponseBody : Tea.TeaModel {
    public class DataSourceTemplates : Tea.TeaModel {
        public var autoScanNew: String?

        public var createTime: Int64?

        public var dataSourceFrom: String?

        public var dataSourceRecognizeEnabled: Bool?

        public var dataSourceRecognizer: String?

        public var dataSourceTemplateId: String?

        public var dataSourceTemplateName: String?

        public var logProjectPattern: String?

        public var logRegionIds: [String]?

        public var logStorePattern: String?

        public var logUserIds: [String]?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoScanNew != nil {
                map["AutoScanNew"] = self.autoScanNew!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataSourceFrom != nil {
                map["DataSourceFrom"] = self.dataSourceFrom!
            }
            if self.dataSourceRecognizeEnabled != nil {
                map["DataSourceRecognizeEnabled"] = self.dataSourceRecognizeEnabled!
            }
            if self.dataSourceRecognizer != nil {
                map["DataSourceRecognizer"] = self.dataSourceRecognizer!
            }
            if self.dataSourceTemplateId != nil {
                map["DataSourceTemplateId"] = self.dataSourceTemplateId!
            }
            if self.dataSourceTemplateName != nil {
                map["DataSourceTemplateName"] = self.dataSourceTemplateName!
            }
            if self.logProjectPattern != nil {
                map["LogProjectPattern"] = self.logProjectPattern!
            }
            if self.logRegionIds != nil {
                map["LogRegionIds"] = self.logRegionIds!
            }
            if self.logStorePattern != nil {
                map["LogStorePattern"] = self.logStorePattern!
            }
            if self.logUserIds != nil {
                map["LogUserIds"] = self.logUserIds!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoScanNew"] as? String {
                self.autoScanNew = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DataSourceFrom"] as? String {
                self.dataSourceFrom = value
            }
            if let value = dict["DataSourceRecognizeEnabled"] as? Bool {
                self.dataSourceRecognizeEnabled = value
            }
            if let value = dict["DataSourceRecognizer"] as? String {
                self.dataSourceRecognizer = value
            }
            if let value = dict["DataSourceTemplateId"] as? String {
                self.dataSourceTemplateId = value
            }
            if let value = dict["DataSourceTemplateName"] as? String {
                self.dataSourceTemplateName = value
            }
            if let value = dict["LogProjectPattern"] as? String {
                self.logProjectPattern = value
            }
            if let value = dict["LogRegionIds"] as? [String] {
                self.logRegionIds = value
            }
            if let value = dict["LogStorePattern"] as? String {
                self.logStorePattern = value
            }
            if let value = dict["LogUserIds"] as? [String] {
                self.logUserIds = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var dataSourceTemplates: [ListDataSourceTemplatesResponseBody.DataSourceTemplates]?

    public var pageNumber: String?

    public var pageSize: String?

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
        if self.dataSourceTemplates != nil {
            var tmp : [Any] = []
            for k in self.dataSourceTemplates! {
                tmp.append(k.toMap())
            }
            map["DataSourceTemplates"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceTemplates"] as? [Any?] {
            var tmp : [ListDataSourceTemplatesResponseBody.DataSourceTemplates] = []
            for v in value {
                if v != nil {
                    var model = ListDataSourceTemplatesResponseBody.DataSourceTemplates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSourceTemplates = tmp
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDataSourceTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourceTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataSourceTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataSourcesRequest : Tea.TeaModel {
    public var dataSourceFrom: String?

    public var dataSourceIds: [String]?

    public var dataSourceName: String?

    public var dataSourceStatus: String?

    public var dataSourceStoreStatus: String?

    public var dataSourceTemplateIds: [String]?

    public var dataSourceType: String?

    public var lang: String?

    public var logProjectName: String?

    public var logRegionId: String?

    public var logStoreName: String?

    public var logUserIds: [Int64]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var order: String?

    public var orderField: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceFrom != nil {
            map["DataSourceFrom"] = self.dataSourceFrom!
        }
        if self.dataSourceIds != nil {
            map["DataSourceIds"] = self.dataSourceIds!
        }
        if self.dataSourceName != nil {
            map["DataSourceName"] = self.dataSourceName!
        }
        if self.dataSourceStatus != nil {
            map["DataSourceStatus"] = self.dataSourceStatus!
        }
        if self.dataSourceStoreStatus != nil {
            map["DataSourceStoreStatus"] = self.dataSourceStoreStatus!
        }
        if self.dataSourceTemplateIds != nil {
            map["DataSourceTemplateIds"] = self.dataSourceTemplateIds!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.logProjectName != nil {
            map["LogProjectName"] = self.logProjectName!
        }
        if self.logRegionId != nil {
            map["LogRegionId"] = self.logRegionId!
        }
        if self.logStoreName != nil {
            map["LogStoreName"] = self.logStoreName!
        }
        if self.logUserIds != nil {
            map["LogUserIds"] = self.logUserIds!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceFrom"] as? String {
            self.dataSourceFrom = value
        }
        if let value = dict["DataSourceIds"] as? [String] {
            self.dataSourceIds = value
        }
        if let value = dict["DataSourceName"] as? String {
            self.dataSourceName = value
        }
        if let value = dict["DataSourceStatus"] as? String {
            self.dataSourceStatus = value
        }
        if let value = dict["DataSourceStoreStatus"] as? String {
            self.dataSourceStoreStatus = value
        }
        if let value = dict["DataSourceTemplateIds"] as? [String] {
            self.dataSourceTemplateIds = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogProjectName"] as? String {
            self.logProjectName = value
        }
        if let value = dict["LogRegionId"] as? String {
            self.logRegionId = value
        }
        if let value = dict["LogStoreName"] as? String {
            self.logStoreName = value
        }
        if let value = dict["LogUserIds"] as? [Int64] {
            self.logUserIds = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListDataSourcesShrinkRequest : Tea.TeaModel {
    public var dataSourceFrom: String?

    public var dataSourceIdsShrink: String?

    public var dataSourceName: String?

    public var dataSourceStatus: String?

    public var dataSourceStoreStatus: String?

    public var dataSourceTemplateIdsShrink: String?

    public var dataSourceType: String?

    public var lang: String?

    public var logProjectName: String?

    public var logRegionId: String?

    public var logStoreName: String?

    public var logUserIdsShrink: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var order: String?

    public var orderField: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceFrom != nil {
            map["DataSourceFrom"] = self.dataSourceFrom!
        }
        if self.dataSourceIdsShrink != nil {
            map["DataSourceIds"] = self.dataSourceIdsShrink!
        }
        if self.dataSourceName != nil {
            map["DataSourceName"] = self.dataSourceName!
        }
        if self.dataSourceStatus != nil {
            map["DataSourceStatus"] = self.dataSourceStatus!
        }
        if self.dataSourceStoreStatus != nil {
            map["DataSourceStoreStatus"] = self.dataSourceStoreStatus!
        }
        if self.dataSourceTemplateIdsShrink != nil {
            map["DataSourceTemplateIds"] = self.dataSourceTemplateIdsShrink!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.logProjectName != nil {
            map["LogProjectName"] = self.logProjectName!
        }
        if self.logRegionId != nil {
            map["LogRegionId"] = self.logRegionId!
        }
        if self.logStoreName != nil {
            map["LogStoreName"] = self.logStoreName!
        }
        if self.logUserIdsShrink != nil {
            map["LogUserIds"] = self.logUserIdsShrink!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceFrom"] as? String {
            self.dataSourceFrom = value
        }
        if let value = dict["DataSourceIds"] as? String {
            self.dataSourceIdsShrink = value
        }
        if let value = dict["DataSourceName"] as? String {
            self.dataSourceName = value
        }
        if let value = dict["DataSourceStatus"] as? String {
            self.dataSourceStatus = value
        }
        if let value = dict["DataSourceStoreStatus"] as? String {
            self.dataSourceStoreStatus = value
        }
        if let value = dict["DataSourceTemplateIds"] as? String {
            self.dataSourceTemplateIdsShrink = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogProjectName"] as? String {
            self.logProjectName = value
        }
        if let value = dict["LogRegionId"] as? String {
            self.logRegionId = value
        }
        if let value = dict["LogStoreName"] as? String {
            self.logStoreName = value
        }
        if let value = dict["LogUserIds"] as? String {
            self.logUserIdsShrink = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListDataSourcesResponseBody : Tea.TeaModel {
    public class DataSources : Tea.TeaModel {
        public class DataSourceReferences : Tea.TeaModel {
            public var dataIngestionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataIngestionId != nil {
                    map["DataIngestionId"] = self.dataIngestionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataIngestionId"] as? String {
                    self.dataIngestionId = value
                }
            }
        }
        public class DataSourceStores : Tea.TeaModel {
            public var checkTime: Int64?

            public var createTime: Int64?

            public var dataSourceStoreFrom: String?

            public var dataSourceStoreId: String?

            public var dataSourceStoreStatus: String?

            public var logProjectName: String?

            public var logRegionId: String?

            public var logStoreName: String?

            public var updateTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkTime != nil {
                    map["CheckTime"] = self.checkTime!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dataSourceStoreFrom != nil {
                    map["DataSourceStoreFrom"] = self.dataSourceStoreFrom!
                }
                if self.dataSourceStoreId != nil {
                    map["DataSourceStoreId"] = self.dataSourceStoreId!
                }
                if self.dataSourceStoreStatus != nil {
                    map["DataSourceStoreStatus"] = self.dataSourceStoreStatus!
                }
                if self.logProjectName != nil {
                    map["LogProjectName"] = self.logProjectName!
                }
                if self.logRegionId != nil {
                    map["LogRegionId"] = self.logRegionId!
                }
                if self.logStoreName != nil {
                    map["LogStoreName"] = self.logStoreName!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheckTime"] as? Int64 {
                    self.checkTime = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["DataSourceStoreFrom"] as? String {
                    self.dataSourceStoreFrom = value
                }
                if let value = dict["DataSourceStoreId"] as? String {
                    self.dataSourceStoreId = value
                }
                if let value = dict["DataSourceStoreStatus"] as? String {
                    self.dataSourceStoreStatus = value
                }
                if let value = dict["LogProjectName"] as? String {
                    self.logProjectName = value
                }
                if let value = dict["LogRegionId"] as? String {
                    self.logRegionId = value
                }
                if let value = dict["LogStoreName"] as? String {
                    self.logStoreName = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
            }
        }
        public var createTime: Int64?

        public var dataSourceFrom: String?

        public var dataSourceId: String?

        public var dataSourceName: String?

        public var dataSourceRecognizeEnabled: Bool?

        public var dataSourceRecognizer: String?

        public var dataSourceReferences: [ListDataSourcesResponseBody.DataSources.DataSourceReferences]?

        public var dataSourceStatus: String?

        public var dataSourceStores: [ListDataSourcesResponseBody.DataSources.DataSourceStores]?

        public var dataSourceTemplateId: String?

        public var dataSourceType: String?

        public var logProjectName: String?

        public var logRegionId: String?

        public var logStoreName: String?

        public var logUserId: Int64?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.dataSourceFrom != nil {
                map["DataSourceFrom"] = self.dataSourceFrom!
            }
            if self.dataSourceId != nil {
                map["DataSourceId"] = self.dataSourceId!
            }
            if self.dataSourceName != nil {
                map["DataSourceName"] = self.dataSourceName!
            }
            if self.dataSourceRecognizeEnabled != nil {
                map["DataSourceRecognizeEnabled"] = self.dataSourceRecognizeEnabled!
            }
            if self.dataSourceRecognizer != nil {
                map["DataSourceRecognizer"] = self.dataSourceRecognizer!
            }
            if self.dataSourceReferences != nil {
                var tmp : [Any] = []
                for k in self.dataSourceReferences! {
                    tmp.append(k.toMap())
                }
                map["DataSourceReferences"] = tmp
            }
            if self.dataSourceStatus != nil {
                map["DataSourceStatus"] = self.dataSourceStatus!
            }
            if self.dataSourceStores != nil {
                var tmp : [Any] = []
                for k in self.dataSourceStores! {
                    tmp.append(k.toMap())
                }
                map["DataSourceStores"] = tmp
            }
            if self.dataSourceTemplateId != nil {
                map["DataSourceTemplateId"] = self.dataSourceTemplateId!
            }
            if self.dataSourceType != nil {
                map["DataSourceType"] = self.dataSourceType!
            }
            if self.logProjectName != nil {
                map["LogProjectName"] = self.logProjectName!
            }
            if self.logRegionId != nil {
                map["LogRegionId"] = self.logRegionId!
            }
            if self.logStoreName != nil {
                map["LogStoreName"] = self.logStoreName!
            }
            if self.logUserId != nil {
                map["LogUserId"] = self.logUserId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DataSourceFrom"] as? String {
                self.dataSourceFrom = value
            }
            if let value = dict["DataSourceId"] as? String {
                self.dataSourceId = value
            }
            if let value = dict["DataSourceName"] as? String {
                self.dataSourceName = value
            }
            if let value = dict["DataSourceRecognizeEnabled"] as? Bool {
                self.dataSourceRecognizeEnabled = value
            }
            if let value = dict["DataSourceRecognizer"] as? String {
                self.dataSourceRecognizer = value
            }
            if let value = dict["DataSourceReferences"] as? [Any?] {
                var tmp : [ListDataSourcesResponseBody.DataSources.DataSourceReferences] = []
                for v in value {
                    if v != nil {
                        var model = ListDataSourcesResponseBody.DataSources.DataSourceReferences()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataSourceReferences = tmp
            }
            if let value = dict["DataSourceStatus"] as? String {
                self.dataSourceStatus = value
            }
            if let value = dict["DataSourceStores"] as? [Any?] {
                var tmp : [ListDataSourcesResponseBody.DataSources.DataSourceStores] = []
                for v in value {
                    if v != nil {
                        var model = ListDataSourcesResponseBody.DataSources.DataSourceStores()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataSourceStores = tmp
            }
            if let value = dict["DataSourceTemplateId"] as? String {
                self.dataSourceTemplateId = value
            }
            if let value = dict["DataSourceType"] as? String {
                self.dataSourceType = value
            }
            if let value = dict["LogProjectName"] as? String {
                self.logProjectName = value
            }
            if let value = dict["LogRegionId"] as? String {
                self.logRegionId = value
            }
            if let value = dict["LogStoreName"] as? String {
                self.logStoreName = value
            }
            if let value = dict["LogUserId"] as? Int64 {
                self.logUserId = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var dataSources: [ListDataSourcesResponseBody.DataSources]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSources != nil {
            var tmp : [Any] = []
            for k in self.dataSources! {
                tmp.append(k.toMap())
            }
            map["DataSources"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSources"] as? [Any?] {
            var tmp : [ListDataSourcesResponseBody.DataSources] = []
            for v in value {
                if v != nil {
                    var model = ListDataSourcesResponseBody.DataSources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSources = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
    }
}

public class ListDataSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataSourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDetectionRulesRequest : Tea.TeaModel {
    public var alertAttCk: String?

    public var alertLevel: String?

    public var alertTacticId: String?

    public var alertType: String?

    public var detectionExpressionType: String?

    public var detectionRuleId: String?

    public var detectionRuleIds: [String]?

    public var detectionRuleName: String?

    public var detectionRuleStatus: String?

    public var detectionRuleType: String?

    public var incidentAggregationType: String?

    public var lang: String?

    public var logCategoryId: String?

    public var logSchemaId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderDirection: String?

    public var orderFieldName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertAttCk != nil {
            map["AlertAttCk"] = self.alertAttCk!
        }
        if self.alertLevel != nil {
            map["AlertLevel"] = self.alertLevel!
        }
        if self.alertTacticId != nil {
            map["AlertTacticId"] = self.alertTacticId!
        }
        if self.alertType != nil {
            map["AlertType"] = self.alertType!
        }
        if self.detectionExpressionType != nil {
            map["DetectionExpressionType"] = self.detectionExpressionType!
        }
        if self.detectionRuleId != nil {
            map["DetectionRuleId"] = self.detectionRuleId!
        }
        if self.detectionRuleIds != nil {
            map["DetectionRuleIds"] = self.detectionRuleIds!
        }
        if self.detectionRuleName != nil {
            map["DetectionRuleName"] = self.detectionRuleName!
        }
        if self.detectionRuleStatus != nil {
            map["DetectionRuleStatus"] = self.detectionRuleStatus!
        }
        if self.detectionRuleType != nil {
            map["DetectionRuleType"] = self.detectionRuleType!
        }
        if self.incidentAggregationType != nil {
            map["IncidentAggregationType"] = self.incidentAggregationType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.logCategoryId != nil {
            map["LogCategoryId"] = self.logCategoryId!
        }
        if self.logSchemaId != nil {
            map["LogSchemaId"] = self.logSchemaId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderDirection != nil {
            map["OrderDirection"] = self.orderDirection!
        }
        if self.orderFieldName != nil {
            map["OrderFieldName"] = self.orderFieldName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertAttCk"] as? String {
            self.alertAttCk = value
        }
        if let value = dict["AlertLevel"] as? String {
            self.alertLevel = value
        }
        if let value = dict["AlertTacticId"] as? String {
            self.alertTacticId = value
        }
        if let value = dict["AlertType"] as? String {
            self.alertType = value
        }
        if let value = dict["DetectionExpressionType"] as? String {
            self.detectionExpressionType = value
        }
        if let value = dict["DetectionRuleId"] as? String {
            self.detectionRuleId = value
        }
        if let value = dict["DetectionRuleIds"] as? [String] {
            self.detectionRuleIds = value
        }
        if let value = dict["DetectionRuleName"] as? String {
            self.detectionRuleName = value
        }
        if let value = dict["DetectionRuleStatus"] as? String {
            self.detectionRuleStatus = value
        }
        if let value = dict["DetectionRuleType"] as? String {
            self.detectionRuleType = value
        }
        if let value = dict["IncidentAggregationType"] as? String {
            self.incidentAggregationType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogCategoryId"] as? String {
            self.logCategoryId = value
        }
        if let value = dict["LogSchemaId"] as? String {
            self.logSchemaId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["OrderFieldName"] as? String {
            self.orderFieldName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
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
    }
}

public class ListDetectionRulesShrinkRequest : Tea.TeaModel {
    public var alertAttCk: String?

    public var alertLevel: String?

    public var alertTacticId: String?

    public var alertType: String?

    public var detectionExpressionType: String?

    public var detectionRuleId: String?

    public var detectionRuleIdsShrink: String?

    public var detectionRuleName: String?

    public var detectionRuleStatus: String?

    public var detectionRuleType: String?

    public var incidentAggregationType: String?

    public var lang: String?

    public var logCategoryId: String?

    public var logSchemaId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderDirection: String?

    public var orderFieldName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertAttCk != nil {
            map["AlertAttCk"] = self.alertAttCk!
        }
        if self.alertLevel != nil {
            map["AlertLevel"] = self.alertLevel!
        }
        if self.alertTacticId != nil {
            map["AlertTacticId"] = self.alertTacticId!
        }
        if self.alertType != nil {
            map["AlertType"] = self.alertType!
        }
        if self.detectionExpressionType != nil {
            map["DetectionExpressionType"] = self.detectionExpressionType!
        }
        if self.detectionRuleId != nil {
            map["DetectionRuleId"] = self.detectionRuleId!
        }
        if self.detectionRuleIdsShrink != nil {
            map["DetectionRuleIds"] = self.detectionRuleIdsShrink!
        }
        if self.detectionRuleName != nil {
            map["DetectionRuleName"] = self.detectionRuleName!
        }
        if self.detectionRuleStatus != nil {
            map["DetectionRuleStatus"] = self.detectionRuleStatus!
        }
        if self.detectionRuleType != nil {
            map["DetectionRuleType"] = self.detectionRuleType!
        }
        if self.incidentAggregationType != nil {
            map["IncidentAggregationType"] = self.incidentAggregationType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.logCategoryId != nil {
            map["LogCategoryId"] = self.logCategoryId!
        }
        if self.logSchemaId != nil {
            map["LogSchemaId"] = self.logSchemaId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderDirection != nil {
            map["OrderDirection"] = self.orderDirection!
        }
        if self.orderFieldName != nil {
            map["OrderFieldName"] = self.orderFieldName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertAttCk"] as? String {
            self.alertAttCk = value
        }
        if let value = dict["AlertLevel"] as? String {
            self.alertLevel = value
        }
        if let value = dict["AlertTacticId"] as? String {
            self.alertTacticId = value
        }
        if let value = dict["AlertType"] as? String {
            self.alertType = value
        }
        if let value = dict["DetectionExpressionType"] as? String {
            self.detectionExpressionType = value
        }
        if let value = dict["DetectionRuleId"] as? String {
            self.detectionRuleId = value
        }
        if let value = dict["DetectionRuleIds"] as? String {
            self.detectionRuleIdsShrink = value
        }
        if let value = dict["DetectionRuleName"] as? String {
            self.detectionRuleName = value
        }
        if let value = dict["DetectionRuleStatus"] as? String {
            self.detectionRuleStatus = value
        }
        if let value = dict["DetectionRuleType"] as? String {
            self.detectionRuleType = value
        }
        if let value = dict["IncidentAggregationType"] as? String {
            self.incidentAggregationType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogCategoryId"] as? String {
            self.logCategoryId = value
        }
        if let value = dict["LogSchemaId"] as? String {
            self.logSchemaId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["OrderFieldName"] as? String {
            self.orderFieldName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
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
    }
}

public class ListDetectionRulesResponseBody : Tea.TeaModel {
    public class DetectionRules : Tea.TeaModel {
        public class EntityMappings : Tea.TeaModel {
            public class NormalizationFieldMappings : Tea.TeaModel {
                public var mappingFieldName: String?

                public var normalizationFieldName: String?

                public var normalizationFieldType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mappingFieldName != nil {
                        map["MappingFieldName"] = self.mappingFieldName!
                    }
                    if self.normalizationFieldName != nil {
                        map["NormalizationFieldName"] = self.normalizationFieldName!
                    }
                    if self.normalizationFieldType != nil {
                        map["NormalizationFieldType"] = self.normalizationFieldType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MappingFieldName"] as? String {
                        self.mappingFieldName = value
                    }
                    if let value = dict["NormalizationFieldName"] as? String {
                        self.normalizationFieldName = value
                    }
                    if let value = dict["NormalizationFieldType"] as? String {
                        self.normalizationFieldType = value
                    }
                }
            }
            public var normalizationFieldMappings: [ListDetectionRulesResponseBody.DetectionRules.EntityMappings.NormalizationFieldMappings]?

            public var normalizationSchemaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.normalizationFieldMappings != nil {
                    var tmp : [Any] = []
                    for k in self.normalizationFieldMappings! {
                        tmp.append(k.toMap())
                    }
                    map["NormalizationFieldMappings"] = tmp
                }
                if self.normalizationSchemaId != nil {
                    map["NormalizationSchemaId"] = self.normalizationSchemaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NormalizationFieldMappings"] as? [Any?] {
                    var tmp : [ListDetectionRulesResponseBody.DetectionRules.EntityMappings.NormalizationFieldMappings] = []
                    for v in value {
                        if v != nil {
                            var model = ListDetectionRulesResponseBody.DetectionRules.EntityMappings.NormalizationFieldMappings()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.normalizationFieldMappings = tmp
                }
                if let value = dict["NormalizationSchemaId"] as? String {
                    self.normalizationSchemaId = value
                }
            }
        }
        public class Playbook : Tea.TeaModel {
            public var config: String?

            public var flow: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.config != nil {
                    map["Config"] = self.config!
                }
                if self.flow != nil {
                    map["Flow"] = self.flow!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Config"] as? String {
                    self.config = value
                }
                if let value = dict["Flow"] as? String {
                    self.flow = value
                }
            }
        }
        public var alertAttCk: String?

        public var alertLevel: String?

        public var alertSchemaId: String?

        public var alertTacticId: String?

        public var alertThresholdCount: Int32?

        public var alertThresholdGroup: String?

        public var alertThresholdPeriod: String?

        public var alertType: String?

        public var createTime: Int64?

        public var detectionExpressionContent: String?

        public var detectionExpressionType: String?

        public var detectionRuleDescription: String?

        public var detectionRuleId: String?

        public var detectionRuleName: String?

        public var detectionRuleStatus: String?

        public var detectionRuleType: String?

        public var entityMappings: [ListDetectionRulesResponseBody.DetectionRules.EntityMappings]?

        public var incidentAggregationExpression: String?

        public var incidentAggregationType: String?

        public var logCategoryId: String?

        public var logSchemaId: String?

        public var playbook: ListDetectionRulesResponseBody.DetectionRules.Playbook?

        public var playbookParameters: String?

        public var playbookUuid: String?

        public var scheduleBeginTime: Int64?

        public var scheduleExpression: String?

        public var scheduleMaxRetries: Int32?

        public var scheduleMaxTimeout: Int32?

        public var scheduleType: String?

        public var scheduleWindow: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.playbook?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertAttCk != nil {
                map["AlertAttCk"] = self.alertAttCk!
            }
            if self.alertLevel != nil {
                map["AlertLevel"] = self.alertLevel!
            }
            if self.alertSchemaId != nil {
                map["AlertSchemaId"] = self.alertSchemaId!
            }
            if self.alertTacticId != nil {
                map["AlertTacticId"] = self.alertTacticId!
            }
            if self.alertThresholdCount != nil {
                map["AlertThresholdCount"] = self.alertThresholdCount!
            }
            if self.alertThresholdGroup != nil {
                map["AlertThresholdGroup"] = self.alertThresholdGroup!
            }
            if self.alertThresholdPeriod != nil {
                map["AlertThresholdPeriod"] = self.alertThresholdPeriod!
            }
            if self.alertType != nil {
                map["AlertType"] = self.alertType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.detectionExpressionContent != nil {
                map["DetectionExpressionContent"] = self.detectionExpressionContent!
            }
            if self.detectionExpressionType != nil {
                map["DetectionExpressionType"] = self.detectionExpressionType!
            }
            if self.detectionRuleDescription != nil {
                map["DetectionRuleDescription"] = self.detectionRuleDescription!
            }
            if self.detectionRuleId != nil {
                map["DetectionRuleId"] = self.detectionRuleId!
            }
            if self.detectionRuleName != nil {
                map["DetectionRuleName"] = self.detectionRuleName!
            }
            if self.detectionRuleStatus != nil {
                map["DetectionRuleStatus"] = self.detectionRuleStatus!
            }
            if self.detectionRuleType != nil {
                map["DetectionRuleType"] = self.detectionRuleType!
            }
            if self.entityMappings != nil {
                var tmp : [Any] = []
                for k in self.entityMappings! {
                    tmp.append(k.toMap())
                }
                map["EntityMappings"] = tmp
            }
            if self.incidentAggregationExpression != nil {
                map["IncidentAggregationExpression"] = self.incidentAggregationExpression!
            }
            if self.incidentAggregationType != nil {
                map["IncidentAggregationType"] = self.incidentAggregationType!
            }
            if self.logCategoryId != nil {
                map["LogCategoryId"] = self.logCategoryId!
            }
            if self.logSchemaId != nil {
                map["LogSchemaId"] = self.logSchemaId!
            }
            if self.playbook != nil {
                map["Playbook"] = self.playbook?.toMap()
            }
            if self.playbookParameters != nil {
                map["PlaybookParameters"] = self.playbookParameters!
            }
            if self.playbookUuid != nil {
                map["PlaybookUuid"] = self.playbookUuid!
            }
            if self.scheduleBeginTime != nil {
                map["ScheduleBeginTime"] = self.scheduleBeginTime!
            }
            if self.scheduleExpression != nil {
                map["ScheduleExpression"] = self.scheduleExpression!
            }
            if self.scheduleMaxRetries != nil {
                map["ScheduleMaxRetries"] = self.scheduleMaxRetries!
            }
            if self.scheduleMaxTimeout != nil {
                map["ScheduleMaxTimeout"] = self.scheduleMaxTimeout!
            }
            if self.scheduleType != nil {
                map["ScheduleType"] = self.scheduleType!
            }
            if self.scheduleWindow != nil {
                map["ScheduleWindow"] = self.scheduleWindow!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertAttCk"] as? String {
                self.alertAttCk = value
            }
            if let value = dict["AlertLevel"] as? String {
                self.alertLevel = value
            }
            if let value = dict["AlertSchemaId"] as? String {
                self.alertSchemaId = value
            }
            if let value = dict["AlertTacticId"] as? String {
                self.alertTacticId = value
            }
            if let value = dict["AlertThresholdCount"] as? Int32 {
                self.alertThresholdCount = value
            }
            if let value = dict["AlertThresholdGroup"] as? String {
                self.alertThresholdGroup = value
            }
            if let value = dict["AlertThresholdPeriod"] as? String {
                self.alertThresholdPeriod = value
            }
            if let value = dict["AlertType"] as? String {
                self.alertType = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DetectionExpressionContent"] as? String {
                self.detectionExpressionContent = value
            }
            if let value = dict["DetectionExpressionType"] as? String {
                self.detectionExpressionType = value
            }
            if let value = dict["DetectionRuleDescription"] as? String {
                self.detectionRuleDescription = value
            }
            if let value = dict["DetectionRuleId"] as? String {
                self.detectionRuleId = value
            }
            if let value = dict["DetectionRuleName"] as? String {
                self.detectionRuleName = value
            }
            if let value = dict["DetectionRuleStatus"] as? String {
                self.detectionRuleStatus = value
            }
            if let value = dict["DetectionRuleType"] as? String {
                self.detectionRuleType = value
            }
            if let value = dict["EntityMappings"] as? [Any?] {
                var tmp : [ListDetectionRulesResponseBody.DetectionRules.EntityMappings] = []
                for v in value {
                    if v != nil {
                        var model = ListDetectionRulesResponseBody.DetectionRules.EntityMappings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.entityMappings = tmp
            }
            if let value = dict["IncidentAggregationExpression"] as? String {
                self.incidentAggregationExpression = value
            }
            if let value = dict["IncidentAggregationType"] as? String {
                self.incidentAggregationType = value
            }
            if let value = dict["LogCategoryId"] as? String {
                self.logCategoryId = value
            }
            if let value = dict["LogSchemaId"] as? String {
                self.logSchemaId = value
            }
            if let value = dict["Playbook"] as? [String: Any?] {
                var model = ListDetectionRulesResponseBody.DetectionRules.Playbook()
                model.fromMap(value)
                self.playbook = model
            }
            if let value = dict["PlaybookParameters"] as? String {
                self.playbookParameters = value
            }
            if let value = dict["PlaybookUuid"] as? String {
                self.playbookUuid = value
            }
            if let value = dict["ScheduleBeginTime"] as? Int64 {
                self.scheduleBeginTime = value
            }
            if let value = dict["ScheduleExpression"] as? String {
                self.scheduleExpression = value
            }
            if let value = dict["ScheduleMaxRetries"] as? Int32 {
                self.scheduleMaxRetries = value
            }
            if let value = dict["ScheduleMaxTimeout"] as? Int32 {
                self.scheduleMaxTimeout = value
            }
            if let value = dict["ScheduleType"] as? String {
                self.scheduleType = value
            }
            if let value = dict["ScheduleWindow"] as? String {
                self.scheduleWindow = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var detectionRules: [ListDetectionRulesResponseBody.DetectionRules]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

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
        if self.detectionRules != nil {
            var tmp : [Any] = []
            for k in self.detectionRules! {
                tmp.append(k.toMap())
            }
            map["DetectionRules"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DetectionRules"] as? [Any?] {
            var tmp : [ListDetectionRulesResponseBody.DetectionRules] = []
            for v in value {
                if v != nil {
                    var model = ListDetectionRulesResponseBody.DetectionRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.detectionRules = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDetectionRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDetectionRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDetectionRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListIncidentsRequest : Tea.TeaModel {
    public var alertUuid: String?

    public var endTime: Int64?

    public var incidentName: String?

    public var incidentStatus: Int32?

    public var incidentTags: String?

    public var incidentUuids: [String]?

    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderDirection: String?

    public var orderFieldName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var relateAssetId: String?

    public var relateEntityId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var startTime: Int64?

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
        if self.alertUuid != nil {
            map["AlertUuid"] = self.alertUuid!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.incidentName != nil {
            map["IncidentName"] = self.incidentName!
        }
        if self.incidentStatus != nil {
            map["IncidentStatus"] = self.incidentStatus!
        }
        if self.incidentTags != nil {
            map["IncidentTags"] = self.incidentTags!
        }
        if self.incidentUuids != nil {
            map["IncidentUuids"] = self.incidentUuids!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderDirection != nil {
            map["OrderDirection"] = self.orderDirection!
        }
        if self.orderFieldName != nil {
            map["OrderFieldName"] = self.orderFieldName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.relateAssetId != nil {
            map["RelateAssetId"] = self.relateAssetId!
        }
        if self.relateEntityId != nil {
            map["RelateEntityId"] = self.relateEntityId!
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
        if self.threatLevel != nil {
            map["ThreatLevel"] = self.threatLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertUuid"] as? String {
            self.alertUuid = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["IncidentName"] as? String {
            self.incidentName = value
        }
        if let value = dict["IncidentStatus"] as? Int32 {
            self.incidentStatus = value
        }
        if let value = dict["IncidentTags"] as? String {
            self.incidentTags = value
        }
        if let value = dict["IncidentUuids"] as? [String] {
            self.incidentUuids = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["OrderFieldName"] as? String {
            self.orderFieldName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RelateAssetId"] as? String {
            self.relateAssetId = value
        }
        if let value = dict["RelateEntityId"] as? String {
            self.relateEntityId = value
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
        if let value = dict["ThreatLevel"] as? [String] {
            self.threatLevel = value
        }
    }
}

public class ListIncidentsShrinkRequest : Tea.TeaModel {
    public var alertUuid: String?

    public var endTime: Int64?

    public var incidentName: String?

    public var incidentStatus: Int32?

    public var incidentTags: String?

    public var incidentUuidsShrink: String?

    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderDirection: String?

    public var orderFieldName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var relateAssetId: String?

    public var relateEntityId: String?

    public var roleFor: Int64?

    public var roleType: Int32?

    public var startTime: Int64?

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
        if self.alertUuid != nil {
            map["AlertUuid"] = self.alertUuid!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.incidentName != nil {
            map["IncidentName"] = self.incidentName!
        }
        if self.incidentStatus != nil {
            map["IncidentStatus"] = self.incidentStatus!
        }
        if self.incidentTags != nil {
            map["IncidentTags"] = self.incidentTags!
        }
        if self.incidentUuidsShrink != nil {
            map["IncidentUuids"] = self.incidentUuidsShrink!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderDirection != nil {
            map["OrderDirection"] = self.orderDirection!
        }
        if self.orderFieldName != nil {
            map["OrderFieldName"] = self.orderFieldName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.relateAssetId != nil {
            map["RelateAssetId"] = self.relateAssetId!
        }
        if self.relateEntityId != nil {
            map["RelateEntityId"] = self.relateEntityId!
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
        if self.threatLevel != nil {
            map["ThreatLevel"] = self.threatLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertUuid"] as? String {
            self.alertUuid = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["IncidentName"] as? String {
            self.incidentName = value
        }
        if let value = dict["IncidentStatus"] as? Int32 {
            self.incidentStatus = value
        }
        if let value = dict["IncidentTags"] as? String {
            self.incidentTags = value
        }
        if let value = dict["IncidentUuids"] as? String {
            self.incidentUuidsShrink = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["OrderFieldName"] as? String {
            self.orderFieldName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RelateAssetId"] as? String {
            self.relateAssetId = value
        }
        if let value = dict["RelateEntityId"] as? String {
            self.relateEntityId = value
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
        if let value = dict["ThreatLevel"] as? [String] {
            self.threatLevel = value
        }
    }
}

public class ListIncidentsResponseBody : Tea.TeaModel {
    public class Incidents : Tea.TeaModel {
        public var createTime: Int64?

        public var incidentName: String?

        public var incidentRemark: String?

        public var incidentStatus: Int32?

        public var incidentUuid: String?

        public var relateAlertCount: Int32?

        public var relateAssetCount: Int32?

        public var threatLevel: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.incidentName != nil {
                map["IncidentName"] = self.incidentName!
            }
            if self.incidentRemark != nil {
                map["IncidentRemark"] = self.incidentRemark!
            }
            if self.incidentStatus != nil {
                map["IncidentStatus"] = self.incidentStatus!
            }
            if self.incidentUuid != nil {
                map["IncidentUuid"] = self.incidentUuid!
            }
            if self.relateAlertCount != nil {
                map["RelateAlertCount"] = self.relateAlertCount!
            }
            if self.relateAssetCount != nil {
                map["RelateAssetCount"] = self.relateAssetCount!
            }
            if self.threatLevel != nil {
                map["ThreatLevel"] = self.threatLevel!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["IncidentName"] as? String {
                self.incidentName = value
            }
            if let value = dict["IncidentRemark"] as? String {
                self.incidentRemark = value
            }
            if let value = dict["IncidentStatus"] as? Int32 {
                self.incidentStatus = value
            }
            if let value = dict["IncidentUuid"] as? String {
                self.incidentUuid = value
            }
            if let value = dict["RelateAlertCount"] as? Int32 {
                self.relateAlertCount = value
            }
            if let value = dict["RelateAssetCount"] as? Int32 {
                self.relateAssetCount = value
            }
            if let value = dict["ThreatLevel"] as? String {
                self.threatLevel = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var incidents: [ListIncidentsResponseBody.Incidents]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

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
        if self.incidents != nil {
            var tmp : [Any] = []
            for k in self.incidents! {
                tmp.append(k.toMap())
            }
            map["Incidents"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Incidents"] as? [Any?] {
            var tmp : [ListIncidentsResponseBody.Incidents] = []
            for v in value {
                if v != nil {
                    var model = ListIncidentsResponseBody.Incidents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.incidents = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListIncidentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIncidentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListIncidentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLogProjectsRequest : Tea.TeaModel {
    public var lang: String?

    public var logRegionId: String?

    public var logUserId: Int64?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.logRegionId != nil {
            map["LogRegionId"] = self.logRegionId!
        }
        if self.logUserId != nil {
            map["LogUserId"] = self.logUserId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogRegionId"] as? String {
            self.logRegionId = value
        }
        if let value = dict["LogUserId"] as? Int64 {
            self.logUserId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListLogProjectsResponseBody : Tea.TeaModel {
    public var logProjects: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.logProjects != nil {
            map["LogProjects"] = self.logProjects!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogProjects"] as? [String] {
            self.logProjects = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListLogProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLogProjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListLogProjectsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLogRegionsRequest : Tea.TeaModel {
    public var lang: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListLogRegionsResponseBody : Tea.TeaModel {
    public var logRegions: [String]?

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
        if self.logRegions != nil {
            map["LogRegions"] = self.logRegions!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogRegions"] as? [String] {
            self.logRegions = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListLogRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLogRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListLogRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLogStoresRequest : Tea.TeaModel {
    public var lang: String?

    public var logProjectName: String?

    public var logRegionId: String?

    public var logUserId: Int64?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.logProjectName != nil {
            map["LogProjectName"] = self.logProjectName!
        }
        if self.logRegionId != nil {
            map["LogRegionId"] = self.logRegionId!
        }
        if self.logUserId != nil {
            map["LogUserId"] = self.logUserId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogProjectName"] as? String {
            self.logProjectName = value
        }
        if let value = dict["LogRegionId"] as? String {
            self.logRegionId = value
        }
        if let value = dict["LogUserId"] as? Int64 {
            self.logUserId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListLogStoresResponseBody : Tea.TeaModel {
    public var logStores: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.logStores != nil {
            map["LogStores"] = self.logStores!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogStores"] as? [String] {
            self.logStores = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListLogStoresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLogStoresResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListLogStoresResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNormalizationCategoriesRequest : Tea.TeaModel {
    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var normalizationCategoryType: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.normalizationCategoryType != nil {
            map["NormalizationCategoryType"] = self.normalizationCategoryType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NormalizationCategoryType"] as? String {
            self.normalizationCategoryType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListNormalizationCategoriesResponseBody : Tea.TeaModel {
    public class NormalizationCategories : Tea.TeaModel {
        public var normalizationCategoryId: String?

        public var normalizationCategoryName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.normalizationCategoryId != nil {
                map["NormalizationCategoryId"] = self.normalizationCategoryId!
            }
            if self.normalizationCategoryName != nil {
                map["NormalizationCategoryName"] = self.normalizationCategoryName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NormalizationCategoryId"] as? String {
                self.normalizationCategoryId = value
            }
            if let value = dict["NormalizationCategoryName"] as? String {
                self.normalizationCategoryName = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var normalizationCategories: [ListNormalizationCategoriesResponseBody.NormalizationCategories]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.normalizationCategories != nil {
            var tmp : [Any] = []
            for k in self.normalizationCategories! {
                tmp.append(k.toMap())
            }
            map["NormalizationCategories"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NormalizationCategories"] as? [Any?] {
            var tmp : [ListNormalizationCategoriesResponseBody.NormalizationCategories] = []
            for v in value {
                if v != nil {
                    var model = ListNormalizationCategoriesResponseBody.NormalizationCategories()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.normalizationCategories = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListNormalizationCategoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNormalizationCategoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListNormalizationCategoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNormalizationFieldsRequest : Tea.TeaModel {
    public var lang: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListNormalizationFieldsResponseBody : Tea.TeaModel {
    public class NormalizationFields : Tea.TeaModel {
        public var normalizationCategoryId: String?

        public var normalizationFieldDescription: String?

        public var normalizationFieldExample: String?

        public var normalizationFieldName: String?

        public var normalizationFieldRequirement: Bool?

        public var normalizationFieldReserved: Bool?

        public var normalizationFieldType: String?

        public var normalizationSchemaId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.normalizationCategoryId != nil {
                map["NormalizationCategoryId"] = self.normalizationCategoryId!
            }
            if self.normalizationFieldDescription != nil {
                map["NormalizationFieldDescription"] = self.normalizationFieldDescription!
            }
            if self.normalizationFieldExample != nil {
                map["NormalizationFieldExample"] = self.normalizationFieldExample!
            }
            if self.normalizationFieldName != nil {
                map["NormalizationFieldName"] = self.normalizationFieldName!
            }
            if self.normalizationFieldRequirement != nil {
                map["NormalizationFieldRequirement"] = self.normalizationFieldRequirement!
            }
            if self.normalizationFieldReserved != nil {
                map["NormalizationFieldReserved"] = self.normalizationFieldReserved!
            }
            if self.normalizationFieldType != nil {
                map["NormalizationFieldType"] = self.normalizationFieldType!
            }
            if self.normalizationSchemaId != nil {
                map["NormalizationSchemaId"] = self.normalizationSchemaId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NormalizationCategoryId"] as? String {
                self.normalizationCategoryId = value
            }
            if let value = dict["NormalizationFieldDescription"] as? String {
                self.normalizationFieldDescription = value
            }
            if let value = dict["NormalizationFieldExample"] as? String {
                self.normalizationFieldExample = value
            }
            if let value = dict["NormalizationFieldName"] as? String {
                self.normalizationFieldName = value
            }
            if let value = dict["NormalizationFieldRequirement"] as? Bool {
                self.normalizationFieldRequirement = value
            }
            if let value = dict["NormalizationFieldReserved"] as? Bool {
                self.normalizationFieldReserved = value
            }
            if let value = dict["NormalizationFieldType"] as? String {
                self.normalizationFieldType = value
            }
            if let value = dict["NormalizationSchemaId"] as? String {
                self.normalizationSchemaId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var normalizationFields: [ListNormalizationFieldsResponseBody.NormalizationFields]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.normalizationFields != nil {
            var tmp : [Any] = []
            for k in self.normalizationFields! {
                tmp.append(k.toMap())
            }
            map["NormalizationFields"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NormalizationFields"] as? [Any?] {
            var tmp : [ListNormalizationFieldsResponseBody.NormalizationFields] = []
            for v in value {
                if v != nil {
                    var model = ListNormalizationFieldsResponseBody.NormalizationFields()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.normalizationFields = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListNormalizationFieldsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNormalizationFieldsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListNormalizationFieldsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNormalizationRuleCapacitiesRequest : Tea.TeaModel {
    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var normalizationRuleId: String?

    public var normalizationRuleIds: [String]?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.normalizationRuleId != nil {
            map["NormalizationRuleId"] = self.normalizationRuleId!
        }
        if self.normalizationRuleIds != nil {
            map["NormalizationRuleIds"] = self.normalizationRuleIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NormalizationRuleId"] as? String {
            self.normalizationRuleId = value
        }
        if let value = dict["NormalizationRuleIds"] as? [String] {
            self.normalizationRuleIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListNormalizationRuleCapacitiesShrinkRequest : Tea.TeaModel {
    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var normalizationRuleId: String?

    public var normalizationRuleIdsShrink: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.normalizationRuleId != nil {
            map["NormalizationRuleId"] = self.normalizationRuleId!
        }
        if self.normalizationRuleIdsShrink != nil {
            map["NormalizationRuleIds"] = self.normalizationRuleIdsShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NormalizationRuleId"] as? String {
            self.normalizationRuleId = value
        }
        if let value = dict["NormalizationRuleIds"] as? String {
            self.normalizationRuleIdsShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListNormalizationRuleCapacitiesResponseBody : Tea.TeaModel {
    public class NormalizationRuleCapacities : Tea.TeaModel {
        public var capacities: [String]?

        public var capacityType: String?

        public var normalizationRuleId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capacities != nil {
                map["Capacities"] = self.capacities!
            }
            if self.capacityType != nil {
                map["CapacityType"] = self.capacityType!
            }
            if self.normalizationRuleId != nil {
                map["NormalizationRuleId"] = self.normalizationRuleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Capacities"] as? [String] {
                self.capacities = value
            }
            if let value = dict["CapacityType"] as? String {
                self.capacityType = value
            }
            if let value = dict["NormalizationRuleId"] as? String {
                self.normalizationRuleId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var normalizationRuleCapacities: [ListNormalizationRuleCapacitiesResponseBody.NormalizationRuleCapacities]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.normalizationRuleCapacities != nil {
            var tmp : [Any] = []
            for k in self.normalizationRuleCapacities! {
                tmp.append(k.toMap())
            }
            map["NormalizationRuleCapacities"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NormalizationRuleCapacities"] as? [Any?] {
            var tmp : [ListNormalizationRuleCapacitiesResponseBody.NormalizationRuleCapacities] = []
            for v in value {
                if v != nil {
                    var model = ListNormalizationRuleCapacitiesResponseBody.NormalizationRuleCapacities()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.normalizationRuleCapacities = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
    }
}

public class ListNormalizationRuleCapacitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNormalizationRuleCapacitiesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListNormalizationRuleCapacitiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNormalizationRuleVersionsRequest : Tea.TeaModel {
    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var normalizationRuleId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.normalizationRuleId != nil {
            map["NormalizationRuleId"] = self.normalizationRuleId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NormalizationRuleId"] as? String {
            self.normalizationRuleId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListNormalizationRuleVersionsResponseBody : Tea.TeaModel {
    public class NormalizationRuleVersions : Tea.TeaModel {
        public var createTime: Int64?

        public var normalizationRuleExpression: String?

        public var normalizationRuleId: String?

        public var normalizationRuleVersion: Int32?

        public var updateTime: Int64?

        public override init() {
            super.init()
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
            if self.normalizationRuleExpression != nil {
                map["NormalizationRuleExpression"] = self.normalizationRuleExpression!
            }
            if self.normalizationRuleId != nil {
                map["NormalizationRuleId"] = self.normalizationRuleId!
            }
            if self.normalizationRuleVersion != nil {
                map["NormalizationRuleVersion"] = self.normalizationRuleVersion!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["NormalizationRuleExpression"] as? String {
                self.normalizationRuleExpression = value
            }
            if let value = dict["NormalizationRuleId"] as? String {
                self.normalizationRuleId = value
            }
            if let value = dict["NormalizationRuleVersion"] as? Int32 {
                self.normalizationRuleVersion = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var normalizationRuleVersions: [ListNormalizationRuleVersionsResponseBody.NormalizationRuleVersions]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.normalizationRuleVersions != nil {
            var tmp : [Any] = []
            for k in self.normalizationRuleVersions! {
                tmp.append(k.toMap())
            }
            map["NormalizationRuleVersions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NormalizationRuleVersions"] as? [Any?] {
            var tmp : [ListNormalizationRuleVersionsResponseBody.NormalizationRuleVersions] = []
            for v in value {
                if v != nil {
                    var model = ListNormalizationRuleVersionsResponseBody.NormalizationRuleVersions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.normalizationRuleVersions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListNormalizationRuleVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNormalizationRuleVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListNormalizationRuleVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNormalizationRulesRequest : Tea.TeaModel {
    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var normalizationCategoryId: String?

    public var normalizationRuleIds: [String]?

    public var normalizationRuleName: String?

    public var normalizationRuleType: String?

    public var normalizationSchemaId: String?

    public var orderField: String?

    public var orderType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var vendorId: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.normalizationCategoryId != nil {
            map["NormalizationCategoryId"] = self.normalizationCategoryId!
        }
        if self.normalizationRuleIds != nil {
            map["NormalizationRuleIds"] = self.normalizationRuleIds!
        }
        if self.normalizationRuleName != nil {
            map["NormalizationRuleName"] = self.normalizationRuleName!
        }
        if self.normalizationRuleType != nil {
            map["NormalizationRuleType"] = self.normalizationRuleType!
        }
        if self.normalizationSchemaId != nil {
            map["NormalizationSchemaId"] = self.normalizationSchemaId!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.vendorId != nil {
            map["VendorId"] = self.vendorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NormalizationCategoryId"] as? String {
            self.normalizationCategoryId = value
        }
        if let value = dict["NormalizationRuleIds"] as? [String] {
            self.normalizationRuleIds = value
        }
        if let value = dict["NormalizationRuleName"] as? String {
            self.normalizationRuleName = value
        }
        if let value = dict["NormalizationRuleType"] as? String {
            self.normalizationRuleType = value
        }
        if let value = dict["NormalizationSchemaId"] as? String {
            self.normalizationSchemaId = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["VendorId"] as? String {
            self.vendorId = value
        }
    }
}

public class ListNormalizationRulesShrinkRequest : Tea.TeaModel {
    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var normalizationCategoryId: String?

    public var normalizationRuleIdsShrink: String?

    public var normalizationRuleName: String?

    public var normalizationRuleType: String?

    public var normalizationSchemaId: String?

    public var orderField: String?

    public var orderType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var vendorId: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.normalizationCategoryId != nil {
            map["NormalizationCategoryId"] = self.normalizationCategoryId!
        }
        if self.normalizationRuleIdsShrink != nil {
            map["NormalizationRuleIds"] = self.normalizationRuleIdsShrink!
        }
        if self.normalizationRuleName != nil {
            map["NormalizationRuleName"] = self.normalizationRuleName!
        }
        if self.normalizationRuleType != nil {
            map["NormalizationRuleType"] = self.normalizationRuleType!
        }
        if self.normalizationSchemaId != nil {
            map["NormalizationSchemaId"] = self.normalizationSchemaId!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.vendorId != nil {
            map["VendorId"] = self.vendorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NormalizationCategoryId"] as? String {
            self.normalizationCategoryId = value
        }
        if let value = dict["NormalizationRuleIds"] as? String {
            self.normalizationRuleIdsShrink = value
        }
        if let value = dict["NormalizationRuleName"] as? String {
            self.normalizationRuleName = value
        }
        if let value = dict["NormalizationRuleType"] as? String {
            self.normalizationRuleType = value
        }
        if let value = dict["NormalizationSchemaId"] as? String {
            self.normalizationSchemaId = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["VendorId"] as? String {
            self.vendorId = value
        }
    }
}

public class ListNormalizationRulesResponseBody : Tea.TeaModel {
    public class NormalizationRules : Tea.TeaModel {
        public class NormalizationRuleReferences : Tea.TeaModel {
            public var dataIngestionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataIngestionId != nil {
                    map["DataIngestionId"] = self.dataIngestionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataIngestionId"] as? String {
                    self.dataIngestionId = value
                }
            }
        }
        public var createTime: Int64?

        public var extendContentPacked: String?

        public var normalizationCategoryId: String?

        public var normalizationRuleDescription: String?

        public var normalizationRuleExpression: String?

        public var normalizationRuleFormat: String?

        public var normalizationRuleId: String?

        public var normalizationRuleMode: String?

        public var normalizationRuleName: String?

        public var normalizationRuleReferences: [ListNormalizationRulesResponseBody.NormalizationRules.NormalizationRuleReferences]?

        public var normalizationRuleStatus: String?

        public var normalizationRuleType: String?

        public var normalizationRuleVersion: String?

        public var normalizationSchemaId: String?

        public var productId: String?

        public var updateTime: Int64?

        public var vendorId: String?

        public override init() {
            super.init()
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
            if self.extendContentPacked != nil {
                map["ExtendContentPacked"] = self.extendContentPacked!
            }
            if self.normalizationCategoryId != nil {
                map["NormalizationCategoryId"] = self.normalizationCategoryId!
            }
            if self.normalizationRuleDescription != nil {
                map["NormalizationRuleDescription"] = self.normalizationRuleDescription!
            }
            if self.normalizationRuleExpression != nil {
                map["NormalizationRuleExpression"] = self.normalizationRuleExpression!
            }
            if self.normalizationRuleFormat != nil {
                map["NormalizationRuleFormat"] = self.normalizationRuleFormat!
            }
            if self.normalizationRuleId != nil {
                map["NormalizationRuleId"] = self.normalizationRuleId!
            }
            if self.normalizationRuleMode != nil {
                map["NormalizationRuleMode"] = self.normalizationRuleMode!
            }
            if self.normalizationRuleName != nil {
                map["NormalizationRuleName"] = self.normalizationRuleName!
            }
            if self.normalizationRuleReferences != nil {
                var tmp : [Any] = []
                for k in self.normalizationRuleReferences! {
                    tmp.append(k.toMap())
                }
                map["NormalizationRuleReferences"] = tmp
            }
            if self.normalizationRuleStatus != nil {
                map["NormalizationRuleStatus"] = self.normalizationRuleStatus!
            }
            if self.normalizationRuleType != nil {
                map["NormalizationRuleType"] = self.normalizationRuleType!
            }
            if self.normalizationRuleVersion != nil {
                map["NormalizationRuleVersion"] = self.normalizationRuleVersion!
            }
            if self.normalizationSchemaId != nil {
                map["NormalizationSchemaId"] = self.normalizationSchemaId!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.vendorId != nil {
                map["VendorId"] = self.vendorId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["ExtendContentPacked"] as? String {
                self.extendContentPacked = value
            }
            if let value = dict["NormalizationCategoryId"] as? String {
                self.normalizationCategoryId = value
            }
            if let value = dict["NormalizationRuleDescription"] as? String {
                self.normalizationRuleDescription = value
            }
            if let value = dict["NormalizationRuleExpression"] as? String {
                self.normalizationRuleExpression = value
            }
            if let value = dict["NormalizationRuleFormat"] as? String {
                self.normalizationRuleFormat = value
            }
            if let value = dict["NormalizationRuleId"] as? String {
                self.normalizationRuleId = value
            }
            if let value = dict["NormalizationRuleMode"] as? String {
                self.normalizationRuleMode = value
            }
            if let value = dict["NormalizationRuleName"] as? String {
                self.normalizationRuleName = value
            }
            if let value = dict["NormalizationRuleReferences"] as? [Any?] {
                var tmp : [ListNormalizationRulesResponseBody.NormalizationRules.NormalizationRuleReferences] = []
                for v in value {
                    if v != nil {
                        var model = ListNormalizationRulesResponseBody.NormalizationRules.NormalizationRuleReferences()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.normalizationRuleReferences = tmp
            }
            if let value = dict["NormalizationRuleStatus"] as? String {
                self.normalizationRuleStatus = value
            }
            if let value = dict["NormalizationRuleType"] as? String {
                self.normalizationRuleType = value
            }
            if let value = dict["NormalizationRuleVersion"] as? String {
                self.normalizationRuleVersion = value
            }
            if let value = dict["NormalizationSchemaId"] as? String {
                self.normalizationSchemaId = value
            }
            if let value = dict["ProductId"] as? String {
                self.productId = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["VendorId"] as? String {
                self.vendorId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var normalizationRules: [ListNormalizationRulesResponseBody.NormalizationRules]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.normalizationRules != nil {
            var tmp : [Any] = []
            for k in self.normalizationRules! {
                tmp.append(k.toMap())
            }
            map["NormalizationRules"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NormalizationRules"] as? [Any?] {
            var tmp : [ListNormalizationRulesResponseBody.NormalizationRules] = []
            for v in value {
                if v != nil {
                    var model = ListNormalizationRulesResponseBody.NormalizationRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.normalizationRules = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
    }
}

public class ListNormalizationRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNormalizationRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListNormalizationRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNormalizationSchemasRequest : Tea.TeaModel {
    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var normalizationCategoryId: String?

    public var normalizationSchemaType: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.normalizationCategoryId != nil {
            map["NormalizationCategoryId"] = self.normalizationCategoryId!
        }
        if self.normalizationSchemaType != nil {
            map["NormalizationSchemaType"] = self.normalizationSchemaType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NormalizationCategoryId"] as? String {
            self.normalizationCategoryId = value
        }
        if let value = dict["NormalizationSchemaType"] as? String {
            self.normalizationSchemaType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ListNormalizationSchemasResponseBody : Tea.TeaModel {
    public class NormalizationSchemas : Tea.TeaModel {
        public var normalizationCategoryId: String?

        public var normalizationSchemaId: String?

        public var normalizationSchemaName: String?

        public var normalizationSchemaTargetLogStore: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.normalizationCategoryId != nil {
                map["NormalizationCategoryId"] = self.normalizationCategoryId!
            }
            if self.normalizationSchemaId != nil {
                map["NormalizationSchemaId"] = self.normalizationSchemaId!
            }
            if self.normalizationSchemaName != nil {
                map["NormalizationSchemaName"] = self.normalizationSchemaName!
            }
            if self.normalizationSchemaTargetLogStore != nil {
                map["NormalizationSchemaTargetLogStore"] = self.normalizationSchemaTargetLogStore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NormalizationCategoryId"] as? String {
                self.normalizationCategoryId = value
            }
            if let value = dict["NormalizationSchemaId"] as? String {
                self.normalizationSchemaId = value
            }
            if let value = dict["NormalizationSchemaName"] as? String {
                self.normalizationSchemaName = value
            }
            if let value = dict["NormalizationSchemaTargetLogStore"] as? String {
                self.normalizationSchemaTargetLogStore = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var normalizationSchemas: [ListNormalizationSchemasResponseBody.NormalizationSchemas]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.normalizationSchemas != nil {
            var tmp : [Any] = []
            for k in self.normalizationSchemas! {
                tmp.append(k.toMap())
            }
            map["NormalizationSchemas"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NormalizationSchemas"] as? [Any?] {
            var tmp : [ListNormalizationSchemasResponseBody.NormalizationSchemas] = []
            for v in value {
                if v != nil {
                    var model = ListNormalizationSchemasResponseBody.NormalizationSchemas()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.normalizationSchemas = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListNormalizationSchemasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNormalizationSchemasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListNormalizationSchemasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProductsRequest : Tea.TeaModel {
    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var productIds: [String]?

    public var productName: String?

    public var productType: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var vendorId: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.productIds != nil {
            map["ProductIds"] = self.productIds!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.vendorId != nil {
            map["VendorId"] = self.vendorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProductIds"] as? [String] {
            self.productIds = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["VendorId"] as? String {
            self.vendorId = value
        }
    }
}

public class ListProductsShrinkRequest : Tea.TeaModel {
    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var productIdsShrink: String?

    public var productName: String?

    public var productType: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var vendorId: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.productIdsShrink != nil {
            map["ProductIds"] = self.productIdsShrink!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.vendorId != nil {
            map["VendorId"] = self.vendorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProductIds"] as? String {
            self.productIdsShrink = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["VendorId"] as? String {
            self.vendorId = value
        }
    }
}

public class ListProductsResponseBody : Tea.TeaModel {
    public class Products : Tea.TeaModel {
        public var abnormalDataIngestionCount: Int32?

        public var activeTime: Int64?

        public var allowAddDataIngestion: Bool?

        public var createTime: Int64?

        public var dataIngestionStatus: Bool?

        public var enabledDataIngestionCount: Int32?

        public var productAlias: String?

        public var productId: String?

        public var productName: String?

        public var productType: String?

        public var totalDataIngestionCount: Int32?

        public var updateTime: Int64?

        public var vendorId: String?

        public var vendorName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.abnormalDataIngestionCount != nil {
                map["AbnormalDataIngestionCount"] = self.abnormalDataIngestionCount!
            }
            if self.activeTime != nil {
                map["ActiveTime"] = self.activeTime!
            }
            if self.allowAddDataIngestion != nil {
                map["AllowAddDataIngestion"] = self.allowAddDataIngestion!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataIngestionStatus != nil {
                map["DataIngestionStatus"] = self.dataIngestionStatus!
            }
            if self.enabledDataIngestionCount != nil {
                map["EnabledDataIngestionCount"] = self.enabledDataIngestionCount!
            }
            if self.productAlias != nil {
                map["ProductAlias"] = self.productAlias!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.totalDataIngestionCount != nil {
                map["TotalDataIngestionCount"] = self.totalDataIngestionCount!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.vendorId != nil {
                map["VendorId"] = self.vendorId!
            }
            if self.vendorName != nil {
                map["VendorName"] = self.vendorName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AbnormalDataIngestionCount"] as? Int32 {
                self.abnormalDataIngestionCount = value
            }
            if let value = dict["ActiveTime"] as? Int64 {
                self.activeTime = value
            }
            if let value = dict["AllowAddDataIngestion"] as? Bool {
                self.allowAddDataIngestion = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DataIngestionStatus"] as? Bool {
                self.dataIngestionStatus = value
            }
            if let value = dict["EnabledDataIngestionCount"] as? Int32 {
                self.enabledDataIngestionCount = value
            }
            if let value = dict["ProductAlias"] as? String {
                self.productAlias = value
            }
            if let value = dict["ProductId"] as? String {
                self.productId = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["ProductType"] as? String {
                self.productType = value
            }
            if let value = dict["TotalDataIngestionCount"] as? Int32 {
                self.totalDataIngestionCount = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["VendorId"] as? String {
                self.vendorId = value
            }
            if let value = dict["VendorName"] as? String {
                self.vendorName = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var products: [ListProductsResponseBody.Products]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.products != nil {
            var tmp : [Any] = []
            for k in self.products! {
                tmp.append(k.toMap())
            }
            map["Products"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Products"] as? [Any?] {
            var tmp : [ListProductsResponseBody.Products] = []
            for v in value {
                if v != nil {
                    var model = ListProductsResponseBody.Products()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.products = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListProductsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTrafficStatisticsRequest : Tea.TeaModel {
    public var lang: String?

    public var logUserIds: [Int64]?

    public var productId: String?

    public var regionId: String?

    public var regionTag: Int32?

    public var roleFor: Int64?

    public var trafficStatisticPeriod: String?

    public var trafficStatisticPeriodType: String?

    public var trafficStatisticType: String?

    public override init() {
        super.init()
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
        if self.logUserIds != nil {
            map["LogUserIds"] = self.logUserIds!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.regionTag != nil {
            map["RegionTag"] = self.regionTag!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.trafficStatisticPeriod != nil {
            map["TrafficStatisticPeriod"] = self.trafficStatisticPeriod!
        }
        if self.trafficStatisticPeriodType != nil {
            map["TrafficStatisticPeriodType"] = self.trafficStatisticPeriodType!
        }
        if self.trafficStatisticType != nil {
            map["TrafficStatisticType"] = self.trafficStatisticType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogUserIds"] as? [Int64] {
            self.logUserIds = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegionTag"] as? Int32 {
            self.regionTag = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["TrafficStatisticPeriod"] as? String {
            self.trafficStatisticPeriod = value
        }
        if let value = dict["TrafficStatisticPeriodType"] as? String {
            self.trafficStatisticPeriodType = value
        }
        if let value = dict["TrafficStatisticType"] as? String {
            self.trafficStatisticType = value
        }
    }
}

public class ListTrafficStatisticsShrinkRequest : Tea.TeaModel {
    public var lang: String?

    public var logUserIdsShrink: String?

    public var productId: String?

    public var regionId: String?

    public var regionTag: Int32?

    public var roleFor: Int64?

    public var trafficStatisticPeriod: String?

    public var trafficStatisticPeriodType: String?

    public var trafficStatisticType: String?

    public override init() {
        super.init()
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
        if self.logUserIdsShrink != nil {
            map["LogUserIds"] = self.logUserIdsShrink!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.regionTag != nil {
            map["RegionTag"] = self.regionTag!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.trafficStatisticPeriod != nil {
            map["TrafficStatisticPeriod"] = self.trafficStatisticPeriod!
        }
        if self.trafficStatisticPeriodType != nil {
            map["TrafficStatisticPeriodType"] = self.trafficStatisticPeriodType!
        }
        if self.trafficStatisticType != nil {
            map["TrafficStatisticType"] = self.trafficStatisticType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogUserIds"] as? String {
            self.logUserIdsShrink = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegionTag"] as? Int32 {
            self.regionTag = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["TrafficStatisticPeriod"] as? String {
            self.trafficStatisticPeriod = value
        }
        if let value = dict["TrafficStatisticPeriodType"] as? String {
            self.trafficStatisticPeriodType = value
        }
        if let value = dict["TrafficStatisticType"] as? String {
            self.trafficStatisticType = value
        }
    }
}

public class ListTrafficStatisticsResponseBody : Tea.TeaModel {
    public class TrafficStatistics : Tea.TeaModel {
        public class TrafficStatisticData : Tea.TeaModel {
            public var trafficStatisticTime: Int64?

            public var trafficStatisticValue: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.trafficStatisticTime != nil {
                    map["TrafficStatisticTime"] = self.trafficStatisticTime!
                }
                if self.trafficStatisticValue != nil {
                    map["TrafficStatisticValue"] = self.trafficStatisticValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TrafficStatisticTime"] as? Int64 {
                    self.trafficStatisticTime = value
                }
                if let value = dict["TrafficStatisticValue"] as? Double {
                    self.trafficStatisticValue = value
                }
            }
        }
        public var trafficStatisticData: [ListTrafficStatisticsResponseBody.TrafficStatistics.TrafficStatisticData]?

        public var trafficStatisticTarget: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.trafficStatisticData != nil {
                var tmp : [Any] = []
                for k in self.trafficStatisticData! {
                    tmp.append(k.toMap())
                }
                map["TrafficStatisticData"] = tmp
            }
            if self.trafficStatisticTarget != nil {
                map["TrafficStatisticTarget"] = self.trafficStatisticTarget!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TrafficStatisticData"] as? [Any?] {
                var tmp : [ListTrafficStatisticsResponseBody.TrafficStatistics.TrafficStatisticData] = []
                for v in value {
                    if v != nil {
                        var model = ListTrafficStatisticsResponseBody.TrafficStatistics.TrafficStatisticData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.trafficStatisticData = tmp
            }
            if let value = dict["TrafficStatisticTarget"] as? String {
                self.trafficStatisticTarget = value
            }
        }
    }
    public var requestId: String?

    public var trafficStatistics: [ListTrafficStatisticsResponseBody.TrafficStatistics]?

    public override init() {
        super.init()
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
        if self.trafficStatistics != nil {
            var tmp : [Any] = []
            for k in self.trafficStatistics! {
                tmp.append(k.toMap())
            }
            map["TrafficStatistics"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TrafficStatistics"] as? [Any?] {
            var tmp : [ListTrafficStatisticsResponseBody.TrafficStatistics] = []
            for v in value {
                if v != nil {
                    var model = ListTrafficStatisticsResponseBody.TrafficStatistics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.trafficStatistics = tmp
        }
    }
}

public class ListTrafficStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTrafficStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTrafficStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUpgradeItemsRequest : Tea.TeaModel {
    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var roleFor: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? String {
            self.roleFor = value
        }
    }
}

public class ListUpgradeItemsResponseBody : Tea.TeaModel {
    public class UpgradeItems : Tea.TeaModel {
        public var upgradeItemId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.upgradeItemId != nil {
                map["UpgradeItemId"] = self.upgradeItemId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["UpgradeItemId"] as? String {
                self.upgradeItemId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var upgradeItems: [ListUpgradeItemsResponseBody.UpgradeItems]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.upgradeItems != nil {
            var tmp : [Any] = []
            for k in self.upgradeItems! {
                tmp.append(k.toMap())
            }
            map["UpgradeItems"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["UpgradeItems"] as? [Any?] {
            var tmp : [ListUpgradeItemsResponseBody.UpgradeItems] = []
            for v in value {
                if v != nil {
                    var model = ListUpgradeItemsResponseBody.UpgradeItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.upgradeItems = tmp
        }
    }
}

public class ListUpgradeItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUpgradeItemsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUpgradeItemsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVendorsRequest : Tea.TeaModel {
    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var vendorIds: [String]?

    public var vendorName: String?

    public var vendorType: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.vendorIds != nil {
            map["VendorIds"] = self.vendorIds!
        }
        if self.vendorName != nil {
            map["VendorName"] = self.vendorName!
        }
        if self.vendorType != nil {
            map["VendorType"] = self.vendorType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["VendorIds"] as? [String] {
            self.vendorIds = value
        }
        if let value = dict["VendorName"] as? String {
            self.vendorName = value
        }
        if let value = dict["VendorType"] as? String {
            self.vendorType = value
        }
    }
}

public class ListVendorsShrinkRequest : Tea.TeaModel {
    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var vendorIdsShrink: String?

    public var vendorName: String?

    public var vendorType: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.vendorIdsShrink != nil {
            map["VendorIds"] = self.vendorIdsShrink!
        }
        if self.vendorName != nil {
            map["VendorName"] = self.vendorName!
        }
        if self.vendorType != nil {
            map["VendorType"] = self.vendorType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["VendorIds"] as? String {
            self.vendorIdsShrink = value
        }
        if let value = dict["VendorName"] as? String {
            self.vendorName = value
        }
        if let value = dict["VendorType"] as? String {
            self.vendorType = value
        }
    }
}

public class ListVendorsResponseBody : Tea.TeaModel {
    public class Vendors : Tea.TeaModel {
        public var createTime: Int64?

        public var updateTime: Int64?

        public var vendorId: String?

        public var vendorName: String?

        public var vendorType: String?

        public override init() {
            super.init()
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
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.vendorId != nil {
                map["VendorId"] = self.vendorId!
            }
            if self.vendorName != nil {
                map["VendorName"] = self.vendorName!
            }
            if self.vendorType != nil {
                map["VendorType"] = self.vendorType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["VendorId"] as? String {
                self.vendorId = value
            }
            if let value = dict["VendorName"] as? String {
                self.vendorName = value
            }
            if let value = dict["VendorType"] as? String {
                self.vendorType = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var vendors: [ListVendorsResponseBody.Vendors]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.vendors != nil {
            var tmp : [Any] = []
            for k in self.vendors! {
                tmp.append(k.toMap())
            }
            map["Vendors"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["Vendors"] as? [Any?] {
            var tmp : [ListVendorsResponseBody.Vendors] = []
            for v in value {
                if v != nil {
                    var model = ListVendorsResponseBody.Vendors()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vendors = tmp
        }
    }
}

public class ListVendorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVendorsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVendorsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetDataStorageRequest : Tea.TeaModel {
    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ResetDataStorageResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ResetDataStorageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetDataStorageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResetDataStorageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetDefaultNormalizationRuleVersionRequest : Tea.TeaModel {
    public var lang: String?

    public var normalizationRuleId: String?

    public var normalizationRuleVersion: Int32?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.normalizationRuleId != nil {
            map["NormalizationRuleId"] = self.normalizationRuleId!
        }
        if self.normalizationRuleVersion != nil {
            map["NormalizationRuleVersion"] = self.normalizationRuleVersion!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NormalizationRuleId"] as? String {
            self.normalizationRuleId = value
        }
        if let value = dict["NormalizationRuleVersion"] as? Int32 {
            self.normalizationRuleVersion = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class SetDefaultNormalizationRuleVersionResponseBody : Tea.TeaModel {
    public class NormalizationRuleVersion : Tea.TeaModel {
        public var createTime: Int64?

        public var normalizationCategoryId: String?

        public var normalizationRuleDescription: String?

        public var normalizationRuleExpression: String?

        public var normalizationRuleFormat: String?

        public var normalizationRuleId: String?

        public var normalizationRuleName: String?

        public var normalizationRuleStatus: String?

        public var normalizationRuleType: String?

        public var normalizationRuleVersion: Int32?

        public var normalizationSchemaId: String?

        public var productId: String?

        public var updateTime: Int64?

        public var vendorId: String?

        public override init() {
            super.init()
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
            if self.normalizationCategoryId != nil {
                map["NormalizationCategoryId"] = self.normalizationCategoryId!
            }
            if self.normalizationRuleDescription != nil {
                map["NormalizationRuleDescription"] = self.normalizationRuleDescription!
            }
            if self.normalizationRuleExpression != nil {
                map["NormalizationRuleExpression"] = self.normalizationRuleExpression!
            }
            if self.normalizationRuleFormat != nil {
                map["NormalizationRuleFormat"] = self.normalizationRuleFormat!
            }
            if self.normalizationRuleId != nil {
                map["NormalizationRuleId"] = self.normalizationRuleId!
            }
            if self.normalizationRuleName != nil {
                map["NormalizationRuleName"] = self.normalizationRuleName!
            }
            if self.normalizationRuleStatus != nil {
                map["NormalizationRuleStatus"] = self.normalizationRuleStatus!
            }
            if self.normalizationRuleType != nil {
                map["NormalizationRuleType"] = self.normalizationRuleType!
            }
            if self.normalizationRuleVersion != nil {
                map["NormalizationRuleVersion"] = self.normalizationRuleVersion!
            }
            if self.normalizationSchemaId != nil {
                map["NormalizationSchemaId"] = self.normalizationSchemaId!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.vendorId != nil {
                map["VendorId"] = self.vendorId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["NormalizationCategoryId"] as? String {
                self.normalizationCategoryId = value
            }
            if let value = dict["NormalizationRuleDescription"] as? String {
                self.normalizationRuleDescription = value
            }
            if let value = dict["NormalizationRuleExpression"] as? String {
                self.normalizationRuleExpression = value
            }
            if let value = dict["NormalizationRuleFormat"] as? String {
                self.normalizationRuleFormat = value
            }
            if let value = dict["NormalizationRuleId"] as? String {
                self.normalizationRuleId = value
            }
            if let value = dict["NormalizationRuleName"] as? String {
                self.normalizationRuleName = value
            }
            if let value = dict["NormalizationRuleStatus"] as? String {
                self.normalizationRuleStatus = value
            }
            if let value = dict["NormalizationRuleType"] as? String {
                self.normalizationRuleType = value
            }
            if let value = dict["NormalizationRuleVersion"] as? Int32 {
                self.normalizationRuleVersion = value
            }
            if let value = dict["NormalizationSchemaId"] as? String {
                self.normalizationSchemaId = value
            }
            if let value = dict["ProductId"] as? String {
                self.productId = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["VendorId"] as? String {
                self.vendorId = value
            }
        }
    }
    public var normalizationRuleVersion: SetDefaultNormalizationRuleVersionResponseBody.NormalizationRuleVersion?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.normalizationRuleVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.normalizationRuleVersion != nil {
            map["NormalizationRuleVersion"] = self.normalizationRuleVersion?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NormalizationRuleVersion"] as? [String: Any?] {
            var model = SetDefaultNormalizationRuleVersionResponseBody.NormalizationRuleVersion()
            model.fromMap(value)
            self.normalizationRuleVersion = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SetDefaultNormalizationRuleVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDefaultNormalizationRuleVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetDefaultNormalizationRuleVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataBatchIngestionRequest : Tea.TeaModel {
    public var autoScanNew: String?

    public var dataBatchIngestionMode: String?

    public var dataIngestionIds: [String]?

    public var dataSourceRecognizeEnabled: Bool?

    public var lang: String?

    public var logUserIds: [Int64]?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoScanNew != nil {
            map["AutoScanNew"] = self.autoScanNew!
        }
        if self.dataBatchIngestionMode != nil {
            map["DataBatchIngestionMode"] = self.dataBatchIngestionMode!
        }
        if self.dataIngestionIds != nil {
            map["DataIngestionIds"] = self.dataIngestionIds!
        }
        if self.dataSourceRecognizeEnabled != nil {
            map["DataSourceRecognizeEnabled"] = self.dataSourceRecognizeEnabled!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.logUserIds != nil {
            map["LogUserIds"] = self.logUserIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoScanNew"] as? String {
            self.autoScanNew = value
        }
        if let value = dict["DataBatchIngestionMode"] as? String {
            self.dataBatchIngestionMode = value
        }
        if let value = dict["DataIngestionIds"] as? [String] {
            self.dataIngestionIds = value
        }
        if let value = dict["DataSourceRecognizeEnabled"] as? Bool {
            self.dataSourceRecognizeEnabled = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogUserIds"] as? [Int64] {
            self.logUserIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class UpdateDataBatchIngestionShrinkRequest : Tea.TeaModel {
    public var autoScanNew: String?

    public var dataBatchIngestionMode: String?

    public var dataIngestionIdsShrink: String?

    public var dataSourceRecognizeEnabled: Bool?

    public var lang: String?

    public var logUserIdsShrink: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoScanNew != nil {
            map["AutoScanNew"] = self.autoScanNew!
        }
        if self.dataBatchIngestionMode != nil {
            map["DataBatchIngestionMode"] = self.dataBatchIngestionMode!
        }
        if self.dataIngestionIdsShrink != nil {
            map["DataIngestionIds"] = self.dataIngestionIdsShrink!
        }
        if self.dataSourceRecognizeEnabled != nil {
            map["DataSourceRecognizeEnabled"] = self.dataSourceRecognizeEnabled!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.logUserIdsShrink != nil {
            map["LogUserIds"] = self.logUserIdsShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoScanNew"] as? String {
            self.autoScanNew = value
        }
        if let value = dict["DataBatchIngestionMode"] as? String {
            self.dataBatchIngestionMode = value
        }
        if let value = dict["DataIngestionIds"] as? String {
            self.dataIngestionIdsShrink = value
        }
        if let value = dict["DataSourceRecognizeEnabled"] as? Bool {
            self.dataSourceRecognizeEnabled = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogUserIds"] as? String {
            self.logUserIdsShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class UpdateDataBatchIngestionResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDataBatchIngestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataBatchIngestionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataBatchIngestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataIngestionRequest : Tea.TeaModel {
    public var dataIngestionId: String?

    public var dataIngestionMode: String?

    public var dataSourceId: String?

    public var lang: String?

    public var normalizationRuleId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataIngestionId != nil {
            map["DataIngestionId"] = self.dataIngestionId!
        }
        if self.dataIngestionMode != nil {
            map["DataIngestionMode"] = self.dataIngestionMode!
        }
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.normalizationRuleId != nil {
            map["NormalizationRuleId"] = self.normalizationRuleId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataIngestionId"] as? String {
            self.dataIngestionId = value
        }
        if let value = dict["DataIngestionMode"] as? String {
            self.dataIngestionMode = value
        }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NormalizationRuleId"] as? String {
            self.normalizationRuleId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class UpdateDataIngestionResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDataIngestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataIngestionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataIngestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataIngestionTemplateRequest : Tea.TeaModel {
    public var dataIngestionStatus: String?

    public var dataIngestionTemplateId: String?

    public var dataIngestionTemplateName: String?

    public var lang: String?

    public var normalizationRuleId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataIngestionStatus != nil {
            map["DataIngestionStatus"] = self.dataIngestionStatus!
        }
        if self.dataIngestionTemplateId != nil {
            map["DataIngestionTemplateId"] = self.dataIngestionTemplateId!
        }
        if self.dataIngestionTemplateName != nil {
            map["DataIngestionTemplateName"] = self.dataIngestionTemplateName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.normalizationRuleId != nil {
            map["NormalizationRuleId"] = self.normalizationRuleId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataIngestionStatus"] as? String {
            self.dataIngestionStatus = value
        }
        if let value = dict["DataIngestionTemplateId"] as? String {
            self.dataIngestionTemplateId = value
        }
        if let value = dict["DataIngestionTemplateName"] as? String {
            self.dataIngestionTemplateName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NormalizationRuleId"] as? String {
            self.normalizationRuleId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class UpdateDataIngestionTemplateResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDataIngestionTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataIngestionTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataIngestionTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataSetRequest : Tea.TeaModel {
    public class IpWhitelistRecognizers : Tea.TeaModel {
        public var autoRecognizeStatus: String?

        public var ipWhitelistRecognizerType: String?

        public var recognizeScope: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRecognizeStatus != nil {
                map["AutoRecognizeStatus"] = self.autoRecognizeStatus!
            }
            if self.ipWhitelistRecognizerType != nil {
                map["IpWhitelistRecognizerType"] = self.ipWhitelistRecognizerType!
            }
            if self.recognizeScope != nil {
                map["RecognizeScope"] = self.recognizeScope!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoRecognizeStatus"] as? String {
                self.autoRecognizeStatus = value
            }
            if let value = dict["IpWhitelistRecognizerType"] as? String {
                self.ipWhitelistRecognizerType = value
            }
            if let value = dict["RecognizeScope"] as? String {
                self.recognizeScope = value
            }
        }
    }
    public var dataSetDescription: String?

    public var dataSetFileName: String?

    public var dataSetId: String?

    public var dataSetName: String?

    public var dataSetStatus: Int32?

    public var ipWhitelistRecognizers: [UpdateDataSetRequest.IpWhitelistRecognizers]?

    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSetDescription != nil {
            map["DataSetDescription"] = self.dataSetDescription!
        }
        if self.dataSetFileName != nil {
            map["DataSetFileName"] = self.dataSetFileName!
        }
        if self.dataSetId != nil {
            map["DataSetId"] = self.dataSetId!
        }
        if self.dataSetName != nil {
            map["DataSetName"] = self.dataSetName!
        }
        if self.dataSetStatus != nil {
            map["DataSetStatus"] = self.dataSetStatus!
        }
        if self.ipWhitelistRecognizers != nil {
            var tmp : [Any] = []
            for k in self.ipWhitelistRecognizers! {
                tmp.append(k.toMap())
            }
            map["IpWhitelistRecognizers"] = tmp
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSetDescription"] as? String {
            self.dataSetDescription = value
        }
        if let value = dict["DataSetFileName"] as? String {
            self.dataSetFileName = value
        }
        if let value = dict["DataSetId"] as? String {
            self.dataSetId = value
        }
        if let value = dict["DataSetName"] as? String {
            self.dataSetName = value
        }
        if let value = dict["DataSetStatus"] as? Int32 {
            self.dataSetStatus = value
        }
        if let value = dict["IpWhitelistRecognizers"] as? [Any?] {
            var tmp : [UpdateDataSetRequest.IpWhitelistRecognizers] = []
            for v in value {
                if v != nil {
                    var model = UpdateDataSetRequest.IpWhitelistRecognizers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ipWhitelistRecognizers = tmp
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class UpdateDataSetResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDataSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataSetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataSetRecordRequest : Tea.TeaModel {
    public var dataSetFileName: String?

    public var dataSetId: String?

    public var dataSetRecords: String?

    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSetFileName != nil {
            map["DataSetFileName"] = self.dataSetFileName!
        }
        if self.dataSetId != nil {
            map["DataSetId"] = self.dataSetId!
        }
        if self.dataSetRecords != nil {
            map["DataSetRecords"] = self.dataSetRecords!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSetFileName"] as? String {
            self.dataSetFileName = value
        }
        if let value = dict["DataSetId"] as? String {
            self.dataSetId = value
        }
        if let value = dict["DataSetRecords"] as? String {
            self.dataSetRecords = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class UpdateDataSetRecordResponseBody : Tea.TeaModel {
    public class DataSetRecordStatistic : Tea.TeaModel {
        public var newDataSetRecordCount: Int32?

        public var updateDataSetRecordCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.newDataSetRecordCount != nil {
                map["NewDataSetRecordCount"] = self.newDataSetRecordCount!
            }
            if self.updateDataSetRecordCount != nil {
                map["UpdateDataSetRecordCount"] = self.updateDataSetRecordCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NewDataSetRecordCount"] as? Int32 {
                self.newDataSetRecordCount = value
            }
            if let value = dict["UpdateDataSetRecordCount"] as? Int32 {
                self.updateDataSetRecordCount = value
            }
        }
    }
    public var dataSetRecordStatistic: UpdateDataSetRecordResponseBody.DataSetRecordStatistic?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataSetRecordStatistic?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSetRecordStatistic != nil {
            map["DataSetRecordStatistic"] = self.dataSetRecordStatistic?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSetRecordStatistic"] as? [String: Any?] {
            var model = UpdateDataSetRecordResponseBody.DataSetRecordStatistic()
            model.fromMap(value)
            self.dataSetRecordStatistic = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDataSetRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataSetRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataSetRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataSourceRequest : Tea.TeaModel {
    public class DataSourceStores : Tea.TeaModel {
        public var dataSourceStoreFrom: String?

        public var dataSourceStoreId: String?

        public var logProjectName: String?

        public var logRegionId: String?

        public var logStoreName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataSourceStoreFrom != nil {
                map["DataSourceStoreFrom"] = self.dataSourceStoreFrom!
            }
            if self.dataSourceStoreId != nil {
                map["DataSourceStoreId"] = self.dataSourceStoreId!
            }
            if self.logProjectName != nil {
                map["LogProjectName"] = self.logProjectName!
            }
            if self.logRegionId != nil {
                map["LogRegionId"] = self.logRegionId!
            }
            if self.logStoreName != nil {
                map["LogStoreName"] = self.logStoreName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataSourceStoreFrom"] as? String {
                self.dataSourceStoreFrom = value
            }
            if let value = dict["DataSourceStoreId"] as? String {
                self.dataSourceStoreId = value
            }
            if let value = dict["LogProjectName"] as? String {
                self.logProjectName = value
            }
            if let value = dict["LogRegionId"] as? String {
                self.logRegionId = value
            }
            if let value = dict["LogStoreName"] as? String {
                self.logStoreName = value
            }
        }
    }
    public var dataSourceFrom: String?

    public var dataSourceId: String?

    public var dataSourceName: String?

    public var dataSourceRecognizeEnabled: Bool?

    public var dataSourceStores: [UpdateDataSourceRequest.DataSourceStores]?

    public var lang: String?

    public var logProjectName: String?

    public var logRegionId: String?

    public var logStoreName: String?

    public var logUserId: Int64?

    public var orderField: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceFrom != nil {
            map["DataSourceFrom"] = self.dataSourceFrom!
        }
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.dataSourceName != nil {
            map["DataSourceName"] = self.dataSourceName!
        }
        if self.dataSourceRecognizeEnabled != nil {
            map["DataSourceRecognizeEnabled"] = self.dataSourceRecognizeEnabled!
        }
        if self.dataSourceStores != nil {
            var tmp : [Any] = []
            for k in self.dataSourceStores! {
                tmp.append(k.toMap())
            }
            map["DataSourceStores"] = tmp
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.logProjectName != nil {
            map["LogProjectName"] = self.logProjectName!
        }
        if self.logRegionId != nil {
            map["LogRegionId"] = self.logRegionId!
        }
        if self.logStoreName != nil {
            map["LogStoreName"] = self.logStoreName!
        }
        if self.logUserId != nil {
            map["LogUserId"] = self.logUserId!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceFrom"] as? String {
            self.dataSourceFrom = value
        }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["DataSourceName"] as? String {
            self.dataSourceName = value
        }
        if let value = dict["DataSourceRecognizeEnabled"] as? Bool {
            self.dataSourceRecognizeEnabled = value
        }
        if let value = dict["DataSourceStores"] as? [Any?] {
            var tmp : [UpdateDataSourceRequest.DataSourceStores] = []
            for v in value {
                if v != nil {
                    var model = UpdateDataSourceRequest.DataSourceStores()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataSourceStores = tmp
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogProjectName"] as? String {
            self.logProjectName = value
        }
        if let value = dict["LogRegionId"] as? String {
            self.logRegionId = value
        }
        if let value = dict["LogStoreName"] as? String {
            self.logStoreName = value
        }
        if let value = dict["LogUserId"] as? Int64 {
            self.logUserId = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class UpdateDataSourceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataSourceTemplateRequest : Tea.TeaModel {
    public var autoScanNew: String?

    public var dataSourceRecognizeEnabled: Bool?

    public var dataSourceTemplateId: String?

    public var dataSourceTemplateName: String?

    public var lang: String?

    public var logProjectPattern: String?

    public var logRegionIds: String?

    public var logStorePattern: String?

    public var logUserIds: [String]?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoScanNew != nil {
            map["AutoScanNew"] = self.autoScanNew!
        }
        if self.dataSourceRecognizeEnabled != nil {
            map["DataSourceRecognizeEnabled"] = self.dataSourceRecognizeEnabled!
        }
        if self.dataSourceTemplateId != nil {
            map["DataSourceTemplateId"] = self.dataSourceTemplateId!
        }
        if self.dataSourceTemplateName != nil {
            map["DataSourceTemplateName"] = self.dataSourceTemplateName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.logProjectPattern != nil {
            map["LogProjectPattern"] = self.logProjectPattern!
        }
        if self.logRegionIds != nil {
            map["LogRegionIds"] = self.logRegionIds!
        }
        if self.logStorePattern != nil {
            map["LogStorePattern"] = self.logStorePattern!
        }
        if self.logUserIds != nil {
            map["LogUserIds"] = self.logUserIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoScanNew"] as? String {
            self.autoScanNew = value
        }
        if let value = dict["DataSourceRecognizeEnabled"] as? Bool {
            self.dataSourceRecognizeEnabled = value
        }
        if let value = dict["DataSourceTemplateId"] as? String {
            self.dataSourceTemplateId = value
        }
        if let value = dict["DataSourceTemplateName"] as? String {
            self.dataSourceTemplateName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogProjectPattern"] as? String {
            self.logProjectPattern = value
        }
        if let value = dict["LogRegionIds"] as? String {
            self.logRegionIds = value
        }
        if let value = dict["LogStorePattern"] as? String {
            self.logStorePattern = value
        }
        if let value = dict["LogUserIds"] as? [String] {
            self.logUserIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class UpdateDataSourceTemplateShrinkRequest : Tea.TeaModel {
    public var autoScanNew: String?

    public var dataSourceRecognizeEnabled: Bool?

    public var dataSourceTemplateId: String?

    public var dataSourceTemplateName: String?

    public var lang: String?

    public var logProjectPattern: String?

    public var logRegionIds: String?

    public var logStorePattern: String?

    public var logUserIdsShrink: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoScanNew != nil {
            map["AutoScanNew"] = self.autoScanNew!
        }
        if self.dataSourceRecognizeEnabled != nil {
            map["DataSourceRecognizeEnabled"] = self.dataSourceRecognizeEnabled!
        }
        if self.dataSourceTemplateId != nil {
            map["DataSourceTemplateId"] = self.dataSourceTemplateId!
        }
        if self.dataSourceTemplateName != nil {
            map["DataSourceTemplateName"] = self.dataSourceTemplateName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.logProjectPattern != nil {
            map["LogProjectPattern"] = self.logProjectPattern!
        }
        if self.logRegionIds != nil {
            map["LogRegionIds"] = self.logRegionIds!
        }
        if self.logStorePattern != nil {
            map["LogStorePattern"] = self.logStorePattern!
        }
        if self.logUserIdsShrink != nil {
            map["LogUserIds"] = self.logUserIdsShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoScanNew"] as? String {
            self.autoScanNew = value
        }
        if let value = dict["DataSourceRecognizeEnabled"] as? Bool {
            self.dataSourceRecognizeEnabled = value
        }
        if let value = dict["DataSourceTemplateId"] as? String {
            self.dataSourceTemplateId = value
        }
        if let value = dict["DataSourceTemplateName"] as? String {
            self.dataSourceTemplateName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogProjectPattern"] as? String {
            self.logProjectPattern = value
        }
        if let value = dict["LogRegionIds"] as? String {
            self.logRegionIds = value
        }
        if let value = dict["LogStorePattern"] as? String {
            self.logStorePattern = value
        }
        if let value = dict["LogUserIds"] as? String {
            self.logUserIdsShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class UpdateDataSourceTemplateResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDataSourceTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataSourceTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataSourceTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataStorageRequest : Tea.TeaModel {
    public var dataStorageRegionId: String?

    public var deliveryStatus: String?

    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataStorageRegionId != nil {
            map["DataStorageRegionId"] = self.dataStorageRegionId!
        }
        if self.deliveryStatus != nil {
            map["DeliveryStatus"] = self.deliveryStatus!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataStorageRegionId"] as? String {
            self.dataStorageRegionId = value
        }
        if let value = dict["DeliveryStatus"] as? String {
            self.deliveryStatus = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class UpdateDataStorageResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDataStorageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataStorageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataStorageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataStorageDeliveryRequest : Tea.TeaModel {
    public var lang: String?

    public var logCode: String?

    public var logDeliveryStatus: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.logCode != nil {
            map["LogCode"] = self.logCode!
        }
        if self.logDeliveryStatus != nil {
            map["LogDeliveryStatus"] = self.logDeliveryStatus!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogCode"] as? String {
            self.logCode = value
        }
        if let value = dict["LogDeliveryStatus"] as? String {
            self.logDeliveryStatus = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class UpdateDataStorageDeliveryResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDataStorageDeliveryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataStorageDeliveryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataStorageDeliveryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataStorageTtlRequest : Tea.TeaModel {
    public var lang: String?

    public var logStoreColdTtl: String?

    public var logStoreHotTtl: String?

    public var logStoreName: String?

    public var logStoreTtl: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.logStoreColdTtl != nil {
            map["LogStoreColdTtl"] = self.logStoreColdTtl!
        }
        if self.logStoreHotTtl != nil {
            map["LogStoreHotTtl"] = self.logStoreHotTtl!
        }
        if self.logStoreName != nil {
            map["LogStoreName"] = self.logStoreName!
        }
        if self.logStoreTtl != nil {
            map["LogStoreTtl"] = self.logStoreTtl!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogStoreColdTtl"] as? String {
            self.logStoreColdTtl = value
        }
        if let value = dict["LogStoreHotTtl"] as? String {
            self.logStoreHotTtl = value
        }
        if let value = dict["LogStoreName"] as? String {
            self.logStoreName = value
        }
        if let value = dict["LogStoreTtl"] as? String {
            self.logStoreTtl = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class UpdateDataStorageTtlResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDataStorageTtlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataStorageTtlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataStorageTtlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDetectionRuleRequest : Tea.TeaModel {
    public var alertAttCk: String?

    public var alertLevel: String?

    public var alertSchemaId: String?

    public var alertTacticId: String?

    public var alertThresholdCount: Int32?

    public var alertThresholdGroup: String?

    public var alertThresholdPeriod: String?

    public var alertType: String?

    public var detectionExpressionContent: String?

    public var detectionExpressionType: String?

    public var detectionRuleDescription: String?

    public var detectionRuleId: String?

    public var detectionRuleName: String?

    public var detectionRuleStatus: String?

    public var detectionRuleType: String?

    public var entityMappings: String?

    public var incidentAggregationExpression: String?

    public var incidentAggregationType: String?

    public var lang: String?

    public var logCategoryId: String?

    public var logSchemaId: String?

    public var playbookParameters: String?

    public var playbookUuid: String?

    public var regionId: String?

    public var scheduleBeginTime: Int64?

    public var scheduleExpression: String?

    public var scheduleMaxRetries: Int32?

    public var scheduleMaxTimeout: Int32?

    public var scheduleType: String?

    public var scheduleWindow: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertAttCk != nil {
            map["AlertAttCk"] = self.alertAttCk!
        }
        if self.alertLevel != nil {
            map["AlertLevel"] = self.alertLevel!
        }
        if self.alertSchemaId != nil {
            map["AlertSchemaId"] = self.alertSchemaId!
        }
        if self.alertTacticId != nil {
            map["AlertTacticId"] = self.alertTacticId!
        }
        if self.alertThresholdCount != nil {
            map["AlertThresholdCount"] = self.alertThresholdCount!
        }
        if self.alertThresholdGroup != nil {
            map["AlertThresholdGroup"] = self.alertThresholdGroup!
        }
        if self.alertThresholdPeriod != nil {
            map["AlertThresholdPeriod"] = self.alertThresholdPeriod!
        }
        if self.alertType != nil {
            map["AlertType"] = self.alertType!
        }
        if self.detectionExpressionContent != nil {
            map["DetectionExpressionContent"] = self.detectionExpressionContent!
        }
        if self.detectionExpressionType != nil {
            map["DetectionExpressionType"] = self.detectionExpressionType!
        }
        if self.detectionRuleDescription != nil {
            map["DetectionRuleDescription"] = self.detectionRuleDescription!
        }
        if self.detectionRuleId != nil {
            map["DetectionRuleId"] = self.detectionRuleId!
        }
        if self.detectionRuleName != nil {
            map["DetectionRuleName"] = self.detectionRuleName!
        }
        if self.detectionRuleStatus != nil {
            map["DetectionRuleStatus"] = self.detectionRuleStatus!
        }
        if self.detectionRuleType != nil {
            map["DetectionRuleType"] = self.detectionRuleType!
        }
        if self.entityMappings != nil {
            map["EntityMappings"] = self.entityMappings!
        }
        if self.incidentAggregationExpression != nil {
            map["IncidentAggregationExpression"] = self.incidentAggregationExpression!
        }
        if self.incidentAggregationType != nil {
            map["IncidentAggregationType"] = self.incidentAggregationType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.logCategoryId != nil {
            map["LogCategoryId"] = self.logCategoryId!
        }
        if self.logSchemaId != nil {
            map["LogSchemaId"] = self.logSchemaId!
        }
        if self.playbookParameters != nil {
            map["PlaybookParameters"] = self.playbookParameters!
        }
        if self.playbookUuid != nil {
            map["PlaybookUuid"] = self.playbookUuid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scheduleBeginTime != nil {
            map["ScheduleBeginTime"] = self.scheduleBeginTime!
        }
        if self.scheduleExpression != nil {
            map["ScheduleExpression"] = self.scheduleExpression!
        }
        if self.scheduleMaxRetries != nil {
            map["ScheduleMaxRetries"] = self.scheduleMaxRetries!
        }
        if self.scheduleMaxTimeout != nil {
            map["ScheduleMaxTimeout"] = self.scheduleMaxTimeout!
        }
        if self.scheduleType != nil {
            map["ScheduleType"] = self.scheduleType!
        }
        if self.scheduleWindow != nil {
            map["ScheduleWindow"] = self.scheduleWindow!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertAttCk"] as? String {
            self.alertAttCk = value
        }
        if let value = dict["AlertLevel"] as? String {
            self.alertLevel = value
        }
        if let value = dict["AlertSchemaId"] as? String {
            self.alertSchemaId = value
        }
        if let value = dict["AlertTacticId"] as? String {
            self.alertTacticId = value
        }
        if let value = dict["AlertThresholdCount"] as? Int32 {
            self.alertThresholdCount = value
        }
        if let value = dict["AlertThresholdGroup"] as? String {
            self.alertThresholdGroup = value
        }
        if let value = dict["AlertThresholdPeriod"] as? String {
            self.alertThresholdPeriod = value
        }
        if let value = dict["AlertType"] as? String {
            self.alertType = value
        }
        if let value = dict["DetectionExpressionContent"] as? String {
            self.detectionExpressionContent = value
        }
        if let value = dict["DetectionExpressionType"] as? String {
            self.detectionExpressionType = value
        }
        if let value = dict["DetectionRuleDescription"] as? String {
            self.detectionRuleDescription = value
        }
        if let value = dict["DetectionRuleId"] as? String {
            self.detectionRuleId = value
        }
        if let value = dict["DetectionRuleName"] as? String {
            self.detectionRuleName = value
        }
        if let value = dict["DetectionRuleStatus"] as? String {
            self.detectionRuleStatus = value
        }
        if let value = dict["DetectionRuleType"] as? String {
            self.detectionRuleType = value
        }
        if let value = dict["EntityMappings"] as? String {
            self.entityMappings = value
        }
        if let value = dict["IncidentAggregationExpression"] as? String {
            self.incidentAggregationExpression = value
        }
        if let value = dict["IncidentAggregationType"] as? String {
            self.incidentAggregationType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogCategoryId"] as? String {
            self.logCategoryId = value
        }
        if let value = dict["LogSchemaId"] as? String {
            self.logSchemaId = value
        }
        if let value = dict["PlaybookParameters"] as? String {
            self.playbookParameters = value
        }
        if let value = dict["PlaybookUuid"] as? String {
            self.playbookUuid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ScheduleBeginTime"] as? Int64 {
            self.scheduleBeginTime = value
        }
        if let value = dict["ScheduleExpression"] as? String {
            self.scheduleExpression = value
        }
        if let value = dict["ScheduleMaxRetries"] as? Int32 {
            self.scheduleMaxRetries = value
        }
        if let value = dict["ScheduleMaxTimeout"] as? Int32 {
            self.scheduleMaxTimeout = value
        }
        if let value = dict["ScheduleType"] as? String {
            self.scheduleType = value
        }
        if let value = dict["ScheduleWindow"] as? String {
            self.scheduleWindow = value
        }
    }
}

public class UpdateDetectionRuleResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDetectionRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDetectionRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDetectionRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateNormalizationRuleRequest : Tea.TeaModel {
    public var extendContentPacked: String?

    public var lang: String?

    public var normalizationRuleDescription: String?

    public var normalizationRuleExpression: String?

    public var normalizationRuleFormat: String?

    public var normalizationRuleId: String?

    public var normalizationRuleIds: [String]?

    public var normalizationRuleMode: String?

    public var normalizationRuleName: String?

    public var normalizationRuleType: String?

    public var normalizationSchemaId: String?

    public var orderField: String?

    public var productId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var vendorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extendContentPacked != nil {
            map["ExtendContentPacked"] = self.extendContentPacked!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.normalizationRuleDescription != nil {
            map["NormalizationRuleDescription"] = self.normalizationRuleDescription!
        }
        if self.normalizationRuleExpression != nil {
            map["NormalizationRuleExpression"] = self.normalizationRuleExpression!
        }
        if self.normalizationRuleFormat != nil {
            map["NormalizationRuleFormat"] = self.normalizationRuleFormat!
        }
        if self.normalizationRuleId != nil {
            map["NormalizationRuleId"] = self.normalizationRuleId!
        }
        if self.normalizationRuleIds != nil {
            map["NormalizationRuleIds"] = self.normalizationRuleIds!
        }
        if self.normalizationRuleMode != nil {
            map["NormalizationRuleMode"] = self.normalizationRuleMode!
        }
        if self.normalizationRuleName != nil {
            map["NormalizationRuleName"] = self.normalizationRuleName!
        }
        if self.normalizationRuleType != nil {
            map["NormalizationRuleType"] = self.normalizationRuleType!
        }
        if self.normalizationSchemaId != nil {
            map["NormalizationSchemaId"] = self.normalizationSchemaId!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.vendorId != nil {
            map["VendorId"] = self.vendorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExtendContentPacked"] as? String {
            self.extendContentPacked = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NormalizationRuleDescription"] as? String {
            self.normalizationRuleDescription = value
        }
        if let value = dict["NormalizationRuleExpression"] as? String {
            self.normalizationRuleExpression = value
        }
        if let value = dict["NormalizationRuleFormat"] as? String {
            self.normalizationRuleFormat = value
        }
        if let value = dict["NormalizationRuleId"] as? String {
            self.normalizationRuleId = value
        }
        if let value = dict["NormalizationRuleIds"] as? [String] {
            self.normalizationRuleIds = value
        }
        if let value = dict["NormalizationRuleMode"] as? String {
            self.normalizationRuleMode = value
        }
        if let value = dict["NormalizationRuleName"] as? String {
            self.normalizationRuleName = value
        }
        if let value = dict["NormalizationRuleType"] as? String {
            self.normalizationRuleType = value
        }
        if let value = dict["NormalizationSchemaId"] as? String {
            self.normalizationSchemaId = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["VendorId"] as? String {
            self.vendorId = value
        }
    }
}

public class UpdateNormalizationRuleShrinkRequest : Tea.TeaModel {
    public var extendContentPacked: String?

    public var lang: String?

    public var normalizationRuleDescription: String?

    public var normalizationRuleExpression: String?

    public var normalizationRuleFormat: String?

    public var normalizationRuleId: String?

    public var normalizationRuleIdsShrink: String?

    public var normalizationRuleMode: String?

    public var normalizationRuleName: String?

    public var normalizationRuleType: String?

    public var normalizationSchemaId: String?

    public var orderField: String?

    public var productId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var vendorId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extendContentPacked != nil {
            map["ExtendContentPacked"] = self.extendContentPacked!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.normalizationRuleDescription != nil {
            map["NormalizationRuleDescription"] = self.normalizationRuleDescription!
        }
        if self.normalizationRuleExpression != nil {
            map["NormalizationRuleExpression"] = self.normalizationRuleExpression!
        }
        if self.normalizationRuleFormat != nil {
            map["NormalizationRuleFormat"] = self.normalizationRuleFormat!
        }
        if self.normalizationRuleId != nil {
            map["NormalizationRuleId"] = self.normalizationRuleId!
        }
        if self.normalizationRuleIdsShrink != nil {
            map["NormalizationRuleIds"] = self.normalizationRuleIdsShrink!
        }
        if self.normalizationRuleMode != nil {
            map["NormalizationRuleMode"] = self.normalizationRuleMode!
        }
        if self.normalizationRuleName != nil {
            map["NormalizationRuleName"] = self.normalizationRuleName!
        }
        if self.normalizationRuleType != nil {
            map["NormalizationRuleType"] = self.normalizationRuleType!
        }
        if self.normalizationSchemaId != nil {
            map["NormalizationSchemaId"] = self.normalizationSchemaId!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.vendorId != nil {
            map["VendorId"] = self.vendorId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExtendContentPacked"] as? String {
            self.extendContentPacked = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NormalizationRuleDescription"] as? String {
            self.normalizationRuleDescription = value
        }
        if let value = dict["NormalizationRuleExpression"] as? String {
            self.normalizationRuleExpression = value
        }
        if let value = dict["NormalizationRuleFormat"] as? String {
            self.normalizationRuleFormat = value
        }
        if let value = dict["NormalizationRuleId"] as? String {
            self.normalizationRuleId = value
        }
        if let value = dict["NormalizationRuleIds"] as? String {
            self.normalizationRuleIdsShrink = value
        }
        if let value = dict["NormalizationRuleMode"] as? String {
            self.normalizationRuleMode = value
        }
        if let value = dict["NormalizationRuleName"] as? String {
            self.normalizationRuleName = value
        }
        if let value = dict["NormalizationRuleType"] as? String {
            self.normalizationRuleType = value
        }
        if let value = dict["NormalizationSchemaId"] as? String {
            self.normalizationSchemaId = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["VendorId"] as? String {
            self.vendorId = value
        }
    }
}

public class UpdateNormalizationRuleResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateNormalizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNormalizationRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateNormalizationRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateProductRequest : Tea.TeaModel {
    public var lang: String?

    public var productId: String?

    public var productName: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var vendorName: String?

    public override init() {
        super.init()
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
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.vendorName != nil {
            map["VendorName"] = self.vendorName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["VendorName"] as? String {
            self.vendorName = value
        }
    }
}

public class UpdateProductResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProductResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateProductResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVendorRequest : Tea.TeaModel {
    public var lang: String?

    public var regionId: String?

    public var roleFor: Int64?

    public var vendorId: String?

    public var vendorName: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        if self.vendorId != nil {
            map["VendorId"] = self.vendorId!
        }
        if self.vendorName != nil {
            map["VendorName"] = self.vendorName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
        if let value = dict["VendorId"] as? String {
            self.vendorId = value
        }
        if let value = dict["VendorName"] as? String {
            self.vendorName = value
        }
    }
}

public class UpdateVendorResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateVendorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVendorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateVendorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ValidateLogStoreRequest : Tea.TeaModel {
    public var lang: String?

    public var logProjectName: String?

    public var logRegionId: String?

    public var logStoreName: String?

    public var logUserId: Int64?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.logProjectName != nil {
            map["LogProjectName"] = self.logProjectName!
        }
        if self.logRegionId != nil {
            map["LogRegionId"] = self.logRegionId!
        }
        if self.logStoreName != nil {
            map["LogStoreName"] = self.logStoreName!
        }
        if self.logUserId != nil {
            map["LogUserId"] = self.logUserId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogProjectName"] as? String {
            self.logProjectName = value
        }
        if let value = dict["LogRegionId"] as? String {
            self.logRegionId = value
        }
        if let value = dict["LogStoreName"] as? String {
            self.logStoreName = value
        }
        if let value = dict["LogUserId"] as? Int64 {
            self.logUserId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ValidateLogStoreResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ValidateLogStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateLogStoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ValidateLogStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ValidateNormalizationRuleRequest : Tea.TeaModel {
    public var data: String?

    public var lang: String?

    public var normalizationCategoryId: String?

    public var normalizationSchemaId: String?

    public var regionId: String?

    public var roleFor: Int64?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.normalizationCategoryId != nil {
            map["NormalizationCategoryId"] = self.normalizationCategoryId!
        }
        if self.normalizationSchemaId != nil {
            map["NormalizationSchemaId"] = self.normalizationSchemaId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleFor != nil {
            map["RoleFor"] = self.roleFor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NormalizationCategoryId"] as? String {
            self.normalizationCategoryId = value
        }
        if let value = dict["NormalizationSchemaId"] as? String {
            self.normalizationSchemaId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleFor"] as? Int64 {
            self.roleFor = value
        }
    }
}

public class ValidateNormalizationRuleResponseBody : Tea.TeaModel {
    public class ValidateResult : Tea.TeaModel {
        public var fieldName: String?

        public var fieldValue: String?

        public var message: String?

        public var normalizationFieldName: String?

        public var normalizationFieldRequired: Bool?

        public var result: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fieldName != nil {
                map["FieldName"] = self.fieldName!
            }
            if self.fieldValue != nil {
                map["FieldValue"] = self.fieldValue!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.normalizationFieldName != nil {
                map["NormalizationFieldName"] = self.normalizationFieldName!
            }
            if self.normalizationFieldRequired != nil {
                map["NormalizationFieldRequired"] = self.normalizationFieldRequired!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FieldName"] as? String {
                self.fieldName = value
            }
            if let value = dict["FieldValue"] as? String {
                self.fieldValue = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["NormalizationFieldName"] as? String {
                self.normalizationFieldName = value
            }
            if let value = dict["NormalizationFieldRequired"] as? Bool {
                self.normalizationFieldRequired = value
            }
            if let value = dict["Result"] as? Int32 {
                self.result = value
            }
        }
    }
    public var requestId: String?

    public var validateResult: [ValidateNormalizationRuleResponseBody.ValidateResult]?

    public override init() {
        super.init()
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
        if self.validateResult != nil {
            var tmp : [Any] = []
            for k in self.validateResult! {
                tmp.append(k.toMap())
            }
            map["ValidateResult"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ValidateResult"] as? [Any?] {
            var tmp : [ValidateNormalizationRuleResponseBody.ValidateResult] = []
            for v in value {
                if v != nil {
                    var model = ValidateNormalizationRuleResponseBody.ValidateResult()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.validateResult = tmp
        }
    }
}

public class ValidateNormalizationRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateNormalizationRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ValidateNormalizationRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
