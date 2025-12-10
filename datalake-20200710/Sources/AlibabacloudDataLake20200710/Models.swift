import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AccessRequest : Tea.TeaModel {
    public var catalogId: String?

    public var principal: Principal?

    public var privilegeResources: [PrivilegeResource]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.principal?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.principal != nil {
            map["Principal"] = self.principal?.toMap()
        }
        if self.privilegeResources != nil {
            var tmp : [Any] = []
            for k in self.privilegeResources! {
                tmp.append(k.toMap())
            }
            map["PrivilegeResources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["Principal"] as? [String: Any?] {
            var model = Principal()
            model.fromMap(value)
            self.principal = model
        }
        if let value = dict["PrivilegeResources"] as? [Any?] {
            var tmp : [PrivilegeResource] = []
            for v in value {
                if v != nil {
                    var model = PrivilegeResource()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.privilegeResources = tmp
        }
    }
}

public class Catalog : Tea.TeaModel {
    public var catalogId: String?

    public var catalogType: String?

    public var createTime: Int64?

    public var createdBy: String?

    public var defaultCatalog: Bool?

    public var description_: String?

    public var jdbcEnabled: Bool?

    public var locationUri: String?

    public var owner: String?

    public var status: String?

    public var storageAccessConfig: String?

    public var thriftEnabled: Bool?

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
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.catalogType != nil {
            map["CatalogType"] = self.catalogType!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.defaultCatalog != nil {
            map["DefaultCatalog"] = self.defaultCatalog!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.jdbcEnabled != nil {
            map["JdbcEnabled"] = self.jdbcEnabled!
        }
        if self.locationUri != nil {
            map["LocationUri"] = self.locationUri!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.storageAccessConfig != nil {
            map["StorageAccessConfig"] = self.storageAccessConfig!
        }
        if self.thriftEnabled != nil {
            map["ThriftEnabled"] = self.thriftEnabled!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["CatalogType"] as? String {
            self.catalogType = value
        }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["CreatedBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["DefaultCatalog"] as? Bool {
            self.defaultCatalog = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["JdbcEnabled"] as? Bool {
            self.jdbcEnabled = value
        }
        if let value = dict["LocationUri"] as? String {
            self.locationUri = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StorageAccessConfig"] as? String {
            self.storageAccessConfig = value
        }
        if let value = dict["ThriftEnabled"] as? Bool {
            self.thriftEnabled = value
        }
        if let value = dict["UpdateTime"] as? Int64 {
            self.updateTime = value
        }
    }
}

public class CatalogConnection : Tea.TeaModel {
    public var jdbcPassword: String?

    public var jdbcUri: String?

    public var jdbcUserName: String?

    public var thriftUri: String?

    public var vpcConnectionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jdbcPassword != nil {
            map["JdbcPassword"] = self.jdbcPassword!
        }
        if self.jdbcUri != nil {
            map["JdbcUri"] = self.jdbcUri!
        }
        if self.jdbcUserName != nil {
            map["JdbcUserName"] = self.jdbcUserName!
        }
        if self.thriftUri != nil {
            map["ThriftUri"] = self.thriftUri!
        }
        if self.vpcConnectionId != nil {
            map["VpcConnectionId"] = self.vpcConnectionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JdbcPassword"] as? String {
            self.jdbcPassword = value
        }
        if let value = dict["JdbcUri"] as? String {
            self.jdbcUri = value
        }
        if let value = dict["JdbcUserName"] as? String {
            self.jdbcUserName = value
        }
        if let value = dict["ThriftUri"] as? String {
            self.thriftUri = value
        }
        if let value = dict["VpcConnectionId"] as? String {
            self.vpcConnectionId = value
        }
    }
}

public class CatalogInput : Tea.TeaModel {
    public var catalogId: String?

    public var catalogType: String?

    public var description_: String?

    public var jdbcEnabled: Bool?

    public var locationUri: String?

    public var owner: String?

    public var storageAccessConfig: String?

    public var thriftEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.catalogType != nil {
            map["CatalogType"] = self.catalogType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.jdbcEnabled != nil {
            map["JdbcEnabled"] = self.jdbcEnabled!
        }
        if self.locationUri != nil {
            map["LocationUri"] = self.locationUri!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.storageAccessConfig != nil {
            map["StorageAccessConfig"] = self.storageAccessConfig!
        }
        if self.thriftEnabled != nil {
            map["ThriftEnabled"] = self.thriftEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["CatalogType"] as? String {
            self.catalogType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["JdbcEnabled"] as? Bool {
            self.jdbcEnabled = value
        }
        if let value = dict["LocationUri"] as? String {
            self.locationUri = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["StorageAccessConfig"] as? String {
            self.storageAccessConfig = value
        }
        if let value = dict["ThriftEnabled"] as? Bool {
            self.thriftEnabled = value
        }
    }
}

public class CatalogResource : Tea.TeaModel {
    public var catalogId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
    }
}

public class CatalogSettings : Tea.TeaModel {
    public var config: [String: String]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? [String: String] {
            self.config = value
        }
    }
}

public class CatalogVpcConnection : Tea.TeaModel {
    public class Zones : Tea.TeaModel {
        public var IP: String?

        public var vSwitchId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.IP != nil {
                map["IP"] = self.IP!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IP"] as? String {
                self.IP = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var catalogId: String?

    public var connectionName: String?

    public var connectionStatus: String?

    public var creator: Int64?

    public var errorMessage: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var jdbcUri: String?

    public var modifier: Int64?

    public var owner: Int64?

    public var regionId: String?

    public var securityGroupIds: [String]?

    public var thriftUri: String?

    public var vpcConnectionId: String?

    public var vpcId: String?

    public var zones: [CatalogVpcConnection.Zones]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.connectionName != nil {
            map["ConnectionName"] = self.connectionName!
        }
        if self.connectionStatus != nil {
            map["ConnectionStatus"] = self.connectionStatus!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.jdbcUri != nil {
            map["JdbcUri"] = self.jdbcUri!
        }
        if self.modifier != nil {
            map["Modifier"] = self.modifier!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityGroupIds != nil {
            map["SecurityGroupIds"] = self.securityGroupIds!
        }
        if self.thriftUri != nil {
            map["ThriftUri"] = self.thriftUri!
        }
        if self.vpcConnectionId != nil {
            map["VpcConnectionId"] = self.vpcConnectionId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.zones != nil {
            var tmp : [Any] = []
            for k in self.zones! {
                tmp.append(k.toMap())
            }
            map["Zones"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["ConnectionName"] as? String {
            self.connectionName = value
        }
        if let value = dict["ConnectionStatus"] as? String {
            self.connectionStatus = value
        }
        if let value = dict["Creator"] as? Int64 {
            self.creator = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["JdbcUri"] as? String {
            self.jdbcUri = value
        }
        if let value = dict["Modifier"] as? Int64 {
            self.modifier = value
        }
        if let value = dict["Owner"] as? Int64 {
            self.owner = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityGroupIds"] as? [String] {
            self.securityGroupIds = value
        }
        if let value = dict["ThriftUri"] as? String {
            self.thriftUri = value
        }
        if let value = dict["VpcConnectionId"] as? String {
            self.vpcConnectionId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["Zones"] as? [Any?] {
            var tmp : [CatalogVpcConnection.Zones] = []
            for v in value {
                if v != nil {
                    var model = CatalogVpcConnection.Zones()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.zones = tmp
        }
    }
}

public class CatalogVpcConnectionInput : Tea.TeaModel {
    public class Zones : Tea.TeaModel {
        public var IP: String?

        public var vSwitchId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.IP != nil {
                map["IP"] = self.IP!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IP"] as? String {
                self.IP = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var connectionName: String?

    public var securityGroupIds: [String]?

    public var vpcId: String?

    public var zones: [CatalogVpcConnectionInput.Zones]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectionName != nil {
            map["ConnectionName"] = self.connectionName!
        }
        if self.securityGroupIds != nil {
            map["SecurityGroupIds"] = self.securityGroupIds!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.zones != nil {
            var tmp : [Any] = []
            for k in self.zones! {
                tmp.append(k.toMap())
            }
            map["Zones"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConnectionName"] as? String {
            self.connectionName = value
        }
        if let value = dict["SecurityGroupIds"] as? [String] {
            self.securityGroupIds = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["Zones"] as? [Any?] {
            var tmp : [CatalogVpcConnectionInput.Zones] = []
            for v in value {
                if v != nil {
                    var model = CatalogVpcConnectionInput.Zones()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.zones = tmp
        }
    }
}

public class ColumnResource : Tea.TeaModel {
    public var columnNames: [String]?

    public var databaseName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnNames != nil {
            map["ColumnNames"] = self.columnNames!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColumnNames"] as? [String] {
            self.columnNames = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class ColumnStatistics : Tea.TeaModel {
    public var columnStatisticsDesc: ColumnStatisticsDesc?

    public var columnStatisticsObjList: [ColumnStatisticsObj]?

    public var engine: String?

    public var isStatsCompliant: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.columnStatisticsDesc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnStatisticsDesc != nil {
            map["ColumnStatisticsDesc"] = self.columnStatisticsDesc?.toMap()
        }
        if self.columnStatisticsObjList != nil {
            var tmp : [Any] = []
            for k in self.columnStatisticsObjList! {
                tmp.append(k.toMap())
            }
            map["ColumnStatisticsObjList"] = tmp
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.isStatsCompliant != nil {
            map["IsStatsCompliant"] = self.isStatsCompliant!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColumnStatisticsDesc"] as? [String: Any?] {
            var model = ColumnStatisticsDesc()
            model.fromMap(value)
            self.columnStatisticsDesc = model
        }
        if let value = dict["ColumnStatisticsObjList"] as? [Any?] {
            var tmp : [ColumnStatisticsObj] = []
            for v in value {
                if v != nil {
                    var model = ColumnStatisticsObj()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.columnStatisticsObjList = tmp
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["IsStatsCompliant"] as? Bool {
            self.isStatsCompliant = value
        }
    }
}

public class ColumnStatisticsDesc : Tea.TeaModel {
    public var lastAnalyzedTime: Int64?

    public var partitionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lastAnalyzedTime != nil {
            map["LastAnalyzedTime"] = self.lastAnalyzedTime!
        }
        if self.partitionName != nil {
            map["PartitionName"] = self.partitionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LastAnalyzedTime"] as? Int64 {
            self.lastAnalyzedTime = value
        }
        if let value = dict["PartitionName"] as? String {
            self.partitionName = value
        }
    }
}

public class ColumnStatisticsObj : Tea.TeaModel {
    public class ColumnStatisticsData : Tea.TeaModel {
        public var statisticsData: String?

        public var statisticsType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.statisticsData != nil {
                map["StatisticsData"] = self.statisticsData!
            }
            if self.statisticsType != nil {
                map["StatisticsType"] = self.statisticsType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["StatisticsData"] as? String {
                self.statisticsData = value
            }
            if let value = dict["StatisticsType"] as? String {
                self.statisticsType = value
            }
        }
    }
    public var columnName: String?

    public var columnStatisticsData: ColumnStatisticsObj.ColumnStatisticsData?

    public var columnType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.columnStatisticsData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnName != nil {
            map["ColumnName"] = self.columnName!
        }
        if self.columnStatisticsData != nil {
            map["ColumnStatisticsData"] = self.columnStatisticsData?.toMap()
        }
        if self.columnType != nil {
            map["ColumnType"] = self.columnType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColumnName"] as? String {
            self.columnName = value
        }
        if let value = dict["ColumnStatisticsData"] as? [String: Any?] {
            var model = ColumnStatisticsObj.ColumnStatisticsData()
            model.fromMap(value)
            self.columnStatisticsData = model
        }
        if let value = dict["ColumnType"] as? String {
            self.columnType = value
        }
    }
}

public class Database : Tea.TeaModel {
    public var createTime: Int32?

    public var createdBy: String?

    public var description_: String?

    public var locationUri: String?

    public var name: String?

    public var ownerName: String?

    public var ownerType: String?

    public var parameters: [String: String]?

    public var privileges: PrincipalPrivilegeSet?

    public var updateTime: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.privileges?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.locationUri != nil {
            map["LocationUri"] = self.locationUri!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerName != nil {
            map["OwnerName"] = self.ownerName!
        }
        if self.ownerType != nil {
            map["OwnerType"] = self.ownerType!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.privileges != nil {
            map["Privileges"] = self.privileges?.toMap()
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["CreatedBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["LocationUri"] as? String {
            self.locationUri = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerName"] as? String {
            self.ownerName = value
        }
        if let value = dict["OwnerType"] as? String {
            self.ownerType = value
        }
        if let value = dict["Parameters"] as? [String: String] {
            self.parameters = value
        }
        if let value = dict["Privileges"] as? [String: Any?] {
            var model = PrincipalPrivilegeSet()
            model.fromMap(value)
            self.privileges = model
        }
        if let value = dict["UpdateTime"] as? Int32 {
            self.updateTime = value
        }
    }
}

public class DatabaseInput : Tea.TeaModel {
    public var createTime: Int32?

    public var description_: String?

    public var locationUri: String?

    public var name: String?

    public var ownerName: String?

    public var ownerType: String?

    public var parameters: [String: String]?

    public var privileges: PrincipalPrivilegeSet?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.privileges?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.locationUri != nil {
            map["LocationUri"] = self.locationUri!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerName != nil {
            map["OwnerName"] = self.ownerName!
        }
        if self.ownerType != nil {
            map["OwnerType"] = self.ownerType!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.privileges != nil {
            map["Privileges"] = self.privileges?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["LocationUri"] as? String {
            self.locationUri = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerName"] as? String {
            self.ownerName = value
        }
        if let value = dict["OwnerType"] as? String {
            self.ownerType = value
        }
        if let value = dict["Parameters"] as? [String: String] {
            self.parameters = value
        }
        if let value = dict["Privileges"] as? [String: Any?] {
            var model = PrincipalPrivilegeSet()
            model.fromMap(value)
            self.privileges = model
        }
    }
}

public class DatabaseProfile : Tea.TeaModel {
    public var createTime: String?

    public var fileCnt: Int64?

    public var fileSize: Int64?

    public var latestDate: String?

    public var location: String?

    public var name: String?

    public var objectCnt: Int64?

    public var objectSize: Int64?

    public override init() {
        super.init()
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
        if self.fileCnt != nil {
            map["FileCnt"] = self.fileCnt!
        }
        if self.fileSize != nil {
            map["FileSize"] = self.fileSize!
        }
        if self.latestDate != nil {
            map["LatestDate"] = self.latestDate!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.objectCnt != nil {
            map["ObjectCnt"] = self.objectCnt!
        }
        if self.objectSize != nil {
            map["ObjectSize"] = self.objectSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["FileCnt"] as? Int64 {
            self.fileCnt = value
        }
        if let value = dict["FileSize"] as? Int64 {
            self.fileSize = value
        }
        if let value = dict["LatestDate"] as? String {
            self.latestDate = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ObjectCnt"] as? Int64 {
            self.objectCnt = value
        }
        if let value = dict["ObjectSize"] as? Int64 {
            self.objectSize = value
        }
    }
}

public class DatabaseResource : Tea.TeaModel {
    public var databaseName: String?

    public var databaseWildcard: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.databaseWildcard != nil {
            map["DatabaseWildcard"] = self.databaseWildcard!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["DatabaseWildcard"] as? String {
            self.databaseWildcard = value
        }
    }
}

public class DbStorageRank : Tea.TeaModel {
    public var dbName: String?

    public var quantity: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.quantity != nil {
            map["Quantity"] = self.quantity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Quantity"] as? Int64 {
            self.quantity = value
        }
    }
}

public class ErrorDetail : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
    }
}

public class FieldSchema : Tea.TeaModel {
    public var comment: String?

    public var name: String?

    public var parameters: [String: String]?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Parameters"] as? [String: String] {
            self.parameters = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class FileCnt : Tea.TeaModel {
    public var large: Int64?

    public var middle: Int64?

    public var small: Int64?

    public var tiny: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.large != nil {
            map["Large"] = self.large!
        }
        if self.middle != nil {
            map["Middle"] = self.middle!
        }
        if self.small != nil {
            map["Small"] = self.small!
        }
        if self.tiny != nil {
            map["Tiny"] = self.tiny!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Large"] as? Int64 {
            self.large = value
        }
        if let value = dict["Middle"] as? Int64 {
            self.middle = value
        }
        if let value = dict["Small"] as? Int64 {
            self.small = value
        }
        if let value = dict["Tiny"] as? Int64 {
            self.tiny = value
        }
    }
}

public class Function : Tea.TeaModel {
    public var catalogId: String?

    public var className: String?

    public var createTime: Int32?

    public var createdBy: String?

    public var databaseName: String?

    public var functionName: String?

    public var functionType: String?

    public var ownerName: String?

    public var ownerType: String?

    public var resourceUri: [ResourceUri]?

    public var updateTime: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.className != nil {
            map["ClassName"] = self.className!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.functionName != nil {
            map["FunctionName"] = self.functionName!
        }
        if self.functionType != nil {
            map["FunctionType"] = self.functionType!
        }
        if self.ownerName != nil {
            map["OwnerName"] = self.ownerName!
        }
        if self.ownerType != nil {
            map["OwnerType"] = self.ownerType!
        }
        if self.resourceUri != nil {
            var tmp : [Any] = []
            for k in self.resourceUri! {
                tmp.append(k.toMap())
            }
            map["ResourceUri"] = tmp
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["ClassName"] as? String {
            self.className = value
        }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["CreatedBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["FunctionName"] as? String {
            self.functionName = value
        }
        if let value = dict["FunctionType"] as? String {
            self.functionType = value
        }
        if let value = dict["OwnerName"] as? String {
            self.ownerName = value
        }
        if let value = dict["OwnerType"] as? String {
            self.ownerType = value
        }
        if let value = dict["ResourceUri"] as? [Any?] {
            var tmp : [ResourceUri] = []
            for v in value {
                if v != nil {
                    var model = ResourceUri()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceUri = tmp
        }
        if let value = dict["UpdateTime"] as? Int32 {
            self.updateTime = value
        }
    }
}

public class FunctionInput : Tea.TeaModel {
    public var className: String?

    public var createTime: Int32?

    public var functionName: String?

    public var functionType: String?

    public var ownerName: String?

    public var ownerType: String?

    public var resourceUri: [ResourceUri]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.className != nil {
            map["ClassName"] = self.className!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.functionName != nil {
            map["FunctionName"] = self.functionName!
        }
        if self.functionType != nil {
            map["FunctionType"] = self.functionType!
        }
        if self.ownerName != nil {
            map["OwnerName"] = self.ownerName!
        }
        if self.ownerType != nil {
            map["OwnerType"] = self.ownerType!
        }
        if self.resourceUri != nil {
            var tmp : [Any] = []
            for k in self.resourceUri! {
                tmp.append(k.toMap())
            }
            map["ResourceUri"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClassName"] as? String {
            self.className = value
        }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["FunctionName"] as? String {
            self.functionName = value
        }
        if let value = dict["FunctionType"] as? String {
            self.functionType = value
        }
        if let value = dict["OwnerName"] as? String {
            self.ownerName = value
        }
        if let value = dict["OwnerType"] as? String {
            self.ownerType = value
        }
        if let value = dict["ResourceUri"] as? [Any?] {
            var tmp : [ResourceUri] = []
            for v in value {
                if v != nil {
                    var model = ResourceUri()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceUri = tmp
        }
    }
}

public class FunctionResource : Tea.TeaModel {
    public var databaseName: String?

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
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.functionName != nil {
            map["FunctionName"] = self.functionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["FunctionName"] as? String {
            self.functionName = value
        }
    }
}

public class GrantRevokeEntry : Tea.TeaModel {
    public var accesses: [String]?

    public var delegateAccesses: [String]?

    public var id: String?

    public var metaResource: MetaResource?

    public var principal: Principal?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metaResource?.validate()
        try self.principal?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accesses != nil {
            map["Accesses"] = self.accesses!
        }
        if self.delegateAccesses != nil {
            map["DelegateAccesses"] = self.delegateAccesses!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.metaResource != nil {
            map["MetaResource"] = self.metaResource?.toMap()
        }
        if self.principal != nil {
            map["Principal"] = self.principal?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accesses"] as? [String] {
            self.accesses = value
        }
        if let value = dict["DelegateAccesses"] as? [String] {
            self.delegateAccesses = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["MetaResource"] as? [String: Any?] {
            var model = MetaResource()
            model.fromMap(value)
            self.metaResource = model
        }
        if let value = dict["Principal"] as? [String: Any?] {
            var model = Principal()
            model.fromMap(value)
            self.principal = model
        }
    }
}

public class GrantRevokeFailureEntry : Tea.TeaModel {
    public var errorDetail: ErrorDetail?

    public var grantRevokeEntry: GrantRevokeEntry?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
        try self.grantRevokeEntry?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.grantRevokeEntry != nil {
            map["GrantRevokeEntry"] = self.grantRevokeEntry?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorDetail"] as? [String: Any?] {
            var model = ErrorDetail()
            model.fromMap(value)
            self.errorDetail = model
        }
        if let value = dict["GrantRevokeEntry"] as? [String: Any?] {
            var model = GrantRevokeEntry()
            model.fromMap(value)
            self.grantRevokeEntry = model
        }
    }
}

public class HighLight : Tea.TeaModel {
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

public class IndicatorStatistic : Tea.TeaModel {
    public var data: Int64?

    public var date: String?

    public override init() {
        super.init()
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
        if self.date != nil {
            map["Date"] = self.date!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["Date"] as? String {
            self.date = value
        }
    }
}

public class LifecycleResource : Tea.TeaModel {
    public class Database : Tea.TeaModel {
        public var createTime: Int64?

        public var description_: String?

        public var locationUri: String?

        public var name: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.locationUri != nil {
                map["LocationUri"] = self.locationUri!
            }
            if self.name != nil {
                map["Name"] = self.name!
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
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["LocationUri"] as? String {
                self.locationUri = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
        }
    }
    public class Table : Tea.TeaModel {
        public class Sd : Tea.TeaModel {
            public class SerDeInfo : Tea.TeaModel {
                public var name: String?

                public var parameters: [String: String]?

                public var serializationLib: String?

                public override init() {
                    super.init()
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
                    if self.parameters != nil {
                        map["Parameters"] = self.parameters!
                    }
                    if self.serializationLib != nil {
                        map["SerializationLib"] = self.serializationLib!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Parameters"] as? [String: String] {
                        self.parameters = value
                    }
                    if let value = dict["SerializationLib"] as? String {
                        self.serializationLib = value
                    }
                }
            }
            public var bucketCols: [String]?

            public var inputFormat: String?

            public var location: String?

            public var outputFormat: String?

            public var parameters: [String: String]?

            public var serDeInfo: LifecycleResource.Table.Sd.SerDeInfo?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.serDeInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bucketCols != nil {
                    map["BucketCols"] = self.bucketCols!
                }
                if self.inputFormat != nil {
                    map["InputFormat"] = self.inputFormat!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.outputFormat != nil {
                    map["OutputFormat"] = self.outputFormat!
                }
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.serDeInfo != nil {
                    map["SerDeInfo"] = self.serDeInfo?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BucketCols"] as? [String] {
                    self.bucketCols = value
                }
                if let value = dict["InputFormat"] as? String {
                    self.inputFormat = value
                }
                if let value = dict["Location"] as? String {
                    self.location = value
                }
                if let value = dict["OutputFormat"] as? String {
                    self.outputFormat = value
                }
                if let value = dict["Parameters"] as? [String: String] {
                    self.parameters = value
                }
                if let value = dict["SerDeInfo"] as? [String: Any?] {
                    var model = LifecycleResource.Table.Sd.SerDeInfo()
                    model.fromMap(value)
                    self.serDeInfo = model
                }
            }
        }
        public var createTime: Int64?

        public var databaseName: String?

        public var parameters: [String: String]?

        public var sd: LifecycleResource.Table.Sd?

        public var tableName: String?

        public var tableType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.sd?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.sd != nil {
                map["Sd"] = self.sd?.toMap()
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            if self.tableType != nil {
                map["TableType"] = self.tableType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DatabaseName"] as? String {
                self.databaseName = value
            }
            if let value = dict["Parameters"] as? [String: String] {
                self.parameters = value
            }
            if let value = dict["Sd"] as? [String: Any?] {
                var model = LifecycleResource.Table.Sd()
                model.fromMap(value)
                self.sd = model
            }
            if let value = dict["TableName"] as? String {
                self.tableName = value
            }
            if let value = dict["TableType"] as? String {
                self.tableType = value
            }
        }
    }
    public var bizId: String?

    public var catalogId: String?

    public var database: LifecycleResource.Database?

    public var databaseName: String?

    public var databaseProfile: DatabaseProfile?

    public var gmtCreate: String?

    public var lifecycleRuleBizId: String?

    public var owner: Int64?

    public var table: LifecycleResource.Table?

    public var tableName: String?

    public var tableProfile: TableProfile?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.database?.validate()
        try self.databaseProfile?.validate()
        try self.table?.validate()
        try self.tableProfile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.database != nil {
            map["Database"] = self.database?.toMap()
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.databaseProfile != nil {
            map["DatabaseProfile"] = self.databaseProfile?.toMap()
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.lifecycleRuleBizId != nil {
            map["LifecycleRuleBizId"] = self.lifecycleRuleBizId!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.table != nil {
            map["Table"] = self.table?.toMap()
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tableProfile != nil {
            map["TableProfile"] = self.tableProfile?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["Database"] as? [String: Any?] {
            var model = LifecycleResource.Database()
            model.fromMap(value)
            self.database = model
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["DatabaseProfile"] as? [String: Any?] {
            var model = DatabaseProfile()
            model.fromMap(value)
            self.databaseProfile = model
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["LifecycleRuleBizId"] as? String {
            self.lifecycleRuleBizId = value
        }
        if let value = dict["Owner"] as? Int64 {
            self.owner = value
        }
        if let value = dict["Table"] as? [String: Any?] {
            var model = LifecycleResource.Table()
            model.fromMap(value)
            self.table = model
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["TableProfile"] as? [String: Any?] {
            var model = TableProfile()
            model.fromMap(value)
            self.tableProfile = model
        }
    }
}

public class LifecycleRule : Tea.TeaModel {
    public var archiveDays: Int32?

    public var bindCount: Int32?

    public var bizId: String?

    public var catalogId: String?

    public var coldArchiveDays: Int32?

    public var config: String?

    public var description_: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var iaDays: Int32?

    public var name: String?

    public var resourceType: String?

    public var ruleType: String?

    public var scheduleStatus: String?

    public var workflow: Workflow?

    public var workflowId: String?

    public var workflowInstance: WorkflowInstance?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.workflow?.validate()
        try self.workflowInstance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.archiveDays != nil {
            map["ArchiveDays"] = self.archiveDays!
        }
        if self.bindCount != nil {
            map["BindCount"] = self.bindCount!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.coldArchiveDays != nil {
            map["ColdArchiveDays"] = self.coldArchiveDays!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.iaDays != nil {
            map["IaDays"] = self.iaDays!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.scheduleStatus != nil {
            map["ScheduleStatus"] = self.scheduleStatus!
        }
        if self.workflow != nil {
            map["Workflow"] = self.workflow?.toMap()
        }
        if self.workflowId != nil {
            map["WorkflowId"] = self.workflowId!
        }
        if self.workflowInstance != nil {
            map["WorkflowInstance"] = self.workflowInstance?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArchiveDays"] as? Int32 {
            self.archiveDays = value
        }
        if let value = dict["BindCount"] as? Int32 {
            self.bindCount = value
        }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["ColdArchiveDays"] as? Int32 {
            self.coldArchiveDays = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["IaDays"] as? Int32 {
            self.iaDays = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["RuleType"] as? String {
            self.ruleType = value
        }
        if let value = dict["ScheduleStatus"] as? String {
            self.scheduleStatus = value
        }
        if let value = dict["Workflow"] as? [String: Any?] {
            var model = Workflow()
            model.fromMap(value)
            self.workflow = model
        }
        if let value = dict["WorkflowId"] as? String {
            self.workflowId = value
        }
        if let value = dict["WorkflowInstance"] as? [String: Any?] {
            var model = WorkflowInstance()
            model.fromMap(value)
            self.workflowInstance = model
        }
    }
}

public class LifecycleTask : Tea.TeaModel {
    public var bizId: String?

    public var lifecycleRule: LifecycleRule?

    public var name: String?

    public var workflowInstance: WorkflowInstance?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.lifecycleRule?.validate()
        try self.workflowInstance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.lifecycleRule != nil {
            map["LifecycleRule"] = self.lifecycleRule?.toMap()
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.workflowInstance != nil {
            map["WorkflowInstance"] = self.workflowInstance?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["LifecycleRule"] as? [String: Any?] {
            var model = LifecycleRule()
            model.fromMap(value)
            self.lifecycleRule = model
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["WorkflowInstance"] as? [String: Any?] {
            var model = WorkflowInstance()
            model.fromMap(value)
            self.workflowInstance = model
        }
    }
}

public class LocationStorageRankDTO : Tea.TeaModel {
    public var fileCnt: Int64?

    public var location: String?

    public var storage: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileCnt != nil {
            map["FileCnt"] = self.fileCnt!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.storage != nil {
            map["Storage"] = self.storage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileCnt"] as? Int64 {
            self.fileCnt = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["Storage"] as? Int64 {
            self.storage = value
        }
    }
}

public class LockObj : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var partitionName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.partitionName != nil {
            map["PartitionName"] = self.partitionName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["PartitionName"] as? String {
            self.partitionName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class LockStatus : Tea.TeaModel {
    public var lockId: Int64?

    public var lockState: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lockId != nil {
            map["LockId"] = self.lockId!
        }
        if self.lockState != nil {
            map["LockState"] = self.lockState!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LockId"] as? Int64 {
            self.lockId = value
        }
        if let value = dict["LockState"] as? String {
            self.lockState = value
        }
    }
}

public class LogInfo : Tea.TeaModel {
    public var bizTime: String?

    public var gmtCreate: String?

    public var instanceId: String?

    public var logContent: String?

    public var logId: String?

    public var logSummary: String?

    public var logType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizTime != nil {
            map["BizTime"] = self.bizTime!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.logContent != nil {
            map["LogContent"] = self.logContent!
        }
        if self.logId != nil {
            map["LogId"] = self.logId!
        }
        if self.logSummary != nil {
            map["LogSummary"] = self.logSummary!
        }
        if self.logType != nil {
            map["LogType"] = self.logType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizTime"] as? String {
            self.bizTime = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LogContent"] as? String {
            self.logContent = value
        }
        if let value = dict["LogId"] as? String {
            self.logId = value
        }
        if let value = dict["LogSummary"] as? String {
            self.logSummary = value
        }
        if let value = dict["LogType"] as? String {
            self.logType = value
        }
    }
}

public class MetaResource : Tea.TeaModel {
    public var catalogResource: CatalogResource?

    public var columnResource: ColumnResource?

    public var databaseResource: DatabaseResource?

    public var functionResource: FunctionResource?

    public var resourceType: String?

    public var tableResource: TableResource?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.catalogResource?.validate()
        try self.columnResource?.validate()
        try self.databaseResource?.validate()
        try self.functionResource?.validate()
        try self.tableResource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogResource != nil {
            map["CatalogResource"] = self.catalogResource?.toMap()
        }
        if self.columnResource != nil {
            map["ColumnResource"] = self.columnResource?.toMap()
        }
        if self.databaseResource != nil {
            map["DatabaseResource"] = self.databaseResource?.toMap()
        }
        if self.functionResource != nil {
            map["FunctionResource"] = self.functionResource?.toMap()
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tableResource != nil {
            map["TableResource"] = self.tableResource?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogResource"] as? [String: Any?] {
            var model = CatalogResource()
            model.fromMap(value)
            self.catalogResource = model
        }
        if let value = dict["ColumnResource"] as? [String: Any?] {
            var model = ColumnResource()
            model.fromMap(value)
            self.columnResource = model
        }
        if let value = dict["DatabaseResource"] as? [String: Any?] {
            var model = DatabaseResource()
            model.fromMap(value)
            self.databaseResource = model
        }
        if let value = dict["FunctionResource"] as? [String: Any?] {
            var model = FunctionResource()
            model.fromMap(value)
            self.functionResource = model
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TableResource"] as? [String: Any?] {
            var model = TableResource()
            model.fromMap(value)
            self.tableResource = model
        }
    }
}

public class Order : Tea.TeaModel {
    public var col: String?

    public var order: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.col != nil {
            map["Col"] = self.col!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Col"] as? String {
            self.col = value
        }
        if let value = dict["Order"] as? Int32 {
            self.order = value
        }
    }
}

public class Partition : Tea.TeaModel {
    public var createTime: Int32?

    public var databaseName: String?

    public var lastAccessTime: Int32?

    public var lastAnalyzedTime: Int32?

    public var parameters: [String: String]?

    public var privileges: PrincipalPrivilegeSet?

    public var sd: StorageDescriptor?

    public var tableName: String?

    public var values: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.privileges?.validate()
        try self.sd?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.lastAccessTime != nil {
            map["LastAccessTime"] = self.lastAccessTime!
        }
        if self.lastAnalyzedTime != nil {
            map["LastAnalyzedTime"] = self.lastAnalyzedTime!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.privileges != nil {
            map["Privileges"] = self.privileges?.toMap()
        }
        if self.sd != nil {
            map["Sd"] = self.sd?.toMap()
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.values != nil {
            map["Values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["LastAccessTime"] as? Int32 {
            self.lastAccessTime = value
        }
        if let value = dict["LastAnalyzedTime"] as? Int32 {
            self.lastAnalyzedTime = value
        }
        if let value = dict["Parameters"] as? [String: String] {
            self.parameters = value
        }
        if let value = dict["Privileges"] as? [String: Any?] {
            var model = PrincipalPrivilegeSet()
            model.fromMap(value)
            self.privileges = model
        }
        if let value = dict["Sd"] as? [String: Any?] {
            var model = StorageDescriptor()
            model.fromMap(value)
            self.sd = model
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Values"] as? [String] {
            self.values = value
        }
    }
}

public class PartitionError : Tea.TeaModel {
    public var errorDetail: ErrorDetail?

    public var partitionValues: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.partitionValues != nil {
            map["PartitionValues"] = self.partitionValues!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorDetail"] as? [String: Any?] {
            var model = ErrorDetail()
            model.fromMap(value)
            self.errorDetail = model
        }
        if let value = dict["PartitionValues"] as? [String] {
            self.partitionValues = value
        }
    }
}

public class PartitionInput : Tea.TeaModel {
    public var createTime: Int32?

    public var databaseName: String?

    public var lastAccessTime: Int32?

    public var lastAnalyzedTime: Int32?

    public var parameters: [String: String]?

    public var privileges: PrincipalPrivilegeSet?

    public var sd: StorageDescriptor?

    public var tableName: String?

    public var values: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.privileges?.validate()
        try self.sd?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.lastAccessTime != nil {
            map["LastAccessTime"] = self.lastAccessTime!
        }
        if self.lastAnalyzedTime != nil {
            map["LastAnalyzedTime"] = self.lastAnalyzedTime!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.privileges != nil {
            map["Privileges"] = self.privileges?.toMap()
        }
        if self.sd != nil {
            map["Sd"] = self.sd?.toMap()
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.values != nil {
            map["Values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["LastAccessTime"] as? Int32 {
            self.lastAccessTime = value
        }
        if let value = dict["LastAnalyzedTime"] as? Int32 {
            self.lastAnalyzedTime = value
        }
        if let value = dict["Parameters"] as? [String: String] {
            self.parameters = value
        }
        if let value = dict["Privileges"] as? [String: Any?] {
            var model = PrincipalPrivilegeSet()
            model.fromMap(value)
            self.privileges = model
        }
        if let value = dict["Sd"] as? [String: Any?] {
            var model = StorageDescriptor()
            model.fromMap(value)
            self.sd = model
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Values"] as? [String] {
            self.values = value
        }
    }
}

public class PartitionProfile : Tea.TeaModel {
    public var accessNum: Int64?

    public var accessNumMonthly: Int64?

    public var accessNumWeekly: Int64?

    public var archiveStatus: String?

    public var createTime: String?

    public var dataSourceType: String?

    public var databaseName: String?

    public var fileCnt: Int64?

    public var fileSize: Int64?

    public var lastAccessNumTime: String?

    public var lastAccessTime: String?

    public var lastModifyTime: String?

    public var location: String?

    public var objectAccessNum: Int64?

    public var objectAccessNumMonthly: Int64?

    public var objectAccessNumWeekly: Int64?

    public var objectCnt: Int64?

    public var objectSize: Int64?

    public var partitionName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessNum != nil {
            map["AccessNum"] = self.accessNum!
        }
        if self.accessNumMonthly != nil {
            map["AccessNumMonthly"] = self.accessNumMonthly!
        }
        if self.accessNumWeekly != nil {
            map["AccessNumWeekly"] = self.accessNumWeekly!
        }
        if self.archiveStatus != nil {
            map["ArchiveStatus"] = self.archiveStatus!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.fileCnt != nil {
            map["FileCnt"] = self.fileCnt!
        }
        if self.fileSize != nil {
            map["FileSize"] = self.fileSize!
        }
        if self.lastAccessNumTime != nil {
            map["LastAccessNumTime"] = self.lastAccessNumTime!
        }
        if self.lastAccessTime != nil {
            map["LastAccessTime"] = self.lastAccessTime!
        }
        if self.lastModifyTime != nil {
            map["LastModifyTime"] = self.lastModifyTime!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.objectAccessNum != nil {
            map["ObjectAccessNum"] = self.objectAccessNum!
        }
        if self.objectAccessNumMonthly != nil {
            map["ObjectAccessNumMonthly"] = self.objectAccessNumMonthly!
        }
        if self.objectAccessNumWeekly != nil {
            map["ObjectAccessNumWeekly"] = self.objectAccessNumWeekly!
        }
        if self.objectCnt != nil {
            map["ObjectCnt"] = self.objectCnt!
        }
        if self.objectSize != nil {
            map["ObjectSize"] = self.objectSize!
        }
        if self.partitionName != nil {
            map["PartitionName"] = self.partitionName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessNum"] as? Int64 {
            self.accessNum = value
        }
        if let value = dict["AccessNumMonthly"] as? Int64 {
            self.accessNumMonthly = value
        }
        if let value = dict["AccessNumWeekly"] as? Int64 {
            self.accessNumWeekly = value
        }
        if let value = dict["ArchiveStatus"] as? String {
            self.archiveStatus = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["FileCnt"] as? Int64 {
            self.fileCnt = value
        }
        if let value = dict["FileSize"] as? Int64 {
            self.fileSize = value
        }
        if let value = dict["LastAccessNumTime"] as? String {
            self.lastAccessNumTime = value
        }
        if let value = dict["LastAccessTime"] as? String {
            self.lastAccessTime = value
        }
        if let value = dict["LastModifyTime"] as? String {
            self.lastModifyTime = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["ObjectAccessNum"] as? Int64 {
            self.objectAccessNum = value
        }
        if let value = dict["ObjectAccessNumMonthly"] as? Int64 {
            self.objectAccessNumMonthly = value
        }
        if let value = dict["ObjectAccessNumWeekly"] as? Int64 {
            self.objectAccessNumWeekly = value
        }
        if let value = dict["ObjectCnt"] as? Int64 {
            self.objectCnt = value
        }
        if let value = dict["ObjectSize"] as? Int64 {
            self.objectSize = value
        }
        if let value = dict["PartitionName"] as? String {
            self.partitionName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class PartitionSpec : Tea.TeaModel {
    public class SharedStorageDescriptor : Tea.TeaModel {
        public var cols: [FieldSchema]?

        public var location: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cols != nil {
                var tmp : [Any] = []
                for k in self.cols! {
                    tmp.append(k.toMap())
                }
                map["Cols"] = tmp
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cols"] as? [Any?] {
                var tmp : [FieldSchema] = []
                for v in value {
                    if v != nil {
                        var model = FieldSchema()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cols = tmp
            }
            if let value = dict["Location"] as? String {
                self.location = value
            }
        }
    }
    public var sharedSDPartitions: [Partition]?

    public var sharedStorageDescriptor: PartitionSpec.SharedStorageDescriptor?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sharedStorageDescriptor?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sharedSDPartitions != nil {
            var tmp : [Any] = []
            for k in self.sharedSDPartitions! {
                tmp.append(k.toMap())
            }
            map["SharedSDPartitions"] = tmp
        }
        if self.sharedStorageDescriptor != nil {
            map["SharedStorageDescriptor"] = self.sharedStorageDescriptor?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SharedSDPartitions"] as? [Any?] {
            var tmp : [Partition] = []
            for v in value {
                if v != nil {
                    var model = Partition()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sharedSDPartitions = tmp
        }
        if let value = dict["SharedStorageDescriptor"] as? [String: Any?] {
            var model = PartitionSpec.SharedStorageDescriptor()
            model.fromMap(value)
            self.sharedStorageDescriptor = model
        }
    }
}

public class Principal : Tea.TeaModel {
    public var principalArn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.principalArn != nil {
            map["PrincipalArn"] = self.principalArn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PrincipalArn"] as? String {
            self.principalArn = value
        }
    }
}

public class PrincipalPrivilegeSet : Tea.TeaModel {
    public var groupPrivileges: [String: [PrivilegeGrantInfo]]?

    public var rolePrivileges: [String: [PrivilegeGrantInfo]]?

    public var userPrivileges: [String: [PrivilegeGrantInfo]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupPrivileges != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.groupPrivileges! {
                var l1 : [Any] = []
                for k1 in v {
                    l1.append(k1.toMap())
                }
                tmp[k] = l1
            }
            map["GroupPrivileges"] = tmp
        }
        if self.rolePrivileges != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.rolePrivileges! {
                var l1 : [Any] = []
                for k1 in v {
                    l1.append(k1.toMap())
                }
                tmp[k] = l1
            }
            map["RolePrivileges"] = tmp
        }
        if self.userPrivileges != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.userPrivileges! {
                var l1 : [Any] = []
                for k1 in v {
                    l1.append(k1.toMap())
                }
                tmp[k] = l1
            }
            map["UserPrivileges"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupPrivileges"] as? [String: Any?] {
            var tmp : [String: [PrivilegeGrantInfo]] = [:]
            for (k, v) in value {
                var l1 : [PrivilegeGrantInfo] = []
                for v1 in v as! [Any?] {
                    if v1 != nil {
                        var model = PrivilegeGrantInfo()
                        if v1 != nil {
                            model.fromMap(v1 as? [String: Any?])
                        }
                        l1.append(model)
                    }
                }
                tmp[k] = l1
            }
            self.groupPrivileges = tmp
        }
        if let value = dict["RolePrivileges"] as? [String: Any?] {
            var tmp : [String: [PrivilegeGrantInfo]] = [:]
            for (k, v) in value {
                var l1 : [PrivilegeGrantInfo] = []
                for v1 in v as! [Any?] {
                    if v1 != nil {
                        var model = PrivilegeGrantInfo()
                        if v1 != nil {
                            model.fromMap(v1 as? [String: Any?])
                        }
                        l1.append(model)
                    }
                }
                tmp[k] = l1
            }
            self.rolePrivileges = tmp
        }
        if let value = dict["UserPrivileges"] as? [String: Any?] {
            var tmp : [String: [PrivilegeGrantInfo]] = [:]
            for (k, v) in value {
                var l1 : [PrivilegeGrantInfo] = []
                for v1 in v as! [Any?] {
                    if v1 != nil {
                        var model = PrivilegeGrantInfo()
                        if v1 != nil {
                            model.fromMap(v1 as? [String: Any?])
                        }
                        l1.append(model)
                    }
                }
                tmp[k] = l1
            }
            self.userPrivileges = tmp
        }
    }
}

public class PrincipalResourcePermissions : Tea.TeaModel {
    public var accesses: [String]?

    public var delegateAccesses: [String]?

    public var metaResource: MetaResource?

    public var principal: Principal?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metaResource?.validate()
        try self.principal?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accesses != nil {
            map["Accesses"] = self.accesses!
        }
        if self.delegateAccesses != nil {
            map["DelegateAccesses"] = self.delegateAccesses!
        }
        if self.metaResource != nil {
            map["MetaResource"] = self.metaResource?.toMap()
        }
        if self.principal != nil {
            map["Principal"] = self.principal?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accesses"] as? [String] {
            self.accesses = value
        }
        if let value = dict["DelegateAccesses"] as? [String] {
            self.delegateAccesses = value
        }
        if let value = dict["MetaResource"] as? [String: Any?] {
            var model = MetaResource()
            model.fromMap(value)
            self.metaResource = model
        }
        if let value = dict["Principal"] as? [String: Any?] {
            var model = Principal()
            model.fromMap(value)
            self.principal = model
        }
    }
}

public class PrivilegeGrantInfo : Tea.TeaModel {
    public var createTime: Int32?

    public var grantOption: Bool?

    public var grantor: String?

    public var grantorType: String?

    public var privilege: String?

    public override init() {
        super.init()
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
        if self.grantOption != nil {
            map["GrantOption"] = self.grantOption!
        }
        if self.grantor != nil {
            map["Grantor"] = self.grantor!
        }
        if self.grantorType != nil {
            map["GrantorType"] = self.grantorType!
        }
        if self.privilege != nil {
            map["Privilege"] = self.privilege!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["GrantOption"] as? Bool {
            self.grantOption = value
        }
        if let value = dict["Grantor"] as? String {
            self.grantor = value
        }
        if let value = dict["GrantorType"] as? String {
            self.grantorType = value
        }
        if let value = dict["Privilege"] as? String {
            self.privilege = value
        }
    }
}

public class PrivilegeResource : Tea.TeaModel {
    public var access: String?

    public var metaResource: MetaResource?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metaResource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.access != nil {
            map["Access"] = self.access!
        }
        if self.metaResource != nil {
            map["MetaResource"] = self.metaResource?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Access"] as? String {
            self.access = value
        }
        if let value = dict["MetaResource"] as? [String: Any?] {
            var model = MetaResource()
            model.fromMap(value)
            self.metaResource = model
        }
    }
}

public class ResourceUri : Tea.TeaModel {
    public var resourceType: String?

    public var uri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
    }
}

public class Role : Tea.TeaModel {
    public var createTime: Int64?

    public var description_: String?

    public var displayName: String?

    public var isPredefined: Int32?

    public var name: String?

    public var principalArn: String?

    public var updateTime: Int64?

    public var users: [Principal]?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.isPredefined != nil {
            map["IsPredefined"] = self.isPredefined!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.principalArn != nil {
            map["PrincipalArn"] = self.principalArn!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["IsPredefined"] as? Int32 {
            self.isPredefined = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PrincipalArn"] as? String {
            self.principalArn = value
        }
        if let value = dict["UpdateTime"] as? Int64 {
            self.updateTime = value
        }
        if let value = dict["Users"] as? [Any?] {
            var tmp : [Principal] = []
            for v in value {
                if v != nil {
                    var model = Principal()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.users = tmp
        }
    }
}

public class RoleInput : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
    }
}

public class SerDeInfo : Tea.TeaModel {
    public var name: String?

    public var parameters: [String: String]?

    public var serializationLib: String?

    public override init() {
        super.init()
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
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.serializationLib != nil {
            map["SerializationLib"] = self.serializationLib!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Parameters"] as? [String: String] {
            self.parameters = value
        }
        if let value = dict["SerializationLib"] as? String {
            self.serializationLib = value
        }
    }
}

public class SingleIndicatorDTO : Tea.TeaModel {
    public var dayIncrement: Int64?

    public var dayOnDay: Double?

    public var monthIncrement: Int64?

    public var monthOnMonth: Double?

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
        if self.dayIncrement != nil {
            map["DayIncrement"] = self.dayIncrement!
        }
        if self.dayOnDay != nil {
            map["DayOnDay"] = self.dayOnDay!
        }
        if self.monthIncrement != nil {
            map["MonthIncrement"] = self.monthIncrement!
        }
        if self.monthOnMonth != nil {
            map["MonthOnMonth"] = self.monthOnMonth!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DayIncrement"] as? Int64 {
            self.dayIncrement = value
        }
        if let value = dict["DayOnDay"] as? Double {
            self.dayOnDay = value
        }
        if let value = dict["MonthIncrement"] as? Int64 {
            self.monthIncrement = value
        }
        if let value = dict["MonthOnMonth"] as? Double {
            self.monthOnMonth = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
        }
    }
}

public class SkewedInfo : Tea.TeaModel {
    public var skewedColNames: [String]?

    public var skewedColValueLocationMaps: [String: String]?

    public var skewedColValues: [[String]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.skewedColNames != nil {
            map["SkewedColNames"] = self.skewedColNames!
        }
        if self.skewedColValueLocationMaps != nil {
            map["SkewedColValueLocationMaps"] = self.skewedColValueLocationMaps!
        }
        if self.skewedColValues != nil {
            map["SkewedColValues"] = self.skewedColValues!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SkewedColNames"] as? [String] {
            self.skewedColNames = value
        }
        if let value = dict["SkewedColValueLocationMaps"] as? [String: String] {
            self.skewedColValueLocationMaps = value
        }
        if let value = dict["SkewedColValues"] as? [[String]] {
            self.skewedColValues = value
        }
    }
}

public class SmallFileCntRank : Tea.TeaModel {
    public var dbName: String?

    public var location: String?

    public var quantity: Int64?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.quantity != nil {
            map["Quantity"] = self.quantity!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["Quantity"] as? Int64 {
            self.quantity = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class SortCriterion : Tea.TeaModel {
    public var fieldName: String?

    public var sort: String?

    public override init() {
        super.init()
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
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FieldName"] as? String {
            self.fieldName = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
    }
}

public class StorageCollectTaskOperationResult : Tea.TeaModel {
    public var dlfCreated: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var success: Bool?

    public var taskId: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dlfCreated != nil {
            map["DlfCreated"] = self.dlfCreated!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DlfCreated"] as? Bool {
            self.dlfCreated = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class StorageDescriptor : Tea.TeaModel {
    public var bucketCols: [String]?

    public var cols: [FieldSchema]?

    public var compressed: Bool?

    public var inputFormat: String?

    public var location: String?

    public var numBuckets: Int32?

    public var outputFormat: String?

    public var parameters: [String: String]?

    public var serDeInfo: SerDeInfo?

    public var skewedInfo: SkewedInfo?

    public var sortCols: [Order]?

    public var storedAsSubDirectories: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serDeInfo?.validate()
        try self.skewedInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucketCols != nil {
            map["BucketCols"] = self.bucketCols!
        }
        if self.cols != nil {
            var tmp : [Any] = []
            for k in self.cols! {
                tmp.append(k.toMap())
            }
            map["Cols"] = tmp
        }
        if self.compressed != nil {
            map["Compressed"] = self.compressed!
        }
        if self.inputFormat != nil {
            map["InputFormat"] = self.inputFormat!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.numBuckets != nil {
            map["NumBuckets"] = self.numBuckets!
        }
        if self.outputFormat != nil {
            map["OutputFormat"] = self.outputFormat!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.serDeInfo != nil {
            map["SerDeInfo"] = self.serDeInfo?.toMap()
        }
        if self.skewedInfo != nil {
            map["SkewedInfo"] = self.skewedInfo?.toMap()
        }
        if self.sortCols != nil {
            var tmp : [Any] = []
            for k in self.sortCols! {
                tmp.append(k.toMap())
            }
            map["SortCols"] = tmp
        }
        if self.storedAsSubDirectories != nil {
            map["StoredAsSubDirectories"] = self.storedAsSubDirectories!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketCols"] as? [String] {
            self.bucketCols = value
        }
        if let value = dict["Cols"] as? [Any?] {
            var tmp : [FieldSchema] = []
            for v in value {
                if v != nil {
                    var model = FieldSchema()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cols = tmp
        }
        if let value = dict["Compressed"] as? Bool {
            self.compressed = value
        }
        if let value = dict["InputFormat"] as? String {
            self.inputFormat = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["NumBuckets"] as? Int32 {
            self.numBuckets = value
        }
        if let value = dict["OutputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["Parameters"] as? [String: String] {
            self.parameters = value
        }
        if let value = dict["SerDeInfo"] as? [String: Any?] {
            var model = SerDeInfo()
            model.fromMap(value)
            self.serDeInfo = model
        }
        if let value = dict["SkewedInfo"] as? [String: Any?] {
            var model = SkewedInfo()
            model.fromMap(value)
            self.skewedInfo = model
        }
        if let value = dict["SortCols"] as? [Any?] {
            var tmp : [Order] = []
            for v in value {
                if v != nil {
                    var model = Order()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sortCols = tmp
        }
        if let value = dict["StoredAsSubDirectories"] as? Bool {
            self.storedAsSubDirectories = value
        }
    }
}

public class StorageFormat : Tea.TeaModel {
    public var avro: Int64?

    public var csv: Int64?

    public var delta: Int64?

    public var hudi: Int64?

    public var iceberg: Int64?

    public var json: Int64?

    public var orc: Int64?

    public var parquet: Int64?

    public var uncategorized: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.avro != nil {
            map["Avro"] = self.avro!
        }
        if self.csv != nil {
            map["Csv"] = self.csv!
        }
        if self.delta != nil {
            map["Delta"] = self.delta!
        }
        if self.hudi != nil {
            map["Hudi"] = self.hudi!
        }
        if self.iceberg != nil {
            map["Iceberg"] = self.iceberg!
        }
        if self.json != nil {
            map["Json"] = self.json!
        }
        if self.orc != nil {
            map["Orc"] = self.orc!
        }
        if self.parquet != nil {
            map["Parquet"] = self.parquet!
        }
        if self.uncategorized != nil {
            map["Uncategorized"] = self.uncategorized!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Avro"] as? Int64 {
            self.avro = value
        }
        if let value = dict["Csv"] as? Int64 {
            self.csv = value
        }
        if let value = dict["Delta"] as? Int64 {
            self.delta = value
        }
        if let value = dict["Hudi"] as? Int64 {
            self.hudi = value
        }
        if let value = dict["Iceberg"] as? Int64 {
            self.iceberg = value
        }
        if let value = dict["Json"] as? Int64 {
            self.json = value
        }
        if let value = dict["Orc"] as? Int64 {
            self.orc = value
        }
        if let value = dict["Parquet"] as? Int64 {
            self.parquet = value
        }
        if let value = dict["Uncategorized"] as? Int64 {
            self.uncategorized = value
        }
    }
}

public class StorageLayer : Tea.TeaModel {
    public var archive: Int64?

    public var coldArchive: Int64?

    public var infrequent: Int64?

    public var standard: Int64?

    public var unknown: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.archive != nil {
            map["Archive"] = self.archive!
        }
        if self.coldArchive != nil {
            map["ColdArchive"] = self.coldArchive!
        }
        if self.infrequent != nil {
            map["Infrequent"] = self.infrequent!
        }
        if self.standard != nil {
            map["Standard"] = self.standard!
        }
        if self.unknown != nil {
            map["Unknown"] = self.unknown!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Archive"] as? Int64 {
            self.archive = value
        }
        if let value = dict["ColdArchive"] as? Int64 {
            self.coldArchive = value
        }
        if let value = dict["Infrequent"] as? Int64 {
            self.infrequent = value
        }
        if let value = dict["Standard"] as? Int64 {
            self.standard = value
        }
        if let value = dict["Unknown"] as? Int64 {
            self.unknown = value
        }
    }
}

public class StorageRankDTO : Tea.TeaModel {
    public var dbStorageRank: [DbStorageRank]?

    public var smallFileCntRank: [SmallFileCntRank]?

    public var tableStorageRank: [TableStorageRank]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbStorageRank != nil {
            var tmp : [Any] = []
            for k in self.dbStorageRank! {
                tmp.append(k.toMap())
            }
            map["dbStorageRank"] = tmp
        }
        if self.smallFileCntRank != nil {
            var tmp : [Any] = []
            for k in self.smallFileCntRank! {
                tmp.append(k.toMap())
            }
            map["smallFileCntRank"] = tmp
        }
        if self.tableStorageRank != nil {
            var tmp : [Any] = []
            for k in self.tableStorageRank! {
                tmp.append(k.toMap())
            }
            map["tableStorageRank"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dbStorageRank"] as? [Any?] {
            var tmp : [DbStorageRank] = []
            for v in value {
                if v != nil {
                    var model = DbStorageRank()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dbStorageRank = tmp
        }
        if let value = dict["smallFileCntRank"] as? [Any?] {
            var tmp : [SmallFileCntRank] = []
            for v in value {
                if v != nil {
                    var model = SmallFileCntRank()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.smallFileCntRank = tmp
        }
        if let value = dict["tableStorageRank"] as? [Any?] {
            var tmp : [TableStorageRank] = []
            for v in value {
                if v != nil {
                    var model = TableStorageRank()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tableStorageRank = tmp
        }
    }
}

public class StorageSummary : Tea.TeaModel {
    public var databaseNum: Int32?

    public var partitionNum: Int32?

    public var tableNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseNum != nil {
            map["DatabaseNum"] = self.databaseNum!
        }
        if self.partitionNum != nil {
            map["PartitionNum"] = self.partitionNum!
        }
        if self.tableNum != nil {
            map["TableNum"] = self.tableNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseNum"] as? Int32 {
            self.databaseNum = value
        }
        if let value = dict["PartitionNum"] as? Int32 {
            self.partitionNum = value
        }
        if let value = dict["TableNum"] as? Int32 {
            self.tableNum = value
        }
    }
}

public class StrogeCollectTask : Tea.TeaModel {
    public var destinationBucketName: String?

    public var destinationPrefix: String?

    public var dlfCreated: Bool?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var id: String?

    public var inventoryId: String?

    public var location: String?

    public var status: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationBucketName != nil {
            map["DestinationBucketName"] = self.destinationBucketName!
        }
        if self.destinationPrefix != nil {
            map["DestinationPrefix"] = self.destinationPrefix!
        }
        if self.dlfCreated != nil {
            map["DlfCreated"] = self.dlfCreated!
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
        if self.inventoryId != nil {
            map["InventoryId"] = self.inventoryId!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DestinationBucketName"] as? String {
            self.destinationBucketName = value
        }
        if let value = dict["DestinationPrefix"] as? String {
            self.destinationPrefix = value
        }
        if let value = dict["DlfCreated"] as? Bool {
            self.dlfCreated = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["InventoryId"] as? String {
            self.inventoryId = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class Table : Tea.TeaModel {
    public var cascade: Bool?

    public var createTime: Int32?

    public var createdBy: String?

    public var databaseName: String?

    public var lastAccessTime: Int32?

    public var lastAnalyzedTime: Int32?

    public var owner: String?

    public var ownerType: String?

    public var parameters: [String: String]?

    public var partitionKeys: [FieldSchema]?

    public var privileges: PrincipalPrivilegeSet?

    public var retention: Int32?

    public var rewriteEnabled: Bool?

    public var sd: StorageDescriptor?

    public var tableId: String?

    public var tableName: String?

    public var tableType: String?

    public var tableVersion: TableVersion?

    public var temporary: Bool?

    public var updateTime: Int32?

    public var viewExpandedText: String?

    public var viewOriginalText: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.privileges?.validate()
        try self.sd?.validate()
        try self.tableVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cascade != nil {
            map["Cascade"] = self.cascade!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.lastAccessTime != nil {
            map["LastAccessTime"] = self.lastAccessTime!
        }
        if self.lastAnalyzedTime != nil {
            map["LastAnalyzedTime"] = self.lastAnalyzedTime!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.ownerType != nil {
            map["OwnerType"] = self.ownerType!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.partitionKeys != nil {
            var tmp : [Any] = []
            for k in self.partitionKeys! {
                tmp.append(k.toMap())
            }
            map["PartitionKeys"] = tmp
        }
        if self.privileges != nil {
            map["Privileges"] = self.privileges?.toMap()
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        if self.rewriteEnabled != nil {
            map["RewriteEnabled"] = self.rewriteEnabled!
        }
        if self.sd != nil {
            map["Sd"] = self.sd?.toMap()
        }
        if self.tableId != nil {
            map["TableId"] = self.tableId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        if self.tableVersion != nil {
            map["TableVersion"] = self.tableVersion?.toMap()
        }
        if self.temporary != nil {
            map["Temporary"] = self.temporary!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.viewExpandedText != nil {
            map["ViewExpandedText"] = self.viewExpandedText!
        }
        if self.viewOriginalText != nil {
            map["ViewOriginalText"] = self.viewOriginalText!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cascade"] as? Bool {
            self.cascade = value
        }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["CreatedBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["LastAccessTime"] as? Int32 {
            self.lastAccessTime = value
        }
        if let value = dict["LastAnalyzedTime"] as? Int32 {
            self.lastAnalyzedTime = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["OwnerType"] as? String {
            self.ownerType = value
        }
        if let value = dict["Parameters"] as? [String: String] {
            self.parameters = value
        }
        if let value = dict["PartitionKeys"] as? [Any?] {
            var tmp : [FieldSchema] = []
            for v in value {
                if v != nil {
                    var model = FieldSchema()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionKeys = tmp
        }
        if let value = dict["Privileges"] as? [String: Any?] {
            var model = PrincipalPrivilegeSet()
            model.fromMap(value)
            self.privileges = model
        }
        if let value = dict["Retention"] as? Int32 {
            self.retention = value
        }
        if let value = dict["RewriteEnabled"] as? Bool {
            self.rewriteEnabled = value
        }
        if let value = dict["Sd"] as? [String: Any?] {
            var model = StorageDescriptor()
            model.fromMap(value)
            self.sd = model
        }
        if let value = dict["TableId"] as? String {
            self.tableId = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["TableType"] as? String {
            self.tableType = value
        }
        if let value = dict["TableVersion"] as? [String: Any?] {
            var model = TableVersion()
            model.fromMap(value)
            self.tableVersion = model
        }
        if let value = dict["Temporary"] as? Bool {
            self.temporary = value
        }
        if let value = dict["UpdateTime"] as? Int32 {
            self.updateTime = value
        }
        if let value = dict["ViewExpandedText"] as? String {
            self.viewExpandedText = value
        }
        if let value = dict["ViewOriginalText"] as? String {
            self.viewOriginalText = value
        }
    }
}

public class TableError : Tea.TeaModel {
    public var errorDetail: ErrorDetail?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.errorDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorDetail != nil {
            map["ErrorDetail"] = self.errorDetail?.toMap()
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorDetail"] as? [String: Any?] {
            var model = ErrorDetail()
            model.fromMap(value)
            self.errorDetail = model
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class TableExtended : Tea.TeaModel {
    public class Privileges : Tea.TeaModel {
        public var rolePrivileges: [String: [TableExtendedPrivilegesRolePrivilegesValue]]?

        public var userPrivileges: [String: [TableExtendedPrivilegesUserPrivilegesValue]]?

        public var groupPrivileges: [String: [TableExtendedPrivilegesGroupPrivilegesValue]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.rolePrivileges != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.rolePrivileges! {
                    var l1 : [Any] = []
                    for k1 in v {
                        l1.append(k1.toMap())
                    }
                    tmp[k] = l1
                }
                map["RolePrivileges"] = tmp
            }
            if self.userPrivileges != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.userPrivileges! {
                    var l1 : [Any] = []
                    for k1 in v {
                        l1.append(k1.toMap())
                    }
                    tmp[k] = l1
                }
                map["UserPrivileges"] = tmp
            }
            if self.groupPrivileges != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.groupPrivileges! {
                    var l1 : [Any] = []
                    for k1 in v {
                        l1.append(k1.toMap())
                    }
                    tmp[k] = l1
                }
                map["groupPrivileges"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RolePrivileges"] as? [String: Any?] {
                var tmp : [String: [TableExtendedPrivilegesRolePrivilegesValue]] = [:]
                for (k, v) in value {
                    var l1 : [TableExtendedPrivilegesRolePrivilegesValue] = []
                    for v1 in v as! [Any?] {
                        if v1 != nil {
                            var model = TableExtendedPrivilegesRolePrivilegesValue()
                            if v1 != nil {
                                model.fromMap(v1 as? [String: Any?])
                            }
                            l1.append(model)
                        }
                    }
                    tmp[k] = l1
                }
                self.rolePrivileges = tmp
            }
            if let value = dict["UserPrivileges"] as? [String: Any?] {
                var tmp : [String: [TableExtendedPrivilegesUserPrivilegesValue]] = [:]
                for (k, v) in value {
                    var l1 : [TableExtendedPrivilegesUserPrivilegesValue] = []
                    for v1 in v as! [Any?] {
                        if v1 != nil {
                            var model = TableExtendedPrivilegesUserPrivilegesValue()
                            if v1 != nil {
                                model.fromMap(v1 as? [String: Any?])
                            }
                            l1.append(model)
                        }
                    }
                    tmp[k] = l1
                }
                self.userPrivileges = tmp
            }
            if let value = dict["groupPrivileges"] as? [String: Any?] {
                var tmp : [String: [TableExtendedPrivilegesGroupPrivilegesValue]] = [:]
                for (k, v) in value {
                    var l1 : [TableExtendedPrivilegesGroupPrivilegesValue] = []
                    for v1 in v as! [Any?] {
                        if v1 != nil {
                            var model = TableExtendedPrivilegesGroupPrivilegesValue()
                            if v1 != nil {
                                model.fromMap(v1 as? [String: Any?])
                            }
                            l1.append(model)
                        }
                    }
                    tmp[k] = l1
                }
                self.groupPrivileges = tmp
            }
        }
    }
    public class Sd : Tea.TeaModel {
        public class SerDeInfo : Tea.TeaModel {
            public var name: String?

            public var parameters: [String: String]?

            public var serializationLib: String?

            public override init() {
                super.init()
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
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.serializationLib != nil {
                    map["SerializationLib"] = self.serializationLib!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Parameters"] as? [String: String] {
                    self.parameters = value
                }
                if let value = dict["SerializationLib"] as? String {
                    self.serializationLib = value
                }
            }
        }
        public class SkewedInfo : Tea.TeaModel {
            public var skewedColNames: [String]?

            public var skewedColValueLocationMaps: [String: String]?

            public var skewedColValues: [[String]]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.skewedColNames != nil {
                    map["SkewedColNames"] = self.skewedColNames!
                }
                if self.skewedColValueLocationMaps != nil {
                    map["SkewedColValueLocationMaps"] = self.skewedColValueLocationMaps!
                }
                if self.skewedColValues != nil {
                    map["SkewedColValues"] = self.skewedColValues!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SkewedColNames"] as? [String] {
                    self.skewedColNames = value
                }
                if let value = dict["SkewedColValueLocationMaps"] as? [String: String] {
                    self.skewedColValueLocationMaps = value
                }
                if let value = dict["SkewedColValues"] as? [[String]] {
                    self.skewedColValues = value
                }
            }
        }
        public var bucketCols: [String]?

        public var cols: [FieldSchema]?

        public var compressed: Bool?

        public var inputFormat: String?

        public var location: String?

        public var numBuckets: Int32?

        public var outputFormat: String?

        public var parameters: [String: String]?

        public var serDeInfo: TableExtended.Sd.SerDeInfo?

        public var skewedInfo: TableExtended.Sd.SkewedInfo?

        public var sortCols: [Order]?

        public var storedAsSubDirectories: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.serDeInfo?.validate()
            try self.skewedInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucketCols != nil {
                map["BucketCols"] = self.bucketCols!
            }
            if self.cols != nil {
                var tmp : [Any] = []
                for k in self.cols! {
                    tmp.append(k.toMap())
                }
                map["Cols"] = tmp
            }
            if self.compressed != nil {
                map["Compressed"] = self.compressed!
            }
            if self.inputFormat != nil {
                map["InputFormat"] = self.inputFormat!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.numBuckets != nil {
                map["NumBuckets"] = self.numBuckets!
            }
            if self.outputFormat != nil {
                map["OutputFormat"] = self.outputFormat!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.serDeInfo != nil {
                map["SerDeInfo"] = self.serDeInfo?.toMap()
            }
            if self.skewedInfo != nil {
                map["SkewedInfo"] = self.skewedInfo?.toMap()
            }
            if self.sortCols != nil {
                var tmp : [Any] = []
                for k in self.sortCols! {
                    tmp.append(k.toMap())
                }
                map["SortCols"] = tmp
            }
            if self.storedAsSubDirectories != nil {
                map["StoredAsSubDirectories"] = self.storedAsSubDirectories!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BucketCols"] as? [String] {
                self.bucketCols = value
            }
            if let value = dict["Cols"] as? [Any?] {
                var tmp : [FieldSchema] = []
                for v in value {
                    if v != nil {
                        var model = FieldSchema()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cols = tmp
            }
            if let value = dict["Compressed"] as? Bool {
                self.compressed = value
            }
            if let value = dict["InputFormat"] as? String {
                self.inputFormat = value
            }
            if let value = dict["Location"] as? String {
                self.location = value
            }
            if let value = dict["NumBuckets"] as? Int32 {
                self.numBuckets = value
            }
            if let value = dict["OutputFormat"] as? String {
                self.outputFormat = value
            }
            if let value = dict["Parameters"] as? [String: String] {
                self.parameters = value
            }
            if let value = dict["SerDeInfo"] as? [String: Any?] {
                var model = TableExtended.Sd.SerDeInfo()
                model.fromMap(value)
                self.serDeInfo = model
            }
            if let value = dict["SkewedInfo"] as? [String: Any?] {
                var model = TableExtended.Sd.SkewedInfo()
                model.fromMap(value)
                self.skewedInfo = model
            }
            if let value = dict["SortCols"] as? [Any?] {
                var tmp : [Order] = []
                for v in value {
                    if v != nil {
                        var model = Order()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sortCols = tmp
            }
            if let value = dict["StoredAsSubDirectories"] as? Bool {
                self.storedAsSubDirectories = value
            }
        }
    }
    public var cascade: Bool?

    public var createTime: Int32?

    public var createdBy: String?

    public var databaseName: String?

    public var lastAccessTime: Int32?

    public var lastAnalyzedTime: Int32?

    public var owner: String?

    public var ownerType: String?

    public var parameters: [String: String]?

    public var partitionKeys: [FieldSchema]?

    public var privileges: TableExtended.Privileges?

    public var retention: Int32?

    public var rewriteEnabled: Bool?

    public var sd: TableExtended.Sd?

    public var tableFormat: String?

    public var tableName: String?

    public var tableType: String?

    public var temporary: Bool?

    public var updateTime: Int32?

    public var viewExpandedText: String?

    public var viewOriginalText: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.privileges?.validate()
        try self.sd?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cascade != nil {
            map["Cascade"] = self.cascade!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.lastAccessTime != nil {
            map["LastAccessTime"] = self.lastAccessTime!
        }
        if self.lastAnalyzedTime != nil {
            map["LastAnalyzedTime"] = self.lastAnalyzedTime!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.ownerType != nil {
            map["OwnerType"] = self.ownerType!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.partitionKeys != nil {
            var tmp : [Any] = []
            for k in self.partitionKeys! {
                tmp.append(k.toMap())
            }
            map["PartitionKeys"] = tmp
        }
        if self.privileges != nil {
            map["Privileges"] = self.privileges?.toMap()
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        if self.rewriteEnabled != nil {
            map["RewriteEnabled"] = self.rewriteEnabled!
        }
        if self.sd != nil {
            map["Sd"] = self.sd?.toMap()
        }
        if self.tableFormat != nil {
            map["TableFormat"] = self.tableFormat!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        if self.temporary != nil {
            map["Temporary"] = self.temporary!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.viewExpandedText != nil {
            map["ViewExpandedText"] = self.viewExpandedText!
        }
        if self.viewOriginalText != nil {
            map["ViewOriginalText"] = self.viewOriginalText!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cascade"] as? Bool {
            self.cascade = value
        }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["CreatedBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["LastAccessTime"] as? Int32 {
            self.lastAccessTime = value
        }
        if let value = dict["LastAnalyzedTime"] as? Int32 {
            self.lastAnalyzedTime = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["OwnerType"] as? String {
            self.ownerType = value
        }
        if let value = dict["Parameters"] as? [String: String] {
            self.parameters = value
        }
        if let value = dict["PartitionKeys"] as? [Any?] {
            var tmp : [FieldSchema] = []
            for v in value {
                if v != nil {
                    var model = FieldSchema()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionKeys = tmp
        }
        if let value = dict["Privileges"] as? [String: Any?] {
            var model = TableExtended.Privileges()
            model.fromMap(value)
            self.privileges = model
        }
        if let value = dict["Retention"] as? Int32 {
            self.retention = value
        }
        if let value = dict["RewriteEnabled"] as? Bool {
            self.rewriteEnabled = value
        }
        if let value = dict["Sd"] as? [String: Any?] {
            var model = TableExtended.Sd()
            model.fromMap(value)
            self.sd = model
        }
        if let value = dict["TableFormat"] as? String {
            self.tableFormat = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["TableType"] as? String {
            self.tableType = value
        }
        if let value = dict["Temporary"] as? Bool {
            self.temporary = value
        }
        if let value = dict["UpdateTime"] as? Int32 {
            self.updateTime = value
        }
        if let value = dict["ViewExpandedText"] as? String {
            self.viewExpandedText = value
        }
        if let value = dict["ViewOriginalText"] as? String {
            self.viewOriginalText = value
        }
    }
}

public class TableInput : Tea.TeaModel {
    public var cascade: Bool?

    public var createTime: Int32?

    public var createdBy: String?

    public var databaseName: String?

    public var lastAccessTime: Int32?

    public var lastAnalyzedTime: Int32?

    public var owner: String?

    public var ownerType: String?

    public var parameters: [String: String]?

    public var partitionKeys: [FieldSchema]?

    public var privileges: PrincipalPrivilegeSet?

    public var retention: Int32?

    public var rewriteEnabled: Bool?

    public var sd: StorageDescriptor?

    public var tableName: String?

    public var tableType: String?

    public var temporary: Bool?

    public var viewExpandedText: String?

    public var viewOriginalText: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.privileges?.validate()
        try self.sd?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cascade != nil {
            map["Cascade"] = self.cascade!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createdBy != nil {
            map["CreatedBy"] = self.createdBy!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.lastAccessTime != nil {
            map["LastAccessTime"] = self.lastAccessTime!
        }
        if self.lastAnalyzedTime != nil {
            map["LastAnalyzedTime"] = self.lastAnalyzedTime!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.ownerType != nil {
            map["OwnerType"] = self.ownerType!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.partitionKeys != nil {
            var tmp : [Any] = []
            for k in self.partitionKeys! {
                tmp.append(k.toMap())
            }
            map["PartitionKeys"] = tmp
        }
        if self.privileges != nil {
            map["Privileges"] = self.privileges?.toMap()
        }
        if self.retention != nil {
            map["Retention"] = self.retention!
        }
        if self.rewriteEnabled != nil {
            map["RewriteEnabled"] = self.rewriteEnabled!
        }
        if self.sd != nil {
            map["Sd"] = self.sd?.toMap()
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        if self.temporary != nil {
            map["Temporary"] = self.temporary!
        }
        if self.viewExpandedText != nil {
            map["ViewExpandedText"] = self.viewExpandedText!
        }
        if self.viewOriginalText != nil {
            map["ViewOriginalText"] = self.viewOriginalText!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cascade"] as? Bool {
            self.cascade = value
        }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["CreatedBy"] as? String {
            self.createdBy = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["LastAccessTime"] as? Int32 {
            self.lastAccessTime = value
        }
        if let value = dict["LastAnalyzedTime"] as? Int32 {
            self.lastAnalyzedTime = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["OwnerType"] as? String {
            self.ownerType = value
        }
        if let value = dict["Parameters"] as? [String: String] {
            self.parameters = value
        }
        if let value = dict["PartitionKeys"] as? [Any?] {
            var tmp : [FieldSchema] = []
            for v in value {
                if v != nil {
                    var model = FieldSchema()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionKeys = tmp
        }
        if let value = dict["Privileges"] as? [String: Any?] {
            var model = PrincipalPrivilegeSet()
            model.fromMap(value)
            self.privileges = model
        }
        if let value = dict["Retention"] as? Int32 {
            self.retention = value
        }
        if let value = dict["RewriteEnabled"] as? Bool {
            self.rewriteEnabled = value
        }
        if let value = dict["Sd"] as? [String: Any?] {
            var model = StorageDescriptor()
            model.fromMap(value)
            self.sd = model
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["TableType"] as? String {
            self.tableType = value
        }
        if let value = dict["Temporary"] as? Bool {
            self.temporary = value
        }
        if let value = dict["ViewExpandedText"] as? String {
            self.viewExpandedText = value
        }
        if let value = dict["ViewOriginalText"] as? String {
            self.viewOriginalText = value
        }
    }
}

public class TableProfile : Tea.TeaModel {
    public var accessNum: Int64?

    public var accessNumMonthly: Int64?

    public var accessNumWeekly: Int64?

    public var createTime: String?

    public var dataSourceType: String?

    public var databaseName: String?

    public var fileCnt: Int64?

    public var fileSize: Int64?

    public var isPartitioned: Bool?

    public var lastAccessNumTime: String?

    public var lastAccessTime: String?

    public var lastDdlTime: String?

    public var lastModifyTime: String?

    public var latestAccessNumDate: String?

    public var latestDate: String?

    public var location: String?

    public var objectAccessNum: Int64?

    public var objectAccessNumMonthly: Int64?

    public var objectAccessNumWeekly: Int64?

    public var objectCnt: Int64?

    public var objectSize: Int64?

    public var partitionCnt: Int64?

    public var recordCnt: Int64?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessNum != nil {
            map["AccessNum"] = self.accessNum!
        }
        if self.accessNumMonthly != nil {
            map["AccessNumMonthly"] = self.accessNumMonthly!
        }
        if self.accessNumWeekly != nil {
            map["AccessNumWeekly"] = self.accessNumWeekly!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.fileCnt != nil {
            map["FileCnt"] = self.fileCnt!
        }
        if self.fileSize != nil {
            map["FileSize"] = self.fileSize!
        }
        if self.isPartitioned != nil {
            map["IsPartitioned"] = self.isPartitioned!
        }
        if self.lastAccessNumTime != nil {
            map["LastAccessNumTime"] = self.lastAccessNumTime!
        }
        if self.lastAccessTime != nil {
            map["LastAccessTime"] = self.lastAccessTime!
        }
        if self.lastDdlTime != nil {
            map["LastDdlTime"] = self.lastDdlTime!
        }
        if self.lastModifyTime != nil {
            map["LastModifyTime"] = self.lastModifyTime!
        }
        if self.latestAccessNumDate != nil {
            map["LatestAccessNumDate"] = self.latestAccessNumDate!
        }
        if self.latestDate != nil {
            map["LatestDate"] = self.latestDate!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.objectAccessNum != nil {
            map["ObjectAccessNum"] = self.objectAccessNum!
        }
        if self.objectAccessNumMonthly != nil {
            map["ObjectAccessNumMonthly"] = self.objectAccessNumMonthly!
        }
        if self.objectAccessNumWeekly != nil {
            map["ObjectAccessNumWeekly"] = self.objectAccessNumWeekly!
        }
        if self.objectCnt != nil {
            map["ObjectCnt"] = self.objectCnt!
        }
        if self.objectSize != nil {
            map["ObjectSize"] = self.objectSize!
        }
        if self.partitionCnt != nil {
            map["PartitionCnt"] = self.partitionCnt!
        }
        if self.recordCnt != nil {
            map["RecordCnt"] = self.recordCnt!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessNum"] as? Int64 {
            self.accessNum = value
        }
        if let value = dict["AccessNumMonthly"] as? Int64 {
            self.accessNumMonthly = value
        }
        if let value = dict["AccessNumWeekly"] as? Int64 {
            self.accessNumWeekly = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["FileCnt"] as? Int64 {
            self.fileCnt = value
        }
        if let value = dict["FileSize"] as? Int64 {
            self.fileSize = value
        }
        if let value = dict["IsPartitioned"] as? Bool {
            self.isPartitioned = value
        }
        if let value = dict["LastAccessNumTime"] as? String {
            self.lastAccessNumTime = value
        }
        if let value = dict["LastAccessTime"] as? String {
            self.lastAccessTime = value
        }
        if let value = dict["LastDdlTime"] as? String {
            self.lastDdlTime = value
        }
        if let value = dict["LastModifyTime"] as? String {
            self.lastModifyTime = value
        }
        if let value = dict["LatestAccessNumDate"] as? String {
            self.latestAccessNumDate = value
        }
        if let value = dict["LatestDate"] as? String {
            self.latestDate = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["ObjectAccessNum"] as? Int64 {
            self.objectAccessNum = value
        }
        if let value = dict["ObjectAccessNumMonthly"] as? Int64 {
            self.objectAccessNumMonthly = value
        }
        if let value = dict["ObjectAccessNumWeekly"] as? Int64 {
            self.objectAccessNumWeekly = value
        }
        if let value = dict["ObjectCnt"] as? Int64 {
            self.objectCnt = value
        }
        if let value = dict["ObjectSize"] as? Int64 {
            self.objectSize = value
        }
        if let value = dict["PartitionCnt"] as? Int64 {
            self.partitionCnt = value
        }
        if let value = dict["RecordCnt"] as? Int64 {
            self.recordCnt = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class TableResource : Tea.TeaModel {
    public var databaseName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class TableStorageRank : Tea.TeaModel {
    public var dbName: String?

    public var quantity: Int64?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.quantity != nil {
            map["Quantity"] = self.quantity!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Quantity"] as? Int64 {
            self.quantity = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class TableVersion : Tea.TeaModel {
    public var table: Table?

    public var versionId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.table?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.table != nil {
            map["Table"] = self.table?.toMap()
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Table"] as? [String: Any?] {
            var model = Table()
            model.fromMap(value)
            self.table = model
        }
        if let value = dict["VersionId"] as? Int32 {
            self.versionId = value
        }
    }
}

public class TaskStatus : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class UnarchiveDetail : Tea.TeaModel {
    public var apiCallTimes: Int64?

    public var cost: Int64?

    public var storageSize: Int64?

    public var storageType: String?

    public var unarchiveTaskStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiCallTimes != nil {
            map["ApiCallTimes"] = self.apiCallTimes!
        }
        if self.cost != nil {
            map["Cost"] = self.cost!
        }
        if self.storageSize != nil {
            map["StorageSize"] = self.storageSize!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        if self.unarchiveTaskStatus != nil {
            map["UnarchiveTaskStatus"] = self.unarchiveTaskStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiCallTimes"] as? Int64 {
            self.apiCallTimes = value
        }
        if let value = dict["Cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["StorageSize"] as? Int64 {
            self.storageSize = value
        }
        if let value = dict["StorageType"] as? String {
            self.storageType = value
        }
        if let value = dict["UnarchiveTaskStatus"] as? String {
            self.unarchiveTaskStatus = value
        }
    }
}

public class UpdateTablePartitionColumnStatisticsRequest : Tea.TeaModel {
    public var catalogId: String?

    public var columnStatisticsList: [ColumnStatistics]?

    public var databaseName: String?

    public var engine: String?

    public var isStatsCompliant: Bool?

    public var tableName: String?

    public var validWriteIdList: String?

    public var writeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.columnStatisticsList != nil {
            var tmp : [Any] = []
            for k in self.columnStatisticsList! {
                tmp.append(k.toMap())
            }
            map["ColumnStatisticsList"] = tmp
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.isStatsCompliant != nil {
            map["IsStatsCompliant"] = self.isStatsCompliant!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.validWriteIdList != nil {
            map["ValidWriteIdList"] = self.validWriteIdList!
        }
        if self.writeId != nil {
            map["WriteId"] = self.writeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["ColumnStatisticsList"] as? [Any?] {
            var tmp : [ColumnStatistics] = []
            for v in value {
                if v != nil {
                    var model = ColumnStatistics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.columnStatisticsList = tmp
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["IsStatsCompliant"] as? Bool {
            self.isStatsCompliant = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["ValidWriteIdList"] as? String {
            self.validWriteIdList = value
        }
        if let value = dict["WriteId"] as? String {
            self.writeId = value
        }
    }
}

public class UserRole : Tea.TeaModel {
    public var grantTime: Int64?

    public var role: Role?

    public var user: Principal?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.role?.validate()
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.grantTime != nil {
            map["GrantTime"] = self.grantTime!
        }
        if self.role != nil {
            map["Role"] = self.role?.toMap()
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GrantTime"] as? Int64 {
            self.grantTime = value
        }
        if let value = dict["Role"] as? [String: Any?] {
            var model = Role()
            model.fromMap(value)
            self.role = model
        }
        if let value = dict["User"] as? [String: Any?] {
            var model = Principal()
            model.fromMap(value)
            self.user = model
        }
    }
}

public class Workflow : Tea.TeaModel {
    public var latestEndTime: String?

    public var latestInstanceId: String?

    public var latestInstanceStatus: String?

    public var latestStartTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.latestEndTime != nil {
            map["LatestEndTime"] = self.latestEndTime!
        }
        if self.latestInstanceId != nil {
            map["LatestInstanceId"] = self.latestInstanceId!
        }
        if self.latestInstanceStatus != nil {
            map["LatestInstanceStatus"] = self.latestInstanceStatus!
        }
        if self.latestStartTime != nil {
            map["LatestStartTime"] = self.latestStartTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LatestEndTime"] as? String {
            self.latestEndTime = value
        }
        if let value = dict["LatestInstanceId"] as? String {
            self.latestInstanceId = value
        }
        if let value = dict["LatestInstanceStatus"] as? String {
            self.latestInstanceStatus = value
        }
        if let value = dict["LatestStartTime"] as? String {
            self.latestStartTime = value
        }
    }
}

public class WorkflowInstance : Tea.TeaModel {
    public var batchProgress: Int32?

    public var dlfWorkflowId: String?

    public var endTime: Int64?

    public var externalInstanceId: String?

    public var runtimeLogs: [LogInfo]?

    public var startTime: Int64?

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
        if self.batchProgress != nil {
            map["BatchProgress"] = self.batchProgress!
        }
        if self.dlfWorkflowId != nil {
            map["DlfWorkflowId"] = self.dlfWorkflowId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.externalInstanceId != nil {
            map["ExternalInstanceId"] = self.externalInstanceId!
        }
        if self.runtimeLogs != nil {
            var tmp : [Any] = []
            for k in self.runtimeLogs! {
                tmp.append(k.toMap())
            }
            map["RuntimeLogs"] = tmp
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BatchProgress"] as? Int32 {
            self.batchProgress = value
        }
        if let value = dict["DlfWorkflowId"] as? String {
            self.dlfWorkflowId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["ExternalInstanceId"] as? String {
            self.externalInstanceId = value
        }
        if let value = dict["RuntimeLogs"] as? [Any?] {
            var tmp : [LogInfo] = []
            for v in value {
                if v != nil {
                    var model = LogInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.runtimeLogs = tmp
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class TableExtendedPrivilegesRolePrivilegesValue : Tea.TeaModel {
    public var createTime: Int32?

    public var grantOption: Bool?

    public var grantor: String?

    public var grantorType: String?

    public var privilege: String?

    public override init() {
        super.init()
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
        if self.grantOption != nil {
            map["GrantOption"] = self.grantOption!
        }
        if self.grantor != nil {
            map["Grantor"] = self.grantor!
        }
        if self.grantorType != nil {
            map["GrantorType"] = self.grantorType!
        }
        if self.privilege != nil {
            map["Privilege"] = self.privilege!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["GrantOption"] as? Bool {
            self.grantOption = value
        }
        if let value = dict["Grantor"] as? String {
            self.grantor = value
        }
        if let value = dict["GrantorType"] as? String {
            self.grantorType = value
        }
        if let value = dict["Privilege"] as? String {
            self.privilege = value
        }
    }
}

public class TableExtendedPrivilegesUserPrivilegesValue : Tea.TeaModel {
    public var createTime: Int32?

    public var grantOption: Bool?

    public var grantor: String?

    public var grantorType: String?

    public var privilege: String?

    public override init() {
        super.init()
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
        if self.grantOption != nil {
            map["GrantOption"] = self.grantOption!
        }
        if self.grantor != nil {
            map["Grantor"] = self.grantor!
        }
        if self.grantorType != nil {
            map["GrantorType"] = self.grantorType!
        }
        if self.privilege != nil {
            map["Privilege"] = self.privilege!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["GrantOption"] as? Bool {
            self.grantOption = value
        }
        if let value = dict["Grantor"] as? String {
            self.grantor = value
        }
        if let value = dict["GrantorType"] as? String {
            self.grantorType = value
        }
        if let value = dict["Privilege"] as? String {
            self.privilege = value
        }
    }
}

public class TableExtendedPrivilegesGroupPrivilegesValue : Tea.TeaModel {
    public var createTime: Int32?

    public var grantOption: Bool?

    public var grantor: String?

    public var grantorType: String?

    public var privilege: String?

    public override init() {
        super.init()
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
        if self.grantOption != nil {
            map["GrantOption"] = self.grantOption!
        }
        if self.grantor != nil {
            map["Grantor"] = self.grantor!
        }
        if self.grantorType != nil {
            map["GrantorType"] = self.grantorType!
        }
        if self.privilege != nil {
            map["Privilege"] = self.privilege!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? Int32 {
            self.createTime = value
        }
        if let value = dict["GrantOption"] as? Bool {
            self.grantOption = value
        }
        if let value = dict["Grantor"] as? String {
            self.grantor = value
        }
        if let value = dict["GrantorType"] as? String {
            self.grantorType = value
        }
        if let value = dict["Privilege"] as? String {
            self.privilege = value
        }
    }
}

public class AbortLockRequest : Tea.TeaModel {
    public var lockId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lockId != nil {
            map["LockId"] = self.lockId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LockId"] as? Int64 {
            self.lockId = value
        }
    }
}

public class AbortLockResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class AbortLockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AbortLockResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AbortLockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchCreatePartitionsRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var ifNotExists: Bool?

    public var needResult: Bool?

    public var partitionInputs: [PartitionInput]?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.ifNotExists != nil {
            map["IfNotExists"] = self.ifNotExists!
        }
        if self.needResult != nil {
            map["NeedResult"] = self.needResult!
        }
        if self.partitionInputs != nil {
            var tmp : [Any] = []
            for k in self.partitionInputs! {
                tmp.append(k.toMap())
            }
            map["PartitionInputs"] = tmp
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["IfNotExists"] as? Bool {
            self.ifNotExists = value
        }
        if let value = dict["NeedResult"] as? Bool {
            self.needResult = value
        }
        if let value = dict["PartitionInputs"] as? [Any?] {
            var tmp : [PartitionInput] = []
            for v in value {
                if v != nil {
                    var model = PartitionInput()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionInputs = tmp
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class BatchCreatePartitionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var partitionErrors: [PartitionError]?

    public var partitions: [Partition]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.partitionErrors != nil {
            var tmp : [Any] = []
            for k in self.partitionErrors! {
                tmp.append(k.toMap())
            }
            map["PartitionErrors"] = tmp
        }
        if self.partitions != nil {
            var tmp : [Any] = []
            for k in self.partitions! {
                tmp.append(k.toMap())
            }
            map["Partitions"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PartitionErrors"] as? [Any?] {
            var tmp : [PartitionError] = []
            for v in value {
                if v != nil {
                    var model = PartitionError()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionErrors = tmp
        }
        if let value = dict["Partitions"] as? [Any?] {
            var tmp : [Partition] = []
            for v in value {
                if v != nil {
                    var model = Partition()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class BatchCreatePartitionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchCreatePartitionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchCreatePartitionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchCreateTablesRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var ifNotExists: Bool?

    public var tableInputs: [TableInput]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.ifNotExists != nil {
            map["IfNotExists"] = self.ifNotExists!
        }
        if self.tableInputs != nil {
            var tmp : [Any] = []
            for k in self.tableInputs! {
                tmp.append(k.toMap())
            }
            map["TableInputs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["IfNotExists"] as? Bool {
            self.ifNotExists = value
        }
        if let value = dict["TableInputs"] as? [Any?] {
            var tmp : [TableInput] = []
            for v in value {
                if v != nil {
                    var model = TableInput()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tableInputs = tmp
        }
    }
}

public class BatchCreateTablesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var tableErrors: [TableError]?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tableErrors != nil {
            var tmp : [Any] = []
            for k in self.tableErrors! {
                tmp.append(k.toMap())
            }
            map["TableErrors"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["TableErrors"] as? [Any?] {
            var tmp : [TableError] = []
            for v in value {
                if v != nil {
                    var model = TableError()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tableErrors = tmp
        }
    }
}

public class BatchCreateTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchCreateTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchCreateTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchDeletePartitionsRequest : Tea.TeaModel {
    public class PartitionValueList : Tea.TeaModel {
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
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
    public var catalogId: String?

    public var databaseName: String?

    public var ifExists: Bool?

    public var partitionValueList: [BatchDeletePartitionsRequest.PartitionValueList]?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.ifExists != nil {
            map["IfExists"] = self.ifExists!
        }
        if self.partitionValueList != nil {
            var tmp : [Any] = []
            for k in self.partitionValueList! {
                tmp.append(k.toMap())
            }
            map["PartitionValueList"] = tmp
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["IfExists"] as? Bool {
            self.ifExists = value
        }
        if let value = dict["PartitionValueList"] as? [Any?] {
            var tmp : [BatchDeletePartitionsRequest.PartitionValueList] = []
            for v in value {
                if v != nil {
                    var model = BatchDeletePartitionsRequest.PartitionValueList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionValueList = tmp
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class BatchDeletePartitionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var partitionErrors: [PartitionError]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.partitionErrors != nil {
            var tmp : [Any] = []
            for k in self.partitionErrors! {
                tmp.append(k.toMap())
            }
            map["PartitionErrors"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PartitionErrors"] as? [Any?] {
            var tmp : [PartitionError] = []
            for v in value {
                if v != nil {
                    var model = PartitionError()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionErrors = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class BatchDeletePartitionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeletePartitionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchDeletePartitionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchDeleteTableVersionsRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var tableName: String?

    public var versionIds: [Int32]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.versionIds != nil {
            map["VersionIds"] = self.versionIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["VersionIds"] as? [Int32] {
            self.versionIds = value
        }
    }
}

public class BatchDeleteTableVersionsResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class BatchDeleteTableVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteTableVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchDeleteTableVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchDeleteTablesRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var ifExists: Bool?

    public var tableNames: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.ifExists != nil {
            map["IfExists"] = self.ifExists!
        }
        if self.tableNames != nil {
            map["TableNames"] = self.tableNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["IfExists"] as? Bool {
            self.ifExists = value
        }
        if let value = dict["TableNames"] as? [String] {
            self.tableNames = value
        }
    }
}

public class BatchDeleteTablesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var tableErrors: [TableError]?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tableErrors != nil {
            var tmp : [Any] = []
            for k in self.tableErrors! {
                tmp.append(k.toMap())
            }
            map["TableErrors"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["TableErrors"] as? [Any?] {
            var tmp : [TableError] = []
            for v in value {
                if v != nil {
                    var model = TableError()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tableErrors = tmp
        }
    }
}

public class BatchDeleteTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchDeleteTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchGetPartitionColumnStatisticsRequest : Tea.TeaModel {
    public var catalogId: String?

    public var columnNames: [String]?

    public var databaseName: String?

    public var partitionNames: [String]?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.columnNames != nil {
            map["ColumnNames"] = self.columnNames!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.partitionNames != nil {
            map["PartitionNames"] = self.partitionNames!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["ColumnNames"] as? [String] {
            self.columnNames = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["PartitionNames"] as? [String] {
            self.partitionNames = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class BatchGetPartitionColumnStatisticsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var partitionStatisticsMap: [String: [ColumnStatisticsObj]]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.partitionStatisticsMap != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.partitionStatisticsMap! {
                var l1 : [Any] = []
                for k1 in v {
                    l1.append(k1.toMap())
                }
                tmp[k] = l1
            }
            map["PartitionStatisticsMap"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PartitionStatisticsMap"] as? [String: Any?] {
            var tmp : [String: [ColumnStatisticsObj]] = [:]
            for (k, v) in value {
                var l1 : [ColumnStatisticsObj] = []
                for v1 in v as! [Any?] {
                    if v1 != nil {
                        var model = ColumnStatisticsObj()
                        if v1 != nil {
                            model.fromMap(v1 as? [String: Any?])
                        }
                        l1.append(model)
                    }
                }
                tmp[k] = l1
            }
            self.partitionStatisticsMap = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class BatchGetPartitionColumnStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchGetPartitionColumnStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchGetPartitionColumnStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchGetPartitionsRequest : Tea.TeaModel {
    public class PartitionValueList : Tea.TeaModel {
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
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Values"] as? [String] {
                self.values = value
            }
        }
    }
    public var catalogId: String?

    public var databaseName: String?

    public var isShareSd: Bool?

    public var partitionValueList: [BatchGetPartitionsRequest.PartitionValueList]?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.isShareSd != nil {
            map["IsShareSd"] = self.isShareSd!
        }
        if self.partitionValueList != nil {
            var tmp : [Any] = []
            for k in self.partitionValueList! {
                tmp.append(k.toMap())
            }
            map["PartitionValueList"] = tmp
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["IsShareSd"] as? Bool {
            self.isShareSd = value
        }
        if let value = dict["PartitionValueList"] as? [Any?] {
            var tmp : [BatchGetPartitionsRequest.PartitionValueList] = []
            for v in value {
                if v != nil {
                    var model = BatchGetPartitionsRequest.PartitionValueList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionValueList = tmp
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class BatchGetPartitionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var partitionErrors: [PartitionError]?

    public var partitionSpecs: [PartitionSpec]?

    public var partitions: [Partition]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.partitionErrors != nil {
            var tmp : [Any] = []
            for k in self.partitionErrors! {
                tmp.append(k.toMap())
            }
            map["PartitionErrors"] = tmp
        }
        if self.partitionSpecs != nil {
            var tmp : [Any] = []
            for k in self.partitionSpecs! {
                tmp.append(k.toMap())
            }
            map["PartitionSpecs"] = tmp
        }
        if self.partitions != nil {
            var tmp : [Any] = []
            for k in self.partitions! {
                tmp.append(k.toMap())
            }
            map["Partitions"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PartitionErrors"] as? [Any?] {
            var tmp : [PartitionError] = []
            for v in value {
                if v != nil {
                    var model = PartitionError()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionErrors = tmp
        }
        if let value = dict["PartitionSpecs"] as? [Any?] {
            var tmp : [PartitionSpec] = []
            for v in value {
                if v != nil {
                    var model = PartitionSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionSpecs = tmp
        }
        if let value = dict["Partitions"] as? [Any?] {
            var tmp : [Partition] = []
            for v in value {
                if v != nil {
                    var model = Partition()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class BatchGetPartitionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchGetPartitionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchGetPartitionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchGetTablesRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var tableNames: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableNames != nil {
            map["TableNames"] = self.tableNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["TableNames"] as? [String] {
            self.tableNames = value
        }
    }
}

public class BatchGetTablesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var tableErrors: [TableError]?

    public var tables: [Table]?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tableErrors != nil {
            var tmp : [Any] = []
            for k in self.tableErrors! {
                tmp.append(k.toMap())
            }
            map["TableErrors"] = tmp
        }
        if self.tables != nil {
            var tmp : [Any] = []
            for k in self.tables! {
                tmp.append(k.toMap())
            }
            map["Tables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["TableErrors"] as? [Any?] {
            var tmp : [TableError] = []
            for v in value {
                if v != nil {
                    var model = TableError()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tableErrors = tmp
        }
        if let value = dict["Tables"] as? [Any?] {
            var tmp : [Table] = []
            for v in value {
                if v != nil {
                    var model = Table()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tables = tmp
        }
    }
}

public class BatchGetTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchGetTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchGetTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchGrantPermissionsRequest : Tea.TeaModel {
    public var catalogId: String?

    public var grantRevokeEntries: [GrantRevokeEntry]?

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
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.grantRevokeEntries != nil {
            var tmp : [Any] = []
            for k in self.grantRevokeEntries! {
                tmp.append(k.toMap())
            }
            map["GrantRevokeEntries"] = tmp
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["GrantRevokeEntries"] as? [Any?] {
            var tmp : [GrantRevokeEntry] = []
            for v in value {
                if v != nil {
                    var model = GrantRevokeEntry()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.grantRevokeEntries = tmp
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class BatchGrantPermissionsResponseBody : Tea.TeaModel {
    public var batchGrantRevokeFailureResult: [GrantRevokeFailureEntry]?

    public var code: String?

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
        if self.batchGrantRevokeFailureResult != nil {
            var tmp : [Any] = []
            for k in self.batchGrantRevokeFailureResult! {
                tmp.append(k.toMap())
            }
            map["BatchGrantRevokeFailureResult"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if let value = dict["BatchGrantRevokeFailureResult"] as? [Any?] {
            var tmp : [GrantRevokeFailureEntry] = []
            for v in value {
                if v != nil {
                    var model = GrantRevokeFailureEntry()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.batchGrantRevokeFailureResult = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
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

public class BatchGrantPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchGrantPermissionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchGrantPermissionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchRevokePermissionsRequest : Tea.TeaModel {
    public var catalogId: String?

    public var grantRevokeEntries: [GrantRevokeEntry]?

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
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.grantRevokeEntries != nil {
            var tmp : [Any] = []
            for k in self.grantRevokeEntries! {
                tmp.append(k.toMap())
            }
            map["GrantRevokeEntries"] = tmp
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["GrantRevokeEntries"] as? [Any?] {
            var tmp : [GrantRevokeEntry] = []
            for v in value {
                if v != nil {
                    var model = GrantRevokeEntry()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.grantRevokeEntries = tmp
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class BatchRevokePermissionsResponseBody : Tea.TeaModel {
    public var batchGrantRevokeFailureResult: [GrantRevokeFailureEntry]?

    public var code: String?

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
        if self.batchGrantRevokeFailureResult != nil {
            var tmp : [Any] = []
            for k in self.batchGrantRevokeFailureResult! {
                tmp.append(k.toMap())
            }
            map["BatchGrantRevokeFailureResult"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if let value = dict["BatchGrantRevokeFailureResult"] as? [Any?] {
            var tmp : [GrantRevokeFailureEntry] = []
            for v in value {
                if v != nil {
                    var model = GrantRevokeFailureEntry()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.batchGrantRevokeFailureResult = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
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

public class BatchRevokePermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchRevokePermissionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchRevokePermissionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchUpdatePartitionsRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var partitionInputs: [PartitionInput]?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.partitionInputs != nil {
            var tmp : [Any] = []
            for k in self.partitionInputs! {
                tmp.append(k.toMap())
            }
            map["PartitionInputs"] = tmp
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["PartitionInputs"] as? [Any?] {
            var tmp : [PartitionInput] = []
            for v in value {
                if v != nil {
                    var model = PartitionInput()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionInputs = tmp
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class BatchUpdatePartitionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var partitionErrors: [PartitionError]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.partitionErrors != nil {
            var tmp : [Any] = []
            for k in self.partitionErrors! {
                tmp.append(k.toMap())
            }
            map["PartitionErrors"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PartitionErrors"] as? [Any?] {
            var tmp : [PartitionError] = []
            for v in value {
                if v != nil {
                    var model = PartitionError()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionErrors = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class BatchUpdatePartitionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchUpdatePartitionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchUpdatePartitionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchUpdateTablesRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var isAsync: Bool?

    public var tableInputs: [TableInput]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.isAsync != nil {
            map["IsAsync"] = self.isAsync!
        }
        if self.tableInputs != nil {
            var tmp : [Any] = []
            for k in self.tableInputs! {
                tmp.append(k.toMap())
            }
            map["TableInputs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["IsAsync"] as? Bool {
            self.isAsync = value
        }
        if let value = dict["TableInputs"] as? [Any?] {
            var tmp : [TableInput] = []
            for v in value {
                if v != nil {
                    var model = TableInput()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tableInputs = tmp
        }
    }
}

public class BatchUpdateTablesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var tableErrors: [TableError]?

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
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.tableErrors != nil {
            var tmp : [Any] = []
            for k in self.tableErrors! {
                tmp.append(k.toMap())
            }
            map["TableErrors"] = tmp
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["TableErrors"] as? [Any?] {
            var tmp : [TableError] = []
            for v in value {
                if v != nil {
                    var model = TableError()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tableErrors = tmp
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class BatchUpdateTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchUpdateTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchUpdateTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelQueryRequest : Tea.TeaModel {
    public var queryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QueryId"] as? String {
            self.queryId = value
        }
    }
}

public class CancelQueryResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CancelQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CancelQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckPermissionsRequest : Tea.TeaModel {
    public var body: AccessRequest?

    public override init() {
        super.init()
    }

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Body"] as? [String: Any?] {
            var model = AccessRequest()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckPermissionsResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class CheckPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckPermissionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckPermissionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCatalogRequest : Tea.TeaModel {
    public var catalogInput: CatalogInput?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.catalogInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogInput != nil {
            map["CatalogInput"] = self.catalogInput?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogInput"] as? [String: Any?] {
            var model = CatalogInput()
            model.fromMap(value)
            self.catalogInput = model
        }
    }
}

public class CreateCatalogResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class CreateCatalogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCatalogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateCatalogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDatabaseRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseInput: DatabaseInput?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.databaseInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseInput != nil {
            map["DatabaseInput"] = self.databaseInput?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseInput"] as? [String: Any?] {
            var model = DatabaseInput()
            model.fromMap(value)
            self.databaseInput = model
        }
    }
}

public class CreateDatabaseResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class CreateDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDatabaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFunctionRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var functionInput: FunctionInput?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.functionInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.functionInput != nil {
            map["FunctionInput"] = self.functionInput?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["FunctionInput"] as? [String: Any?] {
            var model = FunctionInput()
            model.fromMap(value)
            self.functionInput = model
        }
    }
}

public class CreateFunctionResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class CreateFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFunctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateFunctionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLockRequest : Tea.TeaModel {
    public var lockObjList: [LockObj]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lockObjList != nil {
            var tmp : [Any] = []
            for k in self.lockObjList! {
                tmp.append(k.toMap())
            }
            map["LockObjList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LockObjList"] as? [Any?] {
            var tmp : [LockObj] = []
            for v in value {
                if v != nil {
                    var model = LockObj()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.lockObjList = tmp
        }
    }
}

public class CreateLockResponseBody : Tea.TeaModel {
    public var code: String?

    public var lockStatus: LockStatus?

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
        try self.lockStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.lockStatus != nil {
            map["LockStatus"] = self.lockStatus?.toMap()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["LockStatus"] as? [String: Any?] {
            var model = LockStatus()
            model.fromMap(value)
            self.lockStatus = model
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

public class CreateLockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLockResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateLockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePartitionRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var ifNotExists: Bool?

    public var needResult: Bool?

    public var partitionInput: PartitionInput?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.partitionInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.ifNotExists != nil {
            map["IfNotExists"] = self.ifNotExists!
        }
        if self.needResult != nil {
            map["NeedResult"] = self.needResult!
        }
        if self.partitionInput != nil {
            map["PartitionInput"] = self.partitionInput?.toMap()
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["IfNotExists"] as? Bool {
            self.ifNotExists = value
        }
        if let value = dict["NeedResult"] as? Bool {
            self.needResult = value
        }
        if let value = dict["PartitionInput"] as? [String: Any?] {
            var model = PartitionInput()
            model.fromMap(value)
            self.partitionInput = model
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class CreatePartitionResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var partition: Partition?

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
        try self.partition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.partition != nil {
            map["Partition"] = self.partition?.toMap()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Partition"] as? [String: Any?] {
            var model = Partition()
            model.fromMap(value)
            self.partition = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreatePartitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePartitionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePartitionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRoleRequest : Tea.TeaModel {
    public var body: RoleInput?

    public override init() {
        super.init()
    }

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = RoleInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRoleResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class CreateRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTableRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var tableInput: TableInput?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tableInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableInput != nil {
            map["TableInput"] = self.tableInput?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["TableInput"] as? [String: Any?] {
            var model = TableInput()
            model.fromMap(value)
            self.tableInput = model
        }
    }
}

public class CreateTableResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class CreateTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCatalogRequest : Tea.TeaModel {
    public var catalogId: String?

    public var isAsync: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.isAsync != nil {
            map["IsAsync"] = self.isAsync!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["IsAsync"] as? Bool {
            self.isAsync = value
        }
    }
}

public class DeleteCatalogResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class DeleteCatalogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCatalogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteCatalogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDatabaseRequest : Tea.TeaModel {
    public var async: Bool?

    public var cascade: Bool?

    public var catalogId: String?

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
        if self.async != nil {
            map["Async"] = self.async!
        }
        if self.cascade != nil {
            map["Cascade"] = self.cascade!
        }
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Async"] as? Bool {
            self.async = value
        }
        if let value = dict["Cascade"] as? Bool {
            self.cascade = value
        }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DeleteDatabaseResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class DeleteDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDatabaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFunctionRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

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
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.functionName != nil {
            map["FunctionName"] = self.functionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["FunctionName"] as? String {
            self.functionName = value
        }
    }
}

public class DeleteFunctionResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class DeleteFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFunctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteFunctionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePartitionRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var ifExists: Bool?

    public var partitionValues: [String]?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.ifExists != nil {
            map["IfExists"] = self.ifExists!
        }
        if self.partitionValues != nil {
            map["PartitionValues"] = self.partitionValues!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["IfExists"] as? Bool {
            self.ifExists = value
        }
        if let value = dict["PartitionValues"] as? [String] {
            self.partitionValues = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class DeletePartitionResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class DeletePartitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePartitionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeletePartitionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePartitionColumnStatisticsRequest : Tea.TeaModel {
    public var catalogId: String?

    public var columnNames: [String]?

    public var databaseName: String?

    public var partitionNames: [String]?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.columnNames != nil {
            map["ColumnNames"] = self.columnNames!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.partitionNames != nil {
            map["PartitionNames"] = self.partitionNames!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["ColumnNames"] as? [String] {
            self.columnNames = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["PartitionNames"] as? [String] {
            self.partitionNames = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class DeletePartitionColumnStatisticsShrinkRequest : Tea.TeaModel {
    public var catalogId: String?

    public var columnNamesShrink: String?

    public var databaseName: String?

    public var partitionNamesShrink: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.columnNamesShrink != nil {
            map["ColumnNames"] = self.columnNamesShrink!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.partitionNamesShrink != nil {
            map["PartitionNames"] = self.partitionNamesShrink!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["ColumnNames"] as? String {
            self.columnNamesShrink = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["PartitionNames"] as? String {
            self.partitionNamesShrink = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class DeletePartitionColumnStatisticsResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class DeletePartitionColumnStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePartitionColumnStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeletePartitionColumnStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRoleRequest : Tea.TeaModel {
    public var roleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
    }
}

public class DeleteRoleResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class DeleteRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTableRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class DeleteTableResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class DeleteTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTableColumnStatisticsRequest : Tea.TeaModel {
    public var catalogId: String?

    public var columnNames: [String]?

    public var databaseName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.columnNames != nil {
            map["ColumnNames"] = self.columnNames!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["ColumnNames"] as? [String] {
            self.columnNames = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class DeleteTableColumnStatisticsShrinkRequest : Tea.TeaModel {
    public var catalogId: String?

    public var columnNamesShrink: String?

    public var databaseName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.columnNamesShrink != nil {
            map["ColumnNames"] = self.columnNamesShrink!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["ColumnNames"] as? String {
            self.columnNamesShrink = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class DeleteTableColumnStatisticsResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class DeleteTableColumnStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTableColumnStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteTableColumnStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTableVersionRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var tableName: String?

    public var versionId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["VersionId"] as? Int32 {
            self.versionId = value
        }
    }
}

public class DeleteTableVersionResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class DeleteTableVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTableVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteTableVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeregisterLocationRequest : Tea.TeaModel {
    public var locationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.locationId != nil {
            map["LocationId"] = self.locationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LocationId"] as? String {
            self.locationId = value
        }
    }
}

public class DeregisterLocationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var locationId: String?

        public var storageCollectTaskOperationResultList: [StorageCollectTaskOperationResult]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.locationId != nil {
                map["LocationId"] = self.locationId!
            }
            if self.storageCollectTaskOperationResultList != nil {
                var tmp : [Any] = []
                for k in self.storageCollectTaskOperationResultList! {
                    tmp.append(k.toMap())
                }
                map["StorageCollectTaskOperationResultList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LocationId"] as? String {
                self.locationId = value
            }
            if let value = dict["StorageCollectTaskOperationResultList"] as? [Any?] {
                var tmp : [StorageCollectTaskOperationResult] = []
                for v in value {
                    if v != nil {
                        var model = StorageCollectTaskOperationResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.storageCollectTaskOperationResultList = tmp
            }
        }
    }
    public var data: DeregisterLocationResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeregisterLocationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeregisterLocationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeregisterLocationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeregisterLocationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var showName: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.showName != nil {
                map["ShowName"] = self.showName!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ShowName"] as? String {
                self.showName = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var regions: [DescribeRegionsResponseBody.Regions]?

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
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
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
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.Regions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAsyncTaskStatusRequest : Tea.TeaModel {
    public var catalogId: String?

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
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetAsyncTaskStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskStatus: TaskStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.taskStatus?.validate()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["TaskStatus"] as? [String: Any?] {
            var model = TaskStatus()
            model.fromMap(value)
            self.taskStatus = model
        }
    }
}

public class GetAsyncTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAsyncTaskStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAsyncTaskStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCatalogRequest : Tea.TeaModel {
    public var catalogId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
    }
}

public class GetCatalogResponseBody : Tea.TeaModel {
    public var catalog: Catalog?

    public var code: String?

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
        try self.catalog?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalog != nil {
            map["Catalog"] = self.catalog?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if let value = dict["Catalog"] as? [String: Any?] {
            var model = Catalog()
            model.fromMap(value)
            self.catalog = model
        }
        if let value = dict["Code"] as? String {
            self.code = value
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

public class GetCatalogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCatalogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetCatalogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCatalogSettingsRequest : Tea.TeaModel {
    public var catalogId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
    }
}

public class GetCatalogSettingsResponseBody : Tea.TeaModel {
    public var catalogSettings: CatalogSettings?

    public var code: String?

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
        try self.catalogSettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogSettings != nil {
            map["CatalogSettings"] = self.catalogSettings?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if let value = dict["CatalogSettings"] as? [String: Any?] {
            var model = CatalogSettings()
            model.fromMap(value)
            self.catalogSettings = model
        }
        if let value = dict["Code"] as? String {
            self.code = value
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

public class GetCatalogSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCatalogSettingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetCatalogSettingsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDatabaseRequest : Tea.TeaModel {
    public var catalogId: String?

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
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class GetDatabaseResponseBody : Tea.TeaModel {
    public var code: String?

    public var database: Database?

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
        try self.database?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.database != nil {
            map["Database"] = self.database?.toMap()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Database"] as? [String: Any?] {
            var model = Database()
            model.fromMap(value)
            self.database = model
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

public class GetDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDatabaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDatabaseProfileRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
    }
}

public class GetDatabaseProfileResponseBody : Tea.TeaModel {
    public var code: String?

    public var databaseProfile: DatabaseProfile?

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
        try self.databaseProfile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.databaseProfile != nil {
            map["DatabaseProfile"] = self.databaseProfile?.toMap()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DatabaseProfile"] as? [String: Any?] {
            var model = DatabaseProfile()
            model.fromMap(value)
            self.databaseProfile = model
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

public class GetDatabaseProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatabaseProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDatabaseProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFunctionRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

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
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.functionName != nil {
            map["FunctionName"] = self.functionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["FunctionName"] as? String {
            self.functionName = value
        }
    }
}

public class GetFunctionResponseBody : Tea.TeaModel {
    public var code: String?

    public var function: Function?

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
        try self.function?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.function != nil {
            map["Function"] = self.function?.toMap()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Function"] as? [String: Any?] {
            var model = Function()
            model.fromMap(value)
            self.function = model
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

public class GetFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFunctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetFunctionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLifecycleRuleRequest : Tea.TeaModel {
    public var bizId: String?

    public var resourceName: String?

    public override init() {
        super.init()
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
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
    }
}

public class GetLifecycleRuleResponseBody : Tea.TeaModel {
    public var data: LifecycleRule?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = LifecycleRule()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetLifecycleRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLifecycleRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetLifecycleRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLockRequest : Tea.TeaModel {
    public var lockId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lockId != nil {
            map["LockId"] = self.lockId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LockId"] as? Int64 {
            self.lockId = value
        }
    }
}

public class GetLockResponseBody : Tea.TeaModel {
    public var code: String?

    public var lockStatus: LockStatus?

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
        try self.lockStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.lockStatus != nil {
            map["LockStatus"] = self.lockStatus?.toMap()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["LockStatus"] as? [String: Any?] {
            var model = LockStatus()
            model.fromMap(value)
            self.lockStatus = model
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

public class GetLockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLockResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetLockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPartitionRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var partitionValues: [String]?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.partitionValues != nil {
            map["PartitionValues"] = self.partitionValues!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["PartitionValues"] as? [String] {
            self.partitionValues = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class GetPartitionResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var partition: Partition?

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
        try self.partition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.partition != nil {
            map["Partition"] = self.partition?.toMap()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Partition"] as? [String: Any?] {
            var model = Partition()
            model.fromMap(value)
            self.partition = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetPartitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPartitionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPartitionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPartitionColumnStatisticsRequest : Tea.TeaModel {
    public var catalogId: String?

    public var columnNames: [String]?

    public var databaseName: String?

    public var partitionNames: [String]?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.columnNames != nil {
            map["ColumnNames"] = self.columnNames!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.partitionNames != nil {
            map["PartitionNames"] = self.partitionNames!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["ColumnNames"] as? [String] {
            self.columnNames = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["PartitionNames"] as? [String] {
            self.partitionNames = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class GetPartitionColumnStatisticsShrinkRequest : Tea.TeaModel {
    public var catalogId: String?

    public var columnNamesShrink: String?

    public var databaseName: String?

    public var partitionNamesShrink: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.columnNamesShrink != nil {
            map["ColumnNames"] = self.columnNamesShrink!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.partitionNamesShrink != nil {
            map["PartitionNames"] = self.partitionNamesShrink!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["ColumnNames"] as? String {
            self.columnNamesShrink = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["PartitionNames"] as? String {
            self.partitionNamesShrink = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class GetPartitionColumnStatisticsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var partitionStatisticsMap: [String: [ColumnStatisticsObj]]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.partitionStatisticsMap != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.partitionStatisticsMap! {
                var l1 : [Any] = []
                for k1 in v {
                    l1.append(k1.toMap())
                }
                tmp[k] = l1
            }
            map["PartitionStatisticsMap"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PartitionStatisticsMap"] as? [String: Any?] {
            var tmp : [String: [ColumnStatisticsObj]] = [:]
            for (k, v) in value {
                var l1 : [ColumnStatisticsObj] = []
                for v1 in v as! [Any?] {
                    if v1 != nil {
                        var model = ColumnStatisticsObj()
                        if v1 != nil {
                            model.fromMap(v1 as? [String: Any?])
                        }
                        l1.append(model)
                    }
                }
                tmp[k] = l1
            }
            self.partitionStatisticsMap = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetPartitionColumnStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPartitionColumnStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPartitionColumnStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetQueryResultRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryId"] as? String {
            self.queryId = value
        }
    }
}

public class GetQueryResultResponseBody : Tea.TeaModel {
    public var duration: Int64?

    public var endTime: String?

    public var errorMessage: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var id: String?

    public var jobCompleted: Bool?

    public var logs: String?

    public var owner: Int64?

    public var progress: Int32?

    public var regionId: String?

    public var requestId: String?

    public var resultTmpDb: String?

    public var resultTmpTable: String?

    public var rowCount: Int32?

    public var rowCountOverLimit: Bool?

    public var rows: String?

    public var schema: String?

    public var sql: String?

    public var startTime: String?

    public var status: String?

    public var success: Bool?

    public var totalBytesProcessed: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if self.jobCompleted != nil {
            map["JobCompleted"] = self.jobCompleted!
        }
        if self.logs != nil {
            map["Logs"] = self.logs!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultTmpDb != nil {
            map["ResultTmpDb"] = self.resultTmpDb!
        }
        if self.resultTmpTable != nil {
            map["ResultTmpTable"] = self.resultTmpTable!
        }
        if self.rowCount != nil {
            map["RowCount"] = self.rowCount!
        }
        if self.rowCountOverLimit != nil {
            map["RowCountOverLimit"] = self.rowCountOverLimit!
        }
        if self.rows != nil {
            map["Rows"] = self.rows!
        }
        if self.schema != nil {
            map["Schema"] = self.schema!
        }
        if self.sql != nil {
            map["Sql"] = self.sql!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalBytesProcessed != nil {
            map["TotalBytesProcessed"] = self.totalBytesProcessed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Duration"] as? Int64 {
            self.duration = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["JobCompleted"] as? Bool {
            self.jobCompleted = value
        }
        if let value = dict["Logs"] as? String {
            self.logs = value
        }
        if let value = dict["Owner"] as? Int64 {
            self.owner = value
        }
        if let value = dict["Progress"] as? Int32 {
            self.progress = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultTmpDb"] as? String {
            self.resultTmpDb = value
        }
        if let value = dict["ResultTmpTable"] as? String {
            self.resultTmpTable = value
        }
        if let value = dict["RowCount"] as? Int32 {
            self.rowCount = value
        }
        if let value = dict["RowCountOverLimit"] as? Bool {
            self.rowCountOverLimit = value
        }
        if let value = dict["Rows"] as? String {
            self.rows = value
        }
        if let value = dict["Schema"] as? String {
            self.schema = value
        }
        if let value = dict["Sql"] as? String {
            self.sql = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalBytesProcessed"] as? Int64 {
            self.totalBytesProcessed = value
        }
    }
}

public class GetQueryResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQueryResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetQueryResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRegionStatusRequest : Tea.TeaModel {
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

public class GetRegionStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountStatus: String?

        public var isDependencyReady: Bool?

        public var isDlfServiceOpen: Bool?

        public var regionId: String?

        public var regionStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountStatus != nil {
                map["AccountStatus"] = self.accountStatus!
            }
            if self.isDependencyReady != nil {
                map["IsDependencyReady"] = self.isDependencyReady!
            }
            if self.isDlfServiceOpen != nil {
                map["IsDlfServiceOpen"] = self.isDlfServiceOpen!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.regionStatus != nil {
                map["RegionStatus"] = self.regionStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountStatus"] as? String {
                self.accountStatus = value
            }
            if let value = dict["IsDependencyReady"] as? Bool {
                self.isDependencyReady = value
            }
            if let value = dict["IsDlfServiceOpen"] as? Bool {
                self.isDlfServiceOpen = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RegionStatus"] as? String {
                self.regionStatus = value
            }
        }
    }
    public var data: GetRegionStatusResponseBody.Data?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetRegionStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class GetRegionStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRegionStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetRegionStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRoleRequest : Tea.TeaModel {
    public var roleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
    }
}

public class GetRoleResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var role: Role?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.role?.validate()
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
        if self.role != nil {
            map["Role"] = self.role?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Role"] as? [String: Any?] {
            var model = Role()
            model.fromMap(value)
            self.role = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceStatusRequest : Tea.TeaModel {
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

public class GetServiceStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var hasRamPermissions: Bool?

        public var isDlfServiceOpen: Bool?

        public var isOssOpen: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hasRamPermissions != nil {
                map["HasRamPermissions"] = self.hasRamPermissions!
            }
            if self.isDlfServiceOpen != nil {
                map["IsDlfServiceOpen"] = self.isDlfServiceOpen!
            }
            if self.isOssOpen != nil {
                map["IsOssOpen"] = self.isOssOpen!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HasRamPermissions"] as? Bool {
                self.hasRamPermissions = value
            }
            if let value = dict["IsDlfServiceOpen"] as? Bool {
                self.isDlfServiceOpen = value
            }
            if let value = dict["IsOssOpen"] as? Bool {
                self.isOssOpen = value
            }
        }
    }
    public var data: GetServiceStatusResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetServiceStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetServiceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTableRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class GetTableResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var table: Table?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.table?.validate()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.table != nil {
            map["Table"] = self.table?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["Table"] as? [String: Any?] {
            var model = Table()
            model.fromMap(value)
            self.table = model
        }
    }
}

public class GetTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTableColumnStatisticsRequest : Tea.TeaModel {
    public var catalogId: String?

    public var columnNames: [String]?

    public var databaseName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.columnNames != nil {
            map["ColumnNames"] = self.columnNames!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["ColumnNames"] as? [String] {
            self.columnNames = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class GetTableColumnStatisticsShrinkRequest : Tea.TeaModel {
    public var catalogId: String?

    public var columnNamesShrink: String?

    public var databaseName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.columnNamesShrink != nil {
            map["ColumnNames"] = self.columnNamesShrink!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["ColumnNames"] as? String {
            self.columnNamesShrink = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class GetTableColumnStatisticsResponseBody : Tea.TeaModel {
    public var code: String?

    public var columnStatisticsObjList: [ColumnStatisticsObj]?

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
        if self.columnStatisticsObjList != nil {
            var tmp : [Any] = []
            for k in self.columnStatisticsObjList! {
                tmp.append(k.toMap())
            }
            map["ColumnStatisticsObjList"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["ColumnStatisticsObjList"] as? [Any?] {
            var tmp : [ColumnStatisticsObj] = []
            for v in value {
                if v != nil {
                    var model = ColumnStatisticsObj()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.columnStatisticsObjList = tmp
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

public class GetTableColumnStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTableColumnStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTableColumnStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTableProfileRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class GetTableProfileResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var tableProfile: TableProfile?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tableProfile?.validate()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tableProfile != nil {
            map["TableProfile"] = self.tableProfile?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["TableProfile"] as? [String: Any?] {
            var model = TableProfile()
            model.fromMap(value)
            self.tableProfile = model
        }
    }
}

public class GetTableProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTableProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTableProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTableVersionRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var tableName: String?

    public var versionId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["VersionId"] as? Int32 {
            self.versionId = value
        }
    }
}

public class GetTableVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var tableVersion: TableVersion?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tableVersion?.validate()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tableVersion != nil {
            map["TableVersion"] = self.tableVersion?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["TableVersion"] as? [String: Any?] {
            var model = TableVersion()
            model.fromMap(value)
            self.tableVersion = model
        }
    }
}

public class GetTableVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTableVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTableVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GrantPermissionsRequest : Tea.TeaModel {
    public var accesses: [String]?

    public var catalogId: String?

    public var delegateAccesses: [String]?

    public var metaResource: MetaResource?

    public var principal: Principal?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metaResource?.validate()
        try self.principal?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accesses != nil {
            map["Accesses"] = self.accesses!
        }
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.delegateAccesses != nil {
            map["DelegateAccesses"] = self.delegateAccesses!
        }
        if self.metaResource != nil {
            map["MetaResource"] = self.metaResource?.toMap()
        }
        if self.principal != nil {
            map["Principal"] = self.principal?.toMap()
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accesses"] as? [String] {
            self.accesses = value
        }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DelegateAccesses"] as? [String] {
            self.delegateAccesses = value
        }
        if let value = dict["MetaResource"] as? [String: Any?] {
            var model = MetaResource()
            model.fromMap(value)
            self.metaResource = model
        }
        if let value = dict["Principal"] as? [String: Any?] {
            var model = Principal()
            model.fromMap(value)
            self.principal = model
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class GrantPermissionsResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class GrantPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantPermissionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GrantPermissionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GrantRoleToUsersRequest : Tea.TeaModel {
    public var roleName: String?

    public var users: [Principal]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
        if let value = dict["Users"] as? [Any?] {
            var tmp : [Principal] = []
            for v in value {
                if v != nil {
                    var model = Principal()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.users = tmp
        }
    }
}

public class GrantRoleToUsersResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class GrantRoleToUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantRoleToUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GrantRoleToUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GrantRolesToUserRequest : Tea.TeaModel {
    public var roleNames: [String]?

    public var user: Principal?

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
        if self.roleNames != nil {
            map["RoleNames"] = self.roleNames!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleNames"] as? [String] {
            self.roleNames = value
        }
        if let value = dict["User"] as? [String: Any?] {
            var model = Principal()
            model.fromMap(value)
            self.user = model
        }
    }
}

public class GrantRolesToUserResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class GrantRolesToUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantRolesToUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GrantRolesToUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCatalogsRequest : Tea.TeaModel {
    public var idPattern: String?

    public var nextPageToken: String?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.idPattern != nil {
            map["IdPattern"] = self.idPattern!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdPattern"] as? String {
            self.idPattern = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListCatalogsResponseBody : Tea.TeaModel {
    public var catalogs: [Catalog]?

    public var code: String?

    public var message: String?

    public var nextPageToken: String?

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
        if self.catalogs != nil {
            var tmp : [Any] = []
            for k in self.catalogs! {
                tmp.append(k.toMap())
            }
            map["Catalogs"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
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
        if let value = dict["Catalogs"] as? [Any?] {
            var tmp : [Catalog] = []
            for v in value {
                if v != nil {
                    var model = Catalog()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.catalogs = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListCatalogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCatalogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListCatalogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDatabasesRequest : Tea.TeaModel {
    public var catalogId: String?

    public var namePattern: String?

    public var nextPageToken: String?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.namePattern != nil {
            map["NamePattern"] = self.namePattern!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["NamePattern"] as? String {
            self.namePattern = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListDatabasesResponseBody : Tea.TeaModel {
    public var code: String?

    public var databases: [Database]?

    public var message: String?

    public var nextPageToken: String?

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
        if self.databases != nil {
            var tmp : [Any] = []
            for k in self.databases! {
                tmp.append(k.toMap())
            }
            map["Databases"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Databases"] as? [Any?] {
            var tmp : [Database] = []
            for v in value {
                if v != nil {
                    var model = Database()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.databases = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDatabasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatabasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDatabasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFunctionNamesRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var functionNamePattern: String?

    public var nextPageToken: String?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.functionNamePattern != nil {
            map["FunctionNamePattern"] = self.functionNamePattern!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["FunctionNamePattern"] as? String {
            self.functionNamePattern = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListFunctionNamesResponseBody : Tea.TeaModel {
    public var code: String?

    public var functionNames: [String]?

    public var message: String?

    public var nextPageToken: String?

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
        if self.functionNames != nil {
            map["FunctionNames"] = self.functionNames!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["FunctionNames"] as? [String] {
            self.functionNames = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListFunctionNamesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionNamesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListFunctionNamesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFunctionsRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var functionNamePattern: String?

    public var nextPageToken: String?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.functionNamePattern != nil {
            map["FunctionNamePattern"] = self.functionNamePattern!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["FunctionNamePattern"] as? String {
            self.functionNamePattern = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListFunctionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var functions: [Function]?

    public var message: String?

    public var nextPageToken: String?

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
        if self.functions != nil {
            var tmp : [Any] = []
            for k in self.functions! {
                tmp.append(k.toMap())
            }
            map["Functions"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Functions"] as? [Any?] {
            var tmp : [Function] = []
            for v in value {
                if v != nil {
                    var model = Function()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.functions = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListFunctionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListFunctionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPartitionNamesRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var nextPageToken: String?

    public var pageSize: Int32?

    public var partialPartValues: [String]?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.partialPartValues != nil {
            map["PartialPartValues"] = self.partialPartValues!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PartialPartValues"] as? [String] {
            self.partialPartValues = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class ListPartitionNamesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var nextPageToken: String?

    public var partitionNames: [String]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.partitionNames != nil {
            map["PartitionNames"] = self.partitionNames!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PartitionNames"] as? [String] {
            self.partitionNames = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListPartitionNamesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPartitionNamesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPartitionNamesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPartitionsRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var isShareSd: Bool?

    public var nextPageToken: String?

    public var pageSize: Int32?

    public var partialPartValues: [String]?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.isShareSd != nil {
            map["IsShareSd"] = self.isShareSd!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.partialPartValues != nil {
            map["PartialPartValues"] = self.partialPartValues!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["IsShareSd"] as? Bool {
            self.isShareSd = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PartialPartValues"] as? [String] {
            self.partialPartValues = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class ListPartitionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var nextPageToken: String?

    public var partitionSpecs: [PartitionSpec]?

    public var partitions: [Partition]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.partitionSpecs != nil {
            var tmp : [Any] = []
            for k in self.partitionSpecs! {
                tmp.append(k.toMap())
            }
            map["PartitionSpecs"] = tmp
        }
        if self.partitions != nil {
            var tmp : [Any] = []
            for k in self.partitions! {
                tmp.append(k.toMap())
            }
            map["Partitions"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PartitionSpecs"] as? [Any?] {
            var tmp : [PartitionSpec] = []
            for v in value {
                if v != nil {
                    var model = PartitionSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionSpecs = tmp
        }
        if let value = dict["Partitions"] as? [Any?] {
            var tmp : [Partition] = []
            for v in value {
                if v != nil {
                    var model = Partition()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListPartitionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPartitionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPartitionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPartitionsByExprResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class ListPartitionsByFilterRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var filter: String?

    public var isShareSd: Bool?

    public var nextPageToken: String?

    public var pageSize: Int32?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.isShareSd != nil {
            map["IsShareSd"] = self.isShareSd!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["IsShareSd"] as? Bool {
            self.isShareSd = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class ListPartitionsByFilterResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var nextPageToken: String?

    public var partitionSpecs: [PartitionSpec]?

    public var partitions: [Partition]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.partitionSpecs != nil {
            var tmp : [Any] = []
            for k in self.partitionSpecs! {
                tmp.append(k.toMap())
            }
            map["PartitionSpecs"] = tmp
        }
        if self.partitions != nil {
            var tmp : [Any] = []
            for k in self.partitions! {
                tmp.append(k.toMap())
            }
            map["Partitions"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PartitionSpecs"] as? [Any?] {
            var tmp : [PartitionSpec] = []
            for v in value {
                if v != nil {
                    var model = PartitionSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitionSpecs = tmp
        }
        if let value = dict["Partitions"] as? [Any?] {
            var tmp : [Partition] = []
            for v in value {
                if v != nil {
                    var model = Partition()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.partitions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListPartitionsByFilterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPartitionsByFilterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPartitionsByFilterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPartitionsProfileRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var partitionNames: [String]?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.partitionNames != nil {
            map["PartitionNames"] = self.partitionNames!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PartitionNames"] as? [String] {
            self.partitionNames = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class ListPartitionsProfileShrinkRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var partitionNamesShrink: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.partitionNamesShrink != nil {
            map["PartitionNames"] = self.partitionNamesShrink!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PartitionNames"] as? String {
            self.partitionNamesShrink = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class ListPartitionsProfileResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [PartitionProfile]?

    public var latestAccessNumDate: String?

    public var latestDate: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.latestAccessNumDate != nil {
            map["LatestAccessNumDate"] = self.latestAccessNumDate!
        }
        if self.latestDate != nil {
            map["LatestDate"] = self.latestDate!
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [PartitionProfile] = []
            for v in value {
                if v != nil {
                    var model = PartitionProfile()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["LatestAccessNumDate"] as? String {
            self.latestAccessNumDate = value
        }
        if let value = dict["LatestDate"] as? String {
            self.latestDate = value
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
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListPartitionsProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPartitionsProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPartitionsProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPermissionsRequest : Tea.TeaModel {
    public var catalogId: String?

    public var isListUserRolePermissions: Bool?

    public var metaResource: MetaResource?

    public var metaResourceType: String?

    public var nextPageToken: String?

    public var pageSize: Int32?

    public var principal: Principal?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metaResource?.validate()
        try self.principal?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.isListUserRolePermissions != nil {
            map["IsListUserRolePermissions"] = self.isListUserRolePermissions!
        }
        if self.metaResource != nil {
            map["MetaResource"] = self.metaResource?.toMap()
        }
        if self.metaResourceType != nil {
            map["MetaResourceType"] = self.metaResourceType!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.principal != nil {
            map["Principal"] = self.principal?.toMap()
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["IsListUserRolePermissions"] as? Bool {
            self.isListUserRolePermissions = value
        }
        if let value = dict["MetaResource"] as? [String: Any?] {
            var model = MetaResource()
            model.fromMap(value)
            self.metaResource = model
        }
        if let value = dict["MetaResourceType"] as? String {
            self.metaResourceType = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Principal"] as? [String: Any?] {
            var model = Principal()
            model.fromMap(value)
            self.principal = model
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ListPermissionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var nextPageToken: String?

    public var principalResourcePermissionsList: [PrincipalResourcePermissions]?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.principalResourcePermissionsList != nil {
            var tmp : [Any] = []
            for k in self.principalResourcePermissionsList! {
                tmp.append(k.toMap())
            }
            map["PrincipalResourcePermissionsList"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PrincipalResourcePermissionsList"] as? [Any?] {
            var tmp : [PrincipalResourcePermissions] = []
            for v in value {
                if v != nil {
                    var model = PrincipalResourcePermissions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.principalResourcePermissionsList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPermissionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPermissionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRoleUsersRequest : Tea.TeaModel {
    public var nextPageToken: String?

    public var pageSize: Int32?

    public var roleName: String?

    public var userNamePattern: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.userNamePattern != nil {
            map["UserNamePattern"] = self.userNamePattern!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
        if let value = dict["UserNamePattern"] as? String {
            self.userNamePattern = value
        }
    }
}

public class ListRoleUsersResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var nextPageToken: String?

    public var requestId: String?

    public var success: Bool?

    public var userRoles: [UserRole]?

    public override init() {
        super.init()
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
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.userRoles != nil {
            var tmp : [Any] = []
            for k in self.userRoles! {
                tmp.append(k.toMap())
            }
            map["UserRoles"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["UserRoles"] as? [Any?] {
            var tmp : [UserRole] = []
            for v in value {
                if v != nil {
                    var model = UserRole()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.userRoles = tmp
        }
    }
}

public class ListRoleUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRoleUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListRoleUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRolesRequest : Tea.TeaModel {
    public var nextPageToken: String?

    public var pageSize: Int32?

    public var roleNamePattern: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.roleNamePattern != nil {
            map["RoleNamePattern"] = self.roleNamePattern!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RoleNamePattern"] as? String {
            self.roleNamePattern = value
        }
    }
}

public class ListRolesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var nextPageToken: String?

    public var requestId: String?

    public var roles: [Role]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roles != nil {
            var tmp : [Any] = []
            for k in self.roles! {
                tmp.append(k.toMap())
            }
            map["Roles"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Roles"] as? [Any?] {
            var tmp : [Role] = []
            for v in value {
                if v != nil {
                    var model = Role()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.roles = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRolesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListRolesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTableNamesRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var nextPageToken: String?

    public var pageSize: Int32?

    public var tableNamePattern: String?

    public var tableType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tableNamePattern != nil {
            map["TableNamePattern"] = self.tableNamePattern!
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TableNamePattern"] as? String {
            self.tableNamePattern = value
        }
        if let value = dict["TableType"] as? String {
            self.tableType = value
        }
    }
}

public class ListTableNamesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var nextPageToken: String?

    public var requestId: String?

    public var success: Bool?

    public var tableNames: [String]?

    public override init() {
        super.init()
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
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tableNames != nil {
            map["TableNames"] = self.tableNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TableNames"] as? [String] {
            self.tableNames = value
        }
    }
}

public class ListTableNamesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTableNamesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTableNamesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTableVersionsRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var nextPageToken: String?

    public var pageSize: Int32?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class ListTableVersionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var nextPageToken: String?

    public var requestId: String?

    public var success: Bool?

    public var tableVersions: [TableVersion]?

    public override init() {
        super.init()
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
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tableVersions != nil {
            var tmp : [Any] = []
            for k in self.tableVersions! {
                tmp.append(k.toMap())
            }
            map["TableVersions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TableVersions"] as? [Any?] {
            var tmp : [TableVersion] = []
            for v in value {
                if v != nil {
                    var model = TableVersion()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tableVersions = tmp
        }
    }
}

public class ListTableVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTableVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTableVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTablesRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var nextPageToken: String?

    public var pageSize: Int32?

    public var tableNamePattern: String?

    public var tableType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tableNamePattern != nil {
            map["TableNamePattern"] = self.tableNamePattern!
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TableNamePattern"] as? String {
            self.tableNamePattern = value
        }
        if let value = dict["TableType"] as? String {
            self.tableType = value
        }
    }
}

public class ListTablesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var nextPageToken: String?

    public var requestId: String?

    public var success: Bool?

    public var tables: [Table]?

    public override init() {
        super.init()
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
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tables != nil {
            var tmp : [Any] = []
            for k in self.tables! {
                tmp.append(k.toMap())
            }
            map["Tables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Tables"] as? [Any?] {
            var tmp : [Table] = []
            for v in value {
                if v != nil {
                    var model = Table()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tables = tmp
        }
    }
}

public class ListTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUserRolesRequest : Tea.TeaModel {
    public var nextPageToken: String?

    public var pageSize: Int32?

    public var principalArn: String?

    public var roleNamePattern: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.principalArn != nil {
            map["PrincipalArn"] = self.principalArn!
        }
        if self.roleNamePattern != nil {
            map["RoleNamePattern"] = self.roleNamePattern!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrincipalArn"] as? String {
            self.principalArn = value
        }
        if let value = dict["RoleNamePattern"] as? String {
            self.roleNamePattern = value
        }
    }
}

public class ListUserRolesResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var nextPageToken: String?

    public var requestId: String?

    public var success: Bool?

    public var userRoles: [UserRole]?

    public override init() {
        super.init()
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
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.userRoles != nil {
            var tmp : [Any] = []
            for k in self.userRoles! {
                tmp.append(k.toMap())
            }
            map["UserRoles"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextPageToken"] as? String {
            self.nextPageToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["UserRoles"] as? [Any?] {
            var tmp : [UserRole] = []
            for v in value {
                if v != nil {
                    var model = UserRole()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.userRoles = tmp
        }
    }
}

public class ListUserRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserRolesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUserRolesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RefreshLockRequest : Tea.TeaModel {
    public var lockId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lockId != nil {
            map["LockId"] = self.lockId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LockId"] as? Int64 {
            self.lockId = value
        }
    }
}

public class RefreshLockResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class RefreshLockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshLockResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RefreshLockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RegisterLocationRequest : Tea.TeaModel {
    public var inventoryCollectEnabled: Bool?

    public var location: String?

    public var ossLogCollectEnabled: Bool?

    public var roleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inventoryCollectEnabled != nil {
            map["InventoryCollectEnabled"] = self.inventoryCollectEnabled!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.ossLogCollectEnabled != nil {
            map["OssLogCollectEnabled"] = self.ossLogCollectEnabled!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InventoryCollectEnabled"] as? Bool {
            self.inventoryCollectEnabled = value
        }
        if let value = dict["Location"] as? String {
            self.location = value
        }
        if let value = dict["OssLogCollectEnabled"] as? Bool {
            self.ossLogCollectEnabled = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
    }
}

public class RegisterLocationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var locationId: String?

        public var storageCollectTaskOperationResultList: [StorageCollectTaskOperationResult]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.locationId != nil {
                map["LocationId"] = self.locationId!
            }
            if self.storageCollectTaskOperationResultList != nil {
                var tmp : [Any] = []
                for k in self.storageCollectTaskOperationResultList! {
                    tmp.append(k.toMap())
                }
                map["StorageCollectTaskOperationResultList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LocationId"] as? String {
                self.locationId = value
            }
            if let value = dict["StorageCollectTaskOperationResultList"] as? [Any?] {
                var tmp : [StorageCollectTaskOperationResult] = []
                for v in value {
                    if v != nil {
                        var model = StorageCollectTaskOperationResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.storageCollectTaskOperationResultList = tmp
            }
        }
    }
    public var data: RegisterLocationResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = RegisterLocationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RegisterLocationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterLocationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RegisterLocationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenamePartitionRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var partitionInput: PartitionInput?

    public var partitionValues: [String]?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.partitionInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.partitionInput != nil {
            map["PartitionInput"] = self.partitionInput?.toMap()
        }
        if self.partitionValues != nil {
            map["PartitionValues"] = self.partitionValues!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["PartitionInput"] as? [String: Any?] {
            var model = PartitionInput()
            model.fromMap(value)
            self.partitionInput = model
        }
        if let value = dict["PartitionValues"] as? [String] {
            self.partitionValues = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class RenamePartitionResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class RenamePartitionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenamePartitionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RenamePartitionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenameTableRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var isAsync: Bool?

    public var tableInput: TableInput?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tableInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.isAsync != nil {
            map["IsAsync"] = self.isAsync!
        }
        if self.tableInput != nil {
            map["TableInput"] = self.tableInput?.toMap()
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["IsAsync"] as? Bool {
            self.isAsync = value
        }
        if let value = dict["TableInput"] as? [String: Any?] {
            var model = TableInput()
            model.fromMap(value)
            self.tableInput = model
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class RenameTableResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class RenameTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenameTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RenameTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RevokePermissionsRequest : Tea.TeaModel {
    public var accesses: [String]?

    public var catalogId: String?

    public var delegateAccesses: [String]?

    public var metaResource: MetaResource?

    public var principal: Principal?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metaResource?.validate()
        try self.principal?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accesses != nil {
            map["Accesses"] = self.accesses!
        }
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.delegateAccesses != nil {
            map["DelegateAccesses"] = self.delegateAccesses!
        }
        if self.metaResource != nil {
            map["MetaResource"] = self.metaResource?.toMap()
        }
        if self.principal != nil {
            map["Principal"] = self.principal?.toMap()
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accesses"] as? [String] {
            self.accesses = value
        }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DelegateAccesses"] as? [String] {
            self.delegateAccesses = value
        }
        if let value = dict["MetaResource"] as? [String: Any?] {
            var model = MetaResource()
            model.fromMap(value)
            self.metaResource = model
        }
        if let value = dict["Principal"] as? [String: Any?] {
            var model = Principal()
            model.fromMap(value)
            self.principal = model
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class RevokePermissionsResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class RevokePermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokePermissionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RevokePermissionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RevokeRoleFromUsersRequest : Tea.TeaModel {
    public var roleName: String?

    public var users: [Principal]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
        if let value = dict["Users"] as? [Any?] {
            var tmp : [Principal] = []
            for v in value {
                if v != nil {
                    var model = Principal()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.users = tmp
        }
    }
}

public class RevokeRoleFromUsersResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class RevokeRoleFromUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeRoleFromUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RevokeRoleFromUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RevokeRolesFromUserRequest : Tea.TeaModel {
    public var roleNames: [String]?

    public var user: Principal?

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
        if self.roleNames != nil {
            map["RoleNames"] = self.roleNames!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleNames"] as? [String] {
            self.roleNames = value
        }
        if let value = dict["User"] as? [String: Any?] {
            var model = Principal()
            model.fromMap(value)
            self.user = model
        }
    }
}

public class RevokeRolesFromUserResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class RevokeRolesFromUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeRolesFromUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RevokeRolesFromUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunMigrationWorkflowRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class RunMigrationWorkflowResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RunMigrationWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunMigrationWorkflowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RunMigrationWorkflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchRequest : Tea.TeaModel {
    public var catalogId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var searchText: String?

    public var searchType: String?

    public var sortCriteria: [SortCriterion]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchText != nil {
            map["SearchText"] = self.searchText!
        }
        if self.searchType != nil {
            map["SearchType"] = self.searchType!
        }
        if self.sortCriteria != nil {
            var tmp : [Any] = []
            for k in self.sortCriteria! {
                tmp.append(k.toMap())
            }
            map["SortCriteria"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["SearchText"] as? String {
            self.searchText = value
        }
        if let value = dict["SearchType"] as? String {
            self.searchType = value
        }
        if let value = dict["SortCriteria"] as? [Any?] {
            var tmp : [SortCriterion] = []
            for v in value {
                if v != nil {
                    var model = SortCriterion()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sortCriteria = tmp
        }
    }
}

public class SearchResponseBody : Tea.TeaModel {
    public class DatabaseResult : Tea.TeaModel {
        public class Databases : Tea.TeaModel {
            public var database: Database?

            public var highLightList: [HighLight]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.database?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.database != nil {
                    map["Database"] = self.database?.toMap()
                }
                if self.highLightList != nil {
                    var tmp : [Any] = []
                    for k in self.highLightList! {
                        tmp.append(k.toMap())
                    }
                    map["HighLightList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Database"] as? [String: Any?] {
                    var model = Database()
                    model.fromMap(value)
                    self.database = model
                }
                if let value = dict["HighLightList"] as? [Any?] {
                    var tmp : [HighLight] = []
                    for v in value {
                        if v != nil {
                            var model = HighLight()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.highLightList = tmp
                }
            }
        }
        public var databases: [SearchResponseBody.DatabaseResult.Databases]?

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
            if self.databases != nil {
                var tmp : [Any] = []
                for k in self.databases! {
                    tmp.append(k.toMap())
                }
                map["Databases"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Databases"] as? [Any?] {
                var tmp : [SearchResponseBody.DatabaseResult.Databases] = []
                for v in value {
                    if v != nil {
                        var model = SearchResponseBody.DatabaseResult.Databases()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.databases = tmp
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public class TableResult : Tea.TeaModel {
        public class Tables : Tea.TeaModel {
            public var highLightList: [HighLight]?

            public var table: Table?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.table?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.highLightList != nil {
                    var tmp : [Any] = []
                    for k in self.highLightList! {
                        tmp.append(k.toMap())
                    }
                    map["HighLightList"] = tmp
                }
                if self.table != nil {
                    map["Table"] = self.table?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HighLightList"] as? [Any?] {
                    var tmp : [HighLight] = []
                    for v in value {
                        if v != nil {
                            var model = HighLight()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.highLightList = tmp
                }
                if let value = dict["Table"] as? [String: Any?] {
                    var model = Table()
                    model.fromMap(value)
                    self.table = model
                }
            }
        }
        public var tables: [SearchResponseBody.TableResult.Tables]?

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
            if self.tables != nil {
                var tmp : [Any] = []
                for k in self.tables! {
                    tmp.append(k.toMap())
                }
                map["Tables"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Tables"] as? [Any?] {
                var tmp : [SearchResponseBody.TableResult.Tables] = []
                for v in value {
                    if v != nil {
                        var model = SearchResponseBody.TableResult.Tables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tables = tmp
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var databaseResult: SearchResponseBody.DatabaseResult?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var tableResult: SearchResponseBody.TableResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.databaseResult?.validate()
        try self.tableResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.databaseResult != nil {
            map["DatabaseResult"] = self.databaseResult?.toMap()
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
        if self.tableResult != nil {
            map["TableResult"] = self.tableResult?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DatabaseResult"] as? [String: Any?] {
            var model = SearchResponseBody.DatabaseResult()
            model.fromMap(value)
            self.databaseResult = model
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
        if let value = dict["TableResult"] as? [String: Any?] {
            var model = SearchResponseBody.TableResult()
            model.fromMap(value)
            self.tableResult = model
        }
    }
}

public class SearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchAcrossCatalogRequest : Tea.TeaModel {
    public var catalogIds: [String]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var searchText: String?

    public var searchTypes: [String]?

    public var sortCriteria: [SortCriterion]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogIds != nil {
            map["CatalogIds"] = self.catalogIds!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchText != nil {
            map["SearchText"] = self.searchText!
        }
        if self.searchTypes != nil {
            map["SearchTypes"] = self.searchTypes!
        }
        if self.sortCriteria != nil {
            var tmp : [Any] = []
            for k in self.sortCriteria! {
                tmp.append(k.toMap())
            }
            map["SortCriteria"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogIds"] as? [String] {
            self.catalogIds = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["SearchText"] as? String {
            self.searchText = value
        }
        if let value = dict["SearchTypes"] as? [String] {
            self.searchTypes = value
        }
        if let value = dict["SortCriteria"] as? [Any?] {
            var tmp : [SortCriterion] = []
            for v in value {
                if v != nil {
                    var model = SortCriterion()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sortCriteria = tmp
        }
    }
}

public class SearchAcrossCatalogResponseBody : Tea.TeaModel {
    public class CatalogResult : Tea.TeaModel {
        public class Catalogs : Tea.TeaModel {
            public var catalog: Catalog?

            public var highLightList: [HighLight]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.catalog?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.catalog != nil {
                    map["Catalog"] = self.catalog?.toMap()
                }
                if self.highLightList != nil {
                    var tmp : [Any] = []
                    for k in self.highLightList! {
                        tmp.append(k.toMap())
                    }
                    map["HighLightList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Catalog"] as? [String: Any?] {
                    var model = Catalog()
                    model.fromMap(value)
                    self.catalog = model
                }
                if let value = dict["HighLightList"] as? [Any?] {
                    var tmp : [HighLight] = []
                    for v in value {
                        if v != nil {
                            var model = HighLight()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.highLightList = tmp
                }
            }
        }
        public var catalogs: [SearchAcrossCatalogResponseBody.CatalogResult.Catalogs]?

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
            if self.catalogs != nil {
                var tmp : [Any] = []
                for k in self.catalogs! {
                    tmp.append(k.toMap())
                }
                map["Catalogs"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Catalogs"] as? [Any?] {
                var tmp : [SearchAcrossCatalogResponseBody.CatalogResult.Catalogs] = []
                for v in value {
                    if v != nil {
                        var model = SearchAcrossCatalogResponseBody.CatalogResult.Catalogs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.catalogs = tmp
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public class DatabaseResult : Tea.TeaModel {
        public class Databases : Tea.TeaModel {
            public var database: Database?

            public var highLightList: [HighLight]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.database?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.database != nil {
                    map["Database"] = self.database?.toMap()
                }
                if self.highLightList != nil {
                    var tmp : [Any] = []
                    for k in self.highLightList! {
                        tmp.append(k.toMap())
                    }
                    map["HighLightList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Database"] as? [String: Any?] {
                    var model = Database()
                    model.fromMap(value)
                    self.database = model
                }
                if let value = dict["HighLightList"] as? [Any?] {
                    var tmp : [HighLight] = []
                    for v in value {
                        if v != nil {
                            var model = HighLight()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.highLightList = tmp
                }
            }
        }
        public var databases: [SearchAcrossCatalogResponseBody.DatabaseResult.Databases]?

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
            if self.databases != nil {
                var tmp : [Any] = []
                for k in self.databases! {
                    tmp.append(k.toMap())
                }
                map["Databases"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Databases"] as? [Any?] {
                var tmp : [SearchAcrossCatalogResponseBody.DatabaseResult.Databases] = []
                for v in value {
                    if v != nil {
                        var model = SearchAcrossCatalogResponseBody.DatabaseResult.Databases()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.databases = tmp
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public class TableResult : Tea.TeaModel {
        public class Tables : Tea.TeaModel {
            public var highLightList: [HighLight]?

            public var table: Table?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.table?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.highLightList != nil {
                    var tmp : [Any] = []
                    for k in self.highLightList! {
                        tmp.append(k.toMap())
                    }
                    map["HighLightList"] = tmp
                }
                if self.table != nil {
                    map["Table"] = self.table?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HighLightList"] as? [Any?] {
                    var tmp : [HighLight] = []
                    for v in value {
                        if v != nil {
                            var model = HighLight()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.highLightList = tmp
                }
                if let value = dict["Table"] as? [String: Any?] {
                    var model = Table()
                    model.fromMap(value)
                    self.table = model
                }
            }
        }
        public var tables: [SearchAcrossCatalogResponseBody.TableResult.Tables]?

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
            if self.tables != nil {
                var tmp : [Any] = []
                for k in self.tables! {
                    tmp.append(k.toMap())
                }
                map["Tables"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Tables"] as? [Any?] {
                var tmp : [SearchAcrossCatalogResponseBody.TableResult.Tables] = []
                for v in value {
                    if v != nil {
                        var model = SearchAcrossCatalogResponseBody.TableResult.Tables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tables = tmp
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var catalogResult: SearchAcrossCatalogResponseBody.CatalogResult?

    public var code: String?

    public var databaseResult: SearchAcrossCatalogResponseBody.DatabaseResult?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var tableResult: SearchAcrossCatalogResponseBody.TableResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.catalogResult?.validate()
        try self.databaseResult?.validate()
        try self.tableResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogResult != nil {
            map["CatalogResult"] = self.catalogResult?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.databaseResult != nil {
            map["DatabaseResult"] = self.databaseResult?.toMap()
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
        if self.tableResult != nil {
            map["TableResult"] = self.tableResult?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogResult"] as? [String: Any?] {
            var model = SearchAcrossCatalogResponseBody.CatalogResult()
            model.fromMap(value)
            self.catalogResult = model
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DatabaseResult"] as? [String: Any?] {
            var model = SearchAcrossCatalogResponseBody.DatabaseResult()
            model.fromMap(value)
            self.databaseResult = model
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
        if let value = dict["TableResult"] as? [String: Any?] {
            var model = SearchAcrossCatalogResponseBody.TableResult()
            model.fromMap(value)
            self.tableResult = model
        }
    }
}

public class SearchAcrossCatalogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchAcrossCatalogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchAcrossCatalogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopMigrationWorkflowRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class StopMigrationWorkflowResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class StopMigrationWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopMigrationWorkflowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopMigrationWorkflowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitQueryRequest : Tea.TeaModel {
    public var catalogId: String?

    public var sql: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["catalogId"] = self.catalogId!
        }
        if self.sql != nil {
            map["sql"] = self.sql!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["catalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["sql"] as? String {
            self.sql = value
        }
        if let value = dict["workspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class SubmitQueryResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnLockRequest : Tea.TeaModel {
    public var lockId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lockId != nil {
            map["LockId"] = self.lockId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LockId"] as? Int64 {
            self.lockId = value
        }
    }
}

public class UnLockResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class UnLockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnLockResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnLockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCatalogRequest : Tea.TeaModel {
    public var catalogInput: CatalogInput?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.catalogInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogInput != nil {
            map["CatalogInput"] = self.catalogInput?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogInput"] as? [String: Any?] {
            var model = CatalogInput()
            model.fromMap(value)
            self.catalogInput = model
        }
    }
}

public class UpdateCatalogResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class UpdateCatalogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCatalogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateCatalogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCatalogSettingsRequest : Tea.TeaModel {
    public var catalogId: String?

    public var catalogSettings: CatalogSettings?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.catalogSettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.catalogSettings != nil {
            map["CatalogSettings"] = self.catalogSettings?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["CatalogSettings"] as? [String: Any?] {
            var model = CatalogSettings()
            model.fromMap(value)
            self.catalogSettings = model
        }
    }
}

public class UpdateCatalogSettingsResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class UpdateCatalogSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCatalogSettingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateCatalogSettingsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDatabaseRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseInput: DatabaseInput?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.databaseInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseInput != nil {
            map["DatabaseInput"] = self.databaseInput?.toMap()
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseInput"] as? [String: Any?] {
            var model = DatabaseInput()
            model.fromMap(value)
            self.databaseInput = model
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UpdateDatabaseResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class UpdateDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDatabaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFunctionRequest : Tea.TeaModel {
    public var catalogId: String?

    public var databaseName: String?

    public var functionInput: FunctionInput?

    public var functionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.functionInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.functionInput != nil {
            map["FunctionInput"] = self.functionInput?.toMap()
        }
        if self.functionName != nil {
            map["FunctionName"] = self.functionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["FunctionInput"] as? [String: Any?] {
            var model = FunctionInput()
            model.fromMap(value)
            self.functionInput = model
        }
        if let value = dict["FunctionName"] as? String {
            self.functionName = value
        }
    }
}

public class UpdateFunctionResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class UpdateFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFunctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateFunctionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePartitionColumnStatisticsRequest : Tea.TeaModel {
    public var updateTablePartitionColumnStatisticsRequest: UpdateTablePartitionColumnStatisticsRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.updateTablePartitionColumnStatisticsRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.updateTablePartitionColumnStatisticsRequest != nil {
            map["UpdateTablePartitionColumnStatisticsRequest"] = self.updateTablePartitionColumnStatisticsRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UpdateTablePartitionColumnStatisticsRequest"] as? [String: Any?] {
            var model = UpdateTablePartitionColumnStatisticsRequest()
            model.fromMap(value)
            self.updateTablePartitionColumnStatisticsRequest = model
        }
    }
}

public class UpdatePartitionColumnStatisticsResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class UpdatePartitionColumnStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePartitionColumnStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePartitionColumnStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePermissionsRequest : Tea.TeaModel {
    public var accesses: [String]?

    public var catalogId: String?

    public var delegateAccesses: [String]?

    public var metaResource: MetaResource?

    public var principal: Principal?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metaResource?.validate()
        try self.principal?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accesses != nil {
            map["Accesses"] = self.accesses!
        }
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.delegateAccesses != nil {
            map["DelegateAccesses"] = self.delegateAccesses!
        }
        if self.metaResource != nil {
            map["MetaResource"] = self.metaResource?.toMap()
        }
        if self.principal != nil {
            map["Principal"] = self.principal?.toMap()
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accesses"] as? [String] {
            self.accesses = value
        }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DelegateAccesses"] as? [String] {
            self.delegateAccesses = value
        }
        if let value = dict["MetaResource"] as? [String: Any?] {
            var model = MetaResource()
            model.fromMap(value)
            self.metaResource = model
        }
        if let value = dict["Principal"] as? [String: Any?] {
            var model = Principal()
            model.fromMap(value)
            self.principal = model
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class UpdatePermissionsResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class UpdatePermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePermissionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePermissionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateRegisteredLocationRequest : Tea.TeaModel {
    public var inventoryCollectEnabled: Bool?

    public var locationId: String?

    public var ossLogCollectEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inventoryCollectEnabled != nil {
            map["InventoryCollectEnabled"] = self.inventoryCollectEnabled!
        }
        if self.locationId != nil {
            map["LocationId"] = self.locationId!
        }
        if self.ossLogCollectEnabled != nil {
            map["OssLogCollectEnabled"] = self.ossLogCollectEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InventoryCollectEnabled"] as? Bool {
            self.inventoryCollectEnabled = value
        }
        if let value = dict["LocationId"] as? String {
            self.locationId = value
        }
        if let value = dict["OssLogCollectEnabled"] as? Bool {
            self.ossLogCollectEnabled = value
        }
    }
}

public class UpdateRegisteredLocationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var locationId: String?

        public var storageCollectTaskOperationResultList: [StorageCollectTaskOperationResult]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.locationId != nil {
                map["LocationId"] = self.locationId!
            }
            if self.storageCollectTaskOperationResultList != nil {
                var tmp : [Any] = []
                for k in self.storageCollectTaskOperationResultList! {
                    tmp.append(k.toMap())
                }
                map["StorageCollectTaskOperationResultList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LocationId"] as? String {
                self.locationId = value
            }
            if let value = dict["StorageCollectTaskOperationResultList"] as? [Any?] {
                var tmp : [StorageCollectTaskOperationResult] = []
                for v in value {
                    if v != nil {
                        var model = StorageCollectTaskOperationResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.storageCollectTaskOperationResultList = tmp
            }
        }
    }
    public var data: UpdateRegisteredLocationResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateRegisteredLocationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateRegisteredLocationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRegisteredLocationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateRegisteredLocationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateRoleRequest : Tea.TeaModel {
    public var roleInput: RoleInput?

    public var roleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.roleInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleInput != nil {
            map["RoleInput"] = self.roleInput?.toMap()
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleInput"] as? [String: Any?] {
            var model = RoleInput()
            model.fromMap(value)
            self.roleInput = model
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
    }
}

public class UpdateRoleResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class UpdateRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateRoleUsersRequest : Tea.TeaModel {
    public var roleName: String?

    public var users: [Principal]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
        if let value = dict["Users"] as? [Any?] {
            var tmp : [Principal] = []
            for v in value {
                if v != nil {
                    var model = Principal()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.users = tmp
        }
    }
}

public class UpdateRoleUsersResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class UpdateRoleUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRoleUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateRoleUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTableRequest : Tea.TeaModel {
    public var allowPartitionKeyChange: Bool?

    public var catalogId: String?

    public var databaseName: String?

    public var isAsync: Bool?

    public var skipArchive: Bool?

    public var tableInput: TableInput?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tableInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowPartitionKeyChange != nil {
            map["AllowPartitionKeyChange"] = self.allowPartitionKeyChange!
        }
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.isAsync != nil {
            map["IsAsync"] = self.isAsync!
        }
        if self.skipArchive != nil {
            map["SkipArchive"] = self.skipArchive!
        }
        if self.tableInput != nil {
            map["TableInput"] = self.tableInput?.toMap()
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowPartitionKeyChange"] as? Bool {
            self.allowPartitionKeyChange = value
        }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["IsAsync"] as? Bool {
            self.isAsync = value
        }
        if let value = dict["SkipArchive"] as? Bool {
            self.skipArchive = value
        }
        if let value = dict["TableInput"] as? [String: Any?] {
            var model = TableInput()
            model.fromMap(value)
            self.tableInput = model
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class UpdateTableResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class UpdateTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTableColumnStatisticsRequest : Tea.TeaModel {
    public var updateTablePartitionColumnStatisticsRequest: UpdateTablePartitionColumnStatisticsRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.updateTablePartitionColumnStatisticsRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.updateTablePartitionColumnStatisticsRequest != nil {
            map["UpdateTablePartitionColumnStatisticsRequest"] = self.updateTablePartitionColumnStatisticsRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UpdateTablePartitionColumnStatisticsRequest"] as? [String: Any?] {
            var model = UpdateTablePartitionColumnStatisticsRequest()
            model.fromMap(value)
            self.updateTablePartitionColumnStatisticsRequest = model
        }
    }
}

public class UpdateTableColumnStatisticsResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
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

public class UpdateTableColumnStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTableColumnStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateTableColumnStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
